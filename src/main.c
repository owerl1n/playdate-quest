// SPDX-License-Identifier: Unlicense

#include "globals.h"
#include "app/frame.h"
#include "app/scene_manager.h"
#include "scenes/scenes.h"
#include "platform.h"

#include "globals.h"
#include "draw_style.h"

void app_initialize()
{
	G.rng = 1;
	G.show_fps = true; // on by default during development
	plat_menu_add_fps_toggle(&G.show_fps);
	plat_gfx_begin_stats();
	zbuf_init();
	app_scene_switch(&g_scene_menu);
}

void app_update()
{
	frame_begin();
	app_scene_update();
	frame_end();
}