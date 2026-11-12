// SPDX-License-Identifier: Unlicense

#include "globals.h"
#include "app/frame.h"
#include "app/scene_manager.h"
#include "scenes/scenes.h"

#include "globals.h"
#include "draw_style.h"

void app_initialize()
{
	G.rng = 1;
	zbuf_init();
	app_scene_switch(&g_scene_menu);
}

void app_update()
{
	frame_begin();
	app_scene_update();
	frame_end();
}