#pragma once

#include "mathlib.h"

void draw_tri_pattern(uint8_t* bitmap, int rowstride, const float3* p0, const float3* p1, const float3* p2, const uint8_t* pattern);

void draw_tri_checker(uint8_t* bitmap, int rowstride, const float3* p0, const float3* p1, const float3* p2, const float uvs[6]);

void zbuf_init(void);
void zbuf_clear(void);
void draw_tri_pattern_z(uint8_t* bitmap, int rowstride, const float3* p0, const float3* p1, const float3* p2, const uint8_t* pattern, float zscale);
void draw_line_z(uint8_t* bitmap, int rowstride, const float3* a, const float3* b, float zscale);
