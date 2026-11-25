#include "../scenes.h"
#include "../../globals.h"
#include "../../mathlib.h"
#include "../../platform.h"
#include "../../render.h"

typedef struct Part {
	const char* file;
	float bias;
	bool visible;
	bool wall;        // опускается, когда стоит между камерой и комнатой
	int link;         // 0 = своя стена, иначе повторять h детали с индексом link-1 (дверь, рама)
	Mesh* mesh;
	MeshInstance inst;
	float2 out_dir;   // горизонтальное направление «наружу» (x, z)
	float h;          // 1 = полная высота, 0 = низкий бортик
} Part;

#define PART_COUNT 7
#define PART_KEY 0
static Part s_parts[PART_COUNT];


static const Part k_parts_def[PART_COUNT] = {
	{ .file = "models/floor.pdm",      .visible = true },
	{ .file = "models/door.pdm",       .visible = true, .wall = true },
	{ .file = "models/frame.pdm",      .visible = true, .wall = true },
	{ .file = "models/wall_frame.pdm", .visible = true, .wall = true },
	{ .file = "models/wall1.pdm",      .visible = true, .wall = true },
	{ .file = "models/wall2.pdm",      .visible = true, .wall = true },
	{ .file = "models/wall3.pdm",      .visible = true, .wall = true },
};

static Scene s_scene;
static float s_cam_angle;
static float s_cam_dist;
static float s_min_dist;
static float s_size;
static int s_sel;               // какую деталь переключит следующее нажатие B
static bool s_draw_bluenoise;

float zoom = 1.9f;
bool use_ortho = true;
float sx = 0.5f, sy = 0.7f;   // где на экране должна стоять цель (0..1, как есть на экране)


static PlatBitmap* s_cursor;
static float s_cur_x, s_cur_y;
#define CURSOR_SPEED   160.0f  // пикселей в секунду
#define CURSOR_HOT_X   0       // «острие» курсора в картинке; поправь под свой pointer.png
#define CURSOR_HOT_Y   0

static void rebuild_scene(void)
{
	s_scene.inst_count = 0;
	for (int i = 0; i < PART_COUNT; ++i)
	{
		Part* p = &s_parts[i];
		if (p->visible && p->mesh)
			scene_add_mesh(&s_scene, &p->inst);
	}
}

static void cabinet_enter(void)
{
	s_cam_angle = 0.5f;
	s_cam_dist = 8.0f;
	s_min_dist = 1.0f;
	s_size = 1.0f;
	s_sel = 1;
	s_draw_bluenoise = false;

	scene_init(&s_scene);
	scene_setLight(&s_scene, f3(-1.0f, 1.0f, -0.1f));

	s_cur_x = SCREEN_X * 0.5f;
	s_cur_y = SCREEN_Y * 0.5f;
	if (!s_cursor)
	{
		const char *err = NULL;
		s_cursor = plat_gfx_load_bitmap("pointer2.pdi", &err);
		if (!s_cursor)
			plat_sys_log_error("Error: failed to load pointer: %s", err ? err : "?");
	}

	for (int i = 0; i < PART_COUNT; ++i)
	{
		Part* p = &s_parts[i];
		*p = k_parts_def[i];
		p->mesh = mesh_load_from_file(p->file);
		if (!p->mesh)
		{
			plat_sys_log_error("Error: failed to load %s", p->file);
			continue;
		}
		mesh_instance_init(&p->inst);
		p->inst.mesh = p->mesh;
		p->inst.flags |= MeshDrawFlag_SilhouetteWire;
	}
	rebuild_scene();

	for (int i = 0; i < PART_COUNT; ++i)
		s_parts[i].h = 1.0f;

	if (s_parts[0].mesh)
	{
		const float3 room_c = s_parts[0].mesh->center;
		for (int i = 0; i < PART_COUNT; ++i)
		{
			Part *p = &s_parts[i];
			if (!p->mesh)
				continue;
			float dx = p->mesh->center.x - room_c.x;
			float dz = p->mesh->center.z - room_c.z;
			float l = sqrtf(dx * dx + dz * dz);
			if (l > 1.0e-5f)
			{
				dx /= l;
				dz /= l;
			}
			p->out_dir = (float2){dx, dz};
		}
	}
}

static void cabinet_exit(void)
{
	for (int i = 0; i < PART_COUNT; ++i)
	{
		mesh_free(s_parts[i].mesh);
		s_parts[i].mesh = NULL;
	}
	scene_shutdown(&s_scene);
}

