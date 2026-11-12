#include "draw_style.h"
#include "rasterizer_scanline.h"
#include "platform.h"
#include <string.h>
#include <math.h>

FORCE_INLINE void _drawMaskPattern(uint32_t* p, uint32_t mask, uint32_t color)
{
	if ( mask == 0xffffffff )
		*p = color;
	else
		*p = (*p & ~mask) | (color & mask);
}

// --------------------------------------------------------------------------

FORCE_INLINE void draw_scanline_pattern(uint8_t* bitmap, int rowstride, const tri_edge* edge_l, const tri_edge* edge_r, const uint8_t* pattern)
{
	int x = max2(0, edge_l->X);
	int endx = min2(SCREEN_X, edge_r->X);
	if (endx <= x) return;

	uint8_t* row = bitmap + edge_l->Y * rowstride;

	const uint8_t pat = pattern[edge_l->Y % 8];
	uint32_t pattern4 = (pat << 24) | (pat << 16) | (pat << 8) | pat;

	// write out pixels 32 at a time
	int startbit = x % 32;
	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	int endbit = endx % 32;
	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));

	int col = x / 32;
	uint32_t* p = (uint32_t*)row + col;

	if (col == endx / 32)
	{
		uint32_t mask = 0;
		if (startbit > 0 && endbit > 0)
			mask = startmask & endmask;
		else if (startbit > 0)
			mask = startmask;
		else if (endbit > 0)
			mask = endmask;
		_drawMaskPattern(p, mask, pattern4);
	}
	else
	{
		if (startbit > 0)
		{
			_drawMaskPattern(p++, startmask, pattern4);
			x += (32 - startbit);
		}
		while (x + 32 <= endx)
		{
			_drawMaskPattern(p++, 0xffffffff, pattern4);
			x += 32;
		}
		if (endbit > 0)
		{
			_drawMaskPattern(p, endmask, pattern4);
		}
	}
}

void draw_tri_pattern(uint8_t* bitmap, int rowstride, const float3* p0, const float3* p1, const float3* p2, const uint8_t* pattern)
{
	raster_scanline_simple_t tri;
	raster_scanline_simple_begin(&tri, p0, p1, p2);

	int height = raster_scanline_simple_begin1(&tri);
	while (height--) {
		draw_scanline_pattern(bitmap, rowstride, tri.e_left, tri.e_right, pattern);
		raster_scanline_simple_y_step(&tri);
	}
	height = raster_scanline_simple_begin2(&tri);
	while (height--) {
		draw_scanline_pattern(bitmap, rowstride, tri.e_left, tri.e_right, pattern);
		raster_scanline_simple_y_step(&tri);
	}
}


// --------------------------------------------------------------------------
// Simple pure black/white checkerboard

#define DEBUG_CHECKER_RENDER 0

static void draw_scanline_checker(uint8_t* bitmap, int rowstride, const tri_gradients* grad, const tri_edge_uv* edge_l, const tri_edge_uv* edge_r)
{
	raster_scanline_line_t line;
	if (!raster_scanline_line_init(&line, grad, edge_l, edge_r))
		return;

	int X = line.x_start;

	bitmap += edge_l->Y * rowstride;
	// write out pixels 32 at a time
	uint32_t mask = 0;
	uint32_t* p = (uint32_t*)bitmap + X / 32;
	uint32_t color = 0;

	while (raster_scanline_spans_continue(&line))
	{
		raster_scanline_inner_begin(&line);
		for (int i = 0; i < kAffineLength; i++)
		{
			bool checker = ((line.U & 0xFFFF) >= 0x8000) != ((line.V & 0xFFFF) >= 0x8000);
			//checker = true;

			mask |= 0x80000000u >> (X & 31);
			uint32_t texpix = checker ? 0x0 : 0x80;
			color |= (texpix << 24) >> (X % 32);
			//int bit_mask = 1 << (7 - (X & 7));
			//if (checker)
			//	bitmap[X / 8] &= ~bit_mask;
			//else
			//	bitmap[X / 8] |= bit_mask;

#if DEBUG_CHECKER_RENDER
			uint8_t* dbg = plat_gfx_get_debug_frame();
			if (dbg)
			{
				int dbg_idx = (edge_l->Y * SCREEN_X + X) * 4;
				dbg[dbg_idx + 0] += checker ? 250 : 0;
				dbg[dbg_idx + 1] += (line.U / 5 >> 8) & 0xFF;
				dbg[dbg_idx + 2] += (line.V / 5 >> 8) & 0xFF;
				dbg[dbg_idx + 3] = 255;
			}
#endif

			X++;
			raster_scanline_inner_step(&line);

			if (X % 32 == 0)
			{
				_drawMaskPattern(p++, swap(mask), swap(color));
				mask = 0;
				color = 0;
			}
		}
		raster_scanline_spans_step(&line);
	}

	if (raster_scanline_has_rem(&line))
	{
		raster_scanline_rem_begin(&line, grad, edge_r);
		for (int i = 0; i <= line.aff_remainder; i++)
		{
			bool checker = ((line.U & 0xFFFF) >= 0x8000) != ((line.V & 0xFFFF) >= 0x8000);
			//checker = true;

			mask |= 0x80000000u >> (X & 31);
			uint32_t texpix = checker ? 0x0 : 0x80;
			color |= (texpix << 24) >> (X % 32);

			//int bit_mask = 1 << (7 - (X & 7));
			//if (checker)
			//	bitmap[X / 8] &= ~bit_mask;
			//else
			//	bitmap[X / 8] |= bit_mask;
#if DEBUG_CHECKER_RENDER
			uint8_t* dbg = plat_gfx_get_debug_frame();
			if (dbg)
			{
				int dbg_idx = (edge_l->Y * SCREEN_X + X) * 4;
				dbg[dbg_idx + 0] += checker ? 250 : 0;
				dbg[dbg_idx + 1] += (line.U / 5 >> 8) & 0xFF;
				dbg[dbg_idx + 2] += (line.V / 5 >> 8) & 0xFF;
				dbg[dbg_idx + 3] = 255;
			}
#endif

			X++;
			raster_scanline_inner_step(&line);

			if (X % 32 == 0)
			{
				_drawMaskPattern(p++, swap(mask), swap(color));
				mask = 0;
				color = 0;
			}
		}
	}

	_drawMaskPattern(p, swap(mask), swap(color));
}

