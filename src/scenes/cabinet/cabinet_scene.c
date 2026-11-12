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

#define PART_COUNT 13
static Part s_parts[PART_COUNT];

static const Part k_parts_def[PART_COUNT] = {
	{"models/body.pdm", 0.0f, true},
    {"models/cable.pdm", 0.0f, true},
	{"models/drawer1.pdm", 0.0f, true},
	{"models/drawer2.pdm", 0.0f, true},
	{"models/drawer3.pdm", 0.0f, true},
	{"models/lid.pdm", 0.0f, true},
    {"models/lamp_base.pdm", 0.0f, true},
    {"models/lamp_stem.pdm", 0.0f, true},
    {"models/lamp_shade.pdm", 0.0f, true},
    {"models/book1.pdm", 0.0f, true},
    {"models/book2.pdm", 0.0f, true},
	{"models/legs.pdm", 0.0f, true},
    {"models/plant.pdm", 0.0f, true},
};

static Scene s_scene;
static float s_cam_angle;
static float s_cam_dist;
static float s_min_dist;
static float s_size;
static int s_sel;               // какую деталь переключит следующее нажатие B
static bool s_draw_bluenoise;

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
	if (G.buttons_pressed & kPlatButtonA)
	{
		app_scene_switch(&g_scene_menu);
		return;
	}

	if (!s_parts[0].mesh)
		return;

	s_cam_angle += G.crank_delta_angle_rad;
	if (G.buttons_cur & kPlatButtonLeft)  s_cam_angle -= 1.5f * G.t_dt;
	if (G.buttons_cur & kPlatButtonRight) s_cam_angle += 1.5f * G.t_dt;
	if (G.buttons_cur & kPlatButtonUp)    s_cam_dist -= 5.0f * G.t_dt;
	if (G.buttons_cur & kPlatButtonDown)  s_cam_dist += 5.0f * G.t_dt;
	s_cam_dist = clamp_f(s_cam_dist, s_min_dist, 100.0f);

	if (G.buttons_pressed & kPlatButtonA)
		s_draw_bluenoise = !s_draw_bluenoise;

	// B: скрыть/показать следующую деталь (кроме главной [0])
	if (G.buttons_pressed & kPlatButtonB)
	{
		s_parts[s_sel].visible = !s_parts[s_sel].visible;
		rebuild_scene();
		if (++s_sel >= PART_COUNT)
			s_sel = 1;
	}

	float3 target = s_parts[0].mesh->center;
	float3 cam_pos = v3_add(target, f3(cosf(s_cam_angle) * s_cam_dist,
	                                   s_cam_dist * 0.4f,
	                                   sinf(s_cam_angle) * s_cam_dist));
	scene_setCamera(&s_scene, cam_pos, target, 1.0f, f3(0, 1, 0));

	for (int i = 0; i < PART_COUNT; ++i)
		s_parts[i].inst.sort_bias = s_parts[i].bias * s_size;

	scene_draw(&s_scene, G.framebuffer, G.framebuffer_stride);
}

const AppScene g_scene_cabinet = {
	.name = "cabinet",
	.enter = cabinet_enter,
	.update = cabinet_update,
	.exit = cabinet_exit,
};