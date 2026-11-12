// frame.c
#include "frame.h"
#include "../globals.h"
#include "../mathlib.h"
#include "../platform.h"

void frame_begin(void)
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
}

void frame_end(void)
{
	plat_gfx_mark_updated_rows(0, SCREEN_Y - 1);
	plat_sound_update();
}