void draw_tri_checker(uint8_t* bitmap, int rowstride, const float3* p0, const float3* p1, const float3* p2, const float uvs[6])
{
	raster_scanline_uv_t tri;
	raster_scanline_uv_begin(&tri, p0, p1, p2, uvs, 5.0f);

	int height = raster_scanline_uv_begin1(&tri);
	while (height--) {
		draw_scanline_checker(bitmap, rowstride, &tri.grad, tri.e_left, tri.e_right);
		raster_scanline_uv_y_step(&tri);
	}
	height = raster_scanline_uv_begin2(&tri);
	while (height--) {
		draw_scanline_checker(bitmap, rowstride, &tri.grad, tri.e_left, tri.e_right);
		raster_scanline_uv_y_step(&tri);
	}
}

static uint16_t* s_zbuf;

void zbuf_init(void) { s_zbuf = (uint16_t*)plat_malloc(SCREEN_X * SCREEN_Y * sizeof(uint16_t)); }
void zbuf_clear(void) { memset(s_zbuf, 0, SCREEN_X * SCREEN_Y * sizeof(uint16_t)); }

static void draw_scanline_pattern_z(uint8_t* bitmap, int rowstride, const tri_gradients* grad,
	const tri_edge_uv* l, const tri_edge_uv* r, const uint8_t* pattern, float zscale)
{
	int x = max2(0, l->X);
	const int endx = min2(SCREEN_X, r->X);
	if (endx <= x) return;
	const int y = l->Y;

	const float invz0 = l->invz + (float)(x - l->X) * grad->invz_dx;
	int32_t Z = (int32_t)(invz0 * zscale * 65536.0f);
	const int32_t dZ = (int32_t)(grad->invz_dx * zscale * 65536.0f);

	uint16_t* zrow = s_zbuf + y * SCREEN_X;
	uint32_t* p = (uint32_t*)(bitmap + y * rowstride) + x / 32;
	const uint32_t color = swap((uint32_t)pattern[y & 7] * 0x01010101u);
	uint32_t mask = 0;

	for (; x < endx; ++x, Z += dZ)
	{
		int32_t zi = Z >> 16;
		if (zi > 65535) zi = 65535;
		if (zi < 0) zi = 0;
		if ((uint16_t)zi > zrow[x])
		{
			zrow[x] = (uint16_t)zi;
			mask |= 0x80000000u >> (x & 31);
		}
		if ((x & 31) == 31)
		{
			if (mask) _drawMaskPattern(p, swap(mask), color);
			p++;
			mask = 0;
		}
	}
	if (mask) _drawMaskPattern(p, swap(mask), color);
}

void draw_tri_pattern_z(uint8_t* bitmap, int rowstride, const float3* p0, const float3* p1, const float3* p2, const uint8_t* pattern, float zscale)
{
	static const float k_zero_uv[6] = {0};
	raster_scanline_uv_t tri;
	raster_scanline_uv_begin(&tri, p0, p1, p2, k_zero_uv, 0.0f);

	int height = raster_scanline_uv_begin1(&tri);
	while (height--) {
		draw_scanline_pattern_z(bitmap, rowstride, &tri.grad, tri.e_left, tri.e_right, pattern, zscale);
		raster_scanline_uv_y_step(&tri);
	}
	height = raster_scanline_uv_begin2(&tri);
	while (height--) {
		draw_scanline_pattern_z(bitmap, rowstride, &tri.grad, tri.e_left, tri.e_right, pattern, zscale);
		raster_scanline_uv_y_step(&tri);
	}
}

// Линия с тестом глубины. Пишет и в z-буфер, чтобы более дальние поверхности, нарисованные позже, её не затёрли.
void draw_line_z(uint8_t* bitmap, int rowstride, const float3* a, const float3* b, float zscale)
{
	if (min2f(a->x, b->x) >= SCREEN_X || max2f(a->x, b->x) < 0 ||
	    min2f(a->y, b->y) >= SCREEN_Y || max2f(a->y, b->y) < 0)
		return;
	const float dx = b->x - a->x, dy = b->y - a->y;
	int steps = (int)max2f(fabsf(dx), fabsf(dy));
	if (steps < 1) steps = 1;
	const float inv = 1.0f / steps;
	float x = a->x, y = a->y;
	float z = zscale / a->z;
	const float sx = dx * inv, sy = dy * inv, sz = (zscale / b->z - z) * inv;
	for (int i = 0; i <= steps; ++i, x += sx, y += sy, z += sz)
	{
		const int ix = (int)x, iy = (int)y;
		if (x < 0 || y < 0 || ix >= SCREEN_X || iy >= SCREEN_Y) continue;
		int zi = (int)z;
		if (zi > 65535) zi = 65535;
		uint16_t* zp = &s_zbuf[iy * SCREEN_X + ix];
		if (zi + 40 >= (int)*zp)   // 40 = допуск, чтобы линия на краю грани не пропадала
		{
			if (zi > (int)*zp) *zp = (uint16_t)zi;
			bitmap[iy * rowstride + (ix >> 3)] &= (uint8_t)~(0x80 >> (ix & 7));
		}
	}
}
