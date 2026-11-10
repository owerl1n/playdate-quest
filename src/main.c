// SPDX-License-Identifier: Unlicense

#include "globals.h"
#include "mathlib.h"
#include "platform.h"
#include "render.h"
#include "util/pixel_ops.h"

// bias < 0: рисуется позже (поверх), bias > 0: раньше (под остальными).
typedef struct Part {
	const char* file;
	float bias;
	bool visible;       // входит ли деталь в сцену
	Mesh* mesh;
	MeshInstance inst;
} Part;

#define PART_COUNT 6
static Part s_parts[PART_COUNT] = {
	{"cabinet.pdm", 0.0f, true},
	{"drawer1.pdm", -0.5f, true},
	{"drawer2.pdm", -1.5f, true},
	{"drawer3.pdm", -2.5f, true},
	{"lid.pdm", -3.0f, true},
	{"legs.pdm", 3.0f, true},
};

static Scene s_scene;
static float s_cam_angle = 0.5f;
static float s_cam_dist = 8.0f;
static float s_min_dist = 1.0f;
static float s_size = 1.0f;
static int s_sel = 1;           // какую деталь переключит следующее нажатие B
static bool s_draw_bluenoise;
static float3 s_front = {0, 0, 1};   // куда "смотрит" лицевая сторона тумбы

// Пересобрать список сцены: сброс счётчика + добавление видимых деталей.
// Память не освобождается, инстансы и меши остаются.
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

void app_initialize()
{
	G.rng = 1;
	init_pixel_ops();

	scene_init(&s_scene);
	scene_setLight(&s_scene, f3(-1.0f, 1.0f, -0.1f));
	

	for (int i = 0; i < PART_COUNT; ++i)
	{
		Part *p = &s_parts[i];
		p->mesh = mesh_load_from_file(p->file);
		if (!p->mesh)
		{
			plat_sys_log_error("Error: failed to load %s", p->file);
			continue;
		}

		// ↓↓↓ вот сюда вставить ↓↓↓
		plat_sys_log_error("%s: tris=%d verts=%d center=%.2f %.2f %.2f", p->file,
						   p->mesh->tri_count, p->mesh->vertex_count,
						   p->mesh->center.x, p->mesh->center.y, p->mesh->center.z);
		// ↑↑↑ конец вставки ↑↑↑

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

void app_update()
{
	G.t_prev = G.t_cur;
	G.t_cur = plat_time_get();
	G.t_dt = clamp_f(G.t_cur - G.t_prev, 0.0f, 0.5f);

	PlatButtons btCur, btPushed, btRel;
	plat_input_get_buttons(&btCur, &btPushed, &btRel);
	G.buttons_cur = btCur;
	G.buttons_pressed = btPushed;
	G.crank_angle_rad = plat_input_get_crank_angle_rad();
	G.crank_delta_angle_rad = plat_input_get_crank_delta_angle_rad();

	G.framebuffer = plat_gfx_get_frame();
	G.framebuffer_stride = SCREEN_STRIDE_BYTES;

	plat_gfx_clear(kSolidColorWhite);

	if (s_parts[0].mesh)
	{
		s_cam_angle += G.crank_delta_angle_rad;
		if (G.buttons_cur & kPlatButtonLeft)  s_cam_angle -= 1.5f * G.t_dt;
		if (G.buttons_cur & kPlatButtonRight) s_cam_angle += 1.5f * G.t_dt;
		if (G.buttons_cur & kPlatButtonUp)    s_cam_dist -= 5.0f * G.t_dt;
		if (G.buttons_cur & kPlatButtonDown)  s_cam_dist += 5.0f * G.t_dt;
		s_cam_dist = clamp_f(s_cam_dist, s_min_dist, 100.0f);
		if (G.buttons_pressed & kPlatButtonA)
			s_draw_bluenoise = !s_draw_bluenoise;

		// B: скрыть/показать следующую деталь (кроме главной [0]), затем перейти к следующей
		if (G.buttons_pressed & kPlatButtonB)
		{
			s_parts[s_sel].visible = !s_parts[s_sel].visible;
			rebuild_scene();
			s_sel++;
			if (s_sel >= PART_COUNT)
				s_sel = 1;
		}

		float3 target = s_parts[0].mesh->center;
		float3 cam_pos = v3_add(target, f3(cosf(s_cam_angle) * s_cam_dist,
		                                   s_cam_dist * 0.4f,
		                                   sinf(s_cam_angle) * s_cam_dist));
		scene_setCamera(&s_scene, cam_pos, target, 1.0f, f3(0, 1, 0));

		for (int i = 0; i < PART_COUNT; ++i)
			s_parts[i].inst.sort_bias = s_parts[i].bias * s_size;

		scene_draw(&s_scene, G.framebuffer, G.framebuffer_stride,
			s_draw_bluenoise ? SceneDrawFlag_DitherBluenoise : 0);
	}

	plat_gfx_mark_updated_rows(0, SCREEN_Y - 1);
	plat_sound_update();
}