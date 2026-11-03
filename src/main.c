// SPDX-License-Identifier: Unlicense

#include "globals.h"
#include "mathlib.h"
#include "platform.h"
#include "render.h"
#include "util/pixel_ops.h"

static Scene s_scene;
static Mesh* s_house;
static MeshInstance s_house_inst;

static float s_cam_angle = 0.5f;   // вращение вокруг дома
static float s_cam_dist = 8.0f;    // расстояние до дома
static bool s_draw_bluenoise;

void app_initialize()
{
	G.rng = 1;
	init_pixel_ops(); // грузит BlueNoise.tga

	s_house = mesh_load_from_file("house.pdm");
	if (!s_house)
	{
		plat_sys_log_error("Error: failed to load house.pdm");
		return;
	}

	scene_init(&s_scene);
	scene_setLight(&s_scene, f3(-1.0f, 1.0f, -0.1f));

	mesh_instance_init(&s_house_inst);
	s_house_inst.mesh = s_house;
	s_house_inst.flags |= MeshDrawFlag_SilhouetteWire; // чёрный контур
	scene_add_mesh(&s_scene, &s_house_inst);
}

void app_update()
{
	// время
	G.t_prev = G.t_cur;
	G.t_cur = plat_time_get();
	G.t_dt = clamp_f(G.t_cur - G.t_prev, 0.0f, 0.5f);

	// ввод
	PlatButtons btCur, btPushed, btRel;
	plat_input_get_buttons(&btCur, &btPushed, &btRel);
	G.buttons_cur = btCur;
	G.buttons_pressed = btPushed;
	G.crank_angle_rad = plat_input_get_crank_angle_rad();
	G.crank_delta_angle_rad = plat_input_get_crank_delta_angle_rad();

	G.framebuffer = plat_gfx_get_frame();
	G.framebuffer_stride = SCREEN_STRIDE_BYTES;

	plat_gfx_clear(kSolidColorWhite);

	if (s_house)
	{
		// управление: кранк/лево-право крутят, вверх-вниз приближают
		s_cam_angle += G.crank_delta_angle_rad;
		if (G.buttons_cur & kPlatButtonLeft)  s_cam_angle -= 1.5f * G.t_dt;
		if (G.buttons_cur & kPlatButtonRight) s_cam_angle += 1.5f * G.t_dt;
		if (G.buttons_cur & kPlatButtonUp)    s_cam_dist -= 5.0f * G.t_dt;
		if (G.buttons_cur & kPlatButtonDown)  s_cam_dist += 5.0f * G.t_dt;
		s_cam_dist = clamp_f(s_cam_dist, 1.0f, 100.0f);
		if (G.buttons_pressed & kPlatButtonA)
			s_draw_bluenoise = !s_draw_bluenoise;

		float3 target = s_house->center;
		float3 cam_pos = v3_add(target, f3(cosf(s_cam_angle) * s_cam_dist,
		                                   s_cam_dist * 0.4f,
		                                   sinf(s_cam_angle) * s_cam_dist));
		scene_setCamera(&s_scene, cam_pos, target, 1.0f, f3(0, 1, 0));

		scene_draw(&s_scene, G.framebuffer, G.framebuffer_stride,
			s_draw_bluenoise ? SceneDrawFlag_DitherBluenoise : 0);
	}

	plat_gfx_mark_updated_rows(0, SCREEN_Y - 1);
	plat_sound_update();
}