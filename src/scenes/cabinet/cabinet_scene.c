#include "../scenes.h"
#include "../../globals.h"
#include "../../mathlib.h"
#include "../../platform.h"
#include "../../render.h"

// bias < 0: рисуется позже (поверх), bias > 0: раньше (под остальными).
typedef struct Part {
	const char* file;
	float bias;
	bool visible;
	Mesh* mesh;
	MeshInstance inst;
} Part;

#define PART_COUNT 14
#define PART_KEY   14
static Part s_parts[PART_COUNT];

static const Part k_parts_def[PART_COUNT] = {
	{"models/floor.pdm", 0.0f, true},
    {"models/door.pdm", 0.0f, true},
	{"models/frame.pdm", 0.0f, true},
	{"models/wall_frame.pdm", 0.0f, true},
	{"models/wall1.pdm", 0.0f, true},
	{"models/wall2.pdm", 0.0f, true},
	{"models/wall3.pdm", 0.0f, true},
};

static Scene s_scene;
static float s_cam_angle;
static float s_cam_dist;
static float s_min_dist;
static float s_size;
static int s_sel;               // какую деталь переключит следующее нажатие B
static bool s_draw_bluenoise;

float zoom = 1.4f;
float sx = 0.525f, sy = 0.7f;   // где на экране должна стоять цель (0..1, как есть на экране)


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

	if (s_parts[0].mesh)
	{
		s_size = v3_len(v3_sub(s_parts[0].mesh->bbox_max, s_parts[0].mesh->bbox_min));
		s_cam_dist = s_size * 1.5f;
		s_min_dist = s_size * 0.6f;
		s_scene.z_near = s_size * 0.1f;
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
									   
	scene_setCamera(&s_scene, cam_pos, target, zoom, f3(0, 1, 0));
	scene_setCenter(&s_scene, sx / zoom, sy / zoom);

	// клик: после setCamera, чтобы view_xform был актуальным
	if (G.buttons_pressed & kPlatButtonA)
	{
		const MeshInstance* hit = scene_pick(&s_scene, s_cur_x, s_cur_y);
		if (hit && hit == &s_parts[PART_KEY].inst)
			plat_sys_log_error("Key clicked!");
	}

	for (int i = 0; i < PART_COUNT; ++i)
		s_parts[i].inst.sort_bias = s_parts[i].bias * s_size;

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