static void cabinet_update(void)
{
	if (G.buttons_pressed & kPlatButtonB)
	{
		app_scene_switch(&g_scene_menu);
		return;
	}

	if (!s_parts[0].mesh)
		return;

	// камера: только кранк (на PC колесо мыши)
	s_cam_angle += G.crank_delta_angle_rad;

	// курсор: дпад
	if (G.buttons_cur & kPlatButtonLeft)  s_cur_x -= CURSOR_SPEED * G.t_dt;
	if (G.buttons_cur & kPlatButtonRight) s_cur_x += CURSOR_SPEED * G.t_dt;
	if (G.buttons_cur & kPlatButtonUp)    s_cur_y -= CURSOR_SPEED * G.t_dt;
	if (G.buttons_cur & kPlatButtonDown)  s_cur_y += CURSOR_SPEED * G.t_dt;
	s_cur_x = clamp_f(s_cur_x, 0.0f, SCREEN_X - 1);
	s_cur_y = clamp_f(s_cur_y, 0.0f, SCREEN_Y - 1);

	float3 target = s_parts[0].mesh->center;
	float3 cam_pos = v3_add(target, f3(cosf(s_cam_angle) * s_cam_dist,
	                                   s_cam_dist * 1.0f,
	                                   sinf(s_cam_angle) * s_cam_dist));
									   
	if (use_ortho)
	{
		// Тот же масштаб на целевой точке, что и у перспективы: высота кадра = d / zoom
		const float d = v3_len(v3_sub(cam_pos, target));
		scene_setCameraOrtho(&s_scene, cam_pos, target, d / zoom, f3(0, 1, 0), 0.1f, d * 2.0f);
		scene_setCenter(&s_scene, sx, sy);        // в ортографии без деления на zoom
	}
	else
	{
		scene_setCamera(&s_scene, cam_pos, target, zoom, f3(0, 1, 0));
		scene_setCenter(&s_scene, sx / zoom, sy / zoom);
	}



	// клик: после setCamera, чтобы view_xform был актуальным
	if (G.buttons_pressed & kPlatButtonA)
	{
		const MeshInstance* hit = scene_pick(&s_scene, s_cur_x, s_cur_y);
		if (hit && hit == &s_parts[PART_KEY].inst)
			plat_sys_log_error("Key clicked!");
	}

		// --- ближние стены: состояние = функция текущего угла камеры ---
	const float cdx = cosf(s_cam_angle), cdz = sinf(s_cam_angle); // горизонтальное направление на камеру
	const float k_speed = 6.0f;      // ед./сек: полный ход ~0.17 с, выше скорости быстрого кранка
	const float k_min_h = 0.12f;     // высота бортика

	const float k_deg_down = 85.0f;   // при угле меньше этого стена полностью опущена
	const float k_deg_up   = 100.0f;  // при угле больше этого стена полностью стоит
	const float k_to_rad   = 3.14159265f / 180.0f;


	// 1) своя цель для каждой стены
	for (int i = 0; i < PART_COUNT; ++i)
	{
		Part* p = &s_parts[i];
		if (!p->wall || !p->mesh || p->link) continue;
		float facing = p->out_dir.x * cdx + p->out_dir.y * cdz;       // 1 = стена прямо перед камерой
		float target = 1.0f - smoothstep(cosf(k_deg_up * k_to_rad),
                                 cosf(k_deg_down * k_to_rad), facing);
		float step = k_speed * G.t_dt;
		if (p->h < target) p->h = fminf(p->h + step, target);
		else               p->h = fmaxf(p->h - step, target);
	}

	// 2) применяем h как вертикальный масштаб вокруг низа детали
	for (int i = 0; i < PART_COUNT; ++i)
	{
		Part* p = &s_parts[i];
		if (!p->wall || !p->mesh) continue;
		if (p->link)
			p->h = s_parts[p->link - 1].h;
		float hh = k_min_h + (1.0f - k_min_h) * p->h;
		p->inst.tr = xform_identity;
		p->inst.tr.ay = f3(0, hh, 0);
		p->inst.tr.pos.y = p->mesh->bbox_min.y * (1.0f - hh);
	}

	scene_draw(&s_scene, G.framebuffer, G.framebuffer_stride);

	// курсор рисуем поверх сцены
	plat_gfx_draw_bitmap(s_cursor, (int)s_cur_x - CURSOR_HOT_X, (int)s_cur_y - CURSOR_HOT_Y);
}

const AppScene g_scene_cabinet = {
	.name = "cabinet",
	.enter = cabinet_enter,
	.update = cabinet_update,
	.exit = cabinet_exit,
};