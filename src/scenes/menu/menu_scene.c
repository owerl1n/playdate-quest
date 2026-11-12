#include "../scenes.h"
#include "../../globals.h"
#include "../../platform.h"

typedef struct MenuItem {
	const char* title;
	const AppScene* target;
} MenuItem;

static const MenuItem s_items[] = {
	{ "Cabinet viewer", &g_scene_cabinet },
};
#define ITEM_COUNT ((int)(sizeof(s_items) / sizeof(s_items[0])))

static int s_sel;

static void menu_enter(void)
{
	s_sel = 0;
}

static void menu_update(void)
{
	if (G.buttons_pressed & kPlatButtonUp)   s_sel = (s_sel + ITEM_COUNT - 1) % ITEM_COUNT;
	if (G.buttons_pressed & kPlatButtonDown) s_sel = (s_sel + 1) % ITEM_COUNT;
	if (G.buttons_pressed & kPlatButtonA)
		app_scene_switch(s_items[s_sel].target);

	plat_gfx_draw_text("PlayDators", 20, 20);
	for (int i = 0; i < ITEM_COUNT; ++i)
	{
		if (i == s_sel)
			plat_gfx_draw_text(">", 20, 60 + i * 20);
		plat_gfx_draw_text(s_items[i].title, 40, 60 + i * 20);
	}
}

const AppScene g_scene_menu = {
	.name = "menu",
	.enter = menu_enter,
	.update = menu_update,
	.exit = NULL,
};