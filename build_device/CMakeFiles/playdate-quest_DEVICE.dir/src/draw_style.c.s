	.cpu cortex-m7
	.arch armv7e-m
	.fpu fpv5-sp-d16
	.eabi_attribute 27, 1	@ Tag_ABI_HardFP_use
	.eabi_attribute 28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute 23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"draw_style.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\draw_style.c"
	.section	.text.draw_scanline_checker,"ax",%progbits
	.align	1
	.p2align 4,,15
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_scanline_checker, %function
draw_scanline_checker:
.LVL0:
.LFB74:
	.loc 1 135 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 135 1 is_stmt 0 view .LVU1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI0:
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28	@,,
.LCFI1:
	.cfi_def_cfa_offset 64
.LBB340:
.LBB341:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:243: 	line->x_start = max2(0, edge_l->X);
	.file 2 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\rasterizer_scanline.h"
	.loc 2 243 32 view .LVU2
	ldr	r4, [r3]	@ _68, edge_l_62(D)->X
.LBE341:
.LBE340:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:135: {
	.loc 1 135 1 view .LVU3
	ldr	fp, [sp, #64]	@ edge_r, edge_r
	.loc 1 136 2 is_stmt 1 view .LVU4
	.loc 1 137 2 view .LVU5
.LVL1:
.LBB359:
.LBI340:
	.loc 2 237 18 view .LVU6
.LBB346:
	.loc 2 239 1 view .LVU7
	.loc 2 240 1 view .LVU8
	.loc 2 241 1 view .LVU9
	.loc 2 243 2 view .LVU10
.LBB342:
.LBI342:
	.file 3 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\mathlib.h"
	.loc 3 150 19 view .LVU11
.LBB343:
	.loc 3 152 2 view .LVU12
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:152: 	return a > b ? a : b;
	.loc 3 152 19 is_stmt 0 view .LVU13
	bic	r7, r4, r4, asr #31	@ X, _68
.LVL2:
	.loc 3 152 19 view .LVU14
.LBE343:
.LBE342:
	.loc 2 244 2 is_stmt 1 view .LVU15
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:244: 	line->x_end = min2(SCREEN_X, edge_r->X);
	.loc 2 244 32 is_stmt 0 view .LVU16
	ldr	lr, [fp]	@ _80, edge_r_63(D)->X
.LVL3:
.LBB344:
.LBI344:
	.loc 3 145 19 is_stmt 1 view .LVU17
.LBB345:
	.loc 3 147 2 view .LVU18
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU19
	cmp	lr, #400	@ _81,
	mov	ip, lr	@ _81, _80
	it	ge
	movge	ip, #400	@ _81,
.LVL4:
	.loc 3 147 19 view .LVU20
.LBE345:
.LBE344:
	.loc 2 245 2 is_stmt 1 view .LVU21
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:245: 	if (line->x_end <= line->x_start)
	.loc 2 245 5 is_stmt 0 view .LVU22
	cmp	r7, ip	@ X, _81
	bge	.L1		@,
	.loc 2 248 2 is_stmt 1 view .LVU23
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:248: 	line->clip_adj_l = (float)(line->x_start - edge_l->X);
	.loc 2 248 43 is_stmt 0 view .LVU24
	subs	r4, r7, r4	@ _82, X, _68
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:251: 	line->invz_left = edge_l->invz + line->clip_adj_l * grad->invz_dx;
	.loc 2 251 58 view .LVU25
	vldr.32	s3, [r2, #36]	@ _88, grad_61(D)->invz_dx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:251: 	line->invz_left = edge_l->invz + line->clip_adj_l * grad->invz_dx;
	.loc 2 251 33 view .LVU26
	vldr.32	s11, [r3, #28]	@ edge_l_62(D)->invz, edge_l_62(D)->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:263: 	line->z_left = 1.0f / line->invz_left;
	.loc 2 263 22 view .LVU27
	vmov.f32	s10, #1.0e+0	@ tmp258,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:248: 	line->clip_adj_l = (float)(line->x_start - edge_l->X);
	.loc 2 248 21 view .LVU28
	vmov	s15, r4	@ int	@ _82, _82
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:252: 	line->uz_left = edge_l->uz + line->clip_adj_l * grad->uz_dx;
	.loc 2 252 54 view .LVU29
	vldr.32	s9, [r2, #44]	@ _92, grad_61(D)->uz_dx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:253: 	line->vz_left = edge_l->vz + line->clip_adj_l * grad->vz_dx;
	.loc 2 253 54 view .LVU30
	vldr.32	s14, [r2, #52]	@ _96, grad_61(D)->vz_dx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:267: 	const int width = line->x_end - line->x_start;
	.loc 2 267 12 view .LVU31
	sub	r2, ip, r7	@ width, _81, X
.LVL5:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:248: 	line->clip_adj_l = (float)(line->x_start - edge_l->X);
	.loc 2 248 21 view .LVU32
	vcvt.f32.s32	s15, s15	@ _83, _82
	.loc 2 249 2 is_stmt 1 view .LVU33
	.loc 2 251 2 view .LVU34
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:252: 	line->uz_left = edge_l->uz + line->clip_adj_l * grad->uz_dx;
	.loc 2 252 29 is_stmt 0 view .LVU35
	vldr.32	s12, [r3, #40]	@ edge_l_62(D)->uz, edge_l_62(D)->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:253: 	line->vz_left = edge_l->vz + line->clip_adj_l * grad->vz_dx;
	.loc 2 253 29 view .LVU36
	vldr.32	s13, [r3, #52]	@ edge_l_62(D)->vz, edge_l_62(D)->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:268: 	line->aff_spans = width / kAffineLength;
	.loc 2 268 26 view .LVU37
	asrs	r6, r2, #3	@ line$aff_spans, width,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:270: 	if (!line->aff_remainder)
	.loc 2 270 5 view .LVU38
	ands	r2, r2, #7	@ _110, width,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:251: 	line->invz_left = edge_l->invz + line->clip_adj_l * grad->invz_dx;
	.loc 2 251 33 view .LVU39
	vfma.f32	s11, s15, s3	@ _90, _83, _88
.LVL6:
	.loc 2 252 2 is_stmt 1 view .LVU40
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:252: 	line->uz_left = edge_l->uz + line->clip_adj_l * grad->uz_dx;
	.loc 2 252 29 is_stmt 0 view .LVU41
	vfma.f32	s12, s15, s9	@ _94, _83, _92
.LVL7:
	.loc 2 253 2 is_stmt 1 view .LVU42
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:253: 	line->vz_left = edge_l->vz + line->clip_adj_l * grad->vz_dx;
	.loc 2 253 29 is_stmt 0 view .LVU43
	vfma.f32	s13, s15, s14	@ _98, _83, _96
.LVL8:
	.loc 2 255 2 is_stmt 1 view .LVU44
	.loc 2 256 2 view .LVU45
	.loc 2 257 2 view .LVU46
	.loc 2 259 2 view .LVU47
	.loc 2 260 2 view .LVU48
	.loc 2 261 2 view .LVU49
	.loc 2 263 2 view .LVU50
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:263: 	line->z_left = 1.0f / line->invz_left;
	.loc 2 263 22 is_stmt 0 view .LVU51
	vdiv.f32	s15, s10, s11	@ _105, tmp258, _90
	.loc 2 264 2 is_stmt 1 view .LVU52
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:264: 	line->u_left = line->z_left * line->uz_left;
	.loc 2 264 30 is_stmt 0 view .LVU53
	vmul.f32	s4, s12, s15	@ _114, _94, _105
	.loc 2 265 2 is_stmt 1 view .LVU54
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:265: 	line->v_left = line->z_left * line->vz_left;
	.loc 2 265 30 is_stmt 0 view .LVU55
	vmul.f32	s15, s13, s15	@ _115, _98, _105
	.loc 2 267 2 is_stmt 1 view .LVU56
	.loc 2 268 2 view .LVU57
	.loc 2 269 2 view .LVU58
	.loc 2 270 2 view .LVU59
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:270: 	if (!line->aff_remainder)
	.loc 2 270 5 is_stmt 0 view .LVU60
	beq	.L28		@,
.LBE346:
.LBE359:
.LBB360:
.LBB361:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:327: 	if (--line->aff_remainder)
	.loc 2 327 6 view .LVU61
	subs	r2, r2, #1	@ _338, _110,
	str	r2, [sp]	@ _338, %sfp
.L4:
.LBE361:
.LBE360:
.LBB388:
.LBB347:
	.loc 2 276 2 is_stmt 1 view .LVU62
	.loc 2 277 2 view .LVU63
.LVL9:
	.loc 2 277 2 is_stmt 0 view .LVU64
.LBE347:
.LBE388:
	.loc 1 140 2 is_stmt 1 view .LVU65
	.loc 1 142 2 view .LVU66
	.loc 1 144 2 view .LVU67
	.loc 1 145 2 view .LVU68
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:142: 	bitmap += edge_l->Y * rowstride;
	.loc 1 142 22 is_stmt 0 view .LVU69
	ldr	r2, [r3, #20]	@ edge_l_62(D)->Y, edge_l_62(D)->Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:145: 	uint32_t* p = (uint32_t*)bitmap + X / 32;
	.loc 1 145 38 view .LVU70
	asrs	r3, r7, #5	@ _5, X,
.LVL10:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:145: 	uint32_t* p = (uint32_t*)bitmap + X / 32;
	.loc 1 145 34 view .LVU71
	lsls	r3, r3, #2	@ _7, _5,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:145: 	uint32_t* p = (uint32_t*)bitmap + X / 32;
	.loc 1 145 12 view .LVU72
	mla	r3, r2, r1, r3	@ _193, edge_l_62(D)->Y, rowstride, _7
	adds	r5, r0, r3	@ p, bitmap, _193
	.loc 1 146 2 is_stmt 1 view .LVU73
	.loc 1 148 2 view .LVU74
.LVL11:
	.loc 1 148 9 view .LVU75
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:148: 	while (raster_scanline_spans_continue(&line))
	.loc 1 148 9 is_stmt 0 discriminator 1 view .LVU76
	cmp	r6, #0	@ line$aff_spans
	beq	.L19	@
.LBB389:
.LBB348:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:255: 	line->invz_aff_step = grad->invz_dx * kAffineLength;
	.loc 2 255 38 view .LVU77
	vmov.f32	s8, #8.0e+0	@ tmp264,
	add	r9, r7, #8	@ ivtmp.128, X,
.LBE348:
.LBE389:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:146: 	uint32_t color = 0;
	.loc 1 146 11 view .LVU78
	movs	r4, #0	@ color,
.LBB390:
.LBB391:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:298: 	line->z_right = 1.0f / line->invz_right;
	.loc 2 298 23 view .LVU79
	vmov.f32	s5, #1.0e+0	@ tmp267,
	lsls	r3, r6, #3	@ _288, line$aff_spans,
.LBE391:
.LBE390:
.LBB416:
.LBB417:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:156: 			mask |= 0x80000000u >> (X & 31);
	.loc 1 156 24 view .LVU80
	mov	r10, #-2147483648	@ tmp285,
.LBE417:
.LBE416:
.LBB429:
.LBB349:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:255: 	line->invz_aff_step = grad->invz_dx * kAffineLength;
	.loc 2 255 38 view .LVU81
	vmul.f32	s6, s3, s8	@ _99, _88, tmp264
	add	r2, r9, r6, lsl #3	@ _285, ivtmp.128, line$aff_spans,
.LVL12:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:256: 	line->uz_aff_step = grad->uz_dx * kAffineLength;
	.loc 2 256 34 view .LVU82
	vmul.f32	s7, s9, s8	@ _100, _92, tmp264
.LBE349:
.LBE429:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:144: 	uint32_t mask = 0;
	.loc 1 144 11 view .LVU83
	mov	r0, r4	@ mask, color
.LVL13:
.LBB430:
.LBB350:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:257: 	line->vz_aff_step = grad->vz_dx * kAffineLength;
	.loc 2 257 34 view .LVU84
	vmul.f32	s8, s14, s8	@ _101, _96, tmp264
.LBE350:
.LBE430:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:144: 	uint32_t mask = 0;
	.loc 1 144 11 view .LVU85
	str	ip, [sp, #16]	@ _81, %sfp
.LBB431:
.LBB351:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:259: 	line->invz_right = line->invz_left + line->invz_aff_step;
	.loc 2 259 37 view .LVU86
	vadd.f32	s11, s11, s6	@ line$invz_right, _90, _99
.LVL14:
	.loc 2 259 37 view .LVU87
.LBE351:
.LBE431:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:144: 	uint32_t mask = 0;
	.loc 1 144 11 view .LVU88
	str	r2, [sp, #4]	@ _285, %sfp
.LBB432:
.LBB352:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:260: 	line->uz_right = line->uz_left + line->uz_aff_step;
	.loc 2 260 33 view .LVU89
	vadd.f32	s12, s12, s7	@ line$uz_right, _94, _100
.LVL15:
	.loc 2 260 33 view .LVU90
.LBE352:
.LBE432:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:144: 	uint32_t mask = 0;
	.loc 1 144 11 view .LVU91
	str	r3, [sp, #20]	@ _288, %sfp
.LBB433:
.LBB353:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:261: 	line->vz_right = line->vz_left + line->vz_aff_step;
	.loc 2 261 33 view .LVU92
	vadd.f32	s13, s13, s8	@ line$vz_right, _98, _101
.LVL16:
	.loc 2 261 33 view .LVU93
.LBE353:
.LBE433:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:144: 	uint32_t mask = 0;
	.loc 1 144 11 view .LVU94
	str	fp, [sp, #64]	@ edge_r, edge_r
.LVL17:
	.loc 1 144 11 view .LVU95
	strd	r7, lr, [sp, #8]	@ X, _80,,
.LVL18:
.L12:
	.loc 1 144 11 view .LVU96
	vmov.f32	s1, s15	@ line$v_left, _115
	sub	r1, r9, #8	@ X, ivtmp.128,
.LVL19:
	.loc 1 150 3 is_stmt 1 view .LVU97
.LBB434:
.LBI390:
	.loc 2 296 79 view .LVU98
.LBB414:
	.loc 2 298 2 view .LVU99
	.loc 2 299 2 view .LVU100
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:299: 	line->u_right = line->z_right * line->uz_right;
	.loc 2 299 32 is_stmt 0 view .LVU101
	vdiv.f32	s15, s5, s11	@ _113, tmp267, line$invz_right
	and	r3, r1, #31	@ _13, X,
	vmov.f32	s10, s4	@ line$u_left, _114
	vmul.f32	s4, s15, s12	@ _114, _113, line$uz_right
	.loc 2 300 2 is_stmt 1 view .LVU102
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:300: 	line->v_right = line->z_right * line->vz_right;
	.loc 2 300 32 is_stmt 0 view .LVU103
	vmul.f32	s15, s15, s13	@ _115, _113, line$vz_right
	.loc 2 302 2 is_stmt 1 view .LVU104
.LVL20:
.LBB392:
.LBI392:
	.loc 2 26 85 view .LVU105
.LBB393:
	.loc 2 26 114 view .LVU106
	.loc 2 26 114 is_stmt 0 view .LVU107
.LBE393:
.LBE392:
	.loc 2 303 2 is_stmt 1 view .LVU108
.LBB396:
.LBI396:
	.loc 2 26 85 view .LVU109
.LBB397:
	.loc 2 26 114 view .LVU110
	.loc 2 26 114 is_stmt 0 view .LVU111
.LBE397:
.LBE396:
	.loc 2 304 2 is_stmt 1 view .LVU112
.LBB401:
.LBI401:
	.loc 2 26 85 view .LVU113
.LBB402:
	.loc 2 26 114 view .LVU114
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 is_stmt 0 view .LVU115
	vsub.f32	s2, s4, s10	@ _122, _114, line$u_left
	vcvt.s32.f32	s2, s2, #16	@ _122, _122,
	vmov	r8, s2	@ int	@ _122, _122
.LBE402:
.LBE401:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:305: 	line->dV = FloatToFixed16_16(line->v_right - line->v_left) / kAffineLength;
	.loc 2 305 13 view .LVU116
	vsub.f32	s2, s15, s1	@ _124, _115, line$v_left
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:304: 	line->dU = FloatToFixed16_16(line->u_right - line->u_left) / kAffineLength;
	.loc 2 304 61 discriminator 1 view .LVU117
	cmp	r8, #0	@ _122,
.LBB403:
.LBB404:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 view .LVU118
	vcvt.s32.f32	s2, s2, #16	@ _126, _126,
.LBE404:
.LBE403:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:304: 	line->dU = FloatToFixed16_16(line->u_right - line->u_left) / kAffineLength;
	.loc 2 304 61 discriminator 1 view .LVU119
	it	lt
	addlt	r8, r8, #7	@ _122, _122,
.LBB407:
.LBB405:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 view .LVU120
	vmov	r6, s2	@ int	@ _126, _126
.LBE405:
.LBE407:
.LBB408:
.LBB398:
	vmov.f32	s2, s1	@ ivtmp.116, line$v_left
.LBE398:
.LBE408:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:304: 	line->dU = FloatToFixed16_16(line->u_right - line->u_left) / kAffineLength;
	.loc 2 304 61 discriminator 1 view .LVU121
	asr	r8, r8, #3	@ line$dU, _122,
	.loc 2 305 2 is_stmt 1 view .LVU122
.LVL21:
.LBB409:
.LBI403:
	.loc 2 26 85 view .LVU123
.LBB406:
	.loc 2 26 114 view .LVU124
	.loc 2 26 114 is_stmt 0 view .LVU125
.LBE406:
.LBE409:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:305: 	line->dV = FloatToFixed16_16(line->v_right - line->v_left) / kAffineLength;
	.loc 2 305 61 discriminator 1 view .LVU126
	cmp	r6, #0	@ _126,
.LBB410:
.LBB399:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 view .LVU127
	vcvt.s32.f32	s2, s2, #16	@ ivtmp.116, ivtmp.116,
.LBE399:
.LBE410:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:305: 	line->dV = FloatToFixed16_16(line->v_right - line->v_left) / kAffineLength;
	.loc 2 305 61 discriminator 1 view .LVU128
	it	lt
	addlt	r6, r6, #7	@ _126, _126,
.LBB411:
.LBB400:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 view .LVU129
	vmov	ip, s2	@ int	@ ivtmp.116, ivtmp.116
.LBE400:
.LBE411:
.LBB412:
.LBB394:
	vmov.f32	s2, s10	@ ivtmp.117, line$u_left
.LBE394:
.LBE412:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:305: 	line->dV = FloatToFixed16_16(line->v_right - line->v_left) / kAffineLength;
	.loc 2 305 61 discriminator 1 view .LVU130
	asrs	r6, r6, #3	@ line$aff_spans, _126,
.LVL22:
	.loc 2 305 61 discriminator 1 view .LVU131
.LBE414:
.LBE434:
	.loc 1 151 3 is_stmt 1 view .LVU132
.LBB435:
	.loc 1 151 8 view .LVU133
	.loc 1 151 21 discriminator 1 view .LVU134
.LBE435:
.LBB436:
.LBB415:
.LBB413:
.LBB395:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 is_stmt 0 view .LVU135
	vcvt.s32.f32	s2, s2, #16	@ ivtmp.117, ivtmp.117,
	vmov	r7, s2	@ int	@ ivtmp.117, ivtmp.117
.LVL23:
.L11:
	.loc 2 26 121 view .LVU136
.LBE395:
.LBE413:
.LBE415:
.LBE436:
.LBB437:
.LBB428:
	.loc 1 153 3 is_stmt 1 view .LVU137
	.loc 1 156 4 view .LVU138
	.loc 1 182 5 view .LVU139
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:157: 			uint32_t texpix = checker ? 0x0 : 0x80;
	.loc 1 157 36 is_stmt 0 view .LVU140
	ubfx	fp, r7, #15, #1	@ _9, ivtmp.117,,
	ubfx	r2, ip, #15, #1	@ _11, ivtmp.116,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:177: 			X++;
	.loc 1 177 5 view .LVU141
	adds	r1, r1, #1	@ X, X,
.LVL24:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:156: 			mask |= 0x80000000u >> (X & 31);
	.loc 1 156 24 view .LVU142
	lsr	lr, r10, r3	@ _14, tmp285, _13
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:157: 			uint32_t texpix = checker ? 0x0 : 0x80;
	.loc 1 157 36 view .LVU143
	sub	r2, fp, r2	@ _203, _9, _11
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:182: 				_drawMaskPattern(p++, swap(mask), swap(color));
	.loc 1 182 5 view .LVU144
	add	fp, r5, #4	@ p, p,
.LVL25:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:156: 			mask |= 0x80000000u >> (X & 31);
	.loc 1 156 9 view .LVU145
	orr	r0, r0, lr	@ mask, mask, _14
.LVL26:
	.loc 1 157 4 is_stmt 1 view .LVU146
	.loc 1 158 4 view .LVU147
.LBB418:
.LBI418:
	.loc 3 29 24 view .LVU148
.LBB419:
	.loc 3 33 2 view .LVU149
	.loc 3 34 2 view .LVU150
.LBE419:
.LBE418:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:157: 			uint32_t texpix = checker ? 0x0 : 0x80;
	.loc 1 157 36 is_stmt 0 view .LVU151
	clz	r2, r2	@ _203, _203
	lsrs	r2, r2, #5	@ _203, _203,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:158: 			color |= (texpix << 24) >> (X % 32);
	.loc 1 158 21 view .LVU152
	lsls	r2, r2, #31	@ _15, _203,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:158: 			color |= (texpix << 24) >> (X % 32);
	.loc 1 158 28 view .LVU153
	lsrs	r2, r2, r3	@ _16, _15, _13
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:180: 			if (X % 32 == 0)
	.loc 1 180 7 view .LVU154
	ands	r3, r1, #31	@ _13, X,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:158: 			color |= (texpix << 24) >> (X % 32);
	.loc 1 158 10 view .LVU155
	orr	r4, r4, r2	@ color, color, _16
.LVL27:
	.loc 1 177 4 is_stmt 1 view .LVU156
	.loc 1 178 4 view .LVU157
	.loc 1 180 4 view .LVU158
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:180: 			if (X % 32 == 0)
	.loc 1 180 7 is_stmt 0 view .LVU159
	bne	.L8		@,
.LBB421:
.LBB420:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU160
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r0, r0	@ result, mask
@ 0 "" 2
.LVL28:
	.loc 3 35 2 is_stmt 1 view .LVU161
	.loc 3 35 2 is_stmt 0 view .LVU162
	.thumb
	.syntax unified
.LBE420:
.LBE421:
.LBB422:
.LBI422:
	.loc 3 29 24 is_stmt 1 view .LVU163
.LBB423:
	.loc 3 33 2 view .LVU164
	.loc 3 34 2 view .LVU165
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r2, r4	@ result, color
@ 0 "" 2
	.loc 3 35 2 view .LVU166
.LVL29:
	.loc 3 35 2 is_stmt 0 view .LVU167
	.thumb
	.syntax unified
.LBE423:
.LBE422:
.LBB424:
.LBI424:
	.loc 1 5 79 is_stmt 1 view .LVU168
.LBB425:
	.loc 1 7 2 view .LVU169
	.loc 1 10 3 view .LVU170
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU171
	adds	r4, r0, #1	@, result,
.LVL30:
	.loc 1 7 5 view .LVU172
	beq	.L10		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 view .LVU173
	ldr	r4, [r5]	@ _130, *p_247
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU174
	eors	r2, r2, r4	@, _131, result, _130
.LVL31:
	.loc 1 10 21 view .LVU175
	ands	r2, r2, r0	@, _132, _131, result
	eors	r2, r2, r4	@, result, _132, _130
.L10:
.LBE425:
.LBE424:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:184: 				color = 0;
	.loc 1 184 11 view .LVU176
	movs	r4, #0	@ color,
.LBB427:
.LBB426:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 view .LVU177
	str	r2, [r5]	@ result, *p_247
.LBE426:
.LBE427:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:182: 				_drawMaskPattern(p++, swap(mask), swap(color));
	.loc 1 182 5 view .LVU178
	mov	r5, fp	@ p, p
.LVL32:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:183: 				mask = 0;
	.loc 1 183 10 view .LVU179
	mov	r0, r4	@ mask, color
.LVL33:
.L8:
	.loc 1 183 10 view .LVU180
.LBE428:
	.loc 1 151 29 is_stmt 1 discriminator 2 view .LVU181
	.loc 1 151 21 discriminator 1 view .LVU182
	cmp	r1, r9	@ X, ivtmp.128
	add	ip, ip, r6	@ ivtmp.116, line$aff_spans
.LVL34:
	.loc 1 151 21 is_stmt 0 discriminator 1 view .LVU183
	add	r7, r7, r8	@ ivtmp.117, line$dU
	.loc 1 151 21 discriminator 1 view .LVU184
	bne	.L11		@,
.LBE437:
	.loc 1 187 3 is_stmt 1 view .LVU185
.LVL35:
.LBB438:
.LBI438:
	.loc 2 285 79 view .LVU186
.LBB439:
	.loc 2 287 2 view .LVU187
	.loc 2 288 2 view .LVU188
	.loc 2 289 2 view .LVU189
	.loc 2 291 2 view .LVU190
.LBE439:
.LBE438:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:148: 	while (raster_scanline_spans_continue(&line))
	.loc 1 148 9 is_stmt 0 discriminator 1 view .LVU191
	add	r9, r1, #8	@ ivtmp.128, X,
	ldr	r3, [sp, #4]	@ _285, %sfp
.LBB442:
.LBB440:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:291: 	line->invz_right += line->invz_aff_step;
	.loc 2 291 19 view .LVU192
	vadd.f32	s11, s11, s6	@ line$invz_right, line$invz_right, _99
.LVL36:
	.loc 2 292 2 is_stmt 1 view .LVU193
.LBE440:
.LBE442:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:148: 	while (raster_scanline_spans_continue(&line))
	.loc 1 148 9 is_stmt 0 discriminator 1 view .LVU194
	cmp	r3, r9	@ _285, ivtmp.128
.LBB443:
.LBB441:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:292: 	line->uz_right += line->uz_aff_step;
	.loc 2 292 17 view .LVU195
	vadd.f32	s12, s12, s7	@ line$uz_right, line$uz_right, _100
.LVL37:
	.loc 2 293 2 is_stmt 1 view .LVU196
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:293: 	line->vz_right += line->vz_aff_step;
	.loc 2 293 17 is_stmt 0 view .LVU197
	vadd.f32	s13, s13, s8	@ line$vz_right, line$vz_right, _101
.LVL38:
	.loc 2 293 17 view .LVU198
.LBE441:
.LBE443:
	.loc 1 148 9 is_stmt 1 view .LVU199
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:148: 	while (raster_scanline_spans_continue(&line))
	.loc 1 148 9 is_stmt 0 discriminator 1 view .LVU200
	bne	.L12		@,
	ldr	fp, [sp, #64]	@ edge_r, edge_r
	ldrd	r7, lr, [sp, #8]	@ X, _80,,
	ldrd	ip, r3, [sp, #16]	@ _81, _288,,
	add	r7, r7, r3	@ X, _288
.LVL39:
.L5:
	.loc 1 190 2 is_stmt 1 view .LVU201
	.loc 1 192 3 view .LVU202
.LBB444:
.LBI360:
	.loc 2 319 79 view .LVU203
.LBB384:
	.loc 2 321 2 view .LVU204
	.loc 2 322 2 view .LVU205
	.loc 2 323 2 view .LVU206
	.loc 2 325 2 view .LVU207
.LBB362:
.LBI362:
	.loc 2 26 85 view .LVU208
.LBB363:
	.loc 2 26 114 view .LVU209
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 is_stmt 0 view .LVU210
	vmov.f32	s12, s4	@ _151, _114
.LBE363:
.LBE362:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:327: 	if (--line->aff_remainder)
	.loc 2 327 5 view .LVU211
	ldr	r3, [sp]	@ _338, %sfp
.LBB365:
.LBB366:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 view .LVU212
	vmov.f32	s11, s15	@ _153, _115
.LBE366:
.LBE365:
.LBB368:
.LBB364:
	vcvt.s32.f32	s12, s12, #16	@ _151, _151,
.LVL40:
	.loc 2 26 121 view .LVU213
.LBE364:
.LBE368:
	.loc 2 326 2 is_stmt 1 view .LVU214
.LBB369:
.LBI365:
	.loc 2 26 85 view .LVU215
.LBB367:
	.loc 2 26 114 view .LVU216
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 is_stmt 0 view .LVU217
	vcvt.s32.f32	s11, s11, #16	@ _153, _153,
.LVL41:
	.loc 2 26 121 view .LVU218
.LBE367:
.LBE369:
	.loc 2 327 2 is_stmt 1 view .LVU219
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:327: 	if (--line->aff_remainder)
	.loc 2 327 5 is_stmt 0 view .LVU220
	cbz	r3, .L13	@ _338,
.LBE384:
.LBE444:
.LBB445:
.LBB354:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:249: 	line->clip_adj_r = (float)(edge_r->X - line->x_end + 1);
	.loc 2 249 39 view .LVU221
	sub	lr, lr, ip	@ _84, _80, _81
.LBE354:
.LBE445:
.LBB446:
.LBB385:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:321: 	line->z_right = 1.0f / (edge_r->invz - grad->invz_dx * line->clip_adj_r);
	.loc 2 321 23 view .LVU222
	vldr.32	s7, [fp, #28]	@ edge_r_63(D)->invz, edge_r_63(D)->invz
	vmov.f32	s6, #1.0e+0	@ tmp308,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:322: 	line->u_right = line->z_right * (edge_r->uz - grad->uz_dx * line->clip_adj_r);
	.loc 2 322 46 view .LVU223
	vldr.32	s8, [fp, #40]	@ edge_r_63(D)->uz, edge_r_63(D)->uz
.LBE385:
.LBE446:
.LBB447:
.LBB355:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:249: 	line->clip_adj_r = (float)(edge_r->X - line->x_end + 1);
	.loc 2 249 53 view .LVU224
	add	lr, lr, #1	@ _85, _84,
.LBE355:
.LBE447:
.LBB448:
.LBB386:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:323: 	line->v_right = line->z_right * (edge_r->vz - grad->vz_dx * line->clip_adj_r);
	.loc 2 323 46 view .LVU225
	vldr.32	s10, [fp, #52]	@ edge_r_63(D)->vz, edge_r_63(D)->vz
.LBE386:
.LBE448:
.LBB449:
.LBB356:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:249: 	line->clip_adj_r = (float)(edge_r->X - line->x_end + 1);
	.loc 2 249 21 view .LVU226
	vmov	s13, lr	@ int	@ _85, _85
	vcvt.f32.s32	s13, s13	@ _86, _85
.LBE356:
.LBE449:
.LBB450:
.LBB387:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:321: 	line->z_right = 1.0f / (edge_r->invz - grad->invz_dx * line->clip_adj_r);
	.loc 2 321 23 view .LVU227
	vfms.f32	s7, s13, s3	@ tmp305, _86, _88
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:323: 	line->v_right = line->z_right * (edge_r->vz - grad->vz_dx * line->clip_adj_r);
	.loc 2 323 46 view .LVU228
	vfms.f32	s10, s13, s14	@ _148, _86, _96
	.loc 2 330 3 is_stmt 1 view .LVU229
.LVL42:
.LBB370:
.LBI370:
	.loc 2 26 85 view .LVU230
.LBB371:
	.loc 2 26 114 view .LVU231
	.loc 2 26 114 is_stmt 0 view .LVU232
.LBE371:
.LBE370:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:322: 	line->u_right = line->z_right * (edge_r->uz - grad->uz_dx * line->clip_adj_r);
	.loc 2 322 46 view .LVU233
	vfms.f32	s8, s13, s9	@ _144, _86, _92
.LBB375:
.LBB372:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 136 view .LVU234
	vmov.f32	s14, s4	@ _114, _114
.LVL43:
	.loc 2 26 136 view .LVU235
.LBE372:
.LBE375:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:321: 	line->z_right = 1.0f / (edge_r->invz - grad->invz_dx * line->clip_adj_r);
	.loc 2 321 23 view .LVU236
	vdiv.f32	s13, s6, s7	@ _141, tmp308, tmp305
.LBB376:
.LBB373:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 136 view .LVU237
	vfnms.f32	s14, s13, s8	@ _114, _141, _144
.LBE373:
.LBE376:
.LBB377:
.LBB378:
	vfnms.f32	s15, s13, s10	@ tmp318, _141, _148
.LBE378:
.LBE377:
.LBB381:
.LBB374:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:26: FORCE_INLINE fixed16_16 FloatToFixed16_16(float v) { return (fixed16_16)(v * 65536.0f); }
	.loc 2 26 121 view .LVU238
	vcvt.s32.f32	s14, s14, #16	@ _157, tmp313,
.LBE374:
.LBE381:
.LBB382:
.LBB379:
	vcvt.s32.f32	s15, s15, #16	@ _161, tmp318,
.LBE379:
.LBE382:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:330: 		line->dU = FloatToFixed16_16(line->u_right - line->u_left) / line->aff_remainder;
	.loc 2 330 62 discriminator 1 view .LVU239
	vmov	r2, s14	@ int	@ _157, _157
	sdiv	r8, r2, r3	@ line$dU, _157, _338
	.loc 2 331 3 is_stmt 1 view .LVU240
.LVL44:
.LBB383:
.LBI377:
	.loc 2 26 85 view .LVU241
.LBB380:
	.loc 2 26 114 view .LVU242
	.loc 2 26 114 is_stmt 0 view .LVU243
.LBE380:
.LBE383:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:331: 		line->dV = FloatToFixed16_16(line->v_right - line->v_left) / line->aff_remainder;
	.loc 2 331 62 discriminator 1 view .LVU244
	vmov	r2, s15	@ int	@ _161, _161
	sdiv	r6, r2, r3	@ line$aff_spans, _161, _338
.L13:
.LVL45:
	.loc 2 331 62 discriminator 1 view .LVU245
.LBE387:
.LBE450:
	.loc 1 193 3 is_stmt 1 view .LVU246
.LBB451:
	.loc 1 193 8 view .LVU247
	.loc 1 193 21 discriminator 1 view .LVU248
	vmov	ip, s11	@ int	@ ivtmp.106, _153
	vmov	r1, s12	@ int	@ ivtmp.107, _151
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:193: 		for (int i = 0; i <= line.aff_remainder; i++)
	.loc 1 193 12 is_stmt 0 view .LVU249
	mov	lr, #0	@ i,
	and	r3, r7, #31	@ _25, X,
.LBB452:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:198: 			mask |= 0x80000000u >> (X & 31);
	.loc 1 198 24 view .LVU250
	mov	fp, #-2147483648	@ tmp324,
.LVL46:
.L17:
	.loc 1 195 3 is_stmt 1 view .LVU251
	.loc 1 198 4 view .LVU252
	.loc 1 224 5 view .LVU253
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:198: 			mask |= 0x80000000u >> (X & 31);
	.loc 1 198 24 is_stmt 0 view .LVU254
	lsr	r9, fp, r3	@ _26, tmp324, _25
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:199: 			uint32_t texpix = checker ? 0x0 : 0x80;
	.loc 1 199 36 view .LVU255
	ubfx	r2, r1, #15, #1	@ _21, ivtmp.107,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:219: 			X++;
	.loc 1 219 5 view .LVU256
	adds	r7, r7, #1	@ X, X,
.LVL47:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:224: 				_drawMaskPattern(p++, swap(mask), swap(color));
	.loc 1 224 5 view .LVU257
	add	r10, r5, #4	@ p, p,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:198: 			mask |= 0x80000000u >> (X & 31);
	.loc 1 198 9 view .LVU258
	orr	r0, r0, r9	@ mask, mask, _26
.LVL48:
	.loc 1 199 4 is_stmt 1 view .LVU259
	.loc 1 200 4 view .LVU260
.LBB453:
.LBI453:
	.loc 3 29 24 view .LVU261
.LBB454:
	.loc 3 33 2 view .LVU262
	.loc 3 34 2 view .LVU263
.LBE454:
.LBE453:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:199: 			uint32_t texpix = checker ? 0x0 : 0x80;
	.loc 1 199 36 is_stmt 0 view .LVU264
	ubfx	r9, ip, #15, #1	@ _23, ivtmp.106,,
	sub	r2, r2, r9	@ _208, _21, _23
	clz	r2, r2	@ _208, _208
	lsrs	r2, r2, #5	@ _208, _208,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:200: 			color |= (texpix << 24) >> (X % 32);
	.loc 1 200 21 view .LVU265
	lsls	r2, r2, #31	@ _27, _208,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:200: 			color |= (texpix << 24) >> (X % 32);
	.loc 1 200 28 view .LVU266
	lsrs	r2, r2, r3	@ _28, _27, _25
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:222: 			if (X % 32 == 0)
	.loc 1 222 7 view .LVU267
	ands	r3, r7, #31	@ _25, X,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:200: 			color |= (texpix << 24) >> (X % 32);
	.loc 1 200 10 view .LVU268
	orr	r4, r4, r2	@ color, color, _28
.LVL49:
	.loc 1 219 4 is_stmt 1 view .LVU269
	.loc 1 220 4 view .LVU270
	.loc 1 222 4 view .LVU271
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:222: 			if (X % 32 == 0)
	.loc 1 222 7 is_stmt 0 view .LVU272
	bne	.L14		@,
.LBB456:
.LBB455:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU273
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r0, r0	@ result, mask
@ 0 "" 2
.LVL50:
	.loc 3 35 2 is_stmt 1 view .LVU274
	.loc 3 35 2 is_stmt 0 view .LVU275
	.thumb
	.syntax unified
.LBE455:
.LBE456:
.LBB457:
.LBI457:
	.loc 3 29 24 is_stmt 1 view .LVU276
.LBB458:
	.loc 3 33 2 view .LVU277
	.loc 3 34 2 view .LVU278
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r2, r4	@ result, color
@ 0 "" 2
	.loc 3 35 2 view .LVU279
.LVL51:
	.loc 3 35 2 is_stmt 0 view .LVU280
	.thumb
	.syntax unified
.LBE458:
.LBE457:
.LBB459:
.LBI459:
	.loc 1 5 79 is_stmt 1 view .LVU281
.LBB460:
	.loc 1 7 2 view .LVU282
	.loc 1 10 3 view .LVU283
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU284
	adds	r4, r0, #1	@, result,
.LVL52:
	.loc 1 7 5 view .LVU285
	beq	.L16		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 view .LVU286
	ldr	r4, [r5]	@ _165, *p_251
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU287
	eors	r2, r2, r4	@, _166, result, _165
.LVL53:
	.loc 1 10 21 view .LVU288
	ands	r2, r2, r0	@, _167, _166, result
	eors	r2, r2, r4	@, result, _167, _165
.L16:
.LBE460:
.LBE459:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:226: 				color = 0;
	.loc 1 226 11 view .LVU289
	movs	r4, #0	@ color,
.LBB462:
.LBB461:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 view .LVU290
	str	r2, [r5]	@ result, *p_251
.LBE461:
.LBE462:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:224: 				_drawMaskPattern(p++, swap(mask), swap(color));
	.loc 1 224 5 view .LVU291
	mov	r5, r10	@ p, p
.LVL54:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:225: 				mask = 0;
	.loc 1 225 10 view .LVU292
	mov	r0, r4	@ mask, color
.LVL55:
.L14:
	.loc 1 225 10 view .LVU293
.LBE452:
	.loc 1 193 45 is_stmt 1 discriminator 2 view .LVU294
	add	lr, lr, #1	@ i, i,
.LVL56:
	.loc 1 193 21 discriminator 1 view .LVU295
	ldr	r2, [sp]	@ _338, %sfp
	add	ip, ip, r6	@ ivtmp.106, line$aff_spans
.LVL57:
	.loc 1 193 21 is_stmt 0 discriminator 1 view .LVU296
	add	r1, r1, r8	@ ivtmp.107, line$dU
	.loc 1 193 21 discriminator 1 view .LVU297
	cmp	lr, r2	@ i, _338
	ble	.L17		@,
	.loc 1 193 21 discriminator 1 view .LVU298
.LBE451:
	.loc 1 231 2 is_stmt 1 view .LVU299
.LVL58:
.LBB463:
.LBI463:
	.loc 3 29 24 view .LVU300
.LBB464:
	.loc 3 33 2 view .LVU301
	.loc 3 34 2 view .LVU302
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r0, r0	@ result, mask
@ 0 "" 2
.LVL59:
	.loc 3 35 2 view .LVU303
	.loc 3 35 2 is_stmt 0 view .LVU304
	.thumb
	.syntax unified
.LBE464:
.LBE463:
.LBB465:
.LBI465:
	.loc 3 29 24 is_stmt 1 view .LVU305
.LBB466:
	.loc 3 33 2 view .LVU306
	.loc 3 34 2 view .LVU307
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r4, r4	@ result, color
@ 0 "" 2
.LVL60:
	.loc 3 35 2 view .LVU308
	.loc 3 35 2 is_stmt 0 view .LVU309
	.thumb
	.syntax unified
.LBE466:
.LBE465:
.LBB467:
.LBI467:
	.loc 1 5 79 is_stmt 1 view .LVU310
.LBB468:
	.loc 1 7 2 view .LVU311
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU312
	adds	r3, r0, #1	@, result,
	beq	.L29		@,
	.loc 1 10 3 is_stmt 1 view .LVU313
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU314
	ldr	r2, [r5]	@ _169, *p_43
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU315
	eor	r3, r2, r4	@ _170, _169, result
	ands	r3, r3, r0	@, _171, _170, result
	eors	r3, r3, r2	@, _172, _171, _169
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 6 view .LVU316
	str	r3, [r5]	@ _172, *p_43
.LVL61:
.L1:
	.loc 1 10 6 view .LVU317
.LBE468:
.LBE467:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:232: }
	.loc 1 232 1 view .LVU318
	add	sp, sp, #28	@,,
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL62:
.L28:
.LCFI3:
	.cfi_restore_state
.LBB470:
.LBB357:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:272: 		line->aff_spans--;
	.loc 2 272 18 view .LVU319
	movs	r2, #7	@ _338,
	subs	r6, r6, #1	@ line$aff_spans, line$aff_spans,
	str	r2, [sp]	@ _338, %sfp
	b	.L4		@
.LVL63:
.L29:
	.loc 2 272 18 view .LVU320
.LBE357:
.LBE470:
.LBB471:
.LBB469:
	.loc 1 8 3 is_stmt 1 view .LVU321
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 is_stmt 0 view .LVU322
	str	r4, [r5]	@ result, *p_43
.LBE469:
.LBE471:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:232: }
	.loc 1 232 1 view .LVU323
	add	sp, sp, #28	@,,
.LCFI4:
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL64:
.L19:
.LCFI5:
	.cfi_restore_state
.LBB472:
.LBB358:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:276: 	line->U = line->V = line->dU = line->dV = 0;
	.loc 2 276 31 view .LVU324
	mov	r8, r6	@ line$dU, line$aff_spans
.LBE358:
.LBE472:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:146: 	uint32_t color = 0;
	.loc 1 146 11 view .LVU325
	mov	r4, r6	@ color, line$aff_spans
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:144: 	uint32_t mask = 0;
	.loc 1 144 11 view .LVU326
	mov	r0, r6	@ mask, line$aff_spans
.LVL65:
	.loc 1 144 11 view .LVU327
	b	.L5		@
	.cfi_endproc
.LFE74:
	.size	draw_scanline_checker, .-draw_scanline_checker
	.section	.text.tri_edge_init,"ax",%progbits
	.align	1
	.p2align 4,,15
	.syntax unified
	.thumb
	.thumb_func
	.type	tri_edge_init, %function
tri_edge_init:
.LVL66:
.LFB49:
	.loc 2 172 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 173 2 view .LVU329
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:172: {
	.loc 2 172 1 is_stmt 0 view .LVU330
	push	{lr}	@
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:172: {
	.loc 2 172 1 view .LVU331
	ldr	ip, [sp, #4]	@ top, top
	mov	lr, r3	@ p2, p2
	ldr	r3, [sp, #8]	@ bottom, bottom
.LVL67:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:173: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 173 34 view .LVU332
	cmp	ip, #0	@ top
	bne	.L31	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:173: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 173 9 discriminator 1 view .LVU333
	vldr.32	s12, [r1]	@ vertTop$x, p0_27(D)->x
.LVL68:
	.loc 2 173 9 discriminator 1 view .LVU334
	vldr.32	s14, [r1, #4]	@ vertTop$y, p0_27(D)->y
.LVL69:
.L32:
	.loc 2 174 2 is_stmt 1 view .LVU335
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:174: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 174 40 is_stmt 0 view .LVU336
	cbnz	r3, .L34	@ bottom,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:174: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 174 9 discriminator 1 view .LVU337
	vldr.32	s11, [r1]	@ vertBottom$x, p0_27(D)->x
.LVL70:
	.loc 2 174 9 discriminator 1 view .LVU338
	vldr.32	s15, [r1, #4]	@ vertBottom$y, p0_27(D)->y
.LVL71:
.L35:
	.loc 2 175 2 is_stmt 1 view .LVU339
.LBB498:
.LBI498:
	.loc 2 24 84 view .LVU340
.LBB499:
	.loc 2 24 112 view .LVU341
	.loc 2 24 112 is_stmt 0 view .LVU342
.LBE499:
.LBE498:
.LBB503:
.LBI503:
	.loc 2 24 84 is_stmt 1 view .LVU343
.LBB504:
	.loc 2 24 112 view .LVU344
	.loc 2 24 112 is_stmt 0 view .LVU345
.LBE504:
.LBE503:
	.loc 2 176 2 is_stmt 1 view .LVU346
.LBB506:
.LBI506:
	.loc 2 24 84 view .LVU347
.LBB507:
	.loc 2 24 112 view .LVU348
.LBE507:
.LBE506:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:176: 	fixed28_4 topYfx = FloatToFixed28_4(vertTop.y - 0.5f), botYfx = FloatToFixed28_4(vertBottom.y - 0.5f);
	.loc 2 176 21 is_stmt 0 view .LVU349
	vmov.f32	s13, #5.0e-1	@ tmp180,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:176: 	fixed28_4 topYfx = FloatToFixed28_4(vertTop.y - 0.5f), botYfx = FloatToFixed28_4(vertBottom.y - 0.5f);
	.loc 2 176 66 discriminator 1 view .LVU350
	vsub.f32	s15, s15, s13	@ _4, vertBottom$y, tmp180
.LVL72:
.LBB511:
.LBB508:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:24: FORCE_INLINE fixed28_4 FloatToFixed28_4(float v) { return (fixed28_4)(v * 16.0f); }
	.loc 2 24 119 view .LVU351
	vsub.f32	s13, s14, s13	@ _37, vertTop$y, tmp180
.LVL73:
	.loc 2 24 119 view .LVU352
.LBE508:
.LBE511:
.LBB512:
.LBB513:
	vmov.f32	s14, s15	@ _41, _4
.LVL74:
	.loc 2 24 119 view .LVU353
.LBE513:
.LBE512:
.LBB517:
.LBB509:
	vcvt.s32.f32	s13, s13, #4	@ _37, _37,
.LVL75:
	.loc 2 24 119 view .LVU354
.LBE509:
.LBE517:
.LBB518:
.LBB514:
	vcvt.s32.f32	s14, s14, #4	@ _41, _41,
.LBE514:
.LBE518:
.LBB519:
.LBB510:
	vmov	r3, s13	@ int	@ _37, _37
.LVL76:
	.loc 2 24 119 view .LVU355
.LBE510:
.LBE519:
.LBB520:
.LBI512:
	.loc 2 24 84 is_stmt 1 view .LVU356
.LBB515:
	.loc 2 24 112 view .LVU357
.LBE515:
.LBE520:
.LBB521:
.LBB522:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:33: 	if (numerator >= 0) {
	.loc 2 33 5 is_stmt 0 view .LVU358
	adds	r2, r3, #15	@ numerator, _37,
.LVL77:
	.loc 2 33 5 view .LVU359
.LBE522:
.LBE521:
.LBB525:
.LBB516:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:24: FORCE_INLINE fixed28_4 FloatToFixed28_4(float v) { return (fixed28_4)(v * 16.0f); }
	.loc 2 24 119 view .LVU360
	vmov	ip, s14	@ int	@ _41, _41
.LVL78:
	.loc 2 24 119 view .LVU361
.LBE516:
.LBE525:
	.loc 2 177 2 is_stmt 1 view .LVU362
.LBB526:
.LBI521:
	.loc 2 29 19 view .LVU363
.LBB523:
	.loc 2 31 2 view .LVU364
	.loc 2 32 2 view .LVU365
	.loc 2 33 2 view .LVU366
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:33: 	if (numerator >= 0) {
	.loc 2 33 5 is_stmt 0 view .LVU367
	bmi	.L37		@,
	.loc 2 34 3 is_stmt 1 view .LVU368
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:34: 		res = numerator / 16;
	.loc 2 34 7 is_stmt 0 view .LVU369
	asrs	r2, r2, #4	@ res, numerator,
.LVL79:
.L38:
	.loc 2 41 2 is_stmt 1 view .LVU370
	.loc 2 41 2 is_stmt 0 view .LVU371
.LBE523:
.LBE526:
.LBB527:
.LBI527:
	.loc 3 175 19 is_stmt 1 view .LVU372
.LBB528:
	.loc 3 177 2 view .LVU373
	.loc 3 178 2 view .LVU374
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:177: 	if (v < a) v = a;
	.loc 3 177 5 is_stmt 0 view .LVU375
	bic	r2, r2, r2, asr #31	@ _63, res
.LVL80:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:178: 	if (v > b) v = b;
	.loc 3 178 5 view .LVU376
	cmp	r2, #240	@ _63,
	it	ge
	movge	r2, #240	@ _63,
.LVL81:
	.loc 3 179 2 is_stmt 1 view .LVU377
	.loc 3 179 2 is_stmt 0 view .LVU378
.LBE528:
.LBE527:
.LBB529:
.LBB530:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:33: 	if (numerator >= 0) {
	.loc 2 33 5 view .LVU379
	adds	r1, ip, #15	@ numerator, _41,
.LBE530:
.LBE529:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:177: 	t->Y = clamp_i(Ceil28_4(topYfx), 0, SCREEN_Y);
	.loc 2 177 7 discriminator 2 view .LVU380
	str	r2, [r0, #20]	@ _63, t_39(D)->Y
	.loc 2 178 2 is_stmt 1 view .LVU381
.LVL82:
.LBB533:
.LBI529:
	.loc 2 29 19 view .LVU382
.LBB531:
	.loc 2 31 2 view .LVU383
	.loc 2 32 2 view .LVU384
	.loc 2 33 2 view .LVU385
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:33: 	if (numerator >= 0) {
	.loc 2 33 5 is_stmt 0 view .LVU386
	bmi	.L40		@,
	.loc 2 34 3 is_stmt 1 view .LVU387
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:34: 		res = numerator / 16;
	.loc 2 34 7 is_stmt 0 view .LVU388
	asrs	r1, r1, #4	@ res, numerator,
.LVL83:
.L41:
	.loc 2 41 2 is_stmt 1 view .LVU389
	.loc 2 41 2 is_stmt 0 view .LVU390
.LBE531:
.LBE533:
.LBB534:
.LBI534:
	.loc 3 175 19 is_stmt 1 view .LVU391
.LBB535:
	.loc 3 177 2 view .LVU392
	.loc 3 178 2 view .LVU393
	.loc 3 179 2 view .LVU394
	.loc 3 179 2 is_stmt 0 view .LVU395
.LBE535:
.LBE534:
	.loc 2 179 2 is_stmt 1 view .LVU396
.LBB537:
.LBB536:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:177: 	if (v < a) v = a;
	.loc 3 177 5 is_stmt 0 view .LVU397
	bic	r1, r1, r1, asr #31	@ _51, res
.LVL84:
	.loc 3 177 5 view .LVU398
.LBE536:
.LBE537:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:179: 	t->height = YEnd - t->Y;
	.loc 2 179 19 view .LVU399
	cmp	r1, #240	@ _51,
	ite	le		@
	rsble	lr, r2, r1	@,, _8, _63, _51
	rsbgt	lr, r2, #240	@,, _8, _63,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:179: 	t->height = YEnd - t->Y;
	.loc 2 179 12 view .LVU400
	str	lr, [r0, #24]	@ _8, t_39(D)->height
	.loc 2 180 1 is_stmt 1 view .LVU401
	.loc 2 182 2 view .LVU402
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:182: 	if (t->height)
	.loc 2 182 5 is_stmt 0 view .LVU403
	cmp	lr, #0	@ _8
	bne	.L58	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:192: }
	.loc 2 192 1 view .LVU404
	pop	{pc}	@
.LVL85:
.L34:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:174: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 174 61 discriminator 2 view .LVU405
	cmp	r3, #1	@ bottom,
	beq	.L59		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:174: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 174 9 discriminator 4 view .LVU406
	vldr.32	s11, [lr]	@ vertBottom$x, p2_25(D)->x
.LVL86:
	.loc 2 174 9 discriminator 4 view .LVU407
	vldr.32	s15, [lr, #4]	@ vertBottom$y, p2_25(D)->y
	b	.L35		@
.LVL87:
.L31:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:173: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 173 52 discriminator 2 view .LVU408
	cmp	ip, #1	@ top,
	beq	.L60		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:173: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 173 9 discriminator 4 view .LVU409
	vldr.32	s12, [lr]	@ vertTop$x, p2_25(D)->x
.LVL88:
	.loc 2 173 9 discriminator 4 view .LVU410
	vldr.32	s14, [lr, #4]	@ vertTop$y, p2_25(D)->y
	b	.L32		@
.LVL89:
.L58:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:175: 	fixed28_4 topXfx = FloatToFixed28_4(vertTop.x - 0.5f), botXfx = FloatToFixed28_4(vertBottom.x - 0.5f);
	.loc 2 175 21 view .LVU411
	vmov.f32	s15, #5.0e-1	@ tmp203,
.LBB538:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:184: 		fixed28_4 dN = botYfx - topYfx;
	.loc 2 184 13 view .LVU412
	sub	ip, ip, r3	@ dN, _41, _37
.LVL90:
	.loc 2 184 13 view .LVU413
.LBE538:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:175: 	fixed28_4 topXfx = FloatToFixed28_4(vertTop.x - 0.5f), botXfx = FloatToFixed28_4(vertBottom.x - 0.5f);
	.loc 2 175 66 discriminator 1 view .LVU414
	vsub.f32	s11, s11, s15	@ _2, vertBottom$x, tmp203
.LVL91:
.LBB553:
.LBB500:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:24: FORCE_INLINE fixed28_4 FloatToFixed28_4(float v) { return (fixed28_4)(v * 16.0f); }
	.loc 2 24 119 view .LVU415
	vsub.f32	s15, s12, s15	@ _29, vertTop$x, tmp203
.LBE500:
.LBE553:
.LBB554:
.LBB505:
	vcvt.s32.f32	s11, s11, #4	@ _33, _2,
.LBE505:
.LBE554:
.LBB555:
.LBB501:
	vcvt.s32.f32	s15, s15, #4	@ _29, _29,
.LBE501:
.LBE555:
.LBB556:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:185: 		fixed28_4 dM = botXfx - topXfx;
	.loc 2 185 13 view .LVU416
	vmov	r1, s11	@ int	@ _33, _33
.LBE556:
.LBB557:
.LBB502:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:24: FORCE_INLINE fixed28_4 FloatToFixed28_4(float v) { return (fixed28_4)(v * 16.0f); }
	.loc 2 24 119 view .LVU417
	vmov	lr, s15	@ int	@ _29, _29
.LBE502:
.LBE557:
.LBB558:
	.loc 2 184 3 is_stmt 1 view .LVU418
.LVL92:
	.loc 2 185 3 view .LVU419
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:185: 		fixed28_4 dM = botXfx - topXfx;
	.loc 2 185 13 is_stmt 0 view .LVU420
	sub	r1, r1, lr	@ dM, _33, _29
.LVL93:
	.loc 2 187 3 is_stmt 1 view .LVU421
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:187: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 187 38 is_stmt 0 view .LVU422
	mul	r2, r1, r2	@ _9, dM, _63
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:187: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 187 50 view .LVU423
	mul	r3, r1, r3	@ _11, dM, _37
.LVL94:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:187: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 187 45 view .LVU424
	rsb	r3, r3, r2, lsl #4	@ _12, _11, _9,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:187: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 187 82 view .LVU425
	lsl	r2, ip, #4	@ _16, dN,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:187: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 187 59 view .LVU426
	mla	r3, ip, lr, r3	@ _14, dN, _29, _12
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:187: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 187 73 view .LVU427
	subs	r3, r3, #1	@ _15, _14,
.LVL95:
	.loc 2 188 3 is_stmt 1 view .LVU428
.LBB539:
.LBI539:
	.loc 2 44 20 view .LVU429
.LBB540:
	.loc 2 46 1 view .LVU430
	.loc 2 47 2 view .LVU431
.LBE540:
.LBE539:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:187: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 187 13 is_stmt 0 view .LVU432
	add	r3, r3, ip, lsl #4	@ init_numerator, _15, dN,
.LVL96:
.LBB545:
.LBB543:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:47: 	if (numerator >= 0) {
	.loc 2 47 5 view .LVU433
	cmp	r3, #0	@ init_numerator,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:49: 		*r_floor = numerator / denominator;
	.loc 2 49 24 view .LVU434
	sdiv	ip, r3, r2	@ _152, init_numerator, _16
.LVL97:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:47: 	if (numerator >= 0) {
	.loc 2 47 5 view .LVU435
	blt	.L44		@,
	.loc 2 49 3 is_stmt 1 view .LVU436
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:50: 		*r_mod = numerator % denominator;
	.loc 2 50 22 is_stmt 0 view .LVU437
	mls	r3, r2, ip, r3	@ _92, _16, _152, init_numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:49: 		*r_floor = numerator / denominator;
	.loc 2 49 12 view .LVU438
	str	ip, [r0]	@ _152, MEM[(int *)t_39(D)]
	.loc 2 50 3 is_stmt 1 view .LVU439
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:50: 		*r_mod = numerator % denominator;
	.loc 2 50 10 is_stmt 0 view .LVU440
	str	r3, [r0, #16]	@ _92, MEM[(int *)t_39(D) + 16B]
.LVL98:
.L45:
	.loc 2 50 10 view .LVU441
.LBE543:
.LBE545:
	.loc 2 189 3 is_stmt 1 view .LVU442
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:189: 		FloorDivMod(dM * 16, dN * 16, &t->x_step, &t->numerator);
	.loc 2 189 18 is_stmt 0 view .LVU443
	lsls	r1, r1, #4	@ _19, dM,
.LVL99:
.LBB546:
.LBI546:
	.loc 2 44 20 is_stmt 1 view .LVU444
.LBB547:
	.loc 2 46 1 view .LVU445
	.loc 2 47 2 view .LVU446
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:47: 	if (numerator >= 0) {
	.loc 2 47 5 is_stmt 0 view .LVU447
	cmp	r1, #0	@ _19,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:49: 		*r_floor = numerator / denominator;
	.loc 2 49 24 view .LVU448
	sdiv	r3, r1, r2	@ _151, _19, _16
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:47: 	if (numerator >= 0) {
	.loc 2 47 5 view .LVU449
	blt	.L46		@,
	.loc 2 49 3 is_stmt 1 view .LVU450
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:50: 		*r_mod = numerator % denominator;
	.loc 2 50 22 is_stmt 0 view .LVU451
	mls	r1, r2, r3, r1	@ _86, _16, _151, _19
.LVL100:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:50: 		*r_mod = numerator % denominator;
	.loc 2 50 10 view .LVU452
	strd	r3, r1, [r0, #4]	@ _151, _86, t,
.L47:
.LVL101:
	.loc 2 50 10 view .LVU453
.LBE547:
.LBE546:
	.loc 2 190 3 is_stmt 1 view .LVU454
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:190: 		t->denominator = dN * 16;
	.loc 2 190 18 is_stmt 0 view .LVU455
	str	r2, [r0, #12]	@ _16, t_39(D)->denominator
.LVL102:
	.loc 2 190 18 view .LVU456
.LBE558:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:192: }
	.loc 2 192 1 view .LVU457
	pop	{pc}	@
.LVL103:
.L40:
.LBB559:
.LBB532:
	.loc 2 38 3 is_stmt 1 view .LVU458
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 12 is_stmt 0 view .LVU459
	rsb	r1, ip, #1	@ _56, _41,
.LVL104:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:38: 		res = -((-numerator) / 16);
	.loc 2 38 7 view .LVU460
	add	lr, ip, #30	@ numerator, _41,
.LVL105:
	.loc 2 39 3 is_stmt 1 view .LVU461
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 34 is_stmt 0 view .LVU462
	ands	r1, r1, #15	@ _58, _56,
	it	ne
	movne	r1, #1	@ _58,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 7 view .LVU463
	rsb	r1, r1, lr, asr #4	@ res, _58, numerator,
.LVL106:
	.loc 2 39 7 view .LVU464
	b	.L41		@
.LVL107:
.L37:
	.loc 2 39 7 view .LVU465
.LBE532:
.LBE559:
.LBB560:
.LBB524:
	.loc 2 38 3 is_stmt 1 view .LVU466
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 12 is_stmt 0 view .LVU467
	rsb	r2, r3, #1	@ _67, _37,
.LVL108:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:38: 		res = -((-numerator) / 16);
	.loc 2 38 7 view .LVU468
	add	r1, r3, #30	@ numerator, _37,
.LVL109:
	.loc 2 39 3 is_stmt 1 view .LVU469
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 34 is_stmt 0 view .LVU470
	ands	r2, r2, #15	@ _69, _67,
	it	ne
	movne	r2, #1	@ _69,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 7 view .LVU471
	rsb	r2, r2, r1, asr #4	@ res, _69, numerator,
.LVL110:
	.loc 2 39 7 view .LVU472
	b	.L38		@
.LVL111:
.L59:
	.loc 2 39 7 view .LVU473
.LBE524:
.LBE560:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:174: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 174 9 discriminator 3 view .LVU474
	vldr.32	s11, [r2]	@ vertBottom$x, p1_26(D)->x
.LVL112:
	.loc 2 174 9 discriminator 3 view .LVU475
	vldr.32	s15, [r2, #4]	@ vertBottom$y, p1_26(D)->y
.LVL113:
	.loc 2 174 9 discriminator 3 view .LVU476
	b	.L35		@
.LVL114:
.L60:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:173: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 173 9 discriminator 3 view .LVU477
	vldr.32	s12, [r2]	@ vertTop$x, p1_26(D)->x
.LVL115:
	.loc 2 173 9 discriminator 3 view .LVU478
	vldr.32	s14, [r2, #4]	@ vertTop$y, p1_26(D)->y
.LVL116:
	.loc 2 173 9 discriminator 3 view .LVU479
	b	.L32		@
.LVL117:
.L44:
.LBB561:
.LBB551:
.LBB544:
	.loc 2 54 3 is_stmt 1 view .LVU480
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:54: 		*r_floor = -((-numerator) / denominator);
	.loc 2 54 17 is_stmt 0 view .LVU481
	rsbs	r3, r3, #0	@ _93, init_numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:54: 		*r_floor = -((-numerator) / denominator);
	.loc 2 54 12 view .LVU482
	str	ip, [r0]	@ _152, MEM[(int *)t_39(D)]
	.loc 2 55 3 is_stmt 1 view .LVU483
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:55: 		*r_mod = (-numerator) % denominator;
	.loc 2 55 25 is_stmt 0 view .LVU484
	sdiv	lr, r3, r2	@ tmp229, _93, _16
.LVL118:
	.loc 2 55 25 view .LVU485
	mls	r3, r2, lr, r3	@ _96, _16, tmp229, _93
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:55: 		*r_mod = (-numerator) % denominator;
	.loc 2 55 10 view .LVU486
	str	r3, [r0, #16]	@ _96, MEM[(int *)t_39(D) + 16B]
	.loc 2 56 3 is_stmt 1 view .LVU487
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:56: 		if (*r_mod) {
	.loc 2 56 6 is_stmt 0 view .LVU488
	cmp	r3, #0	@ _96
	beq	.L45	@
.LVL119:
.LBB541:
.LBI541:
	.loc 2 44 20 is_stmt 1 view .LVU489
.LBB542:
	.loc 2 58 4 view .LVU490
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 14 is_stmt 0 view .LVU491
	add	ip, ip, #-1	@ _102, _152,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 39 view .LVU492
	subs	r3, r2, r3	@ _100, _16, _96
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 14 view .LVU493
	str	ip, [r0]	@ _102, MEM[(int *)t_39(D)]
	.loc 2 58 18 is_stmt 1 view .LVU494
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 25 is_stmt 0 view .LVU495
	str	r3, [r0, #16]	@ _100, MEM[(int *)t_39(D) + 16B]
.LVL120:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:61: }
	.loc 2 61 1 view .LVU496
	b	.L45		@
.LVL121:
.L46:
	.loc 2 61 1 view .LVU497
.LBE542:
.LBE541:
.LBE544:
.LBE551:
.LBB552:
.LBB550:
	.loc 2 54 3 is_stmt 1 view .LVU498
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:54: 		*r_floor = -((-numerator) / denominator);
	.loc 2 54 17 is_stmt 0 view .LVU499
	rsbs	r1, r1, #0	@ _87, _19
.LVL122:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:54: 		*r_floor = -((-numerator) / denominator);
	.loc 2 54 12 view .LVU500
	str	r3, [r0, #4]	@ _151, MEM[(int *)t_39(D) + 4B]
	.loc 2 55 3 is_stmt 1 view .LVU501
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:55: 		*r_mod = (-numerator) % denominator;
	.loc 2 55 25 is_stmt 0 view .LVU502
	sdiv	ip, r1, r2	@ tmp244, _87, _16
	mls	r1, r2, ip, r1	@ _90, _16, tmp244, _87
.LVL123:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:55: 		*r_mod = (-numerator) % denominator;
	.loc 2 55 10 view .LVU503
	str	r1, [r0, #8]	@ _90, MEM[(int *)t_39(D) + 8B]
	.loc 2 56 3 is_stmt 1 view .LVU504
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:56: 		if (*r_mod) {
	.loc 2 56 6 is_stmt 0 view .LVU505
	cmp	r1, #0	@ _90
	beq	.L47	@
.LVL124:
.LBB548:
.LBI548:
	.loc 2 44 20 is_stmt 1 view .LVU506
.LBB549:
	.loc 2 58 4 view .LVU507
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 14 is_stmt 0 view .LVU508
	subs	r3, r3, #1	@ _120, _151,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 39 view .LVU509
	subs	r1, r2, r1	@ _104, _16, _90
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 25 view .LVU510
	strd	r3, r1, [r0, #4]	@ _120, _104, t,
.LVL125:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:61: }
	.loc 2 61 1 view .LVU511
	b	.L47		@
.LBE549:
.LBE548:
.LBE550:
.LBE552:
.LBE561:
	.cfi_endproc
.LFE49:
	.size	tri_edge_init, .-tri_edge_init
	.section	.text.tri_edge_uv_init,"ax",%progbits
	.align	1
	.p2align 4,,15
	.syntax unified
	.thumb
	.thumb_func
	.type	tri_edge_uv_init, %function
tri_edge_uv_init:
.LVL126:
.LFB48:
	.loc 2 134 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 135 2 view .LVU513
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:134: {
	.loc 2 134 1 is_stmt 0 view .LVU514
	push	{r4, r5, r6, r7, r8, lr}	@
.LCFI7:
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:135: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 135 34 view .LVU515
	ldrd	r5, r4, [sp, #28]	@ tmp303, bottom,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:134: {
	.loc 2 134 1 view .LVU516
	ldr	ip, [sp, #24]	@ p2, p2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:135: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 135 34 view .LVU517
	cbnz	r5, .L62	@ tmp303,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:135: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 135 9 discriminator 1 view .LVU518
	vldr.32	s11, [r2]	@ vertTop$x, p0_63(D)->x
.LVL127:
	.loc 2 135 9 discriminator 1 view .LVU519
	vldr.32	s14, [r2, #4]	@ vertTop$y, p0_63(D)->y
.LVL128:
.L63:
	.loc 2 136 2 is_stmt 1 view .LVU520
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:136: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 136 40 is_stmt 0 view .LVU521
	cbnz	r4, .L65	@ bottom,
.L93:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:136: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 136 9 discriminator 1 view .LVU522
	vldr.32	s12, [r2]	@ vertBottom$x, p0_63(D)->x
.LVL129:
	.loc 2 136 9 discriminator 1 view .LVU523
	vldr.32	s15, [r2, #4]	@ vertBottom$y, p0_63(D)->y
.LVL130:
.L66:
	.loc 2 137 2 is_stmt 1 view .LVU524
.LBB591:
.LBI591:
	.loc 2 24 84 view .LVU525
.LBB592:
	.loc 2 24 112 view .LVU526
	.loc 2 24 112 is_stmt 0 view .LVU527
.LBE592:
.LBE591:
.LBB596:
.LBI596:
	.loc 2 24 84 is_stmt 1 view .LVU528
.LBB597:
	.loc 2 24 112 view .LVU529
	.loc 2 24 112 is_stmt 0 view .LVU530
.LBE597:
.LBE596:
	.loc 2 138 2 is_stmt 1 view .LVU531
.LBB599:
.LBI599:
	.loc 2 24 84 view .LVU532
.LBB600:
	.loc 2 24 112 view .LVU533
.LBE600:
.LBE599:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:138: 	fixed28_4 topYfx = FloatToFixed28_4(vertTop.y - 0.5f), botYfx = FloatToFixed28_4(vertBottom.y - 0.5f);
	.loc 2 138 21 is_stmt 0 view .LVU534
	vmov.f32	s13, #5.0e-1	@ tmp210,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:138: 	fixed28_4 topYfx = FloatToFixed28_4(vertTop.y - 0.5f), botYfx = FloatToFixed28_4(vertBottom.y - 0.5f);
	.loc 2 138 66 discriminator 1 view .LVU535
	vsub.f32	s15, s15, s13	@ _4, vertBottom$y, tmp210
.LVL131:
.LBB604:
.LBB601:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:24: FORCE_INLINE fixed28_4 FloatToFixed28_4(float v) { return (fixed28_4)(v * 16.0f); }
	.loc 2 24 119 view .LVU536
	vsub.f32	s13, s14, s13	@ _77, vertTop$y, tmp210
.LVL132:
	.loc 2 24 119 view .LVU537
.LBE601:
.LBE604:
.LBB605:
.LBB606:
	vmov.f32	s14, s15	@ _87, _4
.LVL133:
	.loc 2 24 119 view .LVU538
.LBE606:
.LBE605:
.LBB610:
.LBB602:
	vcvt.s32.f32	s13, s13, #4	@ _77, _77,
.LVL134:
	.loc 2 24 119 view .LVU539
.LBE602:
.LBE610:
.LBB611:
.LBB607:
	vcvt.s32.f32	s14, s14, #4	@ _87, _87,
.LBE607:
.LBE611:
.LBB612:
.LBB603:
	vmov	ip, s13	@ int	@ _77, _77
.LVL135:
	.loc 2 24 119 view .LVU540
.LBE603:
.LBE612:
.LBB613:
.LBI605:
	.loc 2 24 84 is_stmt 1 view .LVU541
.LBB608:
	.loc 2 24 112 view .LVU542
.LBE608:
.LBE613:
.LBB614:
.LBB615:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:33: 	if (numerator >= 0) {
	.loc 2 33 5 is_stmt 0 view .LVU543
	adds	r3, ip, #15	@ numerator, _77,
.LVL136:
	.loc 2 33 5 view .LVU544
.LBE615:
.LBE614:
.LBB618:
.LBB609:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:24: FORCE_INLINE fixed28_4 FloatToFixed28_4(float v) { return (fixed28_4)(v * 16.0f); }
	.loc 2 24 119 view .LVU545
	vmov	lr, s14	@ int	@ _87, _87
.LVL137:
	.loc 2 24 119 view .LVU546
.LBE609:
.LBE618:
	.loc 2 139 2 is_stmt 1 view .LVU547
.LBB619:
.LBI614:
	.loc 2 29 19 view .LVU548
.LBB616:
	.loc 2 31 2 view .LVU549
	.loc 2 32 2 view .LVU550
	.loc 2 33 2 view .LVU551
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:33: 	if (numerator >= 0) {
	.loc 2 33 5 is_stmt 0 view .LVU552
	bmi	.L68		@,
	.loc 2 34 3 is_stmt 1 view .LVU553
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:34: 		res = numerator / 16;
	.loc 2 34 7 is_stmt 0 view .LVU554
	asrs	r3, r3, #4	@ res, numerator,
.LVL138:
.L69:
	.loc 2 41 2 is_stmt 1 view .LVU555
	.loc 2 41 2 is_stmt 0 view .LVU556
.LBE616:
.LBE619:
.LBB620:
.LBI620:
	.loc 3 175 19 is_stmt 1 view .LVU557
.LBB621:
	.loc 3 177 2 view .LVU558
	.loc 3 178 2 view .LVU559
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:177: 	if (v < a) v = a;
	.loc 3 177 5 is_stmt 0 view .LVU560
	bic	r3, r3, r3, asr #31	@ _115, res
.LVL139:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:178: 	if (v > b) v = b;
	.loc 3 178 5 view .LVU561
	cmp	r3, #240	@ _115,
	it	ge
	movge	r3, #240	@ _115,
.LVL140:
	.loc 3 179 2 is_stmt 1 view .LVU562
	.loc 3 179 2 is_stmt 0 view .LVU563
.LBE621:
.LBE620:
.LBB622:
.LBB623:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:33: 	if (numerator >= 0) {
	.loc 2 33 5 view .LVU564
	adds	r2, lr, #15	@ numerator, _87,
.LBE623:
.LBE622:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:139: 	t->Y = clamp_i(Ceil28_4(topYfx), 0, SCREEN_Y);
	.loc 2 139 7 discriminator 2 view .LVU565
	str	r3, [r0, #20]	@ _115, t_75(D)->Y
	.loc 2 140 2 is_stmt 1 view .LVU566
.LVL141:
.LBB626:
.LBI622:
	.loc 2 29 19 view .LVU567
.LBB624:
	.loc 2 31 2 view .LVU568
	.loc 2 32 2 view .LVU569
	.loc 2 33 2 view .LVU570
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:33: 	if (numerator >= 0) {
	.loc 2 33 5 is_stmt 0 view .LVU571
	bmi	.L71		@,
	.loc 2 34 3 is_stmt 1 view .LVU572
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:34: 		res = numerator / 16;
	.loc 2 34 7 is_stmt 0 view .LVU573
	asrs	r2, r2, #4	@ res, numerator,
.LVL142:
.L72:
	.loc 2 41 2 is_stmt 1 view .LVU574
	.loc 2 41 2 is_stmt 0 view .LVU575
.LBE624:
.LBE626:
.LBB627:
.LBI627:
	.loc 3 175 19 is_stmt 1 view .LVU576
.LBB628:
	.loc 3 177 2 view .LVU577
	.loc 3 178 2 view .LVU578
	.loc 3 179 2 view .LVU579
	.loc 3 179 2 is_stmt 0 view .LVU580
.LBE628:
.LBE627:
	.loc 2 141 2 is_stmt 1 view .LVU581
.LBB630:
.LBB629:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:177: 	if (v < a) v = a;
	.loc 3 177 5 is_stmt 0 view .LVU582
	bic	r2, r2, r2, asr #31	@ _103, res
.LVL143:
	.loc 3 177 5 view .LVU583
.LBE629:
.LBE630:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:141: 	t->height = YEnd - t->Y;
	.loc 2 141 19 view .LVU584
	cmp	r2, #240	@ _103,
	ite	le		@
	rsble	r4, r3, r2	@,, _8, _115, _103
	rsbgt	r4, r3, #240	@,, _8, _115,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:141: 	t->height = YEnd - t->Y;
	.loc 2 141 12 view .LVU585
	str	r4, [r0, #24]	@ _8, t_75(D)->height
	.loc 2 142 1 is_stmt 1 view .LVU586
	.loc 2 144 2 view .LVU587
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:144: 	if (t->height)
	.loc 2 144 5 is_stmt 0 view .LVU588
	cbnz	r4, .L91	@ _8,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:169: }
	.loc 2 169 1 view .LVU589
	pop	{r4, r5, r6, r7, r8, pc}	@
.LVL144:
.L62:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:135: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 135 52 discriminator 2 view .LVU590
	ldr	r5, [sp, #28]	@ tmp304, top
	cmp	r5, #1	@ tmp304,
	beq	.L92		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:135: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 135 9 discriminator 4 view .LVU591
	vldr.32	s11, [ip]	@ vertTop$x, p2_61(D)->x
.LVL145:
	.loc 2 135 9 discriminator 4 view .LVU592
	vldr.32	s14, [ip, #4]	@ vertTop$y, p2_61(D)->y
.LVL146:
	.loc 2 136 2 is_stmt 1 view .LVU593
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:136: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 136 40 is_stmt 0 view .LVU594
	cmp	r4, #0	@ bottom
	beq	.L93	@
.L65:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:136: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 136 61 discriminator 2 view .LVU595
	cmp	r4, #1	@ bottom,
	beq	.L94		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:136: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 136 9 discriminator 4 view .LVU596
	vldr.32	s12, [ip]	@ vertBottom$x, p2_61(D)->x
.LVL147:
	.loc 2 136 9 discriminator 4 view .LVU597
	vldr.32	s15, [ip, #4]	@ vertBottom$y, p2_61(D)->y
	b	.L66		@
.LVL148:
.L71:
.LBB631:
.LBB625:
	.loc 2 38 3 is_stmt 1 view .LVU598
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 12 is_stmt 0 view .LVU599
	rsb	r2, lr, #1	@ _108, _87,
.LVL149:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:38: 		res = -((-numerator) / 16);
	.loc 2 38 7 view .LVU600
	add	r4, lr, #30	@ numerator, _87,
.LVL150:
	.loc 2 39 3 is_stmt 1 view .LVU601
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 34 is_stmt 0 view .LVU602
	ands	r2, r2, #15	@ _110, _108,
	it	ne
	movne	r2, #1	@ _110,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 7 view .LVU603
	rsb	r2, r2, r4, asr #4	@ res, _110, numerator,
.LVL151:
	.loc 2 39 7 view .LVU604
	b	.L72		@
.LVL152:
.L68:
	.loc 2 39 7 view .LVU605
.LBE625:
.LBE631:
.LBB632:
.LBB617:
	.loc 2 38 3 is_stmt 1 view .LVU606
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 12 is_stmt 0 view .LVU607
	rsb	r3, ip, #1	@ _119, _77,
.LVL153:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:38: 		res = -((-numerator) / 16);
	.loc 2 38 7 view .LVU608
	add	r2, ip, #30	@ numerator, _77,
.LVL154:
	.loc 2 39 3 is_stmt 1 view .LVU609
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 34 is_stmt 0 view .LVU610
	ands	r3, r3, #15	@ _121, _119,
	it	ne
	movne	r3, #1	@ _121,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:39: 		res -= ((-numerator) % 16) ? 1 : 0;
	.loc 2 39 7 view .LVU611
	rsb	r3, r3, r2, asr #4	@ res, _121, numerator,
.LVL155:
	.loc 2 39 7 view .LVU612
	b	.L69		@
.LVL156:
.L91:
	.loc 2 39 7 view .LVU613
.LBE617:
.LBE632:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:137: 	fixed28_4 topXfx = FloatToFixed28_4(vertTop.x - 0.5f), botXfx = FloatToFixed28_4(vertBottom.x - 0.5f);
	.loc 2 137 21 view .LVU614
	vmov.f32	s15, #5.0e-1	@ tmp233,
.LBB633:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:146: 		fixed28_4 dN = botYfx - topYfx;
	.loc 2 146 13 view .LVU615
	sub	lr, lr, ip	@ dN, _87, _77
.LVL157:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:149: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 149 82 view .LVU616
	lsl	r4, lr, #4	@ _16, dN,
.LBE633:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:137: 	fixed28_4 topXfx = FloatToFixed28_4(vertTop.x - 0.5f), botXfx = FloatToFixed28_4(vertBottom.x - 0.5f);
	.loc 2 137 66 discriminator 1 view .LVU617
	vsub.f32	s12, s12, s15	@ _2, vertBottom$x, tmp233
.LVL158:
.LBB660:
.LBB593:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:24: FORCE_INLINE fixed28_4 FloatToFixed28_4(float v) { return (fixed28_4)(v * 16.0f); }
	.loc 2 24 119 view .LVU618
	vsub.f32	s15, s11, s15	@ _69, vertTop$x, tmp233
.LBE593:
.LBE660:
.LBB661:
.LBB598:
	vcvt.s32.f32	s12, s12, #4	@ _73, _2,
.LBE598:
.LBE661:
.LBB662:
.LBB594:
	vcvt.s32.f32	s15, s15, #4	@ _69, _69,
.LBE594:
.LBE662:
.LBB663:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:147: 		fixed28_4 dM = botXfx - topXfx;
	.loc 2 147 13 view .LVU619
	vmov	r2, s12	@ int	@ _73, _73
.LBE663:
.LBB664:
.LBB595:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:24: FORCE_INLINE fixed28_4 FloatToFixed28_4(float v) { return (fixed28_4)(v * 16.0f); }
	.loc 2 24 119 view .LVU620
	vmov	r8, s15	@ int	@ _69, _69
.LBE595:
.LBE664:
.LBB665:
	.loc 2 146 3 is_stmt 1 view .LVU621
.LVL159:
	.loc 2 147 3 view .LVU622
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:147: 		fixed28_4 dM = botXfx - topXfx;
	.loc 2 147 13 is_stmt 0 view .LVU623
	sub	r2, r2, r8	@ dM, _73, _69
.LVL160:
	.loc 2 149 3 is_stmt 1 view .LVU624
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:149: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 149 38 is_stmt 0 view .LVU625
	mul	r6, r3, r2	@ _9, _115, dM
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:149: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 149 50 view .LVU626
	mul	r7, r2, ip	@ _11, dM, _77
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:149: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 149 45 view .LVU627
	rsb	r6, r7, r6, lsl #4	@ _12, _11, _9,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:149: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 149 59 view .LVU628
	mla	r5, lr, r8, r6	@ _14, dN, _69, _12
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:149: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 149 73 view .LVU629
	subs	r5, r5, #1	@ _15, _14,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:149: 		fixed28_4 init_numerator = dM * 16 * t->Y - dM * topYfx + dN * topXfx - 1 + dN * 16;
	.loc 2 149 13 view .LVU630
	add	lr, r5, lr, lsl #4	@ init_numerator, _15, dN,
.LVL161:
	.loc 2 150 3 is_stmt 1 view .LVU631
.LBB634:
.LBI634:
	.loc 2 44 20 view .LVU632
.LBB635:
	.loc 2 46 1 view .LVU633
	.loc 2 47 2 view .LVU634
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:49: 		*r_floor = numerator / denominator;
	.loc 2 49 24 is_stmt 0 view .LVU635
	sdiv	r5, lr, r4	@ prephitmp_270, init_numerator, _16
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:47: 	if (numerator >= 0) {
	.loc 2 47 5 view .LVU636
	cmp	lr, #0	@ init_numerator,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:49: 		*r_floor = numerator / denominator;
	.loc 2 49 24 view .LVU637
	mov	r6, r5	@ prephitmp_270, prephitmp_270
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:47: 	if (numerator >= 0) {
	.loc 2 47 5 view .LVU638
	blt	.L75		@,
	.loc 2 49 3 is_stmt 1 view .LVU639
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:50: 		*r_mod = numerator % denominator;
	.loc 2 50 22 is_stmt 0 view .LVU640
	mls	lr, r4, r5, lr	@ _142, _16, prephitmp_270, init_numerator
.LVL162:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:49: 		*r_floor = numerator / denominator;
	.loc 2 49 12 view .LVU641
	str	r5, [r0]	@ prephitmp_270, MEM[(int *)t_75(D)]
	.loc 2 50 3 is_stmt 1 view .LVU642
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:50: 		*r_mod = numerator % denominator;
	.loc 2 50 10 is_stmt 0 view .LVU643
	str	lr, [r0, #16]	@ _142, MEM[(int *)t_75(D) + 16B]
.LVL163:
.L76:
	.loc 2 50 10 view .LVU644
.LBE635:
.LBE634:
	.loc 2 151 3 is_stmt 1 view .LVU645
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:151: 		FloorDivMod(dM * 16, dN * 16, &t->x_step, &t->numerator);
	.loc 2 151 18 is_stmt 0 view .LVU646
	lsls	r2, r2, #4	@ _19, dM,
.LVL164:
.LBB639:
.LBI639:
	.loc 2 44 20 is_stmt 1 view .LVU647
.LBB640:
	.loc 2 46 1 view .LVU648
	.loc 2 47 2 view .LVU649
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:47: 	if (numerator >= 0) {
	.loc 2 47 5 is_stmt 0 view .LVU650
	cmp	r2, #0	@ _19,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:49: 		*r_floor = numerator / denominator;
	.loc 2 49 24 view .LVU651
	sdiv	lr, r2, r4	@ prephitmp_271, _19, _16
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:47: 	if (numerator >= 0) {
	.loc 2 47 5 view .LVU652
	blt	.L78		@,
	.loc 2 49 3 is_stmt 1 view .LVU653
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:50: 		*r_mod = numerator % denominator;
	.loc 2 50 22 is_stmt 0 view .LVU654
	mls	r2, r4, lr, r2	@ _136, _16, prephitmp_271, _19
.LVL165:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:49: 		*r_floor = numerator / denominator;
	.loc 2 49 12 view .LVU655
	strd	lr, r2, [r0, #4]	@ prephitmp_271, _136, t,
	.loc 2 50 3 is_stmt 1 view .LVU656
.L79:
.LVL166:
	.loc 2 50 3 is_stmt 0 view .LVU657
.LBE640:
.LBE639:
	.loc 2 152 3 is_stmt 1 view .LVU658
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:155: 		t->y_prestep = Fixed28_4ToFloat(t->Y * 16 - topYfx);
	.loc 2 155 40 is_stmt 0 view .LVU659
	sxth	r3, r3	@ _115, _115
.LVL167:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:158: 		t->invz_step = t->x_step * grad->invz_dx + grad->invz_dy;
	.loc 2 158 28 view .LVU660
	vmov	s15, lr	@ int	@ prephitmp_271, prephitmp_271
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:154: 		t->x_prestep = Fixed28_4ToFloat(t->X * 16 - topXfx);
	.loc 2 154 45 view .LVU661
	rsb	r2, r8, r6, lsl #4	@ _24, _69, prephitmp_270,
.LBB644:
.LBB645:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:25: FORCE_INLINE float Fixed28_4ToFloat(fixed28_4 v) { return v * (1.0f / 16.0f); }
	.loc 2 25 121 view .LVU662
	vldr.32	s8, .L95	@ tmp279,
.LBE645:
.LBE644:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:155: 		t->y_prestep = Fixed28_4ToFloat(t->Y * 16 - topYfx);
	.loc 2 155 45 view .LVU663
	rsb	r3, ip, r3, lsl #4	@ _27, _77, _115,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:158: 		t->invz_step = t->x_step * grad->invz_dx + grad->invz_dy;
	.loc 2 158 28 view .LVU664
	vcvt.f32.s32	s13, s15	@ _37, prephitmp_271
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:154: 		t->x_prestep = Fixed28_4ToFloat(t->X * 16 - topXfx);
	.loc 2 154 45 view .LVU665
	vmov	s14, r2	@ int	@ _24, _24
.LVL168:
	.loc 2 154 45 view .LVU666
	ldr	r2, [sp, #28]	@ tmp344, top
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:155: 		t->y_prestep = Fixed28_4ToFloat(t->Y * 16 - topYfx);
	.loc 2 155 45 view .LVU667
	vmov	s15, r3	@ int	@ _27, _27
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:161: 		t->uz = grad->uz[top] + t->y_prestep * grad->uz_dy + t->x_prestep * grad->uz_dx;
	.loc 2 161 46 view .LVU668
	vldr.32	s5, [r1, #48]	@ _41, grad_91(D)->uz_dy
	add	lr, r1, r2, lsl #2	@ _17, grad, tmp344,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:165: 		t->vz = grad->vz[top] + t->y_prestep * grad->vz_dy + t->x_prestep * grad->vz_dx;
	.loc 2 165 46 view .LVU669
	vldr.32	s9, [r1, #56]	@ _50, grad_91(D)->vz_dy
.LBB649:
.LBB650:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:25: FORCE_INLINE float Fixed28_4ToFloat(fixed28_4 v) { return v * (1.0f / 16.0f); }
	.loc 2 25 121 view .LVU670
	vcvt.f32.s32	s15, s15	@ _67, _27
.LBE650:
.LBE649:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:157: 		t->invz = grad->invz[top] + t->y_prestep * grad->invz_dy + t->x_prestep * grad->invz_dx;
	.loc 2 157 50 view .LVU671
	vldr.32	s4, [r1, #40]	@ _30, grad_91(D)->invz_dy
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:161: 		t->uz = grad->uz[top] + t->y_prestep * grad->uz_dy + t->x_prestep * grad->uz_dx;
	.loc 2 161 9 view .LVU672
	vldr.32	s11, [lr, #12]	@ MEM <const float> [(const struct tri_gradients *)_17 + 12B], MEM <const float> [(const struct tri_gradients *)_17 + 12B]
.LVL169:
.LBB653:
.LBB646:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:25: FORCE_INLINE float Fixed28_4ToFloat(fixed28_4 v) { return v * (1.0f / 16.0f); }
	.loc 2 25 121 view .LVU673
	vcvt.f32.s32	s14, s14	@ _101, _24
.LBE646:
.LBE653:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:165: 		t->vz = grad->vz[top] + t->y_prestep * grad->vz_dy + t->x_prestep * grad->vz_dx;
	.loc 2 165 9 view .LVU674
	vldr.32	s12, [lr, #24]	@ MEM <const float> [(const struct tri_gradients *)_17 + 24B], MEM <const float> [(const struct tri_gradients *)_17 + 24B]
.LVL170:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:158: 		t->invz_step = t->x_step * grad->invz_dx + grad->invz_dy;
	.loc 2 158 16 view .LVU675
	vmov.f32	s2, s4	@ tmp289, _30
.LBB654:
.LBB651:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:25: FORCE_INLINE float Fixed28_4ToFloat(fixed28_4 v) { return v * (1.0f / 16.0f); }
	.loc 2 25 121 view .LVU676
	vmul.f32	s15, s15, s8	@ _65, _67, tmp279
.LBE651:
.LBE654:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:157: 		t->invz = grad->invz[top] + t->y_prestep * grad->invz_dy + t->x_prestep * grad->invz_dx;
	.loc 2 157 11 view .LVU677
	vldr.32	s10, [lr]	@ MEM <const float> [(const struct tri_gradients *)_17], MEM <const float> [(const struct tri_gradients *)_17]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:162: 		t->uz_step = t->x_step * grad->uz_dx + grad->uz_dy;
	.loc 2 162 14 view .LVU678
	vmov.f32	s3, s5	@ tmp293, _41
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:157: 		t->invz = grad->invz[top] + t->y_prestep * grad->invz_dy + t->x_prestep * grad->invz_dx;
	.loc 2 157 81 view .LVU679
	vldr.32	s6, [r1, #36]	@ _33, grad_91(D)->invz_dx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:161: 		t->uz = grad->uz[top] + t->y_prestep * grad->uz_dy + t->x_prestep * grad->uz_dx;
	.loc 2 161 75 view .LVU680
	vldr.32	s7, [r1, #44]	@ _44, grad_91(D)->uz_dx
.LBB655:
.LBB647:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:25: FORCE_INLINE float Fixed28_4ToFloat(fixed28_4 v) { return v * (1.0f / 16.0f); }
	.loc 2 25 121 view .LVU681
	vmul.f32	s14, s14, s8	@ _102, _101, tmp279
.LBE647:
.LBE655:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:161: 		t->uz = grad->uz[top] + t->y_prestep * grad->uz_dy + t->x_prestep * grad->uz_dx;
	.loc 2 161 9 view .LVU682
	vfma.f32	s11, s5, s15	@ tmp291, _41, _65
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:165: 		t->vz = grad->vz[top] + t->y_prestep * grad->vz_dy + t->x_prestep * grad->vz_dx;
	.loc 2 165 75 view .LVU683
	vldr.32	s8, [r1, #52]	@ _53, grad_91(D)->vz_dx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:165: 		t->vz = grad->vz[top] + t->y_prestep * grad->vz_dy + t->x_prestep * grad->vz_dx;
	.loc 2 165 9 view .LVU684
	vfma.f32	s12, s9, s15	@ tmp295, _50, _65
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:155: 		t->y_prestep = Fixed28_4ToFloat(t->Y * 16 - topYfx);
	.loc 2 155 16 discriminator 1 view .LVU685
	vstr.32	s15, [r0, #68]	@ _65, t_75(D)->y_prestep
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:157: 		t->invz = grad->invz[top] + t->y_prestep * grad->invz_dy + t->x_prestep * grad->invz_dx;
	.loc 2 157 11 view .LVU686
	vfma.f32	s10, s4, s15	@ tmp287, _30, _65
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:152: 		t->denominator = dN * 16;
	.loc 2 152 18 view .LVU687
	str	r4, [r0, #12]	@ _16, t_75(D)->denominator
	.loc 2 154 3 is_stmt 1 view .LVU688
.LVL171:
.LBB656:
.LBI644:
	.loc 2 25 80 view .LVU689
.LBB648:
	.loc 2 25 112 view .LVU690
	.loc 2 25 112 is_stmt 0 view .LVU691
.LBE648:
.LBE656:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:158: 		t->invz_step = t->x_step * grad->invz_dx + grad->invz_dy;
	.loc 2 158 16 view .LVU692
	vfma.f32	s2, s6, s13	@ tmp289, _33, _37
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:154: 		t->x_prestep = Fixed28_4ToFloat(t->X * 16 - topXfx);
	.loc 2 154 16 discriminator 1 view .LVU693
	vstr.32	s14, [r0, #64]	@ _102, t_75(D)->x_prestep
	.loc 2 155 3 is_stmt 1 view .LVU694
.LVL172:
.LBB657:
.LBI649:
	.loc 2 25 80 view .LVU695
.LBB652:
	.loc 2 25 112 view .LVU696
	.loc 2 25 112 is_stmt 0 view .LVU697
.LBE652:
.LBE657:
	.loc 2 157 3 is_stmt 1 view .LVU698
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:162: 		t->uz_step = t->x_step * grad->uz_dx + grad->uz_dy;
	.loc 2 162 14 is_stmt 0 view .LVU699
	vfma.f32	s3, s13, s7	@ tmp293, _37, _44
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:159: 		t->invz_step_extra = grad->invz_dx;
	.loc 2 159 22 view .LVU700
	vstr.32	s6, [r0, #36]	@ _33, t_75(D)->invz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:166: 		t->vz_step = t->x_step * grad->vz_dx + grad->vz_dy;
	.loc 2 166 14 view .LVU701
	vfma.f32	s9, s13, s8	@ tmp297, _37, _53
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:163: 		t->uz_step_extra = grad->uz_dx;
	.loc 2 163 20 view .LVU702
	vstr.32	s7, [r0, #48]	@ _44, t_75(D)->uz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:161: 		t->uz = grad->uz[top] + t->y_prestep * grad->uz_dy + t->x_prestep * grad->uz_dx;
	.loc 2 161 9 view .LVU703
	vmov.f32	s13, s11	@ tmp291, tmp291
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:167: 		t->vz_step_extra = grad->vz_dx;
	.loc 2 167 20 view .LVU704
	vstr.32	s8, [r0, #60]	@ _53, t_75(D)->vz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:165: 		t->vz = grad->vz[top] + t->y_prestep * grad->vz_dy + t->x_prestep * grad->vz_dx;
	.loc 2 165 9 view .LVU705
	vmov.f32	s15, s12	@ tmp295, tmp295
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:157: 		t->invz = grad->invz[top] + t->y_prestep * grad->invz_dy + t->x_prestep * grad->invz_dx;
	.loc 2 157 11 view .LVU706
	vfma.f32	s10, s6, s14	@ tmp286, _33, _102
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:161: 		t->uz = grad->uz[top] + t->y_prestep * grad->uz_dy + t->x_prestep * grad->uz_dx;
	.loc 2 161 9 view .LVU707
	vfma.f32	s13, s7, s14	@ tmp291, _44, _102
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:158: 		t->invz_step = t->x_step * grad->invz_dx + grad->invz_dy;
	.loc 2 158 16 view .LVU708
	vstr.32	s2, [r0, #32]	@ tmp289, t_75(D)->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:165: 		t->vz = grad->vz[top] + t->y_prestep * grad->vz_dy + t->x_prestep * grad->vz_dx;
	.loc 2 165 9 view .LVU709
	vfma.f32	s15, s8, s14	@ tmp295, _53, _102
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:162: 		t->uz_step = t->x_step * grad->uz_dx + grad->uz_dy;
	.loc 2 162 14 view .LVU710
	vstr.32	s3, [r0, #44]	@ tmp293, t_75(D)->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:166: 		t->vz_step = t->x_step * grad->vz_dx + grad->vz_dy;
	.loc 2 166 14 view .LVU711
	vstr.32	s9, [r0, #56]	@ tmp297, t_75(D)->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:157: 		t->invz = grad->invz[top] + t->y_prestep * grad->invz_dy + t->x_prestep * grad->invz_dx;
	.loc 2 157 11 view .LVU712
	vstr.32	s10, [r0, #28]	@ tmp286, t_75(D)->invz
	.loc 2 158 3 is_stmt 1 view .LVU713
	.loc 2 159 3 view .LVU714
	.loc 2 161 3 view .LVU715
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:161: 		t->uz = grad->uz[top] + t->y_prestep * grad->uz_dy + t->x_prestep * grad->uz_dx;
	.loc 2 161 9 is_stmt 0 view .LVU716
	vstr.32	s13, [r0, #40]	@ tmp290, t_75(D)->uz
	.loc 2 162 3 is_stmt 1 view .LVU717
	.loc 2 163 3 view .LVU718
	.loc 2 165 3 view .LVU719
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:165: 		t->vz = grad->vz[top] + t->y_prestep * grad->vz_dy + t->x_prestep * grad->vz_dx;
	.loc 2 165 9 is_stmt 0 view .LVU720
	vstr.32	s15, [r0, #52]	@ tmp294, t_75(D)->vz
	.loc 2 166 3 is_stmt 1 view .LVU721
	.loc 2 167 3 view .LVU722
.LVL173:
	.loc 2 167 3 is_stmt 0 view .LVU723
.LBE665:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:169: }
	.loc 2 169 1 view .LVU724
	pop	{r4, r5, r6, r7, r8, pc}	@
.LVL174:
.L92:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:135: 	float3 vertTop = top == 0 ? *p0 : (top == 1 ? *p1 : *p2);
	.loc 2 135 9 discriminator 3 view .LVU725
	vldr.32	s11, [r3]	@ vertTop$x, p1_62(D)->x
.LVL175:
	.loc 2 135 9 discriminator 3 view .LVU726
	vldr.32	s14, [r3, #4]	@ vertTop$y, p1_62(D)->y
.LVL176:
	.loc 2 135 9 discriminator 3 view .LVU727
	b	.L63		@
.L94:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:136: 	float3 vertBottom = bottom == 0 ? *p0 : (bottom == 1 ? *p1 : *p2);
	.loc 2 136 9 discriminator 3 view .LVU728
	vldr.32	s12, [r3]	@ vertBottom$x, p1_62(D)->x
.LVL177:
	.loc 2 136 9 discriminator 3 view .LVU729
	vldr.32	s15, [r3, #4]	@ vertBottom$y, p1_62(D)->y
.LVL178:
	.loc 2 136 9 discriminator 3 view .LVU730
	b	.L66		@
.LVL179:
.L75:
.LBB666:
.LBB658:
.LBB638:
	.loc 2 54 3 is_stmt 1 view .LVU731
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:54: 		*r_floor = -((-numerator) / denominator);
	.loc 2 54 17 is_stmt 0 view .LVU732
	rsb	r5, lr, #0	@ _143, init_numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:54: 		*r_floor = -((-numerator) / denominator);
	.loc 2 54 12 view .LVU733
	str	r6, [r0]	@ prephitmp_270, MEM[(int *)t_75(D)]
	.loc 2 55 3 is_stmt 1 view .LVU734
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:55: 		*r_mod = (-numerator) % denominator;
	.loc 2 55 25 is_stmt 0 view .LVU735
	sdiv	r7, r5, r4	@ tmp259, _143, _16
	mls	r5, r4, r7, r5	@ _146, _16, tmp259, _143
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:55: 		*r_mod = (-numerator) % denominator;
	.loc 2 55 10 view .LVU736
	str	r5, [r0, #16]	@ _146, MEM[(int *)t_75(D) + 16B]
	.loc 2 56 3 is_stmt 1 view .LVU737
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:56: 		if (*r_mod) {
	.loc 2 56 6 is_stmt 0 view .LVU738
	cmp	r5, #0	@ _146
	beq	.L76	@
.LVL180:
.LBB636:
.LBI636:
	.loc 2 44 20 is_stmt 1 view .LVU739
.LBB637:
	.loc 2 58 4 view .LVU740
	subs	r6, r6, #1	@ prephitmp_270, prephitmp_270,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 39 is_stmt 0 view .LVU741
	subs	r5, r4, r5	@ tmp335, _16, _146
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 14 view .LVU742
	str	r6, [r0]	@ prephitmp_270, MEM[(int *)t_75(D)]
	.loc 2 58 18 is_stmt 1 view .LVU743
.LVL181:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 39 is_stmt 0 view .LVU744
	str	r5, [r0, #16]	@ tmp335, MEM[(int *)t_75(D) + 16B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:61: }
	.loc 2 61 1 view .LVU745
	b	.L76		@
.LVL182:
.L78:
	.loc 2 61 1 view .LVU746
.LBE637:
.LBE636:
.LBE638:
.LBE658:
.LBB659:
.LBB643:
	.loc 2 54 3 is_stmt 1 view .LVU747
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:54: 		*r_floor = -((-numerator) / denominator);
	.loc 2 54 17 is_stmt 0 view .LVU748
	rsbs	r2, r2, #0	@ _137, _19
.LVL183:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:54: 		*r_floor = -((-numerator) / denominator);
	.loc 2 54 12 view .LVU749
	str	lr, [r0, #4]	@ prephitmp_271, MEM[(int *)t_75(D) + 4B]
	.loc 2 55 3 is_stmt 1 view .LVU750
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:55: 		*r_mod = (-numerator) % denominator;
	.loc 2 55 25 is_stmt 0 view .LVU751
	sdiv	r5, r2, r4	@ tmp273, _137, _16
	mls	r2, r4, r5, r2	@ _140, _16, tmp273, _137
.LVL184:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:55: 		*r_mod = (-numerator) % denominator;
	.loc 2 55 10 view .LVU752
	str	r2, [r0, #8]	@ _140, MEM[(int *)t_75(D) + 8B]
	.loc 2 56 3 is_stmt 1 view .LVU753
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:56: 		if (*r_mod) {
	.loc 2 56 6 is_stmt 0 view .LVU754
	cmp	r2, #0	@ _140
	beq	.L79	@
.LVL185:
.LBB641:
.LBI641:
	.loc 2 44 20 is_stmt 1 view .LVU755
.LBB642:
	.loc 2 58 4 view .LVU756
	add	lr, lr, #-1	@ prephitmp_271, prephitmp_271,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 39 is_stmt 0 view .LVU757
	subs	r2, r4, r2	@ _154, _16, _140
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:58: 			(*r_floor)--; *r_mod = denominator - *r_mod;
	.loc 2 58 14 view .LVU758
	strd	lr, r2, [r0, #4]	@ prephitmp_271, _154, t,
	.loc 2 58 18 is_stmt 1 view .LVU759
.LVL186:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:61: }
	.loc 2 61 1 is_stmt 0 view .LVU760
	b	.L79		@
.L96:
	.align	2
.L95:
	.word	1031798784
.LBE642:
.LBE641:
.LBE643:
.LBE659:
.LBE666:
	.cfi_endproc
.LFE48:
	.size	tri_edge_uv_init, .-tri_edge_uv_init
	.section	.text.draw_tri_pattern,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	draw_tri_pattern
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_tri_pattern, %function
draw_tri_pattern:
.LVL187:
.LFB71:
	.loc 1 66 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 67 2 view .LVU762
	.loc 1 68 2 view .LVU763
	vldr.32	s15, [r2, #4]	@ _194, MEM[(float *)p0_9(D) + 4B]
	vldr.32	s14, [r3, #4]	@ _195, MEM[(float *)p1_10(D) + 4B]
.LBB725:
.LBB726:
.LBB727:
.LBB728:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 is_stmt 0 view .LVU764
	vcmp.f32	s15, s14	@ _194, _195
.LBE728:
.LBE727:
.LBE726:
.LBE725:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:66: {
	.loc 1 66 1 view .LVU765
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI8:
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #172	@,,
.LCFI9:
	.cfi_def_cfa_offset 208
.LVL188:
.LBB748:
.LBB741:
.LBB735:
.LBB729:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 view .LVU766
	vmrs	APSR_nzcv, FPSCR
.LBE729:
.LBE735:
.LBE741:
.LBE748:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:66: {
	.loc 1 66 1 view .LVU767
	mov	r5, r2	@ p0, p0
.LVL189:
	.loc 1 66 1 view .LVU768
	mov	fp, r3	@ p1, p1
.LVL190:
	.loc 1 66 1 view .LVU769
	ldr	r7, [sp, #208]	@ p2, p2
.LVL191:
.LBB749:
.LBI725:
	.loc 2 398 79 is_stmt 1 view .LVU770
.LBB742:
	.loc 2 400 2 view .LVU771
	.loc 2 401 2 view .LVU772
.LBE742:
.LBE749:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:66: {
	.loc 1 66 1 is_stmt 0 view .LVU773
	str	r0, [sp, #12]	@ bitmap, %sfp
	vldr.32	s13, [r7, #4]	@ _196, MEM[(float *)p2_11(D) + 4B]
.LVL192:
.LBB750:
.LBB743:
.LBB736:
.LBI727:
	.loc 2 335 12 is_stmt 1 view .LVU774
.LBB730:
	.loc 2 337 2 view .LVU775
	.loc 2 338 2 view .LVU776
	.loc 2 341 2 view .LVU777
.LBE730:
.LBE736:
.LBE743:
.LBE750:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:66: {
	.loc 1 66 1 is_stmt 0 view .LVU778
	str	r1, [sp, #16]	@ rowstride, %sfp
.LBB751:
.LBB744:
.LBB737:
.LBB731:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 view .LVU779
	bpl	.L181		@,
	.loc 2 342 3 is_stmt 1 view .LVU780
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:342: 		if (Y2 < Y0) {
	.loc 2 342 6 is_stmt 0 view .LVU781
	vcmp.f32	s15, s13	@ _194, _196
	vmrs	APSR_nzcv, FPSCR
	ble	.L185		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:343: 			*r_top = 2; *r_mid = 0; *r_bottom = 1;
	.loc 2 343 38 view .LVU782
	mov	r8, #1	@ v_bottom,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:344: 			v_mid_cmp = 0; v_bot_cmp = 1;
	.loc 2 344 14 view .LVU783
	movs	r3, #0	@ v_mid_cmp,
.LVL193:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:343: 			*r_top = 2; *r_mid = 0; *r_bottom = 1;
	.loc 2 343 11 view .LVU784
	movs	r6, #2	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:344: 			v_mid_cmp = 0; v_bot_cmp = 1;
	.loc 2 344 29 view .LVU785
	mov	r9, r8	@ v_bot_cmp, v_bottom
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:344: 			v_mid_cmp = 0; v_bot_cmp = 1;
	.loc 2 344 14 view .LVU786
	str	r3, [sp, #56]	@ v_mid_cmp, %sfp
.L100:
.LVL194:
	.loc 2 376 2 is_stmt 1 view .LVU787
	.loc 2 376 2 is_stmt 0 view .LVU788
.LBE731:
.LBE737:
	.loc 2 414 2 is_stmt 1 view .LVU789
	add	r4, sp, #72	@ cstore_202,,
.LVL195:
	.loc 2 414 2 is_stmt 0 view .LVU790
	mov	r1, r5	@, p0
.LVL196:
	.loc 2 414 2 view .LVU791
	mov	r3, r7	@, p2
	mov	r2, fp	@, p1
.LVL197:
	.loc 2 414 2 view .LVU792
	mov	r0, r4	@, cstore_202
.LVL198:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:415: 	tri_edge_init(&st->e_top_mid, p0, p1, p2, v_top, v_mid);
	.loc 2 415 2 view .LVU793
	add	r10, sp, #100	@ iftmp.9_266,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:414: 	tri_edge_init(&st->e_top_bottom, p0, p1, p2, v_top, v_bottom);
	.loc 2 414 2 view .LVU794
	strd	r6, r8, [sp]	@ v_top, v_bottom,
	bl	tri_edge_init		@
.LVL199:
	.loc 2 415 2 is_stmt 1 view .LVU795
	str	r6, [sp]	@ v_top,
	ldr	r6, [sp, #56]	@ v_mid_cmp, %sfp
.LVL200:
	.loc 2 415 2 is_stmt 0 view .LVU796
	mov	r1, r5	@, p0
	mov	r3, r7	@, p2
	mov	r2, fp	@, p1
	mov	r0, r10	@, iftmp.9_266
	str	r6, [sp, #4]	@ v_mid_cmp,
	bl	tri_edge_init		@
.LVL201:
	.loc 2 416 2 is_stmt 1 view .LVU797
	mov	r1, r5	@, p0
	add	r5, sp, #128	@ iftmp.11_91,,
.LVL202:
	.loc 2 416 2 is_stmt 0 view .LVU798
	mov	r3, r7	@, p2
	mov	r2, fp	@, p1
	str	r8, [sp, #4]	@ v_bottom,
	mov	r0, r5	@, iftmp.11_91
	str	r6, [sp]	@ v_mid_cmp,
	bl	tri_edge_init		@
.LVL203:
	.loc 2 418 2 is_stmt 1 view .LVU799
	.loc 2 418 2 is_stmt 0 view .LVU800
.LBE744:
.LBE751:
	.loc 1 70 2 is_stmt 1 view .LVU801
.LBB752:
.LBI752:
	.loc 2 439 78 view .LVU802
.LBB753:
	.loc 2 441 2 view .LVU803
	.loc 2 443 2 view .LVU804
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:443: 	return st->e_top_mid.height;
	.loc 2 443 22 is_stmt 0 view .LVU805
	ldr	r3, [sp, #124]	@ _147, tri.e_top_mid.height
.LVL204:
	.loc 2 443 22 view .LVU806
.LBE753:
.LBE752:
	.loc 1 71 2 is_stmt 1 view .LVU807
	.loc 1 71 9 view .LVU808
	.loc 1 71 9 is_stmt 0 view .LVU809
	cmp	r3, #0	@ _147
	beq	.L137	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:71: 	while (height--) {
	.loc 1 71 15 view .LVU810
	add	fp, r3, #-1	@ height, _147,
.LVL205:
.LBB757:
.LBB754:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:442: 	st->e_right = st->mid_is_left ? &st->e_top_mid : &st->e_top_bottom;
	.loc 2 442 49 discriminator 2 view .LVU811
	mov	r0, r4	@ iftmp.9_266, cstore_202
	b	.L138		@
.LVL206:
.L181:
	.loc 2 442 49 discriminator 2 view .LVU812
.LBE754:
.LBE757:
.LBB758:
.LBB745:
.LBB738:
.LBB732:
	.loc 2 359 3 is_stmt 1 view .LVU813
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:359: 		if (Y2 < Y1) {
	.loc 2 359 6 is_stmt 0 view .LVU814
	vcmp.f32	s14, s13	@ _195, _196
	vmrs	APSR_nzcv, FPSCR
	ble	.L186		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:360: 			*r_top = 2; *r_mid = 1; *r_bottom = 0;
	.loc 2 360 23 view .LVU815
	mov	r8, #1	@ v_mid,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:360: 			*r_top = 2; *r_mid = 1; *r_bottom = 0;
	.loc 2 360 11 view .LVU816
	movs	r6, #2	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:361: 			v_mid_cmp = 1; v_bot_cmp = 0;
	.loc 2 361 29 view .LVU817
	mov	r9, #0	@ v_bot_cmp,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:361: 			v_mid_cmp = 1; v_bot_cmp = 0;
	.loc 2 361 14 view .LVU818
	str	r8, [sp, #56]	@ v_mid, %sfp
.LVL207:
.L101:
	.loc 2 376 2 is_stmt 1 view .LVU819
	.loc 2 376 2 is_stmt 0 view .LVU820
.LBE732:
.LBE738:
	.loc 2 414 2 is_stmt 1 view .LVU821
	add	r4, sp, #72	@ cstore_202,,
.LVL208:
	.loc 2 414 2 is_stmt 0 view .LVU822
	mov	r1, r5	@, p0
.LVL209:
	.loc 2 414 2 view .LVU823
	mov	r3, r7	@, p2
	mov	r2, fp	@, p1
.LVL210:
	.loc 2 414 2 view .LVU824
	mov	r0, r4	@, cstore_202
.LVL211:
	.loc 2 414 2 view .LVU825
	strd	r6, r9, [sp]	@ v_top, v_bot_cmp,
	bl	tri_edge_init		@
.LVL212:
	.loc 2 415 2 is_stmt 1 view .LVU826
	mov	r1, r5	@, p0
	mov	r3, r7	@, p2
	mov	r2, fp	@, p1
	add	r0, sp, #100	@,,
	strd	r6, r8, [sp]	@ v_top, v_mid,
	bl	tri_edge_init		@
.LVL213:
	.loc 2 416 2 view .LVU827
	mov	r1, r5	@, p0
	add	r5, sp, #128	@ iftmp.11_91,,
.LVL214:
	.loc 2 416 2 is_stmt 0 view .LVU828
	mov	r3, r7	@, p2
	mov	r2, fp	@, p1
	str	r8, [sp]	@ v_mid,
	mov	r0, r5	@, iftmp.11_91
	str	r9, [sp, #4]	@ v_bot_cmp,
	bl	tri_edge_init		@
.LVL215:
	.loc 2 418 2 is_stmt 1 view .LVU829
	.loc 2 418 2 is_stmt 0 view .LVU830
.LBE745:
.LBE758:
	.loc 1 70 2 is_stmt 1 view .LVU831
.LBB759:
	.loc 2 439 78 view .LVU832
.LBB755:
	.loc 2 441 2 view .LVU833
	.loc 2 443 2 view .LVU834
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:443: 	return st->e_top_mid.height;
	.loc 2 443 22 is_stmt 0 view .LVU835
	ldr	r3, [sp, #124]	@ _158, tri.e_top_mid.height
.LVL216:
	.loc 2 443 22 view .LVU836
.LBE755:
.LBE759:
	.loc 1 71 2 is_stmt 1 view .LVU837
	.loc 1 71 9 view .LVU838
	.loc 1 71 9 is_stmt 0 view .LVU839
	cmp	r3, #0	@ _158
	beq	.L117	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:71: 	while (height--) {
	.loc 1 71 15 view .LVU840
	add	fp, r3, #-1	@ height, _158,
.LVL217:
.LBB760:
.LBB756:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:442: 	st->e_right = st->mid_is_left ? &st->e_top_mid : &st->e_top_bottom;
	.loc 2 442 49 discriminator 1 view .LVU841
	add	r0, sp, #100	@ iftmp.9_266,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:441: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_top_mid;
	.loc 2 441 13 discriminator 4 view .LVU842
	mov	r10, r4	@ cstore_265, cstore_202
.L138:
	.loc 2 441 13 discriminator 4 view .LVU843
.LBE756:
.LBE760:
.LBB761:
.LBB762:
.LBB763:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 11 view .LVU844
	ldr	r3, [r10, #4]	@ _217, cstore_265->x_step
.LBE763:
.LBE762:
.LBE761:
.LBB774:
.LBB775:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 31 view .LVU845
	str	r9, [sp, #60]	@ v_bot_cmp, %sfp
	mov	r9, fp	@ height, height
.LBE775:
.LBE774:
.LBB818:
.LBB766:
.LBB764:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 11 view .LVU846
	str	r3, [sp, #36]	@ _217, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 20 view .LVU847
	ldr	r3, [r10, #8]	@ _224, cstore_265->numerator
	str	r3, [sp, #40]	@ _224, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 view .LVU848
	ldr	r3, [r10, #12]	@ _226, cstore_265->denominator
	str	r3, [sp, #44]	@ _226, %sfp
.LBE764:
.LBE766:
.LBB767:
.LBB768:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 11 view .LVU849
	ldr	r3, [r0, #4]	@ _204, iftmp.9_266->x_step
	str	r3, [sp, #24]	@ _204, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 20 view .LVU850
	ldr	r3, [r0, #8]	@ _211, iftmp.9_266->numerator
	str	r3, [sp, #28]	@ _211, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 view .LVU851
	ldr	r3, [r0, #12]	@ _213, iftmp.9_266->denominator
.LBE768:
.LBE767:
.LBE818:
.LBB819:
.LBB812:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 31 view .LVU852
	strd	r5, r4, [sp, #64]	@ iftmp.11_91, cstore_202,,
.LBE812:
.LBE819:
.LBB820:
.LBB771:
.LBB769:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 view .LVU853
	str	r3, [sp, #32]	@ _213, %sfp
.LVL218:
.L116:
	.loc 2 213 24 view .LVU854
.LBE769:
.LBE771:
.LBE820:
	.loc 1 72 3 is_stmt 1 view .LVU855
.LBB821:
.LBI774:
	.loc 1 15 79 view .LVU856
.LBB813:
	.loc 1 17 2 view .LVU857
.LBB776:
.LBB777:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU858
	ldr	r2, [r0]	@ MEM[(const struct tri_edge *)iftmp.9_266].X, MEM[(const struct tri_edge *)iftmp.9_266].X
.LBE777:
.LBE776:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:17: 	int x = max2(0, edge_l->X);
	.loc 1 17 24 view .LVU859
	ldr	r4, [r10]	@ _26, MEM[(const struct tri_edge *)cstore_265].X
.LVL219:
.LBB780:
.LBI780:
	.loc 3 150 19 is_stmt 1 view .LVU860
.LBB781:
	.loc 3 152 2 view .LVU861
.LBE781:
.LBE780:
.LBB783:
.LBB778:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU862
	cmp	r2, #400	@ MEM[(const struct tri_edge *)iftmp.9_266].X,
.LBE778:
.LBE783:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:21: 	uint8_t* row = bitmap + edge_l->Y * rowstride;
	.loc 1 21 32 view .LVU863
	ldr	r1, [r10, #20]	@ pretmp_334, MEM[(const struct tri_edge *)cstore_265].Y
.LBB784:
.LBB782:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:152: 	return a > b ? a : b;
	.loc 3 152 19 view .LVU864
	bic	r5, r4, r4, asr #31	@ x, _26
.LVL220:
	.loc 3 152 19 view .LVU865
.LBE782:
.LBE784:
	.loc 1 18 2 is_stmt 1 view .LVU866
.LBB785:
.LBI776:
	.loc 3 145 19 view .LVU867
.LBB779:
	.loc 3 147 2 view .LVU868
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU869
	it	ge
	movge	r2, #400	@ _29,
.LVL221:
	.loc 3 147 19 view .LVU870
.LBE779:
.LBE785:
	.loc 1 19 2 is_stmt 1 view .LVU871
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:19: 	if (endx <= x) return;
	.loc 1 19 5 is_stmt 0 view .LVU872
	cmp	r5, r2	@ x, _29
	bge	.L103		@,
	.loc 1 21 2 is_stmt 1 view .LVU873
.LVL222:
	.loc 1 23 2 view .LVU874
	.loc 1 24 2 view .LVU875
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:23: 	const uint8_t pat = pattern[edge_l->Y % 8];
	.loc 1 23 40 is_stmt 0 view .LVU876
	rsbs	r6, r1, #0	@ tmp317, pretmp_334,
	and	r3, r1, #7	@ _33, pretmp_334,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:27: 	int startbit = x % 32;
	.loc 1 27 6 view .LVU877
	and	r8, r5, #31	@ startbit, x,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 31 view .LVU878
	mov	r7, #1	@ tmp496,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:23: 	const uint8_t pat = pattern[edge_l->Y % 8];
	.loc 1 23 40 view .LVU879
	and	r6, r6, #7	@ tmp318, tmp317,
	it	pl
	rsbpl	r3, r6, #0	@ _33, tmp318
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:24: 	uint32_t pattern4 = (pat << 24) | (pat << 16) | (pat << 8) | pat;
	.loc 1 24 34 view .LVU880
	ldr	r6, [sp, #212]	@ tmp494, pattern
	ldrb	r3, [r6, r3]	@ zero_extendqisi2	@ _37, *_35
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 38 view .LVU881
	rsb	r6, r8, #32	@ _46, startbit,
	add	r3, r3, r3, lsl #8	@ tmp322, _37, _37,
	str	r6, [sp, #48]	@ _46, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 31 view .LVU882
	lsl	r6, r7, r6	@ _47, tmp496, _46
	add	r3, r3, r3, lsl #16	@ _193, tmp322, tmp322,
.LVL223:
	.loc 1 27 2 is_stmt 1 view .LVU883
	.loc 1 28 2 view .LVU884
.LBB786:
.LBI786:
	.loc 3 29 24 view .LVU885
.LBB787:
	.loc 3 33 2 view .LVU886
	.loc 3 34 2 view .LVU887
.LBE787:
.LBE786:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 51 is_stmt 0 view .LVU888
	subs	r6, r6, #1	@ _48, _47,
.LBB789:
.LBB788:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU889
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r6, r6	@ result, _48
@ 0 "" 2
	.loc 3 35 2 is_stmt 1 view .LVU890
.LVL224:
	.loc 3 35 2 is_stmt 0 view .LVU891
	.thumb
	.syntax unified
.LBE788:
.LBE789:
	.loc 1 29 2 is_stmt 1 view .LVU892
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:29: 	int endbit = endx % 32;
	.loc 1 29 6 is_stmt 0 view .LVU893
	and	lr, r2, #31	@ endbit, _29,
.LVL225:
	.loc 1 30 2 is_stmt 1 view .LVU894
.LBB790:
.LBI790:
	.loc 3 29 24 view .LVU895
.LBB791:
	.loc 3 33 2 view .LVU896
	.loc 3 34 2 view .LVU897
.LBE791:
.LBE790:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:30: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 30 30 is_stmt 0 view .LVU898
	lsl	r7, r7, lr	@ _52, tmp498, endbit
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:30: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 30 53 view .LVU899
	rsb	ip, lr, #32	@ _54, endbit,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:30: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 30 41 view .LVU900
	subs	r7, r7, #1	@ _53, _52,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:30: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 30 46 view .LVU901
	lsl	r7, r7, ip	@ _55, _53, _54
.LBB794:
.LBB792:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU902
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r7, r7	@ result, _55
@ 0 "" 2
	.thumb
	.syntax unified
.LBE792:
.LBE794:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:32: 	int col = x / 32;
	.loc 1 32 6 view .LVU903
	asr	fp, r5, #5	@ col, x,
.LBB795:
.LBB793:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU904
	str	r7, [sp, #20]	@ result, %sfp
	.loc 3 35 2 is_stmt 1 view .LVU905
.LVL226:
	.loc 3 35 2 is_stmt 0 view .LVU906
.LBE793:
.LBE795:
	.loc 1 32 2 is_stmt 1 view .LVU907
	.loc 1 33 2 view .LVU908
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:33: 	uint32_t* p = (uint32_t*)row + col;
	.loc 1 33 12 is_stmt 0 view .LVU909
	ldr	r7, [sp, #16]	@ rowstride, %sfp
.LVL227:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:33: 	uint32_t* p = (uint32_t*)row + col;
	.loc 1 33 31 view .LVU910
	lsl	ip, fp, #2	@ _60, col,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:35: 	if (col == endx / 32)
	.loc 1 35 5 view .LVU911
	cmp	fp, r2, asr #5	@ col, _29,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:33: 	uint32_t* p = (uint32_t*)row + col;
	.loc 1 33 12 view .LVU912
	mla	ip, r1, r7, ip	@ _61, pretmp_334, rowstride, _60
	ldr	r7, [sp, #12]	@ bitmap, %sfp
	add	r7, r7, ip	@ p, _61
.LVL228:
	.loc 1 35 2 is_stmt 1 view .LVU913
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:35: 	if (col == endx / 32)
	.loc 1 35 5 is_stmt 0 view .LVU914
	beq	.L187		@,
	.loc 1 48 3 is_stmt 1 view .LVU915
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:48: 		if (startbit > 0)
	.loc 1 48 6 is_stmt 0 view .LVU916
	cmp	r8, #0	@ startbit
	beq	.L108	@
	.loc 1 50 4 is_stmt 1 view .LVU917
	adds	r7, r7, #4	@ p, p,
.LVL229:
	.loc 1 50 4 is_stmt 0 view .LVU918
	str	r7, [sp, #52]	@ p, %sfp
.LVL230:
.LBB796:
.LBI796:
	.loc 1 5 79 is_stmt 1 view .LVU919
.LBB797:
	.loc 1 7 2 view .LVU920
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU921
	adds	r7, r6, #1	@, result,
.LVL231:
	.loc 1 7 5 view .LVU922
	beq	.L144		@,
	.loc 1 10 3 is_stmt 1 view .LVU923
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU924
	ldr	r7, [sp, #12]	@ bitmap, %sfp
	ldr	fp, [r7, ip]	@ _75, *p_62
.LVL232:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU925
	eor	r8, fp, r3	@ _76, _75, _193
.LVL233:
	.loc 1 10 21 view .LVU926
	and	r8, r8, r6	@ _77, _76, result
	eor	r6, r8, fp	@ cstore_24, _77, _75
.LVL234:
.L109:
	.loc 1 10 21 view .LVU927
	ldr	r7, [sp, #12]	@ bitmap, %sfp
	str	r6, [r7, ip]	@ cstore_24, *p_62
.LVL235:
	.loc 1 10 21 view .LVU928
.LBE797:
.LBE796:
	.loc 1 51 4 is_stmt 1 view .LVU929
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:51: 			x += (32 - startbit);
	.loc 1 51 6 is_stmt 0 view .LVU930
	ldr	r6, [sp, #48]	@ _46, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:50: 			_drawMaskPattern(p++, startmask, pattern4);
	.loc 1 50 4 view .LVU931
	ldr	r7, [sp, #52]	@ p, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:51: 			x += (32 - startbit);
	.loc 1 51 6 view .LVU932
	add	r5, r5, r6	@ x, _46
.LVL236:
.L108:
	.loc 1 53 17 is_stmt 1 view .LVU933
	add	r6, r5, #31	@ _314, x,
	cmp	r2, r6	@ _29, _314
	ble	.L110		@,
	.loc 1 53 17 is_stmt 0 view .LVU934
	subs	r2, r2, #32	@ _13, _29,
.LVL237:
	.loc 1 53 17 view .LVU935
	subs	r2, r2, r5	@ _316, _13, x
.LVL238:
	.loc 1 53 17 view .LVU936
	mov	r5, r7	@ p, p
.LVL239:
	.loc 1 53 17 view .LVU937
	lsrs	r2, r2, #5	@ _270, _316,
	adds	r6, r2, #1	@ _1, _270,
.LVL240:
	.loc 1 53 17 view .LVU938
	add	r6, r7, r6, lsl #2	@ _5, p, _1,
.LVL241:
.L111:
	.loc 1 55 4 is_stmt 1 view .LVU939
.LBB799:
.LBI799:
	.loc 1 5 79 view .LVU940
.LBB800:
	.loc 1 7 2 view .LVU941
	.loc 1 8 3 view .LVU942
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 is_stmt 0 view .LVU943
	str	r3, [r5], #4	@ _193, MEM[(uint32_t *)p_81 + 4294967292B]
.LVL242:
	.loc 1 8 6 view .LVU944
.LBE800:
.LBE799:
	.loc 1 56 4 is_stmt 1 view .LVU945
	.loc 1 53 17 view .LVU946
	cmp	r6, r5	@ _5, p
	bne	.L111		@,
	.loc 1 53 17 is_stmt 0 view .LVU947
	adds	r7, r7, #4	@ _199, p,
	add	r7, r7, r2, lsl #2	@ p, _199, _270,
.LVL243:
.L110:
	.loc 1 58 3 is_stmt 1 view .LVU948
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:58: 		if (endbit > 0)
	.loc 1 58 6 is_stmt 0 view .LVU949
	cmp	lr, #0	@ endbit
	beq	.L103	@
	.loc 1 60 4 is_stmt 1 view .LVU950
.LVL244:
.LBB801:
.LBI801:
	.loc 1 5 79 view .LVU951
.LBB802:
	.loc 1 7 2 view .LVU952
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU953
	ldr	r2, [sp, #20]	@ result, %sfp
	adds	r2, r2, #1	@ result, result,
	beq	.L183		@,
	.loc 1 10 3 is_stmt 1 view .LVU954
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU955
	ldr	r2, [r7]	@ _85, *p_276
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU956
	ldr	r5, [sp, #20]	@ result, %sfp
	eors	r3, r3, r2	@, _86, _193, _85
.LVL245:
	.loc 1 10 21 view .LVU957
	ands	r3, r3, r5	@, _87, _86, result
	eors	r3, r3, r2	@, _88, _87, _85
.L183:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 6 view .LVU958
	str	r3, [r7]	@ _88, *p_276
.LVL246:
.L103:
	.loc 1 10 6 view .LVU959
.LBE802:
.LBE801:
.LBE813:
.LBE821:
	.loc 1 73 3 is_stmt 1 view .LVU960
.LBB822:
.LBI761:
	.loc 2 467 79 view .LVU961
	.loc 2 469 2 view .LVU962
.LBB772:
.LBI762:
	.loc 2 208 20 view .LVU963
.LBB765:
	.loc 2 210 2 view .LVU964
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 is_stmt 0 view .LVU965
	ldr	r3, [sp, #36]	@ _217, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU966
	adds	r1, r1, #1	@ _220, pretmp_334,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU967
	ldr	r2, [sp, #40]	@ _224, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU968
	add	r4, r4, r3	@ _218, _217
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU969
	ldr	r3, [r10, #24]	@ cstore_265->height, cstore_265->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU970
	str	r1, [r10, #20]	@ _220, cstore_265->Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU971
	subs	r3, r3, #1	@ _222, cstore_265->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU972
	str	r4, [r10]	@ _218, cstore_265->X
.LVL247:
	.loc 2 210 21 is_stmt 1 view .LVU973
	.loc 2 210 29 view .LVU974
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 is_stmt 0 view .LVU975
	str	r3, [r10, #24]	@ _222, cstore_265->height
	.loc 2 212 2 is_stmt 1 view .LVU976
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 is_stmt 0 view .LVU977
	ldr	r3, [r10, #16]	@ cstore_265->error_term, cstore_265->error_term
	add	r3, r3, r2	@ _225, _224
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 view .LVU978
	ldr	r2, [sp, #44]	@ _226, %sfp
	cmp	r3, r2	@ _225, _226
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU979
	str	r3, [r10, #16]	@ _225, cstore_265->error_term
	.loc 2 213 2 is_stmt 1 view .LVU980
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 is_stmt 0 view .LVU981
	blt	.L114		@,
	.loc 2 214 3 is_stmt 1 view .LVU982
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 is_stmt 0 view .LVU983
	adds	r4, r4, #1	@ _227, _218,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 view .LVU984
	subs	r3, r3, r2	@ _228, _225, _226
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU985
	str	r4, [r10]	@ _227, cstore_265->X
	.loc 2 215 3 is_stmt 1 view .LVU986
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 is_stmt 0 view .LVU987
	str	r3, [r10, #16]	@ _228, cstore_265->error_term
.L114:
.LVL248:
	.loc 2 215 17 view .LVU988
.LBE765:
.LBE772:
	.loc 2 469 29 is_stmt 1 discriminator 1 view .LVU989
.LBB773:
.LBI767:
	.loc 2 208 20 view .LVU990
.LBB770:
	.loc 2 210 2 view .LVU991
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 is_stmt 0 view .LVU992
	ldr	r3, [r0]	@ iftmp.9_266->X, iftmp.9_266->X
	ldr	r2, [sp, #24]	@ _204, %sfp
	adds	r1, r2, r3	@ _205, _204, iftmp.9_266->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU993
	ldr	r2, [r0, #20]	@ iftmp.9_266->Y, iftmp.9_266->Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU994
	ldr	r3, [r0, #16]	@ iftmp.9_266->error_term, iftmp.9_266->error_term
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU995
	adds	r2, r2, #1	@ _207, iftmp.9_266->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU996
	str	r1, [r0]	@ _205, iftmp.9_266->X
	.loc 2 210 21 is_stmt 1 view .LVU997
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 is_stmt 0 view .LVU998
	str	r2, [r0, #20]	@ _207, iftmp.9_266->Y
	.loc 2 210 29 is_stmt 1 view .LVU999
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 is_stmt 0 view .LVU1000
	ldr	r2, [r0, #24]	@ iftmp.9_266->height, iftmp.9_266->height
	subs	r2, r2, #1	@ _209, iftmp.9_266->height,
	str	r2, [r0, #24]	@ _209, iftmp.9_266->height
	.loc 2 212 2 is_stmt 1 view .LVU1001
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 is_stmt 0 view .LVU1002
	ldr	r2, [sp, #28]	@ _211, %sfp
	add	r3, r3, r2	@ _212, _211
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 view .LVU1003
	ldr	r2, [sp, #32]	@ _213, %sfp
	cmp	r3, r2	@ _212, _213
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1004
	str	r3, [r0, #16]	@ _212, iftmp.9_266->error_term
	.loc 2 213 2 is_stmt 1 view .LVU1005
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 is_stmt 0 view .LVU1006
	blt	.L115		@,
	.loc 2 214 3 is_stmt 1 view .LVU1007
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 is_stmt 0 view .LVU1008
	adds	r1, r1, #1	@ _214, _205,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 view .LVU1009
	subs	r3, r3, r2	@ _215, _212, _213
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1010
	str	r1, [r0]	@ _214, iftmp.9_266->X
	.loc 2 215 3 is_stmt 1 view .LVU1011
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 is_stmt 0 view .LVU1012
	str	r3, [r0, #16]	@ _215, iftmp.9_266->error_term
.L115:
.LVL249:
	.loc 2 215 17 view .LVU1013
.LBE770:
.LBE773:
.LBE822:
	.loc 1 71 9 is_stmt 1 view .LVU1014
	subs	r9, r9, #1	@ height, height,
.LVL250:
	.loc 1 71 9 is_stmt 0 view .LVU1015
	bcs	.L116		@,
.LBB823:
.LBB824:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:455: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 455 51 view .LVU1016
	ldr	r3, [sp, #56]	@ v_mid_cmp, %sfp
	ldr	r4, [sp, #68]	@ cstore_202, %sfp
.LBE824:
.LBE823:
	.loc 1 75 2 is_stmt 1 view .LVU1017
.LVL251:
.LBB827:
.LBI823:
	.loc 2 453 78 view .LVU1018
.LBB825:
	.loc 2 455 2 view .LVU1019
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:455: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 455 51 is_stmt 0 view .LVU1020
	ldrd	r9, r5, [sp, #60]	@ v_bot_cmp, iftmp.11_91,,
.LVL252:
	.loc 2 455 51 view .LVU1021
	cmp	r9, r3	@ v_bot_cmp, v_mid_cmp
	ble	.L117		@,
.LVL253:
.L137:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:455: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 455 13 discriminator 4 view .LVU1022
	mov	r10, r5	@ cstore_202, iftmp.11_91
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:456: 	st->e_right = st->mid_is_left ? &st->e_mid_bottom : &st->e_top_bottom;
	.loc 2 456 52 discriminator 2 view .LVU1023
	mov	r2, r4	@ iftmp.11_91, cstore_202
.L118:
	.loc 2 457 2 is_stmt 1 view .LVU1024
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:457: 	return st->e_mid_bottom.height;
	.loc 2 457 25 is_stmt 0 view .LVU1025
	ldr	r3, [sp, #152]	@ _92, tri.e_mid_bottom.height
.LBE825:
.LBE827:
	.loc 1 76 2 is_stmt 1 view .LVU1026
	.loc 1 76 9 view .LVU1027
.LVL254:
	.loc 1 76 9 is_stmt 0 view .LVU1028
	cmp	r3, #0	@ _92
	beq	.L97	@
.LBB828:
.LBB829:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 31 view .LVU1029
	mov	r9, r3	@ ivtmp.160, _92
.LBE829:
.LBE828:
.LBB871:
.LBB872:
.LBB873:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 11 view .LVU1030
	ldr	r3, [r10, #4]	@ _243, cstore_202->x_step
.LVL255:
	.loc 2 210 11 view .LVU1031
	str	r3, [sp, #36]	@ _243, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 20 view .LVU1032
	ldr	r3, [r10, #8]	@ _250, cstore_202->numerator
	str	r3, [sp, #40]	@ _250, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 view .LVU1033
	ldr	r3, [r10, #12]	@ _252, cstore_202->denominator
	str	r3, [sp, #44]	@ _252, %sfp
.LBE873:
.LBE872:
.LBB875:
.LBB876:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 11 view .LVU1034
	ldr	r3, [r2, #4]	@ _230, iftmp.11_91->x_step
	str	r3, [sp, #24]	@ _230, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 20 view .LVU1035
	ldr	r3, [r2, #8]	@ _237, iftmp.11_91->numerator
	str	r3, [sp, #28]	@ _237, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 view .LVU1036
	ldr	r3, [r2, #12]	@ _239, iftmp.11_91->denominator
	str	r3, [sp, #32]	@ _239, %sfp
.LVL256:
.L134:
	.loc 2 213 24 view .LVU1037
.LBE876:
.LBE875:
.LBE871:
	.loc 1 77 3 is_stmt 1 view .LVU1038
.LBB880:
.LBI828:
	.loc 1 15 79 view .LVU1039
.LBB866:
	.loc 1 17 2 view .LVU1040
.LBB830:
.LBB831:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1041
	ldr	r1, [r2]	@ MEM[(const struct tri_edge *)iftmp.11_91].X, MEM[(const struct tri_edge *)iftmp.11_91].X
.LBE831:
.LBE830:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:17: 	int x = max2(0, edge_l->X);
	.loc 1 17 24 view .LVU1042
	ldr	r4, [r10]	@ _93, MEM[(const struct tri_edge *)cstore_202].X
.LVL257:
.LBB834:
.LBI834:
	.loc 3 150 19 is_stmt 1 view .LVU1043
.LBB835:
	.loc 3 152 2 view .LVU1044
.LBE835:
.LBE834:
.LBB837:
.LBB832:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1045
	cmp	r1, #400	@ MEM[(const struct tri_edge *)iftmp.11_91].X,
.LBE832:
.LBE837:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:21: 	uint8_t* row = bitmap + edge_l->Y * rowstride;
	.loc 1 21 32 view .LVU1046
	ldr	r0, [r10, #20]	@ pretmp_333, MEM[(const struct tri_edge *)cstore_202].Y
.LBB838:
.LBB836:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:152: 	return a > b ? a : b;
	.loc 3 152 19 view .LVU1047
	bic	r5, r4, r4, asr #31	@ x, _93
.LVL258:
	.loc 3 152 19 view .LVU1048
.LBE836:
.LBE838:
	.loc 1 18 2 is_stmt 1 view .LVU1049
.LBB839:
.LBI830:
	.loc 3 145 19 view .LVU1050
.LBB833:
	.loc 3 147 2 view .LVU1051
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1052
	it	ge
	movge	r1, #400	@ _96,
.LVL259:
	.loc 3 147 19 view .LVU1053
.LBE833:
.LBE839:
	.loc 1 19 2 is_stmt 1 view .LVU1054
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:19: 	if (endx <= x) return;
	.loc 1 19 5 is_stmt 0 view .LVU1055
	cmp	r5, r1	@ x, _96
	bge	.L121		@,
	.loc 1 21 2 is_stmt 1 view .LVU1056
.LVL260:
	.loc 1 23 2 view .LVU1057
	.loc 1 24 2 view .LVU1058
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:23: 	const uint8_t pat = pattern[edge_l->Y % 8];
	.loc 1 23 40 is_stmt 0 view .LVU1059
	rsbs	r6, r0, #0	@ tmp377, pretmp_333,
	and	r3, r0, #7	@ _100, pretmp_333,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:27: 	int startbit = x % 32;
	.loc 1 27 6 view .LVU1060
	and	r8, r5, #31	@ startbit, x,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 31 view .LVU1061
	mov	r7, #1	@ tmp528,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:23: 	const uint8_t pat = pattern[edge_l->Y % 8];
	.loc 1 23 40 view .LVU1062
	and	r6, r6, #7	@ tmp378, tmp377,
	it	pl
	rsbpl	r3, r6, #0	@ _100, tmp378
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:24: 	uint32_t pattern4 = (pat << 24) | (pat << 16) | (pat << 8) | pat;
	.loc 1 24 34 view .LVU1063
	ldr	r6, [sp, #212]	@ tmp526, pattern
	ldrb	r3, [r6, r3]	@ zero_extendqisi2	@ _104, *_102
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 38 view .LVU1064
	rsb	r6, r8, #32	@ _113, startbit,
	add	r3, r3, r3, lsl #8	@ tmp382, _104, _104,
	str	r6, [sp, #48]	@ _113, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 31 view .LVU1065
	lsl	r6, r7, r6	@ _114, tmp528, _113
	add	r3, r3, r3, lsl #16	@ _192, tmp382, tmp382,
.LVL261:
	.loc 1 27 2 is_stmt 1 view .LVU1066
	.loc 1 28 2 view .LVU1067
.LBB840:
.LBI840:
	.loc 3 29 24 view .LVU1068
.LBB841:
	.loc 3 33 2 view .LVU1069
	.loc 3 34 2 view .LVU1070
.LBE841:
.LBE840:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:28: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 28 51 is_stmt 0 view .LVU1071
	subs	r6, r6, #1	@ _115, _114,
.LBB843:
.LBB842:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU1072
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r6, r6	@ result, _115
@ 0 "" 2
	.loc 3 35 2 is_stmt 1 view .LVU1073
.LVL262:
	.loc 3 35 2 is_stmt 0 view .LVU1074
	.thumb
	.syntax unified
.LBE842:
.LBE843:
	.loc 1 29 2 is_stmt 1 view .LVU1075
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:29: 	int endbit = endx % 32;
	.loc 1 29 6 is_stmt 0 view .LVU1076
	and	lr, r1, #31	@ endbit, _96,
.LVL263:
	.loc 1 30 2 is_stmt 1 view .LVU1077
.LBB844:
.LBI844:
	.loc 3 29 24 view .LVU1078
.LBB845:
	.loc 3 33 2 view .LVU1079
	.loc 3 34 2 view .LVU1080
.LBE845:
.LBE844:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:30: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 30 30 is_stmt 0 view .LVU1081
	lsl	r7, r7, lr	@ _119, tmp530, endbit
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:30: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 30 53 view .LVU1082
	rsb	ip, lr, #32	@ _121, endbit,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:30: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 30 41 view .LVU1083
	subs	r7, r7, #1	@ _120, _119,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:30: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 30 46 view .LVU1084
	lsl	r7, r7, ip	@ _122, _120, _121
.LBB848:
.LBB846:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU1085
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r7, r7	@ result, _122
@ 0 "" 2
	.thumb
	.syntax unified
.LBE846:
.LBE848:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:32: 	int col = x / 32;
	.loc 1 32 6 view .LVU1086
	asr	fp, r5, #5	@ col, x,
.LBB849:
.LBB847:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU1087
	str	r7, [sp, #20]	@ result, %sfp
	.loc 3 35 2 is_stmt 1 view .LVU1088
.LVL264:
	.loc 3 35 2 is_stmt 0 view .LVU1089
.LBE847:
.LBE849:
	.loc 1 32 2 is_stmt 1 view .LVU1090
	.loc 1 33 2 view .LVU1091
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:33: 	uint32_t* p = (uint32_t*)row + col;
	.loc 1 33 12 is_stmt 0 view .LVU1092
	ldr	r7, [sp, #16]	@ rowstride, %sfp
.LVL265:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:33: 	uint32_t* p = (uint32_t*)row + col;
	.loc 1 33 31 view .LVU1093
	lsl	ip, fp, #2	@ _127, col,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:35: 	if (col == endx / 32)
	.loc 1 35 5 view .LVU1094
	cmp	fp, r1, asr #5	@ col, _96,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:33: 	uint32_t* p = (uint32_t*)row + col;
	.loc 1 33 12 view .LVU1095
	mla	ip, r0, r7, ip	@ _128, pretmp_333, rowstride, _127
	ldr	r7, [sp, #12]	@ bitmap, %sfp
	add	r7, r7, ip	@ p, _128
.LVL266:
	.loc 1 35 2 is_stmt 1 view .LVU1096
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:35: 	if (col == endx / 32)
	.loc 1 35 5 is_stmt 0 view .LVU1097
	beq	.L188		@,
	.loc 1 48 3 is_stmt 1 view .LVU1098
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:48: 		if (startbit > 0)
	.loc 1 48 6 is_stmt 0 view .LVU1099
	cmp	r8, #0	@ startbit
	beq	.L126	@
	.loc 1 50 4 is_stmt 1 view .LVU1100
	adds	r7, r7, #4	@ p, p,
.LVL267:
	.loc 1 50 4 is_stmt 0 view .LVU1101
	str	r7, [sp, #52]	@ p, %sfp
.LVL268:
.LBB850:
.LBI850:
	.loc 1 5 79 is_stmt 1 view .LVU1102
.LBB851:
	.loc 1 7 2 view .LVU1103
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU1104
	adds	r7, r6, #1	@, result,
.LVL269:
	.loc 1 7 5 view .LVU1105
	beq	.L146		@,
	.loc 1 10 3 is_stmt 1 view .LVU1106
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU1107
	ldr	r7, [sp, #12]	@ bitmap, %sfp
	ldr	fp, [r7, ip]	@ _142, *p_129
.LVL270:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU1108
	eor	r8, fp, r3	@ _143, _142, _192
.LVL271:
	.loc 1 10 21 view .LVU1109
	and	r8, r8, r6	@ _144, _143, result
	eor	r6, r8, fp	@ _145, _144, _142
.LVL272:
.L127:
	.loc 1 10 21 view .LVU1110
	ldr	r7, [sp, #12]	@ bitmap, %sfp
	str	r6, [r7, ip]	@ _145, *p_129
.LVL273:
	.loc 1 10 21 view .LVU1111
.LBE851:
.LBE850:
	.loc 1 51 4 is_stmt 1 view .LVU1112
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:51: 			x += (32 - startbit);
	.loc 1 51 6 is_stmt 0 view .LVU1113
	ldr	r6, [sp, #48]	@ _113, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:50: 			_drawMaskPattern(p++, startmask, pattern4);
	.loc 1 50 4 view .LVU1114
	ldr	r7, [sp, #52]	@ p, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:51: 			x += (32 - startbit);
	.loc 1 51 6 view .LVU1115
	add	r5, r5, r6	@ x, _113
.LVL274:
.L126:
	.loc 1 53 17 is_stmt 1 view .LVU1116
	add	r6, r5, #31	@ _174, x,
	cmp	r1, r6	@ _96, _174
	ble	.L128		@,
	.loc 1 53 17 is_stmt 0 view .LVU1117
	subs	r1, r1, #32	@ _84, _96,
.LVL275:
	.loc 1 53 17 view .LVU1118
	subs	r1, r1, r5	@ _341, _84, x
.LVL276:
	.loc 1 53 17 view .LVU1119
	mov	r5, r7	@ p, p
.LVL277:
	.loc 1 53 17 view .LVU1120
	lsrs	r1, r1, #5	@ _340, _341,
	adds	r6, r1, #1	@ _245, _340,
.LVL278:
	.loc 1 53 17 view .LVU1121
	add	r6, r7, r6, lsl #2	@ _331, p, _245,
.LVL279:
.L129:
	.loc 1 55 4 is_stmt 1 view .LVU1122
.LBB853:
.LBI853:
	.loc 1 5 79 view .LVU1123
.LBB854:
	.loc 1 7 2 view .LVU1124
	.loc 1 8 3 view .LVU1125
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 is_stmt 0 view .LVU1126
	str	r3, [r5], #4	@ _192, MEM[(uint32_t *)p_148 + 4294967292B]
.LVL280:
	.loc 1 8 6 view .LVU1127
.LBE854:
.LBE853:
	.loc 1 56 4 is_stmt 1 view .LVU1128
	.loc 1 53 17 view .LVU1129
	cmp	r5, r6	@ p, _331
	bne	.L129		@,
	.loc 1 53 17 is_stmt 0 view .LVU1130
	adds	r7, r7, #4	@ _20, p,
	add	r7, r7, r1, lsl #2	@ p, _20, _340,
.LVL281:
.L128:
	.loc 1 58 3 is_stmt 1 view .LVU1131
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:58: 		if (endbit > 0)
	.loc 1 58 6 is_stmt 0 view .LVU1132
	cmp	lr, #0	@ endbit
	beq	.L121	@
	.loc 1 60 4 is_stmt 1 view .LVU1133
.LVL282:
.LBB855:
.LBI855:
	.loc 1 5 79 view .LVU1134
.LBB856:
	.loc 1 7 2 view .LVU1135
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU1136
	ldr	r1, [sp, #20]	@ result, %sfp
	adds	r1, r1, #1	@ result, result,
	beq	.L184		@,
	.loc 1 10 3 is_stmt 1 view .LVU1137
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU1138
	ldr	r1, [r7]	@ _152, *p_197
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU1139
	ldr	r5, [sp, #20]	@ result, %sfp
	eors	r3, r3, r1	@, _153, _192, _152
.LVL283:
	.loc 1 10 21 view .LVU1140
	ands	r3, r3, r5	@, _154, _153, result
	eors	r3, r3, r1	@, _155, _154, _152
.L184:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 6 view .LVU1141
	str	r3, [r7]	@ _155, *p_197
.LVL284:
.L121:
	.loc 1 10 6 view .LVU1142
.LBE856:
.LBE855:
.LBE866:
.LBE880:
	.loc 1 78 3 is_stmt 1 view .LVU1143
.LBB881:
.LBI871:
	.loc 2 467 79 view .LVU1144
	.loc 2 469 2 view .LVU1145
.LBB878:
.LBI872:
	.loc 2 208 20 view .LVU1146
.LBB874:
	.loc 2 210 2 view .LVU1147
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 is_stmt 0 view .LVU1148
	ldr	r3, [sp, #36]	@ _243, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU1149
	adds	r0, r0, #1	@ _246, pretmp_333,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1150
	ldr	r1, [sp, #40]	@ _250, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1151
	add	r4, r4, r3	@ _244, _243
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1152
	ldr	r3, [r10, #24]	@ cstore_202->height, cstore_202->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU1153
	str	r0, [r10, #20]	@ _246, cstore_202->Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1154
	subs	r3, r3, #1	@ _248, cstore_202->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1155
	str	r4, [r10]	@ _244, cstore_202->X
.LVL285:
	.loc 2 210 21 is_stmt 1 view .LVU1156
	.loc 2 210 29 view .LVU1157
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 is_stmt 0 view .LVU1158
	str	r3, [r10, #24]	@ _248, cstore_202->height
	.loc 2 212 2 is_stmt 1 view .LVU1159
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 is_stmt 0 view .LVU1160
	ldr	r3, [r10, #16]	@ cstore_202->error_term, cstore_202->error_term
	add	r3, r3, r1	@ _251, _250
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 view .LVU1161
	ldr	r1, [sp, #44]	@ _252, %sfp
	cmp	r3, r1	@ _251, _252
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1162
	str	r3, [r10, #16]	@ _251, cstore_202->error_term
	.loc 2 213 2 is_stmt 1 view .LVU1163
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 is_stmt 0 view .LVU1164
	blt	.L132		@,
	.loc 2 214 3 is_stmt 1 view .LVU1165
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 is_stmt 0 view .LVU1166
	adds	r4, r4, #1	@ _253, _244,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 view .LVU1167
	subs	r3, r3, r1	@ _254, _251, _252
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1168
	str	r4, [r10]	@ _253, cstore_202->X
	.loc 2 215 3 is_stmt 1 view .LVU1169
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 is_stmt 0 view .LVU1170
	str	r3, [r10, #16]	@ _254, cstore_202->error_term
.L132:
.LVL286:
	.loc 2 215 17 view .LVU1171
.LBE874:
.LBE878:
	.loc 2 469 29 is_stmt 1 discriminator 1 view .LVU1172
.LBB879:
.LBI875:
	.loc 2 208 20 view .LVU1173
.LBB877:
	.loc 2 210 2 view .LVU1174
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 is_stmt 0 view .LVU1175
	ldr	r3, [r2]	@ iftmp.11_91->X, iftmp.11_91->X
	ldr	r1, [sp, #24]	@ _230, %sfp
	adds	r0, r1, r3	@ _231, _230, iftmp.11_91->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU1176
	ldr	r1, [r2, #20]	@ iftmp.11_91->Y, iftmp.11_91->Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1177
	ldr	r3, [r2, #16]	@ iftmp.11_91->error_term, iftmp.11_91->error_term
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU1178
	adds	r1, r1, #1	@ _233, iftmp.11_91->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1179
	str	r0, [r2]	@ _231, iftmp.11_91->X
	.loc 2 210 21 is_stmt 1 view .LVU1180
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 is_stmt 0 view .LVU1181
	str	r1, [r2, #20]	@ _233, iftmp.11_91->Y
	.loc 2 210 29 is_stmt 1 view .LVU1182
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 is_stmt 0 view .LVU1183
	ldr	r1, [r2, #24]	@ iftmp.11_91->height, iftmp.11_91->height
	subs	r1, r1, #1	@ _235, iftmp.11_91->height,
	str	r1, [r2, #24]	@ _235, iftmp.11_91->height
	.loc 2 212 2 is_stmt 1 view .LVU1184
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 is_stmt 0 view .LVU1185
	ldr	r1, [sp, #28]	@ _237, %sfp
	add	r3, r3, r1	@ _238, _237
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 view .LVU1186
	ldr	r1, [sp, #32]	@ _239, %sfp
	cmp	r3, r1	@ _238, _239
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1187
	str	r3, [r2, #16]	@ _238, iftmp.11_91->error_term
	.loc 2 213 2 is_stmt 1 view .LVU1188
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 is_stmt 0 view .LVU1189
	blt	.L133		@,
	.loc 2 214 3 is_stmt 1 view .LVU1190
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 is_stmt 0 view .LVU1191
	adds	r0, r0, #1	@ _240, _231,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 view .LVU1192
	subs	r3, r3, r1	@ _241, _238, _239
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1193
	str	r0, [r2]	@ _240, iftmp.11_91->X
	.loc 2 215 3 is_stmt 1 view .LVU1194
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 is_stmt 0 view .LVU1195
	str	r3, [r2, #16]	@ _241, iftmp.11_91->error_term
.L133:
.LVL287:
	.loc 2 215 17 view .LVU1196
.LBE877:
.LBE879:
.LBE881:
	.loc 1 76 9 is_stmt 1 view .LVU1197
	.loc 1 76 9 is_stmt 0 view .LVU1198
	subs	r9, r9, #1	@ ivtmp.160, ivtmp.160,
.LVL288:
	.loc 1 76 9 view .LVU1199
	bne	.L134		@,
.LVL289:
.L97:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:80: }
	.loc 1 80 1 view .LVU1200
	add	sp, sp, #172	@,,
.LCFI10:
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL290:
.L186:
.LCFI11:
	.cfi_restore_state
.LBB882:
.LBB746:
.LBB739:
.LBB733:
	.loc 2 364 4 is_stmt 1 view .LVU1201
	.loc 2 365 4 view .LVU1202
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:365: 			if (Y0 < Y2) {
	.loc 2 365 7 is_stmt 0 view .LVU1203
	vcmp.f32	s15, s13	@ _194, _196
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:366: 				*r_mid = 0; *r_bottom = 2;
	.loc 2 366 12 view .LVU1204
	mov	r8, #0	@ v_mid,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:364: 			*r_top = 1;
	.loc 2 364 11 view .LVU1205
	movs	r6, #1	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:365: 			if (Y0 < Y2) {
	.loc 2 365 7 view .LVU1206
	vmrs	APSR_nzcv, FPSCR
	bpl	.L189		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:367: 				v_mid_cmp = 3; v_bot_cmp = 2;
	.loc 2 367 15 view .LVU1207
	movs	r3, #3	@ v_mid_cmp,
.LVL291:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:367: 				v_mid_cmp = 3; v_bot_cmp = 2;
	.loc 2 367 30 view .LVU1208
	mov	r9, #2	@ v_bot_cmp,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:367: 				v_mid_cmp = 3; v_bot_cmp = 2;
	.loc 2 367 15 view .LVU1209
	str	r3, [sp, #56]	@ v_mid_cmp, %sfp
	b	.L101		@
.LVL292:
.L185:
	.loc 2 347 4 is_stmt 1 view .LVU1210
	.loc 2 348 4 view .LVU1211
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:348: 			if (Y1 < Y2) {
	.loc 2 348 7 is_stmt 0 view .LVU1212
	vcmp.f32	s14, s13	@ _195, _196
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:349: 				*r_mid = 1; *r_bottom = 2;
	.loc 2 349 27 view .LVU1213
	mov	r8, #2	@ v_bottom,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:347: 			*r_top = 0;
	.loc 2 347 11 view .LVU1214
	movs	r6, #0	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:348: 			if (Y1 < Y2) {
	.loc 2 348 7 view .LVU1215
	vmrs	APSR_nzcv, FPSCR
	bpl	.L190		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:350: 				v_mid_cmp = 1; v_bot_cmp = 2;
	.loc 2 350 15 view .LVU1216
	movs	r3, #1	@ v_mid_cmp,
.LVL293:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:350: 				v_mid_cmp = 1; v_bot_cmp = 2;
	.loc 2 350 30 view .LVU1217
	mov	r9, r8	@ v_bot_cmp, v_bottom
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:350: 				v_mid_cmp = 1; v_bot_cmp = 2;
	.loc 2 350 15 view .LVU1218
	str	r3, [sp, #56]	@ v_mid_cmp, %sfp
	b	.L100		@
.LVL294:
.L188:
	.loc 2 350 15 view .LVU1219
.LBE733:
.LBE739:
.LBE746:
.LBE882:
.LBB883:
.LBB867:
.LBB857:
	.loc 1 37 3 is_stmt 1 view .LVU1220
	.loc 1 38 3 view .LVU1221
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:38: 		if (startbit > 0 && endbit > 0)
	.loc 1 38 6 is_stmt 0 view .LVU1222
	cmp	r8, #0	@ startbit
	beq	.L180	@
	cmp	lr, #0	@ endbit
	beq	.L123	@
	.loc 1 39 4 is_stmt 1 view .LVU1223
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:39: 			mask = startmask & endmask;
	.loc 1 39 9 is_stmt 0 view .LVU1224
	ldr	r1, [sp, #20]	@ result, %sfp
.LVL295:
	.loc 1 39 9 view .LVU1225
	ands	r6, r6, r1	@, result, result, result
.LVL296:
.L124:
	.loc 1 44 3 is_stmt 1 view .LVU1226
.LBB858:
.LBI858:
	.loc 1 5 79 view .LVU1227
.LBB859:
	.loc 1 7 2 view .LVU1228
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU1229
	adds	r1, r6, #1	@, result,
	beq	.L191		@,
.LVL297:
.L125:
	.loc 1 10 3 is_stmt 1 view .LVU1230
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU1231
	ldr	r5, [sp, #12]	@ bitmap, %sfp
.LVL298:
	.loc 1 10 9 view .LVU1232
	ldr	r1, [r5, ip]	@ _136, *p_129
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU1233
	eors	r3, r3, r1	@, _137, _192, _136
.LVL299:
	.loc 1 10 21 view .LVU1234
	ands	r3, r3, r6	@, _139, _137, result
	eors	r3, r3, r1	@, _140, _139, _136
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 6 view .LVU1235
	str	r3, [r5, ip]	@ _140, *p_129
.LVL300:
	.loc 1 10 6 view .LVU1236
	b	.L121		@
.LVL301:
.L187:
	.loc 1 10 6 view .LVU1237
.LBE859:
.LBE858:
.LBE857:
.LBE867:
.LBE883:
.LBB884:
.LBB814:
.LBB803:
	.loc 1 37 3 is_stmt 1 view .LVU1238
	.loc 1 38 3 view .LVU1239
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:38: 		if (startbit > 0 && endbit > 0)
	.loc 1 38 6 is_stmt 0 view .LVU1240
	cmp	r8, #0	@ startbit
	beq	.L179	@
	cmp	lr, #0	@ endbit
	beq	.L105	@
	.loc 1 39 4 is_stmt 1 view .LVU1241
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:39: 			mask = startmask & endmask;
	.loc 1 39 9 is_stmt 0 view .LVU1242
	ldr	r2, [sp, #20]	@ result, %sfp
.LVL302:
	.loc 1 39 9 view .LVU1243
	ands	r6, r6, r2	@, result, result, result
.LVL303:
.L106:
	.loc 1 44 3 is_stmt 1 view .LVU1244
.LBB804:
.LBI804:
	.loc 1 5 79 view .LVU1245
.LBB805:
	.loc 1 7 2 view .LVU1246
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU1247
	adds	r2, r6, #1	@, result,
	beq	.L192		@,
.LVL304:
.L107:
	.loc 1 10 3 is_stmt 1 view .LVU1248
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU1249
	ldr	r5, [sp, #12]	@ bitmap, %sfp
.LVL305:
	.loc 1 10 9 view .LVU1250
	ldr	r2, [r5, ip]	@ _69, *p_62
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU1251
	eors	r3, r3, r2	@, _70, _193, _69
.LVL306:
	.loc 1 10 21 view .LVU1252
	ands	r3, r3, r6	@, _72, _70, result
	eors	r3, r3, r2	@, _73, _72, _69
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 6 view .LVU1253
	str	r3, [r5, ip]	@ _73, *p_62
.LVL307:
	.loc 1 10 6 view .LVU1254
	b	.L103		@
.LVL308:
.L144:
	.loc 1 10 6 view .LVU1255
.LBE805:
.LBE804:
.LBE803:
.LBB808:
.LBB798:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 view .LVU1256
	mov	r6, r3	@ cstore_24, _193
.LVL309:
	.loc 1 8 6 view .LVU1257
	b	.L109		@
.LVL310:
.L146:
	.loc 1 8 6 view .LVU1258
.LBE798:
.LBE808:
.LBE814:
.LBE884:
.LBB885:
.LBB868:
.LBB862:
.LBB852:
	mov	r6, r3	@ _145, _192
.LVL311:
	.loc 1 8 6 view .LVU1259
	b	.L127		@
.LVL312:
.L191:
	.loc 1 8 6 view .LVU1260
.LBE852:
.LBE862:
.LBB863:
.LBB861:
.LBB860:
	.loc 1 8 3 is_stmt 1 view .LVU1261
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 is_stmt 0 view .LVU1262
	ldr	r1, [sp, #12]	@ bitmap, %sfp
	str	r3, [r1, ip]	@ _192, *p_129
.LVL313:
	.loc 1 8 6 view .LVU1263
	b	.L121		@
.LVL314:
.L192:
	.loc 1 8 6 view .LVU1264
.LBE860:
.LBE861:
.LBE863:
.LBE868:
.LBE885:
.LBB886:
.LBB815:
.LBB809:
.LBB807:
.LBB806:
	.loc 1 8 3 is_stmt 1 view .LVU1265
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 is_stmt 0 view .LVU1266
	ldr	r2, [sp, #12]	@ bitmap, %sfp
	str	r3, [r2, ip]	@ _193, *p_62
.LVL315:
	.loc 1 8 6 view .LVU1267
	b	.L103		@
.LVL316:
.L117:
	.loc 1 8 6 view .LVU1268
.LBE806:
.LBE807:
.LBE809:
.LBE815:
.LBE886:
.LBB887:
.LBB826:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:455: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 455 13 discriminator 4 view .LVU1269
	mov	r10, r4	@ cstore_202, cstore_202
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:456: 	st->e_right = st->mid_is_left ? &st->e_mid_bottom : &st->e_top_bottom;
	.loc 2 456 52 discriminator 1 view .LVU1270
	mov	r2, r5	@ iftmp.11_91, iftmp.11_91
	b	.L118		@
.LVL317:
.L123:
	.loc 2 456 52 discriminator 1 view .LVU1271
.LBE826:
.LBE887:
.LBB888:
.LBB869:
.LBB864:
	.loc 1 40 8 is_stmt 1 view .LVU1272
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:40: 		else if (startbit > 0)
	.loc 1 40 11 is_stmt 0 view .LVU1273
	cmp	r8, #0	@ startbit
	bne	.L124	@
.L180:
	.loc 1 42 8 is_stmt 1 view .LVU1274
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:42: 		else if (endbit > 0)
	.loc 1 42 11 is_stmt 0 view .LVU1275
	cmp	lr, #0	@ endbit
	beq	.L145	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:43: 			mask = endmask;
	.loc 1 43 9 view .LVU1276
	ldr	r6, [sp, #20]	@ result, %sfp
.LVL318:
	.loc 1 43 9 view .LVU1277
	b	.L124		@
.LVL319:
.L105:
	.loc 1 43 9 view .LVU1278
.LBE864:
.LBE869:
.LBE888:
.LBB889:
.LBB816:
.LBB810:
	.loc 1 40 8 is_stmt 1 view .LVU1279
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:40: 		else if (startbit > 0)
	.loc 1 40 11 is_stmt 0 view .LVU1280
	cmp	r8, #0	@ startbit
	bne	.L106	@
.L179:
	.loc 1 42 8 is_stmt 1 view .LVU1281
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:42: 		else if (endbit > 0)
	.loc 1 42 11 is_stmt 0 view .LVU1282
	cmp	lr, #0	@ endbit
	beq	.L143	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:43: 			mask = endmask;
	.loc 1 43 9 view .LVU1283
	ldr	r6, [sp, #20]	@ result, %sfp
.LVL320:
	.loc 1 43 9 view .LVU1284
	b	.L106		@
.LVL321:
.L145:
	.loc 1 43 9 view .LVU1285
.LBE810:
.LBE816:
.LBE889:
.LBB890:
.LBB870:
.LBB865:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:37: 		uint32_t mask = 0;
	.loc 1 37 12 view .LVU1286
	mov	r6, lr	@ result, endbit
.LVL322:
	.loc 1 37 12 view .LVU1287
	b	.L125		@
.LVL323:
.L143:
	.loc 1 37 12 view .LVU1288
.LBE865:
.LBE870:
.LBE890:
.LBB891:
.LBB817:
.LBB811:
	mov	r6, lr	@ result, endbit
.LVL324:
	.loc 1 37 12 view .LVU1289
	b	.L107		@
.LVL325:
.L190:
	.loc 1 37 12 view .LVU1290
.LBE811:
.LBE817:
.LBE891:
.LBB892:
.LBB747:
.LBB740:
.LBB734:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:354: 				v_mid_cmp = 2; v_bot_cmp = 1;
	.loc 2 354 30 view .LVU1291
	mov	r9, #1	@ v_bot_cmp,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:354: 				v_mid_cmp = 2; v_bot_cmp = 1;
	.loc 2 354 15 view .LVU1292
	str	r8, [sp, #56]	@ v_mid, %sfp
	b	.L101		@
.LVL326:
.L189:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:371: 				v_mid_cmp = 2; v_bot_cmp = 3;
	.loc 2 371 15 view .LVU1293
	movs	r3, #2	@ v_mid_cmp,
.LVL327:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:371: 				v_mid_cmp = 2; v_bot_cmp = 3;
	.loc 2 371 30 view .LVU1294
	mov	r9, #3	@ v_bot_cmp,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:371: 				v_mid_cmp = 2; v_bot_cmp = 3;
	.loc 2 371 15 view .LVU1295
	str	r3, [sp, #56]	@ v_mid_cmp, %sfp
	b	.L100		@
.LBE734:
.LBE740:
.LBE747:
.LBE892:
	.cfi_endproc
.LFE71:
	.size	draw_tri_pattern, .-draw_tri_pattern
	.section	.text.draw_tri_bluenoise,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	draw_tri_bluenoise
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_tri_bluenoise, %function
draw_tri_bluenoise:
.LVL328:
.LFB73:
	.loc 1 113 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 114 2 view .LVU1297
	.loc 1 115 2 view .LVU1298
	vldr.32	s14, [r3, #4]	@ _165, MEM[(float *)p1_12(D) + 4B]
	vldr.32	s15, [r2, #4]	@ _164, MEM[(float *)p0_11(D) + 4B]
.LBB951:
.LBB952:
.LBB953:
.LBB954:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 is_stmt 0 view .LVU1299
	vcmp.f32	s15, s14	@ _164, _165
.LBE954:
.LBE953:
.LBE952:
.LBE951:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:113: {
	.loc 1 113 1 view .LVU1300
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI12:
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #124	@,,
.LCFI13:
	.cfi_def_cfa_offset 160
.LVL329:
.LBB974:
.LBB967:
.LBB961:
.LBB955:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 view .LVU1301
	vmrs	APSR_nzcv, FPSCR
.LBE955:
.LBE961:
.LBE967:
.LBE974:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:113: {
	.loc 1 113 1 view .LVU1302
	mov	r6, r3	@ p1, p1
	mov	r4, r2	@ p0, p0
.LVL330:
.LBB975:
.LBI951:
	.loc 2 398 79 is_stmt 1 view .LVU1303
.LBB968:
	.loc 2 400 2 view .LVU1304
	.loc 2 401 2 view .LVU1305
	ldr	r3, [sp, #160]	@ tmp435, p2
.LVL331:
	.loc 2 401 2 is_stmt 0 view .LVU1306
.LBE968:
.LBE975:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:113: {
	.loc 1 113 1 view .LVU1307
	mov	fp, r1	@ rowstride, rowstride
	ldrb	r5, [sp, #164]	@ zero_extendqisi2	@ tri_color, tri_color
	vldr.32	s13, [r3, #4]	@ _166, MEM[(float *)p2_13(D) + 4B]
.LVL332:
.LBB976:
.LBB969:
.LBB962:
.LBI953:
	.loc 2 335 12 is_stmt 1 view .LVU1308
.LBB956:
	.loc 2 337 2 view .LVU1309
	.loc 2 338 2 view .LVU1310
	.loc 2 341 2 view .LVU1311
.LBE956:
.LBE962:
.LBE969:
.LBE976:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:113: {
	.loc 1 113 1 is_stmt 0 view .LVU1312
	str	r0, [sp, #12]	@ bitmap, %sfp
.LBB977:
.LBB970:
.LBB963:
.LBB957:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 view .LVU1313
	bpl	.L235		@,
	.loc 2 342 3 is_stmt 1 view .LVU1314
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:342: 		if (Y2 < Y0) {
	.loc 2 342 6 is_stmt 0 view .LVU1315
	vcmp.f32	s15, s13	@ _164, _166
	vmrs	APSR_nzcv, FPSCR
	ble	.L238		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:343: 			*r_top = 2; *r_mid = 0; *r_bottom = 1;
	.loc 2 343 38 view .LVU1316
	mov	r9, #1	@ v_bottom,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:343: 			*r_top = 2; *r_mid = 0; *r_bottom = 1;
	.loc 2 343 11 view .LVU1317
	mov	r8, #2	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:344: 			v_mid_cmp = 0; v_bot_cmp = 1;
	.loc 2 344 14 view .LVU1318
	movs	r7, #0	@ v_mid_cmp,
.L196:
.LVL333:
	.loc 2 376 2 is_stmt 1 view .LVU1319
	.loc 2 376 2 is_stmt 0 view .LVU1320
.LBE957:
.LBE963:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:414: 	tri_edge_init(&st->e_top_bottom, p0, p1, p2, v_top, v_bottom);
	.loc 2 414 2 view .LVU1321
	add	r10, sp, #24	@ prephitmp_399,,
.LVL334:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:401: 	st->mid_is_left = tri_sort_vertices(p0, p1, p2, &v_top, &v_mid, &v_bottom);
	.loc 2 401 18 discriminator 1 view .LVU1322
	movs	r3, #0	@ tmp364,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:414: 	tri_edge_init(&st->e_top_bottom, p0, p1, p2, v_top, v_bottom);
	.loc 2 414 2 view .LVU1323
	mov	r1, r4	@, p0
.LVL335:
	.loc 2 414 2 view .LVU1324
	mov	r2, r6	@, p1
.LVL336:
	.loc 2 414 2 view .LVU1325
	mov	r0, r10	@, prephitmp_399
.LVL337:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:401: 	st->mid_is_left = tri_sort_vertices(p0, p1, p2, &v_top, &v_mid, &v_bottom);
	.loc 2 401 18 discriminator 1 view .LVU1326
	strb	r3, [sp, #116]	@ tmp364, tri.mid_is_left
	.loc 2 414 2 is_stmt 1 view .LVU1327
	ldr	r3, [sp, #160]	@, p2
	strd	r8, r9, [sp]	@ v_top, v_bottom,
	bl	tri_edge_init		@
.LVL338:
	.loc 2 415 2 view .LVU1328
	mov	r1, r4	@, p0
	ldr	r3, [sp, #160]	@, p2
	mov	r2, r6	@, p1
	strd	r8, r7, [sp]	@ v_top, v_mid_cmp,
	add	r8, sp, #52	@ prephitmp_388,,
.LVL339:
	.loc 2 415 2 is_stmt 0 view .LVU1329
	mov	r0, r8	@, prephitmp_388
	bl	tri_edge_init		@
.LVL340:
	.loc 2 416 2 is_stmt 1 view .LVU1330
	mov	r1, r4	@, p0
	add	r4, sp, #80	@ prephitmp_400,,
.LVL341:
	.loc 2 416 2 is_stmt 0 view .LVU1331
	ldr	r3, [sp, #160]	@, p2
	mov	r2, r6	@, p1
	mov	r0, r4	@, prephitmp_400
	strd	r7, r9, [sp]	@ v_mid_cmp, v_bottom,
	bl	tri_edge_init		@
.LVL342:
	.loc 2 418 2 is_stmt 1 view .LVU1332
	.loc 2 418 2 is_stmt 0 view .LVU1333
.LBE970:
.LBE977:
	.loc 1 117 2 is_stmt 1 view .LVU1334
.LBB978:
.LBI978:
	.loc 2 439 78 view .LVU1335
.LBB979:
	.loc 2 441 2 view .LVU1336
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:443: 	return st->e_top_mid.height;
	.loc 2 443 22 is_stmt 0 view .LVU1337
	ldr	r7, [sp, #76]	@ _48, tri.e_top_mid.height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:442: 	st->e_right = st->mid_is_left ? &st->e_top_mid : &st->e_top_bottom;
	.loc 2 442 14 discriminator 4 view .LVU1338
	strd	r8, r10, [sp, #108]	@ prephitmp_388, prephitmp_399,,
	.loc 2 443 2 is_stmt 1 view .LVU1339
.LVL343:
	.loc 2 443 2 is_stmt 0 view .LVU1340
.LBE979:
.LBE978:
	.loc 1 118 2 is_stmt 1 view .LVU1341
	.loc 1 118 9 view .LVU1342
	.loc 1 118 9 is_stmt 0 view .LVU1343
	cmp	r7, #0	@ _48
	beq	.L221	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:118: 	while (height--) {
	.loc 1 118 15 view .LVU1344
	subs	r7, r7, #1	@ height, _48,
.LVL344:
	.loc 1 118 15 view .LVU1345
	mov	r0, r10	@ prephitmp_388, prephitmp_399
	b	.L222		@
.LVL345:
.L235:
.LBB981:
.LBB971:
.LBB964:
.LBB958:
	.loc 2 359 3 is_stmt 1 view .LVU1346
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:359: 		if (Y2 < Y1) {
	.loc 2 359 6 is_stmt 0 view .LVU1347
	vcmp.f32	s14, s13	@ _165, _166
	vmrs	APSR_nzcv, FPSCR
	ble	.L239		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:360: 			*r_top = 2; *r_mid = 1; *r_bottom = 0;
	.loc 2 360 23 view .LVU1348
	movs	r7, #1	@ v_mid,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:360: 			*r_top = 2; *r_mid = 1; *r_bottom = 0;
	.loc 2 360 11 view .LVU1349
	mov	r8, #2	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:361: 			v_mid_cmp = 1; v_bot_cmp = 0;
	.loc 2 361 29 view .LVU1350
	mov	r9, #0	@ v_bot_cmp,
.L197:
.LVL346:
	.loc 2 376 2 is_stmt 1 view .LVU1351
	.loc 2 376 2 is_stmt 0 view .LVU1352
.LBE958:
.LBE964:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:414: 	tri_edge_init(&st->e_top_bottom, p0, p1, p2, v_top, v_bottom);
	.loc 2 414 2 view .LVU1353
	add	r10, sp, #24	@ prephitmp_399,,
.LVL347:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:401: 	st->mid_is_left = tri_sort_vertices(p0, p1, p2, &v_top, &v_mid, &v_bottom);
	.loc 2 401 18 discriminator 1 view .LVU1354
	movs	r3, #1	@ tmp374,
.LVL348:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:414: 	tri_edge_init(&st->e_top_bottom, p0, p1, p2, v_top, v_bottom);
	.loc 2 414 2 view .LVU1355
	mov	r1, r4	@, p0
.LVL349:
	.loc 2 414 2 view .LVU1356
	mov	r2, r6	@, p1
.LVL350:
	.loc 2 414 2 view .LVU1357
	mov	r0, r10	@, prephitmp_399
.LVL351:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:401: 	st->mid_is_left = tri_sort_vertices(p0, p1, p2, &v_top, &v_mid, &v_bottom);
	.loc 2 401 18 discriminator 1 view .LVU1358
	strb	r3, [sp, #116]	@ tmp374, tri.mid_is_left
	.loc 2 414 2 is_stmt 1 view .LVU1359
	ldr	r3, [sp, #160]	@, p2
	strd	r8, r9, [sp]	@ v_top, v_bot_cmp,
	bl	tri_edge_init		@
.LVL352:
	.loc 2 415 2 view .LVU1360
	mov	r1, r4	@, p0
	ldr	r3, [sp, #160]	@, p2
	mov	r2, r6	@, p1
	strd	r8, r7, [sp]	@ v_top, v_mid,
	add	r8, sp, #52	@ prephitmp_388,,
.LVL353:
	.loc 2 415 2 is_stmt 0 view .LVU1361
	mov	r0, r8	@, prephitmp_388
	bl	tri_edge_init		@
.LVL354:
	.loc 2 416 2 is_stmt 1 view .LVU1362
	mov	r1, r4	@, p0
	add	r4, sp, #80	@ prephitmp_400,,
.LVL355:
	.loc 2 416 2 is_stmt 0 view .LVU1363
	ldr	r3, [sp, #160]	@, p2
	mov	r2, r6	@, p1
	mov	r0, r4	@, prephitmp_400
	strd	r7, r9, [sp]	@ v_mid, v_bot_cmp,
	bl	tri_edge_init		@
.LVL356:
	.loc 2 418 2 is_stmt 1 view .LVU1364
	.loc 2 418 2 is_stmt 0 view .LVU1365
.LBE971:
.LBE981:
	.loc 1 117 2 is_stmt 1 view .LVU1366
.LBB982:
	.loc 2 439 78 view .LVU1367
.LBB980:
	.loc 2 441 2 view .LVU1368
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:443: 	return st->e_top_mid.height;
	.loc 2 443 22 is_stmt 0 view .LVU1369
	ldr	r7, [sp, #76]	@ _98, tri.e_top_mid.height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:442: 	st->e_right = st->mid_is_left ? &st->e_top_mid : &st->e_top_bottom;
	.loc 2 442 14 discriminator 4 view .LVU1370
	strd	r10, r8, [sp, #108]	@ prephitmp_399, prephitmp_388,,
	.loc 2 443 2 is_stmt 1 view .LVU1371
.LVL357:
	.loc 2 443 2 is_stmt 0 view .LVU1372
.LBE980:
.LBE982:
	.loc 1 118 2 is_stmt 1 view .LVU1373
	.loc 1 118 9 view .LVU1374
	.loc 1 118 9 is_stmt 0 view .LVU1375
	cmp	r7, #0	@ _98
	beq	.L207	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:118: 	while (height--) {
	.loc 1 118 15 view .LVU1376
	mov	r0, r8	@ prephitmp_388, prephitmp_388
	subs	r7, r7, #1	@ height, _98,
.LVL358:
	.loc 1 118 15 view .LVU1377
	mov	r8, r10	@ prephitmp_387, prephitmp_399
.L222:
.LBB983:
.LBB984:
.LBB985:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:98: 		mask |= 0x80000000u >> (x & 31);
	.loc 1 98 23 view .LVU1378
	mov	r6, #-2147483648	@ tmp392,
.LVL359:
	.loc 1 98 23 view .LVU1379
	strd	r10, r4, [sp, #16]	@ prephitmp_399, prephitmp_400,,
.LVL360:
.L206:
	.loc 1 98 23 view .LVU1380
.LBE985:
.LBE984:
.LBE983:
	.loc 1 119 3 is_stmt 1 view .LVU1381
.LBB1016:
.LBI983:
	.loc 1 82 79 view .LVU1382
.LBB1015:
	.loc 1 84 2 view .LVU1383
.LBB996:
.LBB997:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1384
	ldr	r3, [r0]	@ MEM[(const struct tri_edge *)prephitmp_388].X, MEM[(const struct tri_edge *)prephitmp_388].X
.LBE997:
.LBE996:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:84: 	int x = max2(0, edge_l->X);
	.loc 1 84 24 view .LVU1385
	ldr	r1, [r8]	@ _30, MEM[(const struct tri_edge *)prephitmp_387].X
.LVL361:
.LBB1001:
.LBI1001:
	.loc 3 150 19 is_stmt 1 view .LVU1386
.LBB1002:
	.loc 3 152 2 view .LVU1387
.LBE1002:
.LBE1001:
.LBB1004:
.LBB998:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1388
	cmp	r3, #400	@ MEM[(const struct tri_edge *)prephitmp_388].X,
.LBE998:
.LBE1004:
.LBB1005:
.LBB1003:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:152: 	return a > b ? a : b;
	.loc 3 152 19 view .LVU1389
	bic	r4, r1, r1, asr #31	@ x, _30
.LVL362:
	.loc 3 152 19 view .LVU1390
.LBE1003:
.LBE1005:
	.loc 1 85 2 is_stmt 1 view .LVU1391
.LBB1006:
.LBI996:
	.loc 3 145 19 view .LVU1392
.LBB999:
	.loc 3 147 2 view .LVU1393
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1394
	it	ge
	movge	r3, #400	@ MEM[(const struct tri_edge *)prephitmp_388].X,
.LVL363:
	.loc 3 147 19 view .LVU1395
.LBE999:
.LBE1006:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:86: 	if (endx <= x) return;
	.loc 1 86 5 view .LVU1396
	cmp	r4, r3	@ x, _33
.LBB1007:
.LBB1000:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 view .LVU1397
	mov	r9, r3	@ _33, MEM[(const struct tri_edge *)prephitmp_388].X
.LVL364:
	.loc 3 147 19 view .LVU1398
.LBE1000:
.LBE1007:
	.loc 1 86 2 is_stmt 1 view .LVU1399
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:86: 	if (endx <= x) return;
	.loc 1 86 5 is_stmt 0 view .LVU1400
	bge	.L198		@,
	.loc 1 88 2 is_stmt 1 view .LVU1401
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:88: 	const uint8_t* noise_row = get_blue_noise_buffer() + edge_l->Y * SCREEN_X;
	.loc 1 88 29 is_stmt 0 view .LVU1402
	bl	get_blue_noise_buffer		@
.LVL365:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:88: 	const uint8_t* noise_row = get_blue_noise_buffer() + edge_l->Y * SCREEN_X;
	.loc 1 88 61 discriminator 1 view .LVU1403
	ldr	r2, [r8, #20]	@ _35, MEM[(const struct tri_edge *)prephitmp_387].Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:93: 	uint32_t* p = (uint32_t*)row + x / 32;
	.loc 1 93 35 view .LVU1404
	asr	ip, r4, #5	@ _40, x,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:88: 	const uint8_t* noise_row = get_blue_noise_buffer() + edge_l->Y * SCREEN_X;
	.loc 1 88 29 view .LVU1405
	mov	lr, r0	@ _34,
.LVL366:
	.loc 1 89 2 is_stmt 1 view .LVU1406
	.loc 1 92 2 view .LVU1407
	.loc 1 93 2 view .LVU1408
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:89: 	uint8_t* row = bitmap + edge_l->Y * rowstride;
	.loc 1 89 36 is_stmt 0 view .LVU1409
	mul	r1, r2, fp	@ _38, _35, rowstride
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:94: 	uint32_t color = 0;
	.loc 1 94 11 view .LVU1410
	movs	r0, #0	@ color,
.LVL367:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:92: 	uint32_t mask = 0;
	.loc 1 92 11 view .LVU1411
	and	r8, r4, #31	@ _46, x,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:93: 	uint32_t* p = (uint32_t*)row + x / 32;
	.loc 1 93 12 view .LVU1412
	add	ip, r1, ip, lsl #2	@ _43, _38, _40,
	mov	r1, #400	@ tmp437,
	mla	r2, r1, r2, r4	@ _380, tmp437, _35, x
.LVL368:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:92: 	uint32_t mask = 0;
	.loc 1 92 11 view .LVU1413
	mov	r1, r0	@ mask, color
	add	lr, lr, r2	@ ivtmp.198, _380
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:93: 	uint32_t* p = (uint32_t*)row + x / 32;
	.loc 1 93 12 view .LVU1414
	ldr	r2, [sp, #12]	@ bitmap, %sfp
	add	ip, ip, r2	@ p, bitmap
	.loc 1 94 2 is_stmt 1 view .LVU1415
	.loc 1 96 2 view .LVU1416
.LVL369:
	.loc 1 96 11 view .LVU1417
.L202:
.LBB1008:
	.loc 1 98 3 view .LVU1418
	.loc 1 104 4 view .LVU1419
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:99: 		uint32_t pix = tri_color > noise_row[x] ? 0x80000000 : 0;
	.loc 1 99 39 is_stmt 0 view .LVU1420
	ldrb	r3, [lr], #1	@ zero_extendqisi2	@ _53, MEM[(const uint8_t *)_352]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:101: 		x++;
	.loc 1 101 4 view .LVU1421
	adds	r4, r4, #1	@ x, x,
.LVL370:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:98: 		mask |= 0x80000000u >> (x & 31);
	.loc 1 98 23 view .LVU1422
	lsr	r10, r6, r8	@ _47, tmp392, _46
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:104: 			_drawMaskPattern(p++, swap(mask), swap(color));
	.loc 1 104 4 view .LVU1423
	add	r2, ip, #4	@ p, p,
.LVL371:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:99: 		uint32_t pix = tri_color > noise_row[x] ? 0x80000000 : 0;
	.loc 1 99 56 view .LVU1424
	cmp	r5, r3	@ tri_color, _53
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:98: 		mask |= 0x80000000u >> (x & 31);
	.loc 1 98 8 view .LVU1425
	orr	r1, r1, r10	@ mask, mask, _47
.LVL372:
	.loc 1 99 3 is_stmt 1 view .LVU1426
	.loc 1 100 3 view .LVU1427
.LBB986:
.LBI986:
	.loc 3 29 24 view .LVU1428
.LBB987:
	.loc 3 33 2 view .LVU1429
	.loc 3 34 2 view .LVU1430
.LBE987:
.LBE986:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:99: 		uint32_t pix = tri_color > noise_row[x] ? 0x80000000 : 0;
	.loc 1 99 56 is_stmt 0 view .LVU1431
	ite	ls
	movls	r3, #0	@ _143,
.LVL373:
	.loc 1 99 56 view .LVU1432
	movhi	r3, #1	@ _143,
	lsls	r3, r3, #31	@ _127, _143,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:100: 		color |= pix >> (x & 31);
	.loc 1 100 16 view .LVU1433
	lsr	r3, r3, r8	@ _55, _127, _46
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:102: 		if (x % 32 == 0)
	.loc 1 102 6 view .LVU1434
	ands	r8, r4, #31	@ _46, x,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:100: 		color |= pix >> (x & 31);
	.loc 1 100 9 view .LVU1435
	orr	r0, r0, r3	@ color, color, _55
.LVL374:
	.loc 1 101 3 is_stmt 1 view .LVU1436
	.loc 1 102 3 view .LVU1437
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:102: 		if (x % 32 == 0)
	.loc 1 102 6 is_stmt 0 view .LVU1438
	bne	.L199		@,
.LBB989:
.LBB988:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU1439
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r1, r1	@ result, mask
@ 0 "" 2
.LVL375:
	.loc 3 35 2 is_stmt 1 view .LVU1440
	.loc 3 35 2 is_stmt 0 view .LVU1441
	.thumb
	.syntax unified
.LBE988:
.LBE989:
.LBB990:
.LBI990:
	.loc 3 29 24 is_stmt 1 view .LVU1442
.LBB991:
	.loc 3 33 2 view .LVU1443
	.loc 3 34 2 view .LVU1444
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r3, r0	@ result, color
@ 0 "" 2
	.loc 3 35 2 view .LVU1445
.LVL376:
	.loc 3 35 2 is_stmt 0 view .LVU1446
	.thumb
	.syntax unified
.LBE991:
.LBE990:
.LBB992:
.LBI992:
	.loc 1 5 79 is_stmt 1 view .LVU1447
.LBB993:
	.loc 1 7 2 view .LVU1448
	.loc 1 10 3 view .LVU1449
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU1450
	adds	r0, r1, #1	@, result,
.LVL377:
	.loc 1 7 5 view .LVU1451
	beq	.L201		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 view .LVU1452
	ldr	r0, [ip]	@ _64, *p_240
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU1453
	eors	r3, r3, r0	@, _65, result, _64
.LVL378:
	.loc 1 10 21 view .LVU1454
	ands	r3, r3, r1	@, _66, _65, result
	eors	r3, r3, r0	@, result, _66, _64
.L201:
.LBE993:
.LBE992:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:106: 			color = 0;
	.loc 1 106 10 view .LVU1455
	movs	r0, #0	@ color,
.LBB995:
.LBB994:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 view .LVU1456
	str	r3, [ip]	@ result, *p_240
.LVL379:
	.loc 1 8 6 view .LVU1457
.LBE994:
.LBE995:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:104: 			_drawMaskPattern(p++, swap(mask), swap(color));
	.loc 1 104 4 view .LVU1458
	mov	ip, r2	@ p, p
.LVL380:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:105: 			mask = 0;
	.loc 1 105 9 view .LVU1459
	mov	r1, r0	@ mask, color
.LVL381:
.L199:
	.loc 1 105 9 view .LVU1460
.LBE1008:
	.loc 1 96 11 is_stmt 1 view .LVU1461
	cmp	r9, r4	@ _33, x
	bne	.L202		@,
	.loc 1 109 2 view .LVU1462
.LVL382:
.LBB1009:
.LBI1009:
	.loc 3 29 24 view .LVU1463
.LBB1010:
	.loc 3 33 2 view .LVU1464
	.loc 3 34 2 view .LVU1465
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r1, r1	@ result, mask
@ 0 "" 2
.LVL383:
	.loc 3 35 2 view .LVU1466
	.loc 3 35 2 is_stmt 0 view .LVU1467
	.thumb
	.syntax unified
.LBE1010:
.LBE1009:
.LBB1011:
.LBI1011:
	.loc 3 29 24 is_stmt 1 view .LVU1468
.LBB1012:
	.loc 3 33 2 view .LVU1469
	.loc 3 34 2 view .LVU1470
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r0, r0	@ result, color
@ 0 "" 2
.LVL384:
	.loc 3 35 2 view .LVU1471
	.loc 3 35 2 is_stmt 0 view .LVU1472
	.thumb
	.syntax unified
.LBE1012:
.LBE1011:
.LBB1013:
.LBI1013:
	.loc 1 5 79 is_stmt 1 view .LVU1473
.LBB1014:
	.loc 1 7 2 view .LVU1474
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU1475
	adds	r4, r1, #1	@, result,
.LVL385:
	.loc 1 7 5 view .LVU1476
	beq	.L237		@,
	.loc 1 10 3 is_stmt 1 view .LVU1477
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU1478
	ldr	r3, [ip]	@ _70, *p_285
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU1479
	eors	r0, r0, r3	@, _71, result, _70
.LVL386:
	.loc 1 10 21 view .LVU1480
	ands	r0, r0, r1	@, _72, _71, result
	eors	r0, r0, r3	@, _73, _72, _70
.L237:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 6 view .LVU1481
	str	r0, [ip]	@ _73, *p_285
.LBE1014:
.LBE1013:
.LBE1015:
.LBE1016:
.LBB1017:
.LBB1018:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:469: 	tri_edge_step(st->e_left); tri_edge_step(st->e_right);
	.loc 2 469 29 discriminator 1 view .LVU1482
	ldrd	r8, r0, [sp, #108]	@ prephitmp_387, prephitmp_388,,
.LBB1019:
.LBB1020:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 3 view .LVU1483
	ldr	r1, [r8]	@ _30,* prephitmp_387
.LVL387:
.L198:
	.loc 2 210 3 view .LVU1484
.LBE1020:
.LBE1019:
.LBE1018:
.LBE1017:
	.loc 1 120 3 is_stmt 1 view .LVU1485
.LBB1026:
.LBI1017:
	.loc 2 467 79 view .LVU1486
.LBB1025:
	.loc 2 469 2 view .LVU1487
.LBB1022:
.LBI1019:
	.loc 2 208 20 view .LVU1488
.LBB1021:
	.loc 2 210 2 view .LVU1489
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 is_stmt 0 view .LVU1490
	ldr	r4, [r8, #4]	@ prephitmp_392->x_step, prephitmp_392->x_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1491
	ldrd	r2, r3, [r8, #20]	@ prephitmp_392->Y, prephitmp_392->height, prephitmp_387,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1492
	add	r1, r1, r4	@ _188, prephitmp_392->x_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU1493
	adds	r2, r2, #1	@ _190, prephitmp_392->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1494
	subs	r3, r3, #1	@ _192, prephitmp_392->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1495
	str	r1, [r8]	@ _188, prephitmp_392->X
	.loc 2 210 21 is_stmt 1 view .LVU1496
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 is_stmt 0 view .LVU1497
	strd	r2, r3, [r8, #20]	@ _190, _192, prephitmp_387,
	.loc 2 212 2 is_stmt 1 view .LVU1498
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 is_stmt 0 view .LVU1499
	ldr	r3, [r8, #16]	@ prephitmp_392->error_term, prephitmp_392->error_term
	ldr	r2, [r8, #8]	@ prephitmp_392->numerator, prephitmp_392->numerator
	add	r3, r3, r2	@ _195, prephitmp_392->numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 view .LVU1500
	ldr	r2, [r8, #12]	@ _196, prephitmp_392->denominator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 view .LVU1501
	cmp	r3, r2	@ _195, _196
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1502
	str	r3, [r8, #16]	@ _195, prephitmp_392->error_term
	.loc 2 213 2 is_stmt 1 view .LVU1503
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 is_stmt 0 view .LVU1504
	blt	.L204		@,
	.loc 2 214 3 is_stmt 1 view .LVU1505
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 is_stmt 0 view .LVU1506
	subs	r3, r3, r2	@ _198, _195, _196
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1507
	adds	r1, r1, #1	@ _197, _188,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 view .LVU1508
	str	r3, [r8, #16]	@ _198, prephitmp_392->error_term
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1509
	str	r1, [r8]	@ _197, prephitmp_392->X
	.loc 2 215 3 is_stmt 1 view .LVU1510
.L204:
.LVL388:
	.loc 2 215 3 is_stmt 0 view .LVU1511
.LBE1021:
.LBE1022:
	.loc 2 469 29 is_stmt 1 discriminator 1 view .LVU1512
.LBB1023:
.LBI1023:
	.loc 2 208 20 view .LVU1513
.LBB1024:
	.loc 2 210 2 view .LVU1514
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 is_stmt 0 view .LVU1515
	ldr	r4, [r0]	@ prephitmp_395->X, prephitmp_395->X
	ldr	r3, [r0, #4]	@ prephitmp_395->x_step, prephitmp_395->x_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1516
	ldrd	r1, r2, [r0, #20]	@ prephitmp_395->Y, prephitmp_395->height, prephitmp_388,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1517
	add	r3, r3, r4	@ _175, prephitmp_395->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU1518
	adds	r1, r1, #1	@ _177, prephitmp_395->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1519
	subs	r2, r2, #1	@ _179, prephitmp_395->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1520
	str	r3, [r0]	@ _175, prephitmp_395->X
	.loc 2 210 21 is_stmt 1 view .LVU1521
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 is_stmt 0 view .LVU1522
	strd	r1, r2, [r0, #20]	@ _177, _179, prephitmp_388,
	.loc 2 212 2 is_stmt 1 view .LVU1523
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 is_stmt 0 view .LVU1524
	ldr	r2, [r0, #16]	@ prephitmp_395->error_term, prephitmp_395->error_term
	ldr	r1, [r0, #8]	@ prephitmp_395->numerator, prephitmp_395->numerator
	add	r2, r2, r1	@ _182, prephitmp_395->numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 view .LVU1525
	ldr	r1, [r0, #12]	@ _183, prephitmp_395->denominator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 view .LVU1526
	cmp	r2, r1	@ _182, _183
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1527
	str	r2, [r0, #16]	@ _182, prephitmp_395->error_term
	.loc 2 213 2 is_stmt 1 view .LVU1528
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 is_stmt 0 view .LVU1529
	blt	.L205		@,
	.loc 2 214 3 is_stmt 1 view .LVU1530
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 is_stmt 0 view .LVU1531
	subs	r2, r2, r1	@ _185, _182, _183
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1532
	adds	r3, r3, #1	@ _184, _175,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 view .LVU1533
	str	r2, [r0, #16]	@ _185, prephitmp_395->error_term
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1534
	str	r3, [r0]	@ _184, prephitmp_395->X
	.loc 2 215 3 is_stmt 1 view .LVU1535
.L205:
.LVL389:
	.loc 2 215 3 is_stmt 0 view .LVU1536
.LBE1024:
.LBE1023:
.LBE1025:
.LBE1026:
	.loc 1 118 9 is_stmt 1 view .LVU1537
	subs	r7, r7, #1	@ height, height,
.LVL390:
	.loc 1 118 9 is_stmt 0 view .LVU1538
	bcs	.L206		@,
	.loc 1 122 2 is_stmt 1 view .LVU1539
.LVL391:
.LBB1027:
.LBI1027:
	.loc 2 453 78 view .LVU1540
.LBB1028:
	.loc 2 455 2 view .LVU1541
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:455: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 455 51 is_stmt 0 view .LVU1542
	ldrb	r3, [sp, #116]	@ zero_extendqisi2	@ tri.mid_is_left, tri.mid_is_left
	ldrd	r10, r4, [sp, #16]	@ prephitmp_399, prephitmp_400,,
	cmp	r3, #0	@ tri.mid_is_left
	bne	.L207	@
.LVL392:
.L221:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:455: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 455 13 discriminator 4 view .LVU1543
	mov	r9, r4	@ prephitmp_399, prephitmp_400
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:456: 	st->e_right = st->mid_is_left ? &st->e_mid_bottom : &st->e_top_bottom;
	.loc 2 456 52 discriminator 2 view .LVU1544
	mov	ip, r10	@ prephitmp_400, prephitmp_399
.L208:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:457: 	return st->e_mid_bottom.height;
	.loc 2 457 25 view .LVU1545
	ldr	r3, [sp, #104]	@ _80, tri.e_mid_bottom.height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:456: 	st->e_right = st->mid_is_left ? &st->e_mid_bottom : &st->e_top_bottom;
	.loc 2 456 14 discriminator 4 view .LVU1546
	strd	r9, ip, [sp, #108]	@ prephitmp_399, prephitmp_400,,
	.loc 2 457 2 is_stmt 1 view .LVU1547
.LBE1028:
.LBE1027:
	.loc 1 123 2 view .LVU1548
	.loc 1 123 9 view .LVU1549
.LVL393:
	.loc 1 123 9 is_stmt 0 view .LVU1550
	cmp	r3, #0	@ _80
	beq	.L193	@
	mov	r8, r3	@ ivtmp.192, _80
.LBB1030:
.LBB1031:
.LBB1032:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:98: 		mask |= 0x80000000u >> (x & 31);
	.loc 1 98 23 view .LVU1551
	mov	r6, #-2147483648	@ tmp390,
	mov	r7, fp	@ rowstride, rowstride
.LVL394:
.L218:
	.loc 1 98 23 view .LVU1552
.LBE1032:
.LBE1031:
.LBE1030:
	.loc 1 124 3 is_stmt 1 view .LVU1553
.LBB1072:
.LBI1030:
	.loc 1 82 79 view .LVU1554
.LBB1068:
	.loc 1 84 2 view .LVU1555
.LBB1043:
.LBB1044:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1556
	ldr	r3, [ip]	@ MEM[(const struct tri_edge *)prephitmp_400].X, MEM[(const struct tri_edge *)prephitmp_400].X
.LBE1044:
.LBE1043:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:84: 	int x = max2(0, edge_l->X);
	.loc 1 84 24 view .LVU1557
	ldr	r0, [r9]	@ _83, MEM[(const struct tri_edge *)prephitmp_399].X
.LVL395:
.LBB1048:
.LBI1048:
	.loc 3 150 19 is_stmt 1 view .LVU1558
.LBB1049:
	.loc 3 152 2 view .LVU1559
.LBE1049:
.LBE1048:
.LBB1051:
.LBB1045:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1560
	cmp	r3, #400	@ MEM[(const struct tri_edge *)prephitmp_400].X,
.LBE1045:
.LBE1051:
.LBB1052:
.LBB1050:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:152: 	return a > b ? a : b;
	.loc 3 152 19 view .LVU1561
	bic	r4, r0, r0, asr #31	@ x, _83
.LVL396:
	.loc 3 152 19 view .LVU1562
.LBE1050:
.LBE1052:
	.loc 1 85 2 is_stmt 1 view .LVU1563
.LBB1053:
.LBI1043:
	.loc 3 145 19 view .LVU1564
.LBB1046:
	.loc 3 147 2 view .LVU1565
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 is_stmt 0 view .LVU1566
	it	ge
	movge	r3, #400	@ MEM[(const struct tri_edge *)prephitmp_400].X,
.LVL397:
	.loc 3 147 19 view .LVU1567
.LBE1046:
.LBE1053:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:86: 	if (endx <= x) return;
	.loc 1 86 5 view .LVU1568
	cmp	r4, r3	@ x, _86
.LBB1054:
.LBB1047:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:147: 	return a < b ? a : b;
	.loc 3 147 19 view .LVU1569
	mov	r10, r3	@ _86, MEM[(const struct tri_edge *)prephitmp_400].X
.LVL398:
	.loc 3 147 19 view .LVU1570
.LBE1047:
.LBE1054:
	.loc 1 86 2 is_stmt 1 view .LVU1571
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:86: 	if (endx <= x) return;
	.loc 1 86 5 is_stmt 0 view .LVU1572
	bge	.L210		@,
	.loc 1 88 2 is_stmt 1 view .LVU1573
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:88: 	const uint8_t* noise_row = get_blue_noise_buffer() + edge_l->Y * SCREEN_X;
	.loc 1 88 29 is_stmt 0 view .LVU1574
	bl	get_blue_noise_buffer		@
.LVL399:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:88: 	const uint8_t* noise_row = get_blue_noise_buffer() + edge_l->Y * SCREEN_X;
	.loc 1 88 61 discriminator 1 view .LVU1575
	ldr	r2, [r9, #20]	@ _88, MEM[(const struct tri_edge *)prephitmp_399].Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:93: 	uint32_t* p = (uint32_t*)row + x / 32;
	.loc 1 93 35 view .LVU1576
	asrs	r1, r4, #5	@ _93, x,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:88: 	const uint8_t* noise_row = get_blue_noise_buffer() + edge_l->Y * SCREEN_X;
	.loc 1 88 29 view .LVU1577
	mov	lr, r0	@ _87,
.LVL400:
	.loc 1 89 2 is_stmt 1 view .LVU1578
	.loc 1 92 2 view .LVU1579
	.loc 1 93 2 view .LVU1580
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:89: 	uint8_t* row = bitmap + edge_l->Y * rowstride;
	.loc 1 89 36 is_stmt 0 view .LVU1581
	mul	ip, r2, r7	@ _91, _88, rowstride
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:94: 	uint32_t color = 0;
	.loc 1 94 11 view .LVU1582
	movs	r0, #0	@ color,
.LVL401:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:92: 	uint32_t mask = 0;
	.loc 1 92 11 view .LVU1583
	and	r9, r4, #31	@ _99, x,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:93: 	uint32_t* p = (uint32_t*)row + x / 32;
	.loc 1 93 12 view .LVU1584
	add	ip, ip, r1, lsl #2	@ _96, _91, _93,
	mov	r1, #400	@ tmp442,
	mla	r2, r1, r2, r4	@ _381, tmp442, _88, x
.LVL402:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:92: 	uint32_t mask = 0;
	.loc 1 92 11 view .LVU1585
	mov	r1, r0	@ mask, color
	add	lr, lr, r2	@ ivtmp.187, _381
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:93: 	uint32_t* p = (uint32_t*)row + x / 32;
	.loc 1 93 12 view .LVU1586
	ldr	r2, [sp, #12]	@ bitmap, %sfp
	add	ip, ip, r2	@ p, bitmap
	.loc 1 94 2 is_stmt 1 view .LVU1587
	.loc 1 96 2 view .LVU1588
.LVL403:
	.loc 1 96 11 view .LVU1589
.L214:
.LBB1055:
	.loc 1 98 3 view .LVU1590
	.loc 1 104 4 view .LVU1591
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:99: 		uint32_t pix = tri_color > noise_row[x] ? 0x80000000 : 0;
	.loc 1 99 39 is_stmt 0 view .LVU1592
	ldrb	r3, [lr], #1	@ zero_extendqisi2	@ _106, MEM[(const uint8_t *)_365]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:101: 		x++;
	.loc 1 101 4 view .LVU1593
	adds	r4, r4, #1	@ x, x,
.LVL404:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:98: 		mask |= 0x80000000u >> (x & 31);
	.loc 1 98 23 view .LVU1594
	lsr	fp, r6, r9	@ _100, tmp390, _99
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:104: 			_drawMaskPattern(p++, swap(mask), swap(color));
	.loc 1 104 4 view .LVU1595
	add	r2, ip, #4	@ p, p,
.LVL405:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:99: 		uint32_t pix = tri_color > noise_row[x] ? 0x80000000 : 0;
	.loc 1 99 56 view .LVU1596
	cmp	r5, r3	@ tri_color, _106
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:98: 		mask |= 0x80000000u >> (x & 31);
	.loc 1 98 8 view .LVU1597
	orr	r1, r1, fp	@ mask, mask, _100
.LVL406:
	.loc 1 99 3 is_stmt 1 view .LVU1598
	.loc 1 100 3 view .LVU1599
.LBB1033:
.LBI1033:
	.loc 3 29 24 view .LVU1600
.LBB1034:
	.loc 3 33 2 view .LVU1601
	.loc 3 34 2 view .LVU1602
.LBE1034:
.LBE1033:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:99: 		uint32_t pix = tri_color > noise_row[x] ? 0x80000000 : 0;
	.loc 1 99 56 is_stmt 0 view .LVU1603
	ite	ls
	movls	r3, #0	@ _24,
.LVL407:
	.loc 1 99 56 view .LVU1604
	movhi	r3, #1	@ _24,
	lsls	r3, r3, #31	@ _228, _24,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:100: 		color |= pix >> (x & 31);
	.loc 1 100 16 view .LVU1605
	lsr	r3, r3, r9	@ _108, _228, _99
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:102: 		if (x % 32 == 0)
	.loc 1 102 6 view .LVU1606
	ands	r9, r4, #31	@ _99, x,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:100: 		color |= pix >> (x & 31);
	.loc 1 100 9 view .LVU1607
	orr	r0, r0, r3	@ color, color, _108
.LVL408:
	.loc 1 101 3 is_stmt 1 view .LVU1608
	.loc 1 102 3 view .LVU1609
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:102: 		if (x % 32 == 0)
	.loc 1 102 6 is_stmt 0 view .LVU1610
	bne	.L211		@,
.LBB1036:
.LBB1035:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 3 34 2 view .LVU1611
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r1, r1	@ result, mask
@ 0 "" 2
.LVL409:
	.loc 3 35 2 is_stmt 1 view .LVU1612
	.loc 3 35 2 is_stmt 0 view .LVU1613
	.thumb
	.syntax unified
.LBE1035:
.LBE1036:
.LBB1037:
.LBI1037:
	.loc 3 29 24 is_stmt 1 view .LVU1614
.LBB1038:
	.loc 3 33 2 view .LVU1615
	.loc 3 34 2 view .LVU1616
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r3, r0	@ result, color
@ 0 "" 2
	.loc 3 35 2 view .LVU1617
.LVL410:
	.loc 3 35 2 is_stmt 0 view .LVU1618
	.thumb
	.syntax unified
.LBE1038:
.LBE1037:
.LBB1039:
.LBI1039:
	.loc 1 5 79 is_stmt 1 view .LVU1619
.LBB1040:
	.loc 1 7 2 view .LVU1620
	.loc 1 10 3 view .LVU1621
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU1622
	adds	r0, r1, #1	@, result,
.LVL411:
	.loc 1 7 5 view .LVU1623
	beq	.L213		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 view .LVU1624
	ldr	r0, [ip]	@ _117, *p_233
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU1625
	eors	r3, r3, r0	@, _118, result, _117
.LVL412:
	.loc 1 10 21 view .LVU1626
	ands	r3, r3, r1	@, _119, _118, result
	eors	r3, r3, r0	@, result, _119, _117
.L213:
.LBE1040:
.LBE1039:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:106: 			color = 0;
	.loc 1 106 10 view .LVU1627
	movs	r0, #0	@ color,
.LBB1042:
.LBB1041:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 view .LVU1628
	str	r3, [ip]	@ result, *p_233
.LVL413:
	.loc 1 8 6 view .LVU1629
.LBE1041:
.LBE1042:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:104: 			_drawMaskPattern(p++, swap(mask), swap(color));
	.loc 1 104 4 view .LVU1630
	mov	ip, r2	@ p, p
.LVL414:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:105: 			mask = 0;
	.loc 1 105 9 view .LVU1631
	mov	r1, r0	@ mask, color
.LVL415:
.L211:
	.loc 1 105 9 view .LVU1632
.LBE1055:
	.loc 1 96 11 is_stmt 1 view .LVU1633
	cmp	r10, r4	@ _86, x
	bne	.L214		@,
	.loc 1 109 2 view .LVU1634
.LVL416:
.LBB1056:
.LBI1056:
	.loc 3 29 24 view .LVU1635
.LBB1057:
	.loc 3 33 2 view .LVU1636
	.loc 3 34 2 view .LVU1637
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r1, r1	@ result, mask
@ 0 "" 2
.LVL417:
	.loc 3 35 2 view .LVU1638
	.loc 3 35 2 is_stmt 0 view .LVU1639
	.thumb
	.syntax unified
.LBE1057:
.LBE1056:
.LBB1058:
.LBI1058:
	.loc 3 29 24 is_stmt 1 view .LVU1640
.LBB1059:
	.loc 3 33 2 view .LVU1641
	.loc 3 34 2 view .LVU1642
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r0, r0	@ result, color
@ 0 "" 2
.LVL418:
	.loc 3 35 2 view .LVU1643
	.loc 3 35 2 is_stmt 0 view .LVU1644
	.thumb
	.syntax unified
.LBE1059:
.LBE1058:
.LBB1060:
.LBI1060:
	.loc 1 5 79 is_stmt 1 view .LVU1645
.LBB1061:
	.loc 1 7 2 view .LVU1646
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:7: 	if ( mask == 0xffffffff )
	.loc 1 7 5 is_stmt 0 view .LVU1647
	adds	r3, r1, #1	@, result,
	beq	.L240		@,
	.loc 1 10 3 is_stmt 1 view .LVU1648
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 9 is_stmt 0 view .LVU1649
	ldr	r3, [ip]	@ _123, *p_134
.LBE1061:
.LBE1060:
.LBE1068:
.LBE1072:
.LBB1073:
.LBB1074:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:469: 	tri_edge_step(st->e_left); tri_edge_step(st->e_right);
	.loc 2 469 2 view .LVU1650
	ldr	r9, [sp, #108]	@ prephitmp_399, tri.e_left
.LBE1074:
.LBE1073:
.LBB1086:
.LBB1069:
.LBB1065:
.LBB1062:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 21 view .LVU1651
	eors	r0, r0, r3	@, _124, result, _123
.LVL419:
	.loc 1 10 21 view .LVU1652
	ands	r0, r0, r1	@, _125, _124, result
	eors	r0, r0, r3	@, _126, _125, _123
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:10: 		*p = (*p & ~mask) | (color & mask);
	.loc 1 10 6 view .LVU1653
	str	r0, [ip]	@ _126, *p_134
.LBE1062:
.LBE1065:
.LBE1069:
.LBE1086:
.LBB1087:
.LBB1083:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:469: 	tri_edge_step(st->e_left); tri_edge_step(st->e_right);
	.loc 2 469 29 discriminator 1 view .LVU1654
	ldr	ip, [sp, #112]	@ prephitmp_400, tri.e_right
.LVL420:
.LBB1075:
.LBB1076:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 3 view .LVU1655
	ldr	r0, [r9]	@ _83,* prephitmp_399
.LVL421:
.L210:
	.loc 2 210 3 view .LVU1656
.LBE1076:
.LBE1075:
.LBE1083:
.LBE1087:
	.loc 1 125 3 is_stmt 1 view .LVU1657
.LBB1088:
.LBI1073:
	.loc 2 467 79 view .LVU1658
.LBB1084:
	.loc 2 469 2 view .LVU1659
.LBB1079:
.LBI1075:
	.loc 2 208 20 view .LVU1660
.LBB1077:
	.loc 2 210 2 view .LVU1661
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 is_stmt 0 view .LVU1662
	ldr	r1, [r9, #4]	@ prephitmp_404->x_step, prephitmp_404->x_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1663
	ldr	r4, [r9, #16]	@ prephitmp_404->error_term, prephitmp_404->error_term
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1664
	add	r0, r0, r1	@ _214, prephitmp_404->x_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1665
	ldrd	r2, r3, [r9, #20]	@ prephitmp_404->Y, prephitmp_404->height, prephitmp_399,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1666
	str	r0, [r9]	@ _214, prephitmp_404->X
	.loc 2 210 21 is_stmt 1 view .LVU1667
	.loc 2 210 29 view .LVU1668
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 is_stmt 0 view .LVU1669
	adds	r2, r2, #1	@ _216, prephitmp_404->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1670
	subs	r3, r3, #1	@ _218, prephitmp_404->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU1671
	str	r2, [r9, #20]	@ _216, prephitmp_404->Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1672
	str	r3, [r9, #24]	@ _218, prephitmp_404->height
	.loc 2 212 2 is_stmt 1 view .LVU1673
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 is_stmt 0 view .LVU1674
	ldrd	r2, r1, [r9, #8]	@ prephitmp_404->numerator, _222, prephitmp_399,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1675
	add	r4, r4, r2	@ _221, prephitmp_404->numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 view .LVU1676
	cmp	r4, r1	@ _221, _222
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1677
	str	r4, [r9, #16]	@ _221, prephitmp_404->error_term
	.loc 2 213 2 is_stmt 1 view .LVU1678
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 is_stmt 0 view .LVU1679
	blt	.L216		@,
	.loc 2 214 3 is_stmt 1 view .LVU1680
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 is_stmt 0 view .LVU1681
	adds	r0, r0, #1	@ _223, _214,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 view .LVU1682
	subs	r4, r4, r1	@ _224, _221, _222
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1683
	str	r0, [r9]	@ _223, prephitmp_404->X
	.loc 2 215 3 is_stmt 1 view .LVU1684
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 is_stmt 0 view .LVU1685
	str	r4, [r9, #16]	@ _224, prephitmp_404->error_term
.L216:
.LVL422:
	.loc 2 215 17 view .LVU1686
.LBE1077:
.LBE1079:
	.loc 2 469 29 is_stmt 1 discriminator 1 view .LVU1687
.LBB1080:
.LBI1080:
	.loc 2 208 20 view .LVU1688
.LBB1081:
	.loc 2 210 2 view .LVU1689
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 is_stmt 0 view .LVU1690
	ldr	r0, [ip]	@ prephitmp_407->X, prephitmp_407->X
	ldr	r3, [ip, #4]	@ prephitmp_407->x_step, prephitmp_407->x_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1691
	ldr	r4, [ip, #16]	@ prephitmp_407->error_term, prephitmp_407->error_term
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1692
	add	r3, r3, r0	@ _201, prephitmp_407->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1693
	ldrd	r1, r2, [ip, #20]	@ prephitmp_407->Y, prephitmp_407->height, prephitmp_400,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 7 view .LVU1694
	str	r3, [ip]	@ _201, prephitmp_407->X
	.loc 2 210 21 is_stmt 1 view .LVU1695
	.loc 2 210 29 view .LVU1696
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 is_stmt 0 view .LVU1697
	adds	r1, r1, #1	@ _203, prephitmp_407->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1698
	subs	r2, r2, #1	@ _205, prephitmp_407->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 25 view .LVU1699
	str	r1, [ip, #20]	@ _203, prephitmp_407->Y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 38 view .LVU1700
	str	r2, [ip, #24]	@ _205, prephitmp_407->height
	.loc 2 212 2 is_stmt 1 view .LVU1701
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 24 is_stmt 0 view .LVU1702
	ldrd	r1, r0, [ip, #8]	@ prephitmp_407->numerator, _209, prephitmp_400,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1703
	add	r4, r4, r1	@ _208, prephitmp_407->numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 view .LVU1704
	cmp	r4, r0	@ _208, _209
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:212: 	t->error_term += t->numerator;
	.loc 2 212 16 view .LVU1705
	str	r4, [ip, #16]	@ _208, prephitmp_407->error_term
	.loc 2 213 2 is_stmt 1 view .LVU1706
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:213: 	if (t->error_term >= t->denominator) {
	.loc 2 213 5 is_stmt 0 view .LVU1707
	blt	.L217		@,
	.loc 2 214 3 is_stmt 1 view .LVU1708
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 is_stmt 0 view .LVU1709
	adds	r3, r3, #1	@ _210, _201,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 view .LVU1710
	subs	r4, r4, r0	@ _211, _208, _209
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:214: 		t->X++;
	.loc 2 214 7 view .LVU1711
	str	r3, [ip]	@ _210, prephitmp_407->X
	.loc 2 215 3 is_stmt 1 view .LVU1712
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:215: 		t->error_term -= t->denominator;
	.loc 2 215 17 is_stmt 0 view .LVU1713
	str	r4, [ip, #16]	@ _211, prephitmp_407->error_term
.L217:
.LVL423:
	.loc 2 215 17 view .LVU1714
.LBE1081:
.LBE1080:
.LBE1084:
.LBE1088:
	.loc 1 123 9 is_stmt 1 view .LVU1715
	.loc 1 123 9 is_stmt 0 view .LVU1716
	subs	r8, r8, #1	@ ivtmp.192, ivtmp.192,
.LVL424:
	.loc 1 123 9 view .LVU1717
	bne	.L218		@,
.LVL425:
.L193:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:127: }
	.loc 1 127 1 view .LVU1718
	add	sp, sp, #124	@,,
.LCFI14:
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL426:
.L239:
.LCFI15:
	.cfi_restore_state
.LBB1089:
.LBB972:
.LBB965:
.LBB959:
	.loc 2 364 4 is_stmt 1 view .LVU1719
	.loc 2 365 4 view .LVU1720
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:365: 			if (Y0 < Y2) {
	.loc 2 365 7 is_stmt 0 view .LVU1721
	vcmp.f32	s15, s13	@ _164, _166
	vmrs	APSR_nzcv, FPSCR
	bpl	.L241		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:366: 				*r_mid = 0; *r_bottom = 2;
	.loc 2 366 12 view .LVU1722
	movs	r7, #0	@ v_mid,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:364: 			*r_top = 1;
	.loc 2 364 11 view .LVU1723
	mov	r8, #1	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:367: 				v_mid_cmp = 3; v_bot_cmp = 2;
	.loc 2 367 30 view .LVU1724
	mov	r9, #2	@ v_bot_cmp,
	b	.L197		@
.LVL427:
.L238:
	.loc 2 347 4 is_stmt 1 view .LVU1725
	.loc 2 348 4 view .LVU1726
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:348: 			if (Y1 < Y2) {
	.loc 2 348 7 is_stmt 0 view .LVU1727
	vcmp.f32	s14, s13	@ _165, _166
	vmrs	APSR_nzcv, FPSCR
	bpl	.L242		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:349: 				*r_mid = 1; *r_bottom = 2;
	.loc 2 349 27 view .LVU1728
	mov	r9, #2	@ v_bottom,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:347: 			*r_top = 0;
	.loc 2 347 11 view .LVU1729
	mov	r8, #0	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:350: 				v_mid_cmp = 1; v_bot_cmp = 2;
	.loc 2 350 15 view .LVU1730
	movs	r7, #1	@ v_mid_cmp,
	b	.L196		@
.LVL428:
.L240:
	.loc 2 350 15 view .LVU1731
.LBE959:
.LBE965:
.LBE972:
.LBE1089:
.LBB1090:
.LBB1070:
.LBB1066:
.LBB1063:
	.loc 1 8 3 is_stmt 1 view .LVU1732
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:8: 		*p = color;
	.loc 1 8 6 is_stmt 0 view .LVU1733
	str	r0, [ip]	@ result, *p_134
.LBE1063:
.LBE1066:
.LBE1070:
.LBE1090:
.LBB1091:
.LBB1085:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:469: 	tri_edge_step(st->e_left); tri_edge_step(st->e_right);
	.loc 2 469 29 discriminator 1 view .LVU1734
	ldrd	r9, ip, [sp, #108]	@ prephitmp_399, prephitmp_400,,
.LVL429:
.LBB1082:
.LBB1078:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:210: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 210 3 view .LVU1735
	ldr	r0, [r9]	@ _83,* prephitmp_399
.LVL430:
	.loc 2 210 3 view .LVU1736
.LBE1078:
.LBE1082:
.LBE1085:
.LBE1091:
.LBB1092:
.LBB1071:
.LBB1067:
.LBB1064:
	b	.L210		@
.LVL431:
.L207:
	.loc 2 210 3 view .LVU1737
.LBE1064:
.LBE1067:
.LBE1071:
.LBE1092:
.LBB1093:
.LBB1029:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:455: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 455 13 discriminator 4 view .LVU1738
	mov	r9, r10	@ prephitmp_399, prephitmp_399
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:456: 	st->e_right = st->mid_is_left ? &st->e_mid_bottom : &st->e_top_bottom;
	.loc 2 456 52 discriminator 1 view .LVU1739
	mov	ip, r4	@ prephitmp_400, prephitmp_400
	b	.L208		@
.LVL432:
.L242:
	.loc 2 456 52 discriminator 1 view .LVU1740
.LBE1029:
.LBE1093:
.LBB1094:
.LBB973:
.LBB966:
.LBB960:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:353: 				*r_mid = 2; *r_bottom = 1;
	.loc 2 353 12 view .LVU1741
	movs	r7, #2	@ v_mid,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:347: 			*r_top = 0;
	.loc 2 347 11 view .LVU1742
	mov	r8, #0	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:354: 				v_mid_cmp = 2; v_bot_cmp = 1;
	.loc 2 354 30 view .LVU1743
	mov	r9, #1	@ v_bot_cmp,
	b	.L197		@
.LVL433:
.L241:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:370: 				*r_mid = 2; *r_bottom = 0;
	.loc 2 370 27 view .LVU1744
	mov	r9, #0	@ v_bottom,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:364: 			*r_top = 1;
	.loc 2 364 11 view .LVU1745
	mov	r8, #1	@ v_top,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:371: 				v_mid_cmp = 2; v_bot_cmp = 3;
	.loc 2 371 15 view .LVU1746
	movs	r7, #2	@ v_mid_cmp,
	b	.L196		@
.LBE960:
.LBE966:
.LBE973:
.LBE1094:
	.cfi_endproc
.LFE73:
	.size	draw_tri_bluenoise, .-draw_tri_bluenoise
	.section	.text.draw_tri_checker,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	draw_tri_checker
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_tri_checker, %function
draw_tri_checker:
.LVL434:
.LFB75:
	.loc 1 235 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 320
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 236 2 view .LVU1748
	.loc 1 237 2 view .LVU1749
	vldr.32	s5, [r2, #4]	@ _42, MEM[(float *)p0_9(D) + 4B]
	vldr.32	s14, [r3, #4]	@ _43, MEM[(float *)p1_10(D) + 4B]
.LBB1123:
.LBB1124:
.LBB1125:
.LBB1126:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 is_stmt 0 view .LVU1750
	vcmp.f32	s5, s14	@ _42, _43
.LBE1126:
.LBE1125:
.LBE1124:
.LBE1123:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:235: {
	.loc 1 235 1 view .LVU1751
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI16:
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	vpush.64	{d8, d9, d10}	@
.LCFI17:
	.cfi_def_cfa_offset 60
	.cfi_offset 80, -60
	.cfi_offset 81, -56
	.cfi_offset 82, -52
	.cfi_offset 83, -48
	.cfi_offset 84, -44
	.cfi_offset 85, -40
	sub	sp, sp, #340	@,,
.LCFI18:
	.cfi_def_cfa_offset 400
.LVL435:
.LBB1182:
.LBB1178:
.LBB1133:
.LBB1127:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 view .LVU1752
	vmrs	APSR_nzcv, FPSCR
.LBE1127:
.LBE1133:
.LBE1178:
.LBE1182:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:235: {
	.loc 1 235 1 view .LVU1753
	mov	r9, r1	@ rowstride, rowstride
	mov	r10, r0	@ bitmap, bitmap
	ldr	r4, [sp, #400]	@ p2, p2
.LVL436:
	.loc 1 235 1 view .LVU1754
	ldr	r1, [sp, #404]	@ uvs, uvs
.LVL437:
.LBB1183:
.LBI1123:
	.loc 2 421 79 is_stmt 1 view .LVU1755
.LBB1179:
	.loc 2 423 2 view .LVU1756
.LBB1134:
.LBI1125:
	.loc 2 335 12 view .LVU1757
.LBB1128:
	.loc 2 337 2 view .LVU1758
	.loc 2 338 2 view .LVU1759
	.loc 2 338 2 is_stmt 0 view .LVU1760
	vldr.32	s15, [r4, #4]	@ _44, MEM[(float *)p2_11(D) + 4B]
.LVL438:
	.loc 2 341 2 is_stmt 1 view .LVU1761
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:341: 	if (Y0 < Y1) {
	.loc 2 341 5 is_stmt 0 view .LVU1762
	bpl	.L271		@,
	.loc 2 342 3 is_stmt 1 view .LVU1763
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:342: 		if (Y2 < Y0) {
	.loc 2 342 6 is_stmt 0 view .LVU1764
	vcmp.f32	s5, s15	@ _42, _44
	vmrs	APSR_nzcv, FPSCR
	ble	.L276		@,
	movs	r5, #0	@ prephitmp_401,
	movs	r6, #1	@ prephitmp_400,
	mov	fp, #2	@ prephitmp_399,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:344: 			v_mid_cmp = 0; v_bot_cmp = 1;
	.loc 2 344 29 view .LVU1765
	mov	r7, r6	@ v_bot_cmp, prephitmp_400
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:344: 			v_mid_cmp = 0; v_bot_cmp = 1;
	.loc 2 344 14 view .LVU1766
	str	r5, [sp, #20]	@ prephitmp_401, %sfp
	b	.L246		@
.L271:
	.loc 2 359 3 is_stmt 1 view .LVU1767
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:359: 		if (Y2 < Y1) {
	.loc 2 359 6 is_stmt 0 view .LVU1768
	vcmp.f32	s14, s15	@ _43, _44
	vmrs	APSR_nzcv, FPSCR
	ble	.L277		@,
	movs	r6, #0	@ prephitmp_400,
	movs	r5, #1	@ prephitmp_401,
	mov	fp, #2	@ prephitmp_399,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:361: 			v_mid_cmp = 1; v_bot_cmp = 0;
	.loc 2 361 29 view .LVU1769
	mov	r7, r6	@ v_bot_cmp, prephitmp_400
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:361: 			v_mid_cmp = 1; v_bot_cmp = 0;
	.loc 2 361 14 view .LVU1770
	str	r5, [sp, #20]	@ prephitmp_401, %sfp
.LVL439:
.L246:
	.loc 2 361 14 view .LVU1771
.LBE1128:
.LBE1134:
.LBB1135:
.LBB1136:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:79: 	t->inv_det = 1.0f / det;
	.loc 2 79 20 view .LVU1772
	vmov.f32	s10, #1.0e+0	@ tmp327,
.LBB1137:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:84: 		float const invz = 1.0f / p0->z;
	.loc 2 84 15 view .LVU1773
	vldr.32	s11, [r2, #8]	@ p0_9(D)->z, p0_9(D)->z
.LBE1137:
.LBB1138:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:96: 		float const invz = 1.0f / p2->z;
	.loc 2 96 15 view .LVU1774
	vldr.32	s9, [r4, #8]	@ p2_11(D)->z, p2_11(D)->z
.LBE1138:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:75: 	const float det = ((p1->x - p2->x) * (p0->y - p2->y)) - ((p0->x - p2->x) * (p1->y - p2->y));
	.loc 2 75 46 view .LVU1775
	vsub.f32	s5, s5, s15	@ _50, _42, _44
.LVL440:
.LBB1139:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:90: 		float const invz = 1.0f / p1->z;
	.loc 2 90 15 view .LVU1776
	vldr.32	s12, [r3, #8]	@ p1_10(D)->z, p1_10(D)->z
.LBE1139:
.LBE1136:
.LBE1135:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:432: 	tri_edge_uv_init(&st->e_top_bottom, &st->grad, p0, p1, p2, st->v_top, st->v_bottom);
	.loc 2 432 2 view .LVU1777
	add	r0, sp, #96	@ tmp538,,
.LBB1170:
.LBB1166:
.LBB1140:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:84: 		float const invz = 1.0f / p0->z;
	.loc 2 84 15 view .LVU1778
	vdiv.f32	s6, s10, s11	@ invz, tmp327, p0_9(D)->z
.LBE1140:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:75: 	const float det = ((p1->x - p2->x) * (p0->y - p2->y)) - ((p0->x - p2->x) * (p1->y - p2->y));
	.loc 2 75 32 view .LVU1779
	vldr.32	s13, [r4]	@ _46, p2_11(D)->x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:75: 	const float det = ((p1->x - p2->x) * (p0->y - p2->y)) - ((p0->x - p2->x) * (p1->y - p2->y));
	.loc 2 75 66 view .LVU1780
	vldr.32	s3, [r2]	@ p0_9(D)->x, p0_9(D)->x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:75: 	const float det = ((p1->x - p2->x) * (p0->y - p2->y)) - ((p0->x - p2->x) * (p1->y - p2->y));
	.loc 2 75 28 view .LVU1781
	vldr.32	s11, [r3]	@ p1_10(D)->x, p1_10(D)->x
.LBB1141:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:87: 		t->vz[0] = uvs[1] * (uv_scale * invz);
	.loc 2 87 21 view .LVU1782
	vldr.32	s4, [r1, #4]	@ MEM[(const float *)uvs_12(D) + 4B], MEM[(const float *)uvs_12(D) + 4B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:86: 		t->uz[0] = uvs[0] * (uv_scale * invz);
	.loc 2 86 21 view .LVU1783
	vldr.32	s0, [r1]	@ *uvs_12(D), *uvs_12(D)
.LBE1141:
.LBB1142:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:96: 		float const invz = 1.0f / p2->z;
	.loc 2 96 15 view .LVU1784
	vdiv.f32	s8, s10, s9	@ invz, tmp327, p2_11(D)->z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:99: 		t->vz[2] = uvs[5] * (uv_scale * invz);
	.loc 2 99 21 view .LVU1785
	vldr.32	s17, [r1, #20]	@ MEM[(const float *)uvs_12(D) + 20B], MEM[(const float *)uvs_12(D) + 20B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:98: 		t->uz[2] = uvs[4] * (uv_scale * invz);
	.loc 2 98 21 view .LVU1786
	vldr.32	s2, [r1, #16]	@ MEM[(const float *)uvs_12(D) + 16B], MEM[(const float *)uvs_12(D) + 16B]
.LBE1142:
.LBB1143:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:93: 		t->vz[1] = uvs[3] * (uv_scale * invz);
	.loc 2 93 21 view .LVU1787
	vldr.32	s9, [r1, #12]	@ MEM[(const float *)uvs_12(D) + 12B], MEM[(const float *)uvs_12(D) + 12B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:92: 		t->uz[1] = uvs[2] * (uv_scale * invz);
	.loc 2 92 21 view .LVU1788
	vldr.32	s16, [r1, #8]	@ MEM[(const float *)uvs_12(D) + 8B], MEM[(const float *)uvs_12(D) + 8B]
.LBE1143:
.LBE1166:
.LBE1170:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:432: 	tri_edge_uv_init(&st->e_top_bottom, &st->grad, p0, p1, p2, st->v_top, st->v_bottom);
	.loc 2 432 2 view .LVU1789
	add	r1, sp, #32	@,,
.LVL441:
	.loc 2 432 2 view .LVU1790
	str	r6, [sp, #8]	@ prephitmp_400,
.LVL442:
.LBB1171:
.LBB1167:
.LBB1144:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:90: 		float const invz = 1.0f / p1->z;
	.loc 2 90 15 view .LVU1791
	vdiv.f32	s7, s10, s12	@ invz, tmp327, p1_10(D)->z
.LBE1144:
.LBE1167:
.LBE1171:
.LBB1172:
.LBB1129:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:343: 			*r_top = 2; *r_mid = 0; *r_bottom = 1;
	.loc 2 343 38 view .LVU1792
	str	r6, [sp, #332]	@ prephitmp_400, MEM[(int *)&tri + 300B]
	.loc 2 376 2 is_stmt 1 view .LVU1793
.LVL443:
	.loc 2 376 2 is_stmt 0 view .LVU1794
.LBE1129:
.LBE1172:
	.loc 2 431 2 is_stmt 1 view .LVU1795
.LBB1173:
.LBI1135:
	.loc 2 73 13 view .LVU1796
.LBB1168:
	.loc 2 75 2 view .LVU1797
	.loc 2 79 2 view .LVU1798
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:75: 	const float det = ((p1->x - p2->x) * (p0->y - p2->y)) - ((p0->x - p2->x) * (p1->y - p2->y));
	.loc 2 75 66 is_stmt 0 view .LVU1799
	vsub.f32	s3, s3, s13	@ _53, p0_9(D)->x, _46
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:75: 	const float det = ((p1->x - p2->x) * (p0->y - p2->y)) - ((p0->x - p2->x) * (p1->y - p2->y));
	.loc 2 75 84 view .LVU1800
	vsub.f32	s12, s15, s14	@ _55, _44, _43
.LBB1145:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:85: 		t->invz[0] = invz;
	.loc 2 85 14 view .LVU1801
	vstr.32	s6, [sp, #32]	@ invz, tri.invz[0]
.LBE1145:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:75: 	const float det = ((p1->x - p2->x) * (p0->y - p2->y)) - ((p0->x - p2->x) * (p1->y - p2->y));
	.loc 2 75 28 view .LVU1802
	vsub.f32	s11, s11, s13	@ _47, p1_10(D)->x, _46
.LBB1146:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:86: 		t->uz[0] = uvs[0] * (uv_scale * invz);
	.loc 2 86 33 view .LVU1803
	vmov.f32	s13, #5.0e+0	@ tmp336,
.LBE1146:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:75: 	const float det = ((p1->x - p2->x) * (p0->y - p2->y)) - ((p0->x - p2->x) * (p1->y - p2->y));
	.loc 2 75 75 view .LVU1804
	vmul.f32	s12, s12, s3	@ _56, _55, _53
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:105: 	float y12 = p1->y - p2->y;
	.loc 2 105 8 view .LVU1805
	vsub.f32	s14, s14, s15	@ y12, _43, _44
.LBB1147:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:86: 		t->uz[0] = uvs[0] * (uv_scale * invz);
	.loc 2 86 33 view .LVU1806
	vmul.f32	s1, s6, s13	@ _63, invz, tmp336
.LBE1147:
.LBB1148:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:97: 		t->invz[2] = invz;
	.loc 2 97 14 view .LVU1807
	vstr.32	s8, [sp, #40]	@ invz, tri.invz[2]
.LBE1148:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:79: 	t->inv_det = 1.0f / det;
	.loc 2 79 20 view .LVU1808
	vfma.f32	s12, s11, s5	@ tmp324, _47, _50
.LBB1149:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:86: 		t->uz[0] = uvs[0] * (uv_scale * invz);
	.loc 2 86 21 view .LVU1809
	vmul.f32	s0, s1, s0	@ _64, _63, *uvs_12(D)
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:87: 		t->vz[0] = uvs[1] * (uv_scale * invz);
	.loc 2 87 21 view .LVU1810
	vmul.f32	s1, s1, s4	@ _66, _63, MEM[(const float *)uvs_12(D) + 4B]
.LBE1149:
.LBB1150:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:98: 		t->uz[2] = uvs[4] * (uv_scale * invz);
	.loc 2 98 33 view .LVU1811
	vmul.f32	s4, s8, s13	@ _77, invz, tmp336
.LBE1150:
.LBB1151:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:91: 		t->invz[1] = invz;
	.loc 2 91 14 view .LVU1812
	vstr.32	s7, [sp, #36]	@ invz, tri.invz[1]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:92: 		t->uz[1] = uvs[2] * (uv_scale * invz);
	.loc 2 92 33 view .LVU1813
	vmul.f32	s13, s7, s13	@ _70, invz, tmp336
.LBE1151:
.LBB1152:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:86: 		t->uz[0] = uvs[0] * (uv_scale * invz);
	.loc 2 86 12 view .LVU1814
	vstr.32	s0, [sp, #44]	@ _64, tri.uz[0]
.LBE1152:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:79: 	t->inv_det = 1.0f / det;
	.loc 2 79 20 view .LVU1815
	vdiv.f32	s15, s10, s12	@ _58, tmp327, tmp324
.LBB1153:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:87: 		t->vz[0] = uvs[1] * (uv_scale * invz);
	.loc 2 87 12 view .LVU1816
	vstr.32	s1, [sp, #56]	@ _66, tri.vz[0]
.LBE1153:
.LBB1154:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:98: 		t->uz[2] = uvs[4] * (uv_scale * invz);
	.loc 2 98 21 view .LVU1817
	vmul.f32	s2, s4, s2	@ _78, _77, MEM[(const float *)uvs_12(D) + 16B]
.LBE1154:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:107: 	t->invz_dx = invdx * (((t->invz[1] - t->invz[2]) * y02) - ((t->invz[0] - t->invz[2]) * y12));
	.loc 2 107 73 view .LVU1818
	vsub.f32	s12, s8, s6	@ _84, invz, invz
.LBB1155:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:99: 		t->vz[2] = uvs[5] * (uv_scale * invz);
	.loc 2 99 21 view .LVU1819
	vmul.f32	s4, s4, s17	@ _80, _77, MEM[(const float *)uvs_12(D) + 20B]
.LBE1155:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:107: 	t->invz_dx = invdx * (((t->invz[1] - t->invz[2]) * y02) - ((t->invz[0] - t->invz[2]) * y12));
	.loc 2 107 37 view .LVU1820
	vsub.f32	s10, s7, s8	@ _82, invz, invz
.LBB1156:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:98: 		t->uz[2] = uvs[4] * (uv_scale * invz);
	.loc 2 98 12 view .LVU1821
	vstr.32	s2, [sp, #52]	@ _78, tri.uz[2]
.LBE1156:
.LBB1157:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:93: 		t->vz[1] = uvs[3] * (uv_scale * invz);
	.loc 2 93 21 view .LVU1822
	vmul.f32	s17, s13, s9	@ _73, _70, MEM[(const float *)uvs_12(D) + 12B]
.LBE1157:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:113: 	t->vz_dx = invdx * (((t->vz[1] - t->vz[2]) * y02) - ((t->vz[0] - t->vz[2]) * y12));
	.loc 2 113 65 view .LVU1823
	vsub.f32	s20, s4, s1	@ _104, _80, _66
.LBB1158:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:99: 		t->vz[2] = uvs[5] * (uv_scale * invz);
	.loc 2 99 12 view .LVU1824
	vstr.32	s4, [sp, #64]	@ _80, tri.vz[2]
.LBE1158:
.LBB1159:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:92: 		t->uz[1] = uvs[2] * (uv_scale * invz);
	.loc 2 92 21 view .LVU1825
	vmul.f32	s16, s13, s16	@ _71, _70, MEM[(const float *)uvs_12(D) + 8B]
.LBE1159:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:107: 	t->invz_dx = invdx * (((t->invz[1] - t->invz[2]) * y02) - ((t->invz[0] - t->invz[2]) * y12));
	.loc 2 107 87 view .LVU1826
	vmul.f32	s9, s14, s12	@ _85, y12, _84
.LBB1160:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:93: 		t->vz[1] = uvs[3] * (uv_scale * invz);
	.loc 2 93 12 view .LVU1827
	vstr.32	s17, [sp, #60]	@ _73, tri.vz[1]
.LBE1160:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:110: 	t->uz_dx = invdx * (((t->uz[1] - t->uz[2]) * y02) - ((t->uz[0] - t->uz[2]) * y12));
	.loc 2 110 65 view .LVU1828
	vsub.f32	s13, s2, s0	@ _94, _78, _64
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:108: 	t->invz_dy = invdy * (((t->invz[1] - t->invz[2]) * x02) - ((t->invz[0] - t->invz[2]) * x12));
	.loc 2 108 87 view .LVU1829
	vmul.f32	s12, s11, s12	@ _89, _47, _84
.LBB1161:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:92: 		t->uz[1] = uvs[2] * (uv_scale * invz);
	.loc 2 92 12 view .LVU1830
	vstr.32	s16, [sp, #48]	@ _71, tri.uz[1]
.LBE1161:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:107: 	t->invz_dx = invdx * (((t->invz[1] - t->invz[2]) * y02) - ((t->invz[0] - t->invz[2]) * y12));
	.loc 2 107 21 view .LVU1831
	vfma.f32	s9, s5, s10	@ tmp376, _50, _82
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:110: 	t->uz_dx = invdx * (((t->uz[1] - t->uz[2]) * y02) - ((t->uz[0] - t->uz[2]) * y12));
	.loc 2 110 33 view .LVU1832
	vsub.f32	s19, s16, s2	@ _92, _71, _78
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:79: 	t->inv_det = 1.0f / det;
	.loc 2 79 13 view .LVU1833
	vstr.32	s15, [sp, #92]	@ _58, tri.inv_det
	.loc 2 80 2 is_stmt 1 view .LVU1834
.LVL444:
	.loc 2 81 2 view .LVU1835
.LBB1162:
	.loc 2 84 3 view .LVU1836
	.loc 2 85 3 view .LVU1837
.LBE1162:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:108: 	t->invz_dy = invdy * (((t->invz[1] - t->invz[2]) * x02) - ((t->invz[0] - t->invz[2]) * x12));
	.loc 2 108 21 is_stmt 0 view .LVU1838
	vfma.f32	s12, s3, s10	@ tmp382, _53, _82
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:113: 	t->vz_dx = invdx * (((t->vz[1] - t->vz[2]) * y02) - ((t->vz[0] - t->vz[2]) * y12));
	.loc 2 113 33 view .LVU1839
	vsub.f32	s18, s17, s4	@ _102, _73, _80
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:110: 	t->uz_dx = invdx * (((t->uz[1] - t->uz[2]) * y02) - ((t->uz[0] - t->uz[2]) * y12));
	.loc 2 110 77 view .LVU1840
	vmul.f32	s10, s14, s13	@ _95, y12, _94
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:111: 	t->uz_dy = invdy * (((t->uz[1] - t->uz[2]) * x02) - ((t->uz[0] - t->uz[2]) * x12));
	.loc 2 111 77 view .LVU1841
	vmul.f32	s13, s11, s13	@ _99, _47, _94
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:113: 	t->vz_dx = invdx * (((t->vz[1] - t->vz[2]) * y02) - ((t->vz[0] - t->vz[2]) * y12));
	.loc 2 113 77 view .LVU1842
	vmul.f32	s14, s14, s20	@ _105, y12, _104
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:114: 	t->vz_dy = invdy * (((t->vz[1] - t->vz[2]) * x02) - ((t->vz[0] - t->vz[2]) * x12));
	.loc 2 114 77 view .LVU1843
	vmul.f32	s11, s11, s20	@ _109, _47, _104
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:110: 	t->uz_dx = invdx * (((t->uz[1] - t->uz[2]) * y02) - ((t->uz[0] - t->uz[2]) * y12));
	.loc 2 110 19 view .LVU1844
	vfma.f32	s10, s5, s19	@ tmp388, _50, _92
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:111: 	t->uz_dy = invdy * (((t->uz[1] - t->uz[2]) * x02) - ((t->uz[0] - t->uz[2]) * x12));
	.loc 2 111 19 view .LVU1845
	vfma.f32	s13, s3, s19	@ tmp394, _53, _92
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:113: 	t->vz_dx = invdx * (((t->vz[1] - t->vz[2]) * y02) - ((t->vz[0] - t->vz[2]) * y12));
	.loc 2 113 19 view .LVU1846
	vfma.f32	s14, s5, s18	@ tmp400, _50, _102
.LBB1163:
	.loc 2 86 3 is_stmt 1 view .LVU1847
	.loc 2 87 3 view .LVU1848
.LBE1163:
.LBB1164:
	.loc 2 90 3 view .LVU1849
.LVL445:
	.loc 2 91 3 view .LVU1850
	.loc 2 92 3 view .LVU1851
	.loc 2 93 3 view .LVU1852
.LBE1164:
.LBB1165:
	.loc 2 96 3 view .LVU1853
	.loc 2 97 3 view .LVU1854
	.loc 2 98 3 view .LVU1855
	.loc 2 99 3 view .LVU1856
.LBE1165:
	.loc 2 102 2 view .LVU1857
	.loc 2 103 2 view .LVU1858
	.loc 2 104 2 view .LVU1859
	.loc 2 105 2 view .LVU1860
	.loc 2 107 2 view .LVU1861
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:114: 	t->vz_dy = invdy * (((t->vz[1] - t->vz[2]) * x02) - ((t->vz[0] - t->vz[2]) * x12));
	.loc 2 114 19 is_stmt 0 view .LVU1862
	vfma.f32	s11, s3, s18	@ tmp406, _53, _102
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:107: 	t->invz_dx = invdx * (((t->invz[1] - t->invz[2]) * y02) - ((t->invz[0] - t->invz[2]) * y12));
	.loc 2 107 21 view .LVU1863
	vmul.f32	s9, s9, s15	@ _87, tmp376, _58
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:108: 	t->invz_dy = invdy * (((t->invz[1] - t->invz[2]) * x02) - ((t->invz[0] - t->invz[2]) * x12));
	.loc 2 108 21 view .LVU1864
	vnmul.f32	s12, s15, s12	@ _91, _58, tmp382
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:110: 	t->uz_dx = invdx * (((t->uz[1] - t->uz[2]) * y02) - ((t->uz[0] - t->uz[2]) * y12));
	.loc 2 110 19 view .LVU1865
	vmul.f32	s10, s10, s15	@ _97, tmp388, _58
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:111: 	t->uz_dy = invdy * (((t->uz[1] - t->uz[2]) * x02) - ((t->uz[0] - t->uz[2]) * x12));
	.loc 2 111 19 view .LVU1866
	vnmul.f32	s13, s15, s13	@ _101, _58, tmp394
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:107: 	t->invz_dx = invdx * (((t->invz[1] - t->invz[2]) * y02) - ((t->invz[0] - t->invz[2]) * y12));
	.loc 2 107 13 view .LVU1867
	vstr.32	s9, [sp, #68]	@ _87, tri.invz_dx
	.loc 2 108 2 is_stmt 1 view .LVU1868
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:113: 	t->vz_dx = invdx * (((t->vz[1] - t->vz[2]) * y02) - ((t->vz[0] - t->vz[2]) * y12));
	.loc 2 113 19 is_stmt 0 view .LVU1869
	vmul.f32	s14, s14, s15	@ _107, tmp400, _58
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:108: 	t->invz_dy = invdy * (((t->invz[1] - t->invz[2]) * x02) - ((t->invz[0] - t->invz[2]) * x12));
	.loc 2 108 13 view .LVU1870
	vstr.32	s12, [sp, #72]	@ _91, tri.invz_dy
	.loc 2 110 2 is_stmt 1 view .LVU1871
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:114: 	t->vz_dy = invdy * (((t->vz[1] - t->vz[2]) * x02) - ((t->vz[0] - t->vz[2]) * x12));
	.loc 2 114 19 is_stmt 0 view .LVU1872
	vnmul.f32	s15, s15, s11	@ _111, _58, tmp406
.LVL446:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:110: 	t->uz_dx = invdx * (((t->uz[1] - t->uz[2]) * y02) - ((t->uz[0] - t->uz[2]) * y12));
	.loc 2 110 11 view .LVU1873
	vstr.32	s10, [sp, #76]	@ _97, tri.uz_dx
	.loc 2 111 2 is_stmt 1 view .LVU1874
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:111: 	t->uz_dy = invdy * (((t->uz[1] - t->uz[2]) * x02) - ((t->uz[0] - t->uz[2]) * x12));
	.loc 2 111 11 is_stmt 0 view .LVU1875
	vstr.32	s13, [sp, #80]	@ _101, tri.uz_dy
	.loc 2 113 2 is_stmt 1 view .LVU1876
	.loc 2 114 2 view .LVU1877
.LVL447:
	.loc 2 114 2 is_stmt 0 view .LVU1878
.LBE1168:
.LBE1173:
	.loc 2 432 2 is_stmt 1 view .LVU1879
.LBB1174:
.LBB1169:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:113: 	t->vz_dx = invdx * (((t->vz[1] - t->vz[2]) * y02) - ((t->vz[0] - t->vz[2]) * y12));
	.loc 2 113 11 is_stmt 0 view .LVU1880
	vstr.32	s14, [sp, #84]	@ _107, tri.vz_dx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:114: 	t->vz_dy = invdy * (((t->vz[1] - t->vz[2]) * x02) - ((t->vz[0] - t->vz[2]) * x12));
	.loc 2 114 11 view .LVU1881
	vstr.32	s15, [sp, #88]	@ _111, tri.vz_dy
.LBE1169:
.LBE1174:
.LBB1175:
.LBB1130:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:343: 			*r_top = 2; *r_mid = 0; *r_bottom = 1;
	.loc 2 343 23 view .LVU1882
	strd	fp, r5, [sp, #324]	@ prephitmp_399, prephitmp_401,,
.LBE1130:
.LBE1175:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:432: 	tri_edge_uv_init(&st->e_top_bottom, &st->grad, p0, p1, p2, st->v_top, st->v_bottom);
	.loc 2 432 2 view .LVU1883
	strd	r4, fp, [sp]	@ p2, prephitmp_399,
	strd	r2, r3, [sp, #24]	@ p0, p1,,
	bl	tri_edge_uv_init		@
.LVL448:
	.loc 2 433 2 is_stmt 1 view .LVU1884
	add	r0, sp, #168	@ tmp539,,
	str	r4, [sp]	@ p2,
	ldrd	r2, r3, [sp, #24]	@ p0, p1,,
	strd	fp, r5, [sp, #4]	@ prephitmp_399, prephitmp_401,,
	bl	tri_edge_uv_init		@
.LVL449:
	.loc 2 434 2 view .LVU1885
	add	r0, sp, #240	@ tmp540,,
	str	r4, [sp]	@ p2,
	ldrd	r2, r3, [sp, #24]	@ p0, p1,,
	strd	r5, r6, [sp, #4]	@ prephitmp_401, prephitmp_400,,
	bl	tri_edge_uv_init		@
.LVL450:
	.loc 2 436 2 view .LVU1886
	.loc 2 436 2 is_stmt 0 view .LVU1887
.LBE1179:
.LBE1183:
	.loc 1 239 2 is_stmt 1 view .LVU1888
.LBB1184:
.LBI1184:
	.loc 2 446 78 view .LVU1889
.LBB1185:
	.loc 2 448 2 view .LVU1890
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:448: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_top_mid;
	.loc 2 448 51 is_stmt 0 view .LVU1891
	ldr	r3, [sp, #20]	@ v_mid_cmp, %sfp
	cmp	r3, r7	@ v_mid_cmp, v_bot_cmp
	blt	.L278		@,
	.loc 2 450 2 is_stmt 1 view .LVU1892
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:450: 	return st->e_top_mid.height;
	.loc 2 450 22 is_stmt 0 view .LVU1893
	ldr	r6, [sp, #192]	@ _14, tri.e_top_mid.height
.LVL451:
	.loc 2 450 22 view .LVU1894
.LBE1185:
.LBE1184:
	.loc 1 240 2 is_stmt 1 view .LVU1895
	.loc 1 240 9 view .LVU1896
	.loc 1 240 9 is_stmt 0 view .LVU1897
	cmp	r6, #0	@ _14
	beq	.L261	@
.LBB1189:
.LBB1186:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:449: 	st->e_right = st->mid_is_left ? &st->e_top_mid : &st->e_top_bottom;
	.loc 2 449 49 discriminator 1 view .LVU1898
	add	r5, sp, #168	@ tmp547,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:448: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_top_mid;
	.loc 2 448 13 discriminator 4 view .LVU1899
	add	r4, sp, #96	@ tmp548,,
.LVL452:
.L260:
	.loc 2 448 13 discriminator 4 view .LVU1900
	mov	fp, r10	@ bitmap, bitmap
	mov	r10, r9	@ rowstride, rowstride
.LVL453:
	.loc 2 448 13 discriminator 4 view .LVU1901
	mov	r9, r6	@ ivtmp.217, ivtmp.217
.LVL454:
	.loc 2 448 13 discriminator 4 view .LVU1902
	str	r7, [sp, #24]	@ v_bot_cmp, %sfp
.LVL455:
.L253:
	.loc 2 448 13 discriminator 4 view .LVU1903
.LBE1186:
.LBE1189:
	.loc 1 241 3 is_stmt 1 view .LVU1904
	mov	r3, r4	@, cstore_236
	add	r2, sp, #32	@,,
	mov	r1, r10	@, rowstride
	mov	r0, fp	@, bitmap
	str	r5, [sp]	@ iftmp.23_241,
	bl	draw_scanline_checker		@
.LVL456:
	.loc 1 242 3 view .LVU1905
.LBB1190:
.LBI1190:
	.loc 2 472 79 view .LVU1906
	.loc 2 474 2 view .LVU1907
.LBB1191:
.LBI1191:
	.loc 2 194 20 view .LVU1908
.LBB1192:
	.loc 2 196 2 view .LVU1909
	.loc 2 201 3 view .LVU1910
	.loc 2 201 3 is_stmt 0 view .LVU1911
.LBE1192:
.LBE1191:
	.loc 2 474 32 is_stmt 1 discriminator 1 view .LVU1912
.LBB1194:
.LBI1194:
	.loc 2 194 20 view .LVU1913
.LBB1195:
	.loc 2 196 2 view .LVU1914
.LBE1195:
.LBE1194:
.LBB1198:
.LBB1193:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 is_stmt 0 view .LVU1915
	vldr.32	s14, [r4, #40]	@ cstore_236->uz, cstore_236->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU1916
	vldr.32	s15, [r4, #52]	@ cstore_236->vz, cstore_236->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU1917
	vldr.32	s13, [r4, #28]	@ cstore_236->invz, cstore_236->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU1918
	vldr.32	s10, [r4, #44]	@ cstore_236->uz_step, cstore_236->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU1919
	vldr.32	s11, [r4, #56]	@ cstore_236->vz_step, cstore_236->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU1920
	vldr.32	s12, [r4, #32]	@ cstore_236->invz_step, cstore_236->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU1921
	vadd.f32	s14, s14, s10	@ _155, cstore_236->uz, cstore_236->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU1922
	ldr	r1, [r4, #24]	@ cstore_236->height, cstore_236->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU1923
	vadd.f32	s15, s15, s11	@ _158, cstore_236->vz, cstore_236->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU1924
	ldr	r7, [r4]	@ tmp549, cstore_236->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU1925
	vadd.f32	s13, s13, s12	@ _161, cstore_236->invz, cstore_236->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU1926
	subs	r1, r1, #1	@ _152, cstore_236->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU1927
	vstr.32	s14, [r4, #40]	@ _155, cstore_236->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU1928
	vstr.32	s15, [r4, #52]	@ _158, cstore_236->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU1929
	vstr.32	s13, [r4, #28]	@ _161, cstore_236->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU1930
	str	r1, [r4, #24]	@ _152, cstore_236->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU1931
	ldrd	r6, r0, [r4, #16]	@ cstore_236->error_term, cstore_236->Y, cstore_236,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:199: 	t->error_term += t->numerator;
	.loc 2 199 16 view .LVU1932
	ldrd	r2, r3, [r4, #4]	@ cstore_236->x_step, cstore_236->numerator, cstore_236,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU1933
	adds	r0, r0, #1	@ _150, cstore_236->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:199: 	t->error_term += t->numerator;
	.loc 2 199 16 view .LVU1934
	add	r3, r3, r6	@ _164, cstore_236->error_term
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 24 view .LVU1935
	ldr	r6, [r4, #12]	@ _165, cstore_236->denominator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU1936
	add	r2, r2, r7	@ _148, tmp549
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 5 view .LVU1937
	cmp	r3, r6	@ _164, _165
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU1938
	str	r2, [r4]	@ _148, cstore_236->X
	.loc 2 196 21 is_stmt 1 view .LVU1939
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:201: 		t->X++;
	.loc 2 201 7 is_stmt 0 view .LVU1940
	add	r2, r2, #1	@ _166, _148,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU1941
	strd	r3, r0, [r4, #16]	@ _164, _150, cstore_236,
	.loc 2 196 29 is_stmt 1 view .LVU1942
	.loc 2 197 2 view .LVU1943
	.loc 2 197 23 view .LVU1944
	.loc 2 197 44 view .LVU1945
	.loc 2 199 2 view .LVU1946
	.loc 2 200 2 view .LVU1947
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:202: 		t->error_term -= t->denominator;
	.loc 2 202 17 is_stmt 0 view .LVU1948
	sub	r3, r3, r6	@ _167, _164, _165
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 5 view .LVU1949
	blt	.L251		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 view .LVU1950
	vldr.32	s10, [r4, #36]	@ cstore_236->invz_step_extra, cstore_236->invz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 view .LVU1951
	vldr.32	s11, [r4, #48]	@ cstore_236->uz_step_extra, cstore_236->uz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 view .LVU1952
	vldr.32	s12, [r4, #60]	@ cstore_236->vz_step_extra, cstore_236->vz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 view .LVU1953
	vadd.f32	s13, s10, s13	@ _169, cstore_236->invz_step_extra, _161
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 view .LVU1954
	vadd.f32	s14, s11, s14	@ _171, cstore_236->uz_step_extra, _155
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:201: 		t->X++;
	.loc 2 201 7 view .LVU1955
	str	r2, [r4]	@ _166, cstore_236->X
	.loc 2 202 3 is_stmt 1 view .LVU1956
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 is_stmt 0 view .LVU1957
	vadd.f32	s15, s12, s15	@ _173, cstore_236->vz_step_extra, _158
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:202: 		t->error_term -= t->denominator;
	.loc 2 202 17 view .LVU1958
	str	r3, [r4, #16]	@ _167, cstore_236->error_term
	.loc 2 203 3 is_stmt 1 view .LVU1959
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 is_stmt 0 view .LVU1960
	vstr.32	s13, [r4, #28]	@ _169, cstore_236->invz
	.loc 2 204 3 is_stmt 1 view .LVU1961
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 is_stmt 0 view .LVU1962
	vstr.32	s14, [r4, #40]	@ _171, cstore_236->uz
	.loc 2 204 30 is_stmt 1 view .LVU1963
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 is_stmt 0 view .LVU1964
	vstr.32	s15, [r4, #52]	@ _173, cstore_236->vz
.L251:
.LBE1193:
.LBE1198:
.LBB1199:
.LBB1196:
	.loc 2 201 3 is_stmt 1 view .LVU1965
.LVL457:
	.loc 2 201 3 is_stmt 0 view .LVU1966
.LBE1196:
.LBE1199:
.LBE1190:
	.loc 1 240 9 is_stmt 1 view .LVU1967
.LBB1201:
.LBB1200:
.LBB1197:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 is_stmt 0 view .LVU1968
	vldr.32	s14, [r5, #40]	@ iftmp.23_241->uz, iftmp.23_241->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU1969
	vldr.32	s15, [r5, #52]	@ iftmp.23_241->vz, iftmp.23_241->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU1970
	vldr.32	s13, [r5, #28]	@ iftmp.23_241->invz, iftmp.23_241->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU1971
	vldr.32	s10, [r5, #44]	@ iftmp.23_241->uz_step, iftmp.23_241->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU1972
	vldr.32	s11, [r5, #56]	@ iftmp.23_241->vz_step, iftmp.23_241->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU1973
	vldr.32	s12, [r5, #32]	@ iftmp.23_241->invz_step, iftmp.23_241->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU1974
	vadd.f32	s14, s14, s10	@ _127, iftmp.23_241->uz, iftmp.23_241->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU1975
	ldr	r1, [r5, #24]	@ iftmp.23_241->height, iftmp.23_241->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU1976
	vadd.f32	s15, s15, s11	@ _130, iftmp.23_241->vz, iftmp.23_241->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU1977
	ldr	r7, [r5]	@ tmp550, iftmp.23_241->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU1978
	vadd.f32	s13, s13, s12	@ _133, iftmp.23_241->invz, iftmp.23_241->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU1979
	subs	r1, r1, #1	@ _124, iftmp.23_241->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU1980
	vstr.32	s14, [r5, #40]	@ _127, iftmp.23_241->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU1981
	vstr.32	s15, [r5, #52]	@ _130, iftmp.23_241->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU1982
	vstr.32	s13, [r5, #28]	@ _133, iftmp.23_241->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU1983
	str	r1, [r5, #24]	@ _124, iftmp.23_241->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU1984
	ldrd	r6, r0, [r5, #16]	@ iftmp.23_241->error_term, iftmp.23_241->Y, iftmp.23_241,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:199: 	t->error_term += t->numerator;
	.loc 2 199 16 view .LVU1985
	ldrd	r2, r3, [r5, #4]	@ iftmp.23_241->x_step, iftmp.23_241->numerator, iftmp.23_241,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU1986
	adds	r0, r0, #1	@ _122, iftmp.23_241->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:199: 	t->error_term += t->numerator;
	.loc 2 199 16 view .LVU1987
	add	r3, r3, r6	@ _136, iftmp.23_241->error_term
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 24 view .LVU1988
	ldr	r6, [r5, #12]	@ _137, iftmp.23_241->denominator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU1989
	add	r2, r2, r7	@ _120, tmp550
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 5 view .LVU1990
	cmp	r3, r6	@ _136, _137
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU1991
	str	r2, [r5]	@ _120, iftmp.23_241->X
	.loc 2 196 21 is_stmt 1 view .LVU1992
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:201: 		t->X++;
	.loc 2 201 7 is_stmt 0 view .LVU1993
	add	r2, r2, #1	@ _138, _120,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU1994
	strd	r3, r0, [r5, #16]	@ _136, _122, iftmp.23_241,
	.loc 2 196 29 is_stmt 1 view .LVU1995
	.loc 2 197 2 view .LVU1996
	.loc 2 197 23 view .LVU1997
	.loc 2 197 44 view .LVU1998
	.loc 2 199 2 view .LVU1999
	.loc 2 200 2 view .LVU2000
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:202: 		t->error_term -= t->denominator;
	.loc 2 202 17 is_stmt 0 view .LVU2001
	sub	r3, r3, r6	@ _139, _136, _137
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 5 view .LVU2002
	blt	.L252		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 view .LVU2003
	vldr.32	s10, [r5, #36]	@ iftmp.23_241->invz_step_extra, iftmp.23_241->invz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 view .LVU2004
	vldr.32	s11, [r5, #48]	@ iftmp.23_241->uz_step_extra, iftmp.23_241->uz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 view .LVU2005
	vldr.32	s12, [r5, #60]	@ iftmp.23_241->vz_step_extra, iftmp.23_241->vz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 view .LVU2006
	vadd.f32	s13, s10, s13	@ _141, iftmp.23_241->invz_step_extra, _133
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 view .LVU2007
	vadd.f32	s14, s11, s14	@ _143, iftmp.23_241->uz_step_extra, _127
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:201: 		t->X++;
	.loc 2 201 7 view .LVU2008
	str	r2, [r5]	@ _138, iftmp.23_241->X
	.loc 2 202 3 is_stmt 1 view .LVU2009
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 is_stmt 0 view .LVU2010
	vadd.f32	s15, s12, s15	@ _145, iftmp.23_241->vz_step_extra, _130
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:202: 		t->error_term -= t->denominator;
	.loc 2 202 17 view .LVU2011
	str	r3, [r5, #16]	@ _139, iftmp.23_241->error_term
	.loc 2 203 3 is_stmt 1 view .LVU2012
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 is_stmt 0 view .LVU2013
	vstr.32	s13, [r5, #28]	@ _141, iftmp.23_241->invz
	.loc 2 204 3 is_stmt 1 view .LVU2014
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 is_stmt 0 view .LVU2015
	vstr.32	s14, [r5, #40]	@ _143, iftmp.23_241->uz
	.loc 2 204 30 is_stmt 1 view .LVU2016
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 is_stmt 0 view .LVU2017
	vstr.32	s15, [r5, #52]	@ _145, iftmp.23_241->vz
.L252:
.LBE1197:
.LBE1200:
.LBE1201:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:240: 	while (height--) {
	.loc 1 240 9 view .LVU2018
	subs	r9, r9, #1	@ ivtmp.217, ivtmp.217,
.LVL458:
	.loc 1 240 9 view .LVU2019
	bne	.L253		@,
	ldr	r7, [sp, #24]	@ v_bot_cmp, %sfp
	mov	r9, r10	@ rowstride, rowstride
.LVL459:
.LBB1202:
.LBB1203:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:462: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 462 51 view .LVU2020
	ldr	r3, [sp, #20]	@ v_mid_cmp, %sfp
.LBE1203:
.LBE1202:
	mov	r10, fp	@ bitmap, bitmap
.LVL460:
	.loc 1 244 2 is_stmt 1 view .LVU2021
.LBB1206:
.LBI1202:
	.loc 2 460 78 view .LVU2022
.LBB1204:
	.loc 2 462 2 view .LVU2023
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:462: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 462 51 is_stmt 0 view .LVU2024
	cmp	r3, r7	@ v_mid_cmp, v_bot_cmp
	blt	.L249		@,
.LVL461:
.L261:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:462: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 462 13 discriminator 4 view .LVU2025
	add	r5, sp, #96	@ tmp543,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:463: 	st->e_right = st->mid_is_left ? &st->e_mid_bottom : &st->e_top_bottom;
	.loc 2 463 52 discriminator 1 view .LVU2026
	add	r4, sp, #240	@ tmp544,,
.L250:
	.loc 2 464 2 is_stmt 1 view .LVU2027
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:464: 	return st->e_mid_bottom.height;
	.loc 2 464 25 is_stmt 0 view .LVU2028
	ldr	r7, [sp, #264]	@ _31, tri.e_mid_bottom.height
.LBE1204:
.LBE1206:
	.loc 1 245 2 is_stmt 1 view .LVU2029
	.loc 1 245 9 view .LVU2030
.LVL462:
	.loc 1 245 9 is_stmt 0 view .LVU2031
	cmp	r7, #0	@ _31
	beq	.L243	@
	mov	fp, r10	@ bitmap, bitmap
	mov	r10, r9	@ rowstride, rowstride
.LVL463:
	.loc 1 245 9 view .LVU2032
	mov	r9, r7	@ ivtmp.212, ivtmp.212
.LVL464:
.L258:
	.loc 1 246 3 is_stmt 1 view .LVU2033
	mov	r3, r5	@, cstore_54
	add	r2, sp, #32	@,,
	mov	r1, r10	@, rowstride
	mov	r0, fp	@, bitmap
	str	r4, [sp]	@ iftmp.25_30,
	bl	draw_scanline_checker		@
.LVL465:
	.loc 1 247 3 view .LVU2034
.LBB1207:
.LBI1207:
	.loc 2 472 79 view .LVU2035
	.loc 2 474 2 view .LVU2036
.LBB1208:
.LBI1208:
	.loc 2 194 20 view .LVU2037
.LBB1209:
	.loc 2 196 2 view .LVU2038
	.loc 2 201 3 view .LVU2039
	.loc 2 201 3 is_stmt 0 view .LVU2040
.LBE1209:
.LBE1208:
	.loc 2 474 32 is_stmt 1 discriminator 1 view .LVU2041
.LBB1211:
.LBI1211:
	.loc 2 194 20 view .LVU2042
.LBB1212:
	.loc 2 196 2 view .LVU2043
.LBE1212:
.LBE1211:
.LBB1215:
.LBB1210:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 is_stmt 0 view .LVU2044
	vldr.32	s14, [r5, #40]	@ cstore_54->uz, cstore_54->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU2045
	vldr.32	s15, [r5, #52]	@ cstore_54->vz, cstore_54->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU2046
	vldr.32	s13, [r5, #28]	@ cstore_54->invz, cstore_54->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU2047
	vldr.32	s10, [r5, #44]	@ cstore_54->uz_step, cstore_54->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU2048
	vldr.32	s11, [r5, #56]	@ cstore_54->vz_step, cstore_54->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU2049
	vldr.32	s12, [r5, #32]	@ cstore_54->invz_step, cstore_54->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU2050
	vadd.f32	s14, s14, s10	@ _211, cstore_54->uz, cstore_54->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU2051
	ldr	r7, [r5]	@ cstore_54->X, cstore_54->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU2052
	vadd.f32	s15, s15, s11	@ _214, cstore_54->vz, cstore_54->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU2053
	ldr	r1, [r5, #24]	@ cstore_54->height, cstore_54->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU2054
	vadd.f32	s13, s13, s12	@ _217, cstore_54->invz, cstore_54->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU2055
	vstr.32	s14, [r5, #40]	@ _211, cstore_54->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU2056
	subs	r1, r1, #1	@ _208, cstore_54->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU2057
	vstr.32	s15, [r5, #52]	@ _214, cstore_54->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU2058
	vstr.32	s13, [r5, #28]	@ _217, cstore_54->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU2059
	str	r1, [r5, #24]	@ _208, cstore_54->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU2060
	ldrd	r3, r0, [r5, #16]	@ cstore_54->error_term, cstore_54->Y, cstore_54,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:199: 	t->error_term += t->numerator;
	.loc 2 199 16 view .LVU2061
	ldrd	r2, r6, [r5, #4]	@ cstore_54->x_step, cstore_54->numerator, cstore_54,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU2062
	adds	r0, r0, #1	@ _206, cstore_54->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:199: 	t->error_term += t->numerator;
	.loc 2 199 16 view .LVU2063
	add	r3, r3, r6	@ _220, cstore_54->numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 24 view .LVU2064
	ldr	r6, [r5, #12]	@ _221, cstore_54->denominator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU2065
	add	r2, r2, r7	@ _204, cstore_54->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 5 view .LVU2066
	cmp	r3, r6	@ _220, _221
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU2067
	str	r2, [r5]	@ _204, cstore_54->X
	.loc 2 196 21 is_stmt 1 view .LVU2068
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:201: 		t->X++;
	.loc 2 201 7 is_stmt 0 view .LVU2069
	add	r2, r2, #1	@ _222, _204,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU2070
	strd	r3, r0, [r5, #16]	@ _220, _206, cstore_54,
	.loc 2 196 29 is_stmt 1 view .LVU2071
	.loc 2 197 2 view .LVU2072
	.loc 2 197 23 view .LVU2073
	.loc 2 197 44 view .LVU2074
	.loc 2 199 2 view .LVU2075
	.loc 2 200 2 view .LVU2076
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:202: 		t->error_term -= t->denominator;
	.loc 2 202 17 is_stmt 0 view .LVU2077
	sub	r3, r3, r6	@ _223, _220, _221
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 5 view .LVU2078
	blt	.L256		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 view .LVU2079
	vldr.32	s10, [r5, #36]	@ cstore_54->invz_step_extra, cstore_54->invz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 view .LVU2080
	vldr.32	s11, [r5, #48]	@ cstore_54->uz_step_extra, cstore_54->uz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 view .LVU2081
	vldr.32	s12, [r5, #60]	@ cstore_54->vz_step_extra, cstore_54->vz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 view .LVU2082
	vadd.f32	s13, s10, s13	@ _225, cstore_54->invz_step_extra, _217
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 view .LVU2083
	vadd.f32	s14, s11, s14	@ _227, cstore_54->uz_step_extra, _211
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:201: 		t->X++;
	.loc 2 201 7 view .LVU2084
	str	r2, [r5]	@ _222, cstore_54->X
	.loc 2 202 3 is_stmt 1 view .LVU2085
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 is_stmt 0 view .LVU2086
	vadd.f32	s15, s12, s15	@ _229, cstore_54->vz_step_extra, _214
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:202: 		t->error_term -= t->denominator;
	.loc 2 202 17 view .LVU2087
	str	r3, [r5, #16]	@ _223, cstore_54->error_term
	.loc 2 203 3 is_stmt 1 view .LVU2088
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 is_stmt 0 view .LVU2089
	vstr.32	s13, [r5, #28]	@ _225, cstore_54->invz
	.loc 2 204 3 is_stmt 1 view .LVU2090
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 is_stmt 0 view .LVU2091
	vstr.32	s14, [r5, #40]	@ _227, cstore_54->uz
	.loc 2 204 30 is_stmt 1 view .LVU2092
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 is_stmt 0 view .LVU2093
	vstr.32	s15, [r5, #52]	@ _229, cstore_54->vz
.L256:
.LBE1210:
.LBE1215:
.LBB1216:
.LBB1213:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU2094
	vldr.32	s14, [r4, #40]	@ iftmp.25_30->uz, iftmp.25_30->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU2095
	vldr.32	s15, [r4, #52]	@ iftmp.25_30->vz, iftmp.25_30->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU2096
	vldr.32	s13, [r4, #28]	@ iftmp.25_30->invz, iftmp.25_30->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU2097
	vldr.32	s10, [r4, #44]	@ iftmp.25_30->uz_step, iftmp.25_30->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU2098
	vldr.32	s11, [r4, #56]	@ iftmp.25_30->vz_step, iftmp.25_30->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU2099
	vldr.32	s12, [r4, #32]	@ iftmp.25_30->invz_step, iftmp.25_30->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU2100
	vadd.f32	s14, s14, s10	@ _183, iftmp.25_30->uz, iftmp.25_30->uz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU2101
	ldr	r7, [r4]	@ iftmp.25_30->X, iftmp.25_30->X
	.loc 2 201 3 is_stmt 1 view .LVU2102
.LVL466:
	.loc 2 201 3 is_stmt 0 view .LVU2103
.LBE1213:
.LBE1216:
.LBE1207:
	.loc 1 245 9 is_stmt 1 view .LVU2104
.LBB1218:
.LBB1217:
.LBB1214:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 is_stmt 0 view .LVU2105
	vadd.f32	s15, s15, s11	@ _186, iftmp.25_30->vz, iftmp.25_30->vz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU2106
	ldr	r1, [r4, #24]	@ iftmp.25_30->height, iftmp.25_30->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU2107
	vadd.f32	s13, s13, s12	@ _189, iftmp.25_30->invz, iftmp.25_30->invz_step
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 8 view .LVU2108
	vstr.32	s14, [r4, #40]	@ _183, iftmp.25_30->uz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU2109
	subs	r1, r1, #1	@ _180, iftmp.25_30->height,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 29 view .LVU2110
	vstr.32	s15, [r4, #52]	@ _186, iftmp.25_30->vz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:197: 	t->uz += t->uz_step; t->vz += t->vz_step; t->invz += t->invz_step;
	.loc 2 197 52 view .LVU2111
	vstr.32	s13, [r4, #28]	@ _189, iftmp.25_30->invz
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 38 view .LVU2112
	str	r1, [r4, #24]	@ _180, iftmp.25_30->height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU2113
	ldrd	r3, r0, [r4, #16]	@ iftmp.25_30->error_term, iftmp.25_30->Y, iftmp.25_30,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:199: 	t->error_term += t->numerator;
	.loc 2 199 16 view .LVU2114
	ldrd	r2, r6, [r4, #4]	@ iftmp.25_30->x_step, iftmp.25_30->numerator, iftmp.25_30,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU2115
	adds	r0, r0, #1	@ _178, iftmp.25_30->Y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:199: 	t->error_term += t->numerator;
	.loc 2 199 16 view .LVU2116
	add	r3, r3, r6	@ _192, iftmp.25_30->numerator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 24 view .LVU2117
	ldr	r6, [r4, #12]	@ _193, iftmp.25_30->denominator
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU2118
	add	r2, r2, r7	@ _176, iftmp.25_30->X
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 5 view .LVU2119
	cmp	r3, r6	@ _192, _193
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 7 view .LVU2120
	str	r2, [r4]	@ _176, iftmp.25_30->X
	.loc 2 196 21 is_stmt 1 view .LVU2121
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:201: 		t->X++;
	.loc 2 201 7 is_stmt 0 view .LVU2122
	add	r2, r2, #1	@ _194, _176,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:196: 	t->X += t->x_step; t->Y++; t->height--;
	.loc 2 196 25 view .LVU2123
	strd	r3, r0, [r4, #16]	@ _192, _178, iftmp.25_30,
	.loc 2 196 29 is_stmt 1 view .LVU2124
	.loc 2 197 2 view .LVU2125
	.loc 2 197 23 view .LVU2126
	.loc 2 197 44 view .LVU2127
	.loc 2 199 2 view .LVU2128
	.loc 2 200 2 view .LVU2129
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:202: 		t->error_term -= t->denominator;
	.loc 2 202 17 is_stmt 0 view .LVU2130
	sub	r3, r3, r6	@ _195, _192, _193
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:200: 	if (t->error_term >= t->denominator) {
	.loc 2 200 5 view .LVU2131
	blt	.L257		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 view .LVU2132
	vldr.32	s10, [r4, #36]	@ iftmp.25_30->invz_step_extra, iftmp.25_30->invz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 view .LVU2133
	vldr.32	s11, [r4, #48]	@ iftmp.25_30->uz_step_extra, iftmp.25_30->uz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 view .LVU2134
	vldr.32	s12, [r4, #60]	@ iftmp.25_30->vz_step_extra, iftmp.25_30->vz_step_extra
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 view .LVU2135
	vadd.f32	s13, s10, s13	@ _197, iftmp.25_30->invz_step_extra, _189
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 view .LVU2136
	vadd.f32	s14, s11, s14	@ _199, iftmp.25_30->uz_step_extra, _183
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:201: 		t->X++;
	.loc 2 201 7 view .LVU2137
	str	r2, [r4]	@ _194, iftmp.25_30->X
	.loc 2 202 3 is_stmt 1 view .LVU2138
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 is_stmt 0 view .LVU2139
	vadd.f32	s15, s12, s15	@ _201, iftmp.25_30->vz_step_extra, _186
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:202: 		t->error_term -= t->denominator;
	.loc 2 202 17 view .LVU2140
	str	r3, [r4, #16]	@ _195, iftmp.25_30->error_term
	.loc 2 203 3 is_stmt 1 view .LVU2141
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:203: 		t->invz += t->invz_step_extra;
	.loc 2 203 11 is_stmt 0 view .LVU2142
	vstr.32	s13, [r4, #28]	@ _197, iftmp.25_30->invz
	.loc 2 204 3 is_stmt 1 view .LVU2143
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 9 is_stmt 0 view .LVU2144
	vstr.32	s14, [r4, #40]	@ _199, iftmp.25_30->uz
	.loc 2 204 30 is_stmt 1 view .LVU2145
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:204: 		t->uz += t->uz_step_extra; t->vz += t->vz_step_extra;
	.loc 2 204 36 is_stmt 0 view .LVU2146
	vstr.32	s15, [r4, #52]	@ _201, iftmp.25_30->vz
.L257:
.LBE1214:
.LBE1217:
.LBE1218:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:245: 	while (height--) {
	.loc 1 245 9 view .LVU2147
	subs	r9, r9, #1	@ ivtmp.212, ivtmp.212,
.LVL467:
	.loc 1 245 9 view .LVU2148
	bne	.L258		@,
.LVL468:
.L243:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\draw_style.c:249: }
	.loc 1 249 1 view .LVU2149
	add	sp, sp, #340	@,,
.LCFI19:
	.cfi_remember_state
	.cfi_def_cfa_offset 60
	@ sp needed	@
	vldm	sp!, {d8-d10}	@,
.LCFI20:
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL469:
.L277:
.LCFI21:
	.cfi_restore_state
.LBB1219:
.LBB1180:
.LBB1176:
.LBB1131:
	.loc 2 364 4 is_stmt 1 view .LVU2150
	.loc 2 365 4 view .LVU2151
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:365: 			if (Y0 < Y2) {
	.loc 2 365 7 is_stmt 0 view .LVU2152
	vcmp.f32	s5, s15	@ _42, _44
	vmrs	APSR_nzcv, FPSCR
	bpl	.L279		@,
	movs	r6, #2	@ prephitmp_400,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:367: 				v_mid_cmp = 3; v_bot_cmp = 2;
	.loc 2 367 15 view .LVU2153
	movs	r0, #3	@ v_mid_cmp,
.LVL470:
	.loc 2 367 15 view .LVU2154
	movs	r5, #0	@ prephitmp_401,
	mov	fp, #1	@ prephitmp_399,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:367: 				v_mid_cmp = 3; v_bot_cmp = 2;
	.loc 2 367 30 view .LVU2155
	mov	r7, r6	@ v_bot_cmp, prephitmp_400
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:367: 				v_mid_cmp = 3; v_bot_cmp = 2;
	.loc 2 367 15 view .LVU2156
	str	r0, [sp, #20]	@ v_mid_cmp, %sfp
	b	.L246		@
.LVL471:
.L276:
	.loc 2 347 4 is_stmt 1 view .LVU2157
	.loc 2 348 4 view .LVU2158
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:348: 			if (Y1 < Y2) {
	.loc 2 348 7 is_stmt 0 view .LVU2159
	vcmp.f32	s14, s15	@ _43, _44
	vmrs	APSR_nzcv, FPSCR
	bpl	.L280		@,
	movs	r5, #1	@ prephitmp_401,
	movs	r6, #2	@ prephitmp_400,
	mov	fp, #0	@ prephitmp_399,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:350: 				v_mid_cmp = 1; v_bot_cmp = 2;
	.loc 2 350 30 view .LVU2160
	mov	r7, r6	@ v_bot_cmp, prephitmp_400
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:350: 				v_mid_cmp = 1; v_bot_cmp = 2;
	.loc 2 350 15 view .LVU2161
	str	r5, [sp, #20]	@ prephitmp_401, %sfp
	b	.L246		@
.LVL472:
.L278:
	.loc 2 350 15 view .LVU2162
.LBE1131:
.LBE1176:
.LBE1180:
.LBE1219:
.LBB1220:
.LBB1187:
	.loc 2 450 2 is_stmt 1 view .LVU2163
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:450: 	return st->e_top_mid.height;
	.loc 2 450 22 is_stmt 0 view .LVU2164
	ldr	r6, [sp, #192]	@ _14, tri.e_top_mid.height
.LVL473:
	.loc 2 450 22 view .LVU2165
.LBE1187:
.LBE1220:
	.loc 1 240 2 is_stmt 1 view .LVU2166
	.loc 1 240 9 view .LVU2167
	.loc 1 240 9 is_stmt 0 view .LVU2168
	cbz	r6, .L249	@ _14,
.LBB1221:
.LBB1188:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:448: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_top_mid;
	.loc 2 448 13 discriminator 4 view .LVU2169
	add	r4, sp, #168	@ tmp545,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:449: 	st->e_right = st->mid_is_left ? &st->e_top_mid : &st->e_top_bottom;
	.loc 2 449 49 discriminator 2 view .LVU2170
	add	r5, sp, #96	@ tmp546,,
	b	.L260		@
.LVL474:
.L280:
	.loc 2 449 49 discriminator 2 view .LVU2171
.LBE1188:
.LBE1221:
.LBB1222:
.LBB1181:
.LBB1177:
.LBB1132:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:348: 			if (Y1 < Y2) {
	.loc 2 348 7 view .LVU2172
	movs	r5, #2	@ prephitmp_401,
	movs	r6, #1	@ prephitmp_400,
	mov	fp, #0	@ prephitmp_399,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:354: 				v_mid_cmp = 2; v_bot_cmp = 1;
	.loc 2 354 30 view .LVU2173
	mov	r7, r6	@ v_bot_cmp, prephitmp_400
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:354: 				v_mid_cmp = 2; v_bot_cmp = 1;
	.loc 2 354 15 view .LVU2174
	str	r5, [sp, #20]	@ prephitmp_401, %sfp
	b	.L246		@
.L279:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:365: 			if (Y0 < Y2) {
	.loc 2 365 7 view .LVU2175
	movs	r5, #2	@ prephitmp_401,
	movs	r6, #0	@ prephitmp_400,
	mov	fp, #1	@ prephitmp_399,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:371: 				v_mid_cmp = 2; v_bot_cmp = 3;
	.loc 2 371 30 view .LVU2176
	movs	r7, #3	@ v_bot_cmp,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:371: 				v_mid_cmp = 2; v_bot_cmp = 3;
	.loc 2 371 15 view .LVU2177
	str	r5, [sp, #20]	@ prephitmp_401, %sfp
	b	.L246		@
.LVL475:
.L249:
	.loc 2 371 15 view .LVU2178
.LBE1132:
.LBE1177:
.LBE1181:
.LBE1222:
.LBB1223:
.LBB1205:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:462: 	st->e_left = st->mid_is_left ? &st->e_top_bottom : &st->e_mid_bottom;
	.loc 2 462 13 discriminator 4 view .LVU2179
	add	r5, sp, #240	@ tmp551,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\rasterizer_scanline.h:463: 	st->e_right = st->mid_is_left ? &st->e_mid_bottom : &st->e_top_bottom;
	.loc 2 463 52 discriminator 2 view .LVU2180
	add	r4, sp, #96	@ tmp552,,
	b	.L250		@
.LBE1205:
.LBE1223:
	.cfi_endproc
.LFE75:
	.size	draw_tri_checker, .-draw_tri_checker
	.text
.Letext0:
	.file 4 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util/pixel_ops.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3337
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xc
	.4byte	.LASF94
	.4byte	.LASF95
	.4byte	.Ldebug_ranges0+0xe08
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x58
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x79
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x9f
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x6d
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x80
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0xc
	.byte	0x3
	.2byte	0x101
	.byte	0x10
	.4byte	0x11b
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x3
	.2byte	0x103
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x3
	.2byte	0x104
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"z\000"
	.byte	0x3
	.2byte	0x105
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x106
	.byte	0x3
	.4byte	0xe2
	.uleb128 0x5
	.4byte	0x11b
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x2
	.byte	0x15
	.byte	0x11
	.4byte	0xb0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x2
	.byte	0x16
	.byte	0x11
	.4byte	0xb0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x40
	.byte	0x2
	.byte	0x3f
	.byte	0x10
	.4byte	0x1e7
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x2
	.byte	0x40
	.byte	0x8
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.ascii	"uz\000"
	.byte	0x2
	.byte	0x41
	.byte	0x8
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.ascii	"vz\000"
	.byte	0x2
	.byte	0x42
	.byte	0x8
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.byte	0x43
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x2
	.byte	0x43
	.byte	0x11
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.byte	0x44
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x2
	.byte	0x44
	.byte	0xf
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x2
	.byte	0x45
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x2
	.byte	0x45
	.byte	0xf
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x2
	.byte	0x46
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xc
	.4byte	0x29
	.4byte	0x1f7
	.uleb128 0xd
	.4byte	0x37
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x2
	.byte	0x47
	.byte	0x3
	.4byte	0x145
	.uleb128 0x5
	.4byte	0x1f7
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x48
	.byte	0x2
	.byte	0x75
	.byte	0x10
	.4byte	0x31e
	.uleb128 0xb
	.ascii	"X\000"
	.byte	0x2
	.byte	0x76
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x2
	.byte	0x76
	.byte	0x9
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x2
	.byte	0x76
	.byte	0x11
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x2
	.byte	0x76
	.byte	0x1c
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x2
	.byte	0x77
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.ascii	"Y\000"
	.byte	0x2
	.byte	0x78
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x2
	.byte	0x78
	.byte	0x9
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x2
	.byte	0x79
	.byte	0xe
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x2
	.byte	0x79
	.byte	0x19
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.ascii	"uz\000"
	.byte	0x2
	.byte	0x7a
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x2
	.byte	0x7a
	.byte	0xc
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x2
	.byte	0x7a
	.byte	0x15
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.ascii	"vz\000"
	.byte	0x2
	.byte	0x7b
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x2
	.byte	0x7b
	.byte	0xc
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x2
	.byte	0x7b
	.byte	0x15
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x2
	.byte	0x7c
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x2
	.byte	0x7c
	.byte	0x13
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x2
	.byte	0x7d
	.byte	0x3
	.4byte	0x208
	.uleb128 0x5
	.4byte	0x31e
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1c
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.4byte	0x3a2
	.uleb128 0xb
	.ascii	"X\000"
	.byte	0x2
	.byte	0x80
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x2
	.byte	0x80
	.byte	0x9
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x2
	.byte	0x80
	.byte	0x11
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x2
	.byte	0x80
	.byte	0x1c
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x2
	.byte	0x81
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.ascii	"Y\000"
	.byte	0x2
	.byte	0x82
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x2
	.byte	0x82
	.byte	0x9
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x2
	.byte	0x83
	.byte	0x3
	.4byte	0x32f
	.uleb128 0x5
	.4byte	0x3a2
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x64
	.byte	0x2
	.byte	0xdd
	.byte	0x10
	.4byte	0x532
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x2
	.byte	0xde
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x2
	.byte	0xde
	.byte	0x13
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x2
	.byte	0xde
	.byte	0x1c
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x2
	.byte	0xdf
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x2
	.byte	0xdf
	.byte	0x17
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x2
	.byte	0xdf
	.byte	0x24
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x2
	.byte	0xe0
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x2
	.byte	0xe0
	.byte	0x14
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x2
	.byte	0xe0
	.byte	0x1e
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x2
	.byte	0xe2
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x2
	.byte	0xe2
	.byte	0x10
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x2
	.byte	0xe2
	.byte	0x18
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x2
	.byte	0xe3
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x2
	.byte	0xe3
	.byte	0x11
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x2
	.byte	0xe3
	.byte	0x1a
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.ascii	"U\000"
	.byte	0x2
	.byte	0xe5
	.byte	0xd
	.4byte	0x139
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.ascii	"V\000"
	.byte	0x2
	.byte	0xe5
	.byte	0x10
	.4byte	0x139
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.ascii	"dU\000"
	.byte	0x2
	.byte	0xe5
	.byte	0x13
	.4byte	0x139
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.ascii	"dV\000"
	.byte	0x2
	.byte	0xe5
	.byte	0x17
	.4byte	0x139
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x2
	.byte	0xe7
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x2
	.byte	0xe7
	.byte	0x11
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x2
	.byte	0xe9
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x2
	.byte	0xe9
	.byte	0x14
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x2
	.byte	0xea
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x2
	.byte	0xea
	.byte	0xf
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x2
	.byte	0xeb
	.byte	0x3
	.4byte	0x3b3
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x60
	.byte	0x2
	.2byte	0x17b
	.byte	0x10
	.4byte	0x5ad
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x17d
	.byte	0xb
	.4byte	0x3a2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x17d
	.byte	0x19
	.4byte	0x3a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x17d
	.byte	0x24
	.4byte	0x3a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x17e
	.byte	0xc
	.4byte	0x5ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x17f
	.byte	0xc
	.4byte	0x5ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x180
	.byte	0x6
	.4byte	0x5b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3a2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF75
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x181
	.byte	0x3
	.4byte	0x53e
	.uleb128 0x10
	.4byte	.LASF76
	.2byte	0x130
	.byte	0x2
	.2byte	0x184
	.byte	0x10
	.4byte	0x67f
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x186
	.byte	0x10
	.4byte	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x187
	.byte	0xe
	.4byte	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x187
	.byte	0x1c
	.4byte	0x31e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x187
	.byte	0x27
	.4byte	0x31e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x188
	.byte	0xf
	.4byte	0x67f
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x189
	.byte	0xf
	.4byte	0x67f
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x18a
	.byte	0x6
	.4byte	0x5b3
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x18b
	.byte	0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x18b
	.byte	0xd
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x18b
	.byte	0x14
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31e
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x18c
	.byte	0x3
	.4byte	0x5c7
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF161
	.byte	0x6
	.byte	0xc
	.byte	0x10
	.4byte	0x6a6
	.byte	0x1
	.4byte	0x6a6
	.uleb128 0x12
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xab
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF90
	.byte	0x1
	.byte	0xea
	.byte	0x6
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST330
	.byte	0x1
	.4byte	0xb82
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.byte	0xea
	.byte	0x20
	.4byte	0xb82
	.4byte	.LLST331
	.4byte	.LVUS331
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0xea
	.byte	0x2c
	.4byte	0x3e
	.4byte	.LLST332
	.4byte	.LVUS332
	.uleb128 0x15
	.ascii	"p0\000"
	.byte	0x1
	.byte	0xea
	.byte	0x45
	.4byte	0xb88
	.4byte	.LLST333
	.4byte	.LVUS333
	.uleb128 0x15
	.ascii	"p1\000"
	.byte	0x1
	.byte	0xea
	.byte	0x57
	.4byte	0xb88
	.4byte	.LLST334
	.4byte	.LVUS334
	.uleb128 0x15
	.ascii	"p2\000"
	.byte	0x1
	.byte	0xea
	.byte	0x69
	.4byte	0xb88
	.4byte	.LLST335
	.4byte	.LVUS335
	.uleb128 0x15
	.ascii	"uvs\000"
	.byte	0x1
	.byte	0xea
	.byte	0x79
	.4byte	0xb8e
	.4byte	.LLST336
	.4byte	.LVUS336
	.uleb128 0x16
	.ascii	"tri\000"
	.byte	0x1
	.byte	0xec
	.byte	0x17
	.4byte	0x685
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0xef
	.byte	0x6
	.4byte	0x3e
	.4byte	.LLST337
	.4byte	.LVUS337
	.uleb128 0x18
	.4byte	0x25e1
	.4byte	.LBI1123
	.2byte	.LVU1755
	.4byte	.Ldebug_ranges0+0xb80
	.byte	0x1
	.byte	0xed
	.byte	0x2
	.4byte	0xa0d
	.uleb128 0x19
	.4byte	0x25f0
	.4byte	.LLST338
	.4byte	.LVUS338
	.uleb128 0x19
	.4byte	0x25fc
	.4byte	.LLST339
	.4byte	.LVUS339
	.uleb128 0x19
	.4byte	0x2608
	.4byte	.LLST340
	.4byte	.LVUS340
	.uleb128 0x19
	.4byte	0x2614
	.4byte	.LLST341
	.4byte	.LVUS341
	.uleb128 0x19
	.4byte	0x2620
	.4byte	.LLST342
	.4byte	.LVUS342
	.uleb128 0x19
	.4byte	0x262d
	.4byte	.LLST343
	.4byte	.LVUS343
	.uleb128 0x1a
	.4byte	0x26a2
	.4byte	.LBI1125
	.2byte	.LVU1757
	.4byte	.Ldebug_ranges0+0xbb0
	.byte	0x2
	.2byte	0x1a7
	.byte	0x14
	.4byte	0x85d
	.uleb128 0x19
	.4byte	0x26b5
	.4byte	.LLST344
	.4byte	.LVUS344
	.uleb128 0x19
	.4byte	0x26c1
	.4byte	.LLST345
	.4byte	.LVUS345
	.uleb128 0x19
	.4byte	0x26cd
	.4byte	.LLST346
	.4byte	.LVUS346
	.uleb128 0x19
	.4byte	0x26d9
	.4byte	.LLST347
	.4byte	.LVUS347
	.uleb128 0x19
	.4byte	0x26e6
	.4byte	.LLST348
	.4byte	.LVUS348
	.uleb128 0x19
	.4byte	0x26f3
	.4byte	.LLST349
	.4byte	.LVUS349
	.uleb128 0x1b
	.4byte	0x2700
	.uleb128 0x1c
	.4byte	0x270d
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	0x271a
	.4byte	.LLST350
	.4byte	.LVUS350
	.uleb128 0x1d
	.4byte	0x2726
	.4byte	.LLST351
	.4byte	.LVUS351
	.uleb128 0x1d
	.4byte	0x2732
	.4byte	.LLST352
	.4byte	.LVUS352
	.byte	0
	.uleb128 0x1a
	.4byte	0x30eb
	.4byte	.LBI1135
	.2byte	.LVU1796
	.4byte	.Ldebug_ranges0+0xbf0
	.byte	0x2
	.2byte	0x1af
	.byte	0x2
	.4byte	0x953
	.uleb128 0x19
	.4byte	0x3130
	.4byte	.LLST353
	.4byte	.LVUS353
	.uleb128 0x19
	.4byte	0x30f9
	.4byte	.LLST354
	.4byte	.LVUS354
	.uleb128 0x19
	.4byte	0x3103
	.4byte	.LLST355
	.4byte	.LVUS355
	.uleb128 0x19
	.4byte	0x310e
	.4byte	.LLST356
	.4byte	.LVUS356
	.uleb128 0x19
	.4byte	0x3119
	.4byte	.LLST357
	.4byte	.LVUS357
	.uleb128 0x19
	.4byte	0x3124
	.4byte	.LLST358
	.4byte	.LVUS358
	.uleb128 0x1b
	.4byte	0x313c
	.uleb128 0x1d
	.4byte	0x3148
	.4byte	.LLST359
	.4byte	.LVUS359
	.uleb128 0x1d
	.4byte	0x3154
	.4byte	.LLST360
	.4byte	.LVUS360
	.uleb128 0x1d
	.4byte	0x3160
	.4byte	.LLST361
	.4byte	.LVUS361
	.uleb128 0x1d
	.4byte	0x316c
	.4byte	.LLST362
	.4byte	.LVUS362
	.uleb128 0x1b
	.4byte	0x3178
	.uleb128 0x1b
	.4byte	0x3184
	.uleb128 0x1e
	.4byte	0x3190
	.4byte	.Ldebug_ranges0+0xc20
	.4byte	0x920
	.uleb128 0x1d
	.4byte	0x3195
	.4byte	.LLST363
	.4byte	.LVUS363
	.byte	0
	.uleb128 0x1e
	.4byte	0x31b4
	.4byte	.Ldebug_ranges0+0xc80
	.4byte	0x93b
	.uleb128 0x1d
	.4byte	0x31b5
	.4byte	.LLST364
	.4byte	.LVUS364
	.byte	0
	.uleb128 0x1f
	.4byte	0x31a2
	.4byte	.Ldebug_ranges0+0xcd0
	.uleb128 0x1d
	.4byte	0x31a7
	.4byte	.LLST365
	.4byte	.LVUS365
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL448
	.4byte	0x2c9d
	.4byte	0x992
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x91
	.sleb128 -376
	.byte	0x6
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.byte	0x91
	.sleb128 -372
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL449
	.4byte	0x2c9d
	.4byte	0x9d1
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x91
	.sleb128 -376
	.byte	0x6
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.byte	0x91
	.sleb128 -372
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL450
	.4byte	0x2c9d
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x91
	.sleb128 -376
	.byte	0x6
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.byte	0x91
	.sleb128 -372
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x25a1
	.4byte	.LBI1184
	.2byte	.LVU1889
	.4byte	.Ldebug_ranges0+0xd20
	.byte	0x1
	.byte	0xef
	.byte	0xf
	.4byte	0xa31
	.uleb128 0x19
	.4byte	0x25b4
	.4byte	.LLST366
	.4byte	.LVUS366
	.byte	0
	.uleb128 0x18
	.4byte	0x251d
	.4byte	.LBI1190
	.2byte	.LVU1906
	.4byte	.Ldebug_ranges0+0xd48
	.byte	0x1
	.byte	0xf2
	.byte	0x3
	.4byte	0xa9b
	.uleb128 0x19
	.4byte	0x252c
	.4byte	.LLST367
	.4byte	.LVUS367
	.uleb128 0x1a
	.4byte	0x2884
	.4byte	.LBI1191
	.2byte	.LVU1908
	.4byte	.Ldebug_ranges0+0xd60
	.byte	0x2
	.2byte	0x1da
	.byte	0x2
	.4byte	0xa79
	.uleb128 0x19
	.4byte	0x2892
	.4byte	.LLST368
	.4byte	.LVUS368
	.byte	0
	.uleb128 0x23
	.4byte	0x2884
	.4byte	.LBI1194
	.2byte	.LVU1913
	.4byte	.Ldebug_ranges0+0xd78
	.byte	0x2
	.2byte	0x1da
	.byte	0x20
	.uleb128 0x19
	.4byte	0x2892
	.4byte	.LLST369
	.4byte	.LVUS369
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x2561
	.4byte	.LBI1202
	.2byte	.LVU2022
	.4byte	.Ldebug_ranges0+0xd98
	.byte	0x1
	.byte	0xf4
	.byte	0xb
	.4byte	0xabf
	.uleb128 0x19
	.4byte	0x2574
	.4byte	.LLST370
	.4byte	.LVUS370
	.byte	0
	.uleb128 0x18
	.4byte	0x251d
	.4byte	.LBI1207
	.2byte	.LVU2035
	.4byte	.Ldebug_ranges0+0xdb8
	.byte	0x1
	.byte	0xf7
	.byte	0x3
	.4byte	0xb29
	.uleb128 0x19
	.4byte	0x252c
	.4byte	.LLST371
	.4byte	.LVUS371
	.uleb128 0x1a
	.4byte	0x2884
	.4byte	.LBI1208
	.2byte	.LVU2037
	.4byte	.Ldebug_ranges0+0xdd0
	.byte	0x2
	.2byte	0x1da
	.byte	0x2
	.4byte	0xb07
	.uleb128 0x19
	.4byte	0x2892
	.4byte	.LLST372
	.4byte	.LVUS372
	.byte	0
	.uleb128 0x23
	.4byte	0x2884
	.4byte	.LBI1211
	.2byte	.LVU2042
	.4byte	.Ldebug_ranges0+0xde8
	.byte	0x2
	.2byte	0x1da
	.byte	0x20
	.uleb128 0x19
	.4byte	0x2892
	.4byte	.LLST373
	.4byte	.LVUS373
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL456
	.4byte	0xb94
	.4byte	0xb57
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL465
	.4byte	0xb94
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x128
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0x1
	.byte	0x86
	.byte	0xd
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1119
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.byte	0x86
	.byte	0x2c
	.4byte	0xb82
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0x86
	.byte	0x38
	.4byte	0x3e
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x86
	.byte	0x58
	.4byte	0x1119
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x86
	.byte	0x71
	.4byte	0x111f
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x86
	.byte	0x8c
	.4byte	0x111f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x1
	.byte	0x88
	.byte	0x19
	.4byte	0x532
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x25
	.ascii	"X\000"
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.4byte	0x3e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x90
	.byte	0xb
	.4byte	0xbc
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x25
	.ascii	"p\000"
	.byte	0x1
	.byte	0x91
	.byte	0xc
	.4byte	0x1125
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x1
	.byte	0x92
	.byte	0xb
	.4byte	0xbc
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x1a8
	.4byte	0xd4e
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x97
	.byte	0xc
	.4byte	0x3e
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0x1c8
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.byte	0x99
	.byte	0x8
	.4byte	0x5b3
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x1
	.byte	0x9d
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x18
	.4byte	0x3315
	.4byte	.LBI418
	.2byte	.LVU148
	.4byte	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.byte	0xb6
	.byte	0x5
	.4byte	0xce3
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI422
	.2byte	.LVU163
	.4byte	.LBB422
	.4byte	.LBE422
	.byte	0x1
	.byte	0xb6
	.byte	0x5
	.4byte	0xd12
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x1c
	.4byte	0x332d
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x29
	.4byte	0x24ec
	.4byte	.LBI424
	.2byte	.LVU168
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.byte	0xb6
	.byte	0x5
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST36
	.4byte	.LVUS36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB451
	.4byte	.LBE451
	.4byte	0xe32
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc1
	.byte	0xc
	.4byte	0x3e
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x2b
	.4byte	.LBB452
	.4byte	.LBE452
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.byte	0xc3
	.byte	0x8
	.4byte	0x5b3
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x1
	.byte	0xc7
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x18
	.4byte	0x3315
	.4byte	.LBI453
	.2byte	.LVU261
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.byte	0xe0
	.byte	0x5
	.4byte	0xdc7
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI457
	.2byte	.LVU276
	.4byte	.LBB457
	.4byte	.LBE457
	.byte	0x1
	.byte	0xe0
	.byte	0x5
	.4byte	0xdf6
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x1c
	.4byte	0x332d
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x29
	.4byte	0x24ec
	.4byte	.LBI459
	.2byte	.LVU281
	.4byte	.Ldebug_ranges0+0x248
	.byte	0x1
	.byte	0xe0
	.byte	0x5
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST45
	.4byte	.LVUS45
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x281b
	.4byte	.LBI340
	.2byte	.LVU6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x89
	.byte	0x7
	.4byte	0xeea
	.uleb128 0x19
	.4byte	0x282d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x19
	.4byte	0x2839
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x19
	.4byte	0x2845
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x19
	.4byte	0x2851
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1c
	.4byte	0x285d
	.byte	0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	0x32c7
	.4byte	.LBI342
	.2byte	.LVU11
	.4byte	.LBB342
	.4byte	.LBE342
	.byte	0x2
	.byte	0xf3
	.byte	0x12
	.4byte	0xeb8
	.uleb128 0x19
	.4byte	0x32d9
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x19
	.4byte	0x32e3
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x2c
	.4byte	0x32ee
	.4byte	.LBI344
	.2byte	.LVU17
	.4byte	.LBB344
	.4byte	.LBE344
	.byte	0x2
	.byte	0xf4
	.byte	0x10
	.uleb128 0x19
	.4byte	0x3300
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x19
	.4byte	0x330a
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x2745
	.4byte	.LBI360
	.2byte	.LVU203
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xc0
	.byte	0x3
	.4byte	0xfa8
	.uleb128 0x19
	.4byte	0x2754
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x19
	.4byte	0x2761
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x19
	.4byte	0x276e
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x1a
	.4byte	0x323f
	.4byte	.LBI362
	.2byte	.LVU208
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x2
	.2byte	0x145
	.byte	0xc
	.4byte	0xf4c
	.uleb128 0x19
	.4byte	0x3251
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.uleb128 0x1a
	.4byte	0x323f
	.4byte	.LBI365
	.2byte	.LVU215
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x2
	.2byte	0x146
	.byte	0xc
	.4byte	0xf71
	.uleb128 0x19
	.4byte	0x3251
	.4byte	.LLST23
	.4byte	.LVUS23
	.byte	0
	.uleb128 0x1a
	.4byte	0x323f
	.4byte	.LBI370
	.2byte	.LVU230
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x2
	.2byte	0x14a
	.byte	0xe
	.4byte	0xf8e
	.uleb128 0x2d
	.4byte	0x3251
	.byte	0
	.uleb128 0x23
	.4byte	0x323f
	.4byte	.LBI377
	.2byte	.LVU241
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x2
	.2byte	0x14b
	.byte	0xe
	.uleb128 0x2d
	.4byte	0x3251
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x27c0
	.4byte	.LBI390
	.2byte	.LVU98
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0x96
	.byte	0x3
	.4byte	0x1060
	.uleb128 0x19
	.4byte	0x27cf
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x1a
	.4byte	0x323f
	.4byte	.LBI392
	.2byte	.LVU105
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x2
	.2byte	0x12e
	.byte	0xc
	.4byte	0xff0
	.uleb128 0x19
	.4byte	0x3251
	.4byte	.LLST25
	.4byte	.LVUS25
	.byte	0
	.uleb128 0x1a
	.4byte	0x323f
	.4byte	.LBI396
	.2byte	.LVU109
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x2
	.2byte	0x12f
	.byte	0xc
	.4byte	0x1015
	.uleb128 0x19
	.4byte	0x3251
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.uleb128 0x2e
	.4byte	0x323f
	.4byte	.LBI401
	.2byte	.LVU113
	.4byte	.LBB401
	.4byte	.LBE401
	.byte	0x2
	.2byte	0x130
	.byte	0xd
	.4byte	0x103e
	.uleb128 0x19
	.4byte	0x3251
	.4byte	.LLST27
	.4byte	.LVUS27
	.byte	0
	.uleb128 0x23
	.4byte	0x323f
	.4byte	.LBI403
	.2byte	.LVU123
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x2
	.2byte	0x131
	.byte	0xd
	.uleb128 0x19
	.4byte	0x3251
	.4byte	.LLST28
	.4byte	.LVUS28
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x27dd
	.4byte	.LBI438
	.2byte	.LVU186
	.4byte	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0xbb
	.byte	0x3
	.4byte	0x1084
	.uleb128 0x19
	.4byte	0x27ec
	.4byte	.LLST37
	.4byte	.LVUS37
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI463
	.2byte	.LVU300
	.4byte	.LBB463
	.4byte	.LBE463
	.byte	0x1
	.byte	0xe7
	.byte	0x2
	.4byte	0x10b1
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI465
	.2byte	.LVU305
	.4byte	.LBB465
	.4byte	.LBE465
	.byte	0x1
	.byte	0xe7
	.byte	0x2
	.4byte	0x10de
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x29
	.4byte	0x24ec
	.4byte	.LBI467
	.2byte	.LVU310
	.4byte	.Ldebug_ranges0+0x260
	.byte	0x1
	.byte	0xe7
	.byte	0x2
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x203
	.uleb128 0xf
	.byte	0x4
	.4byte	0x32a
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0x70
	.byte	0x6
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST244
	.byte	0x1
	.4byte	0x1a11
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.byte	0x70
	.byte	0x22
	.4byte	0xb82
	.4byte	.LLST245
	.4byte	.LVUS245
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0x70
	.byte	0x2e
	.4byte	0x3e
	.4byte	.LLST246
	.4byte	.LVUS246
	.uleb128 0x15
	.ascii	"p0\000"
	.byte	0x1
	.byte	0x70
	.byte	0x47
	.4byte	0xb88
	.4byte	.LLST247
	.4byte	.LVUS247
	.uleb128 0x15
	.ascii	"p1\000"
	.byte	0x1
	.byte	0x70
	.byte	0x59
	.4byte	0xb88
	.4byte	.LLST248
	.4byte	.LVUS248
	.uleb128 0x15
	.ascii	"p2\000"
	.byte	0x1
	.byte	0x70
	.byte	0x6b
	.4byte	0xb88
	.4byte	.LLST249
	.4byte	.LVUS249
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x1
	.byte	0x70
	.byte	0x7d
	.4byte	0xab
	.4byte	.LLST250
	.4byte	.LVUS250
	.uleb128 0x16
	.ascii	"tri\000"
	.byte	0x1
	.byte	0x72
	.byte	0x1b
	.4byte	0x5ba
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x75
	.byte	0x6
	.4byte	0x3e
	.4byte	.LLST251
	.4byte	.LVUS251
	.uleb128 0x18
	.4byte	0x263b
	.4byte	.LBI951
	.2byte	.LVU1303
	.4byte	.Ldebug_ranges0+0x8d0
	.byte	0x1
	.byte	0x73
	.byte	0x2
	.4byte	0x1426
	.uleb128 0x19
	.4byte	0x264a
	.4byte	.LLST252
	.4byte	.LVUS252
	.uleb128 0x19
	.4byte	0x2656
	.4byte	.LLST253
	.4byte	.LVUS253
	.uleb128 0x19
	.4byte	0x2662
	.4byte	.LLST254
	.4byte	.LVUS254
	.uleb128 0x19
	.4byte	0x266e
	.4byte	.LLST255
	.4byte	.LVUS255
	.uleb128 0x1d
	.4byte	0x267a
	.4byte	.LLST256
	.4byte	.LVUS256
	.uleb128 0x1d
	.4byte	0x2687
	.4byte	.LLST257
	.4byte	.LVUS257
	.uleb128 0x1d
	.4byte	0x2694
	.4byte	.LLST258
	.4byte	.LVUS258
	.uleb128 0x1a
	.4byte	0x26a2
	.4byte	.LBI953
	.2byte	.LVU1308
	.4byte	.Ldebug_ranges0+0x918
	.byte	0x2
	.2byte	0x191
	.byte	0x14
	.4byte	0x12eb
	.uleb128 0x19
	.4byte	0x26b5
	.4byte	.LLST259
	.4byte	.LVUS259
	.uleb128 0x19
	.4byte	0x26c1
	.4byte	.LLST260
	.4byte	.LVUS260
	.uleb128 0x19
	.4byte	0x26cd
	.4byte	.LLST261
	.4byte	.LVUS261
	.uleb128 0x19
	.4byte	0x26d9
	.4byte	.LLST262
	.4byte	.LVUS262
	.uleb128 0x19
	.4byte	0x26e6
	.4byte	.LLST263
	.4byte	.LVUS263
	.uleb128 0x19
	.4byte	0x26f3
	.4byte	.LLST264
	.4byte	.LVUS264
	.uleb128 0x1c
	.4byte	0x2700
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.4byte	0x270d
	.byte	0x1
	.byte	0x59
	.uleb128 0x1d
	.4byte	0x271a
	.4byte	.LLST265
	.4byte	.LVUS265
	.uleb128 0x1d
	.4byte	0x2726
	.4byte	.LLST266
	.4byte	.LVUS266
	.uleb128 0x1d
	.4byte	0x2732
	.4byte	.LLST267
	.4byte	.LVUS267
	.byte	0
	.uleb128 0x20
	.4byte	.LVL338
	.4byte	0x289d
	.4byte	0x1320
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL340
	.4byte	0x289d
	.4byte	0x134e
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL342
	.4byte	0x289d
	.4byte	0x138a
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL352
	.4byte	0x289d
	.4byte	0x13bf
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL354
	.4byte	0x289d
	.4byte	0x13ed
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL356
	.4byte	0x289d
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x25c1
	.4byte	.LBI978
	.2byte	.LVU1335
	.4byte	.Ldebug_ranges0+0x958
	.byte	0x1
	.byte	0x75
	.byte	0xf
	.4byte	0x144a
	.uleb128 0x19
	.4byte	0x25d4
	.4byte	.LLST268
	.4byte	.LVUS268
	.byte	0
	.uleb128 0x18
	.4byte	0x1a11
	.4byte	.LBI983
	.2byte	.LVU1382
	.4byte	.Ldebug_ranges0+0x970
	.byte	0x1
	.byte	0x77
	.byte	0x3
	.4byte	0x16b1
	.uleb128 0x19
	.4byte	0x1a1f
	.4byte	.LLST269
	.4byte	.LVUS269
	.uleb128 0x19
	.4byte	0x1a2b
	.4byte	.LLST270
	.4byte	.LVUS270
	.uleb128 0x19
	.4byte	0x1a37
	.4byte	.LLST271
	.4byte	.LVUS271
	.uleb128 0x19
	.4byte	0x1a43
	.4byte	.LLST272
	.4byte	.LVUS272
	.uleb128 0x19
	.4byte	0x1a4f
	.4byte	.LLST273
	.4byte	.LVUS273
	.uleb128 0x1d
	.4byte	0x1a5b
	.4byte	.LLST274
	.4byte	.LVUS274
	.uleb128 0x1d
	.4byte	0x1a65
	.4byte	.LLST275
	.4byte	.LVUS275
	.uleb128 0x1d
	.4byte	0x1a71
	.4byte	.LLST276
	.4byte	.LVUS276
	.uleb128 0x1d
	.4byte	0x1a7d
	.4byte	.LLST277
	.4byte	.LVUS277
	.uleb128 0x1d
	.4byte	0x1a89
	.4byte	.LLST278
	.4byte	.LVUS278
	.uleb128 0x1d
	.4byte	0x1a95
	.4byte	.LLST279
	.4byte	.LVUS279
	.uleb128 0x1d
	.4byte	0x1a9f
	.4byte	.LLST280
	.4byte	.LVUS280
	.uleb128 0x1e
	.4byte	0x1aab
	.4byte	.Ldebug_ranges0+0x988
	.4byte	0x15a9
	.uleb128 0x1d
	.4byte	0x1aac
	.4byte	.LLST281
	.4byte	.LVUS281
	.uleb128 0x18
	.4byte	0x3315
	.4byte	.LBI986
	.2byte	.LVU1428
	.4byte	.Ldebug_ranges0+0x9a0
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.4byte	0x153f
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST282
	.4byte	.LVUS282
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI990
	.2byte	.LVU1442
	.4byte	.LBB990
	.4byte	.LBE990
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.4byte	0x156e
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST283
	.4byte	.LVUS283
	.uleb128 0x1c
	.4byte	0x332d
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.4byte	0x24ec
	.4byte	.LBI992
	.2byte	.LVU1447
	.4byte	.Ldebug_ranges0+0x9b8
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST284
	.4byte	.LVUS284
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST285
	.4byte	.LVUS285
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST286
	.4byte	.LVUS286
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x32ee
	.4byte	.LBI996
	.2byte	.LVU1392
	.4byte	.Ldebug_ranges0+0x9d0
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	0x15da
	.uleb128 0x19
	.4byte	0x3300
	.4byte	.LLST287
	.4byte	.LVUS287
	.uleb128 0x19
	.4byte	0x330a
	.4byte	.LLST288
	.4byte	.LVUS288
	.byte	0
	.uleb128 0x18
	.4byte	0x32c7
	.4byte	.LBI1001
	.2byte	.LVU1386
	.4byte	.Ldebug_ranges0+0x9f8
	.byte	0x1
	.byte	0x54
	.byte	0xa
	.4byte	0x160b
	.uleb128 0x19
	.4byte	0x32d9
	.4byte	.LLST289
	.4byte	.LVUS289
	.uleb128 0x19
	.4byte	0x32e3
	.4byte	.LLST290
	.4byte	.LVUS290
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI1009
	.2byte	.LVU1463
	.4byte	.LBB1009
	.4byte	.LBE1009
	.byte	0x1
	.byte	0x6d
	.byte	0x2
	.4byte	0x1638
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST291
	.4byte	.LVUS291
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI1011
	.2byte	.LVU1468
	.4byte	.LBB1011
	.4byte	.LBE1011
	.byte	0x1
	.byte	0x6d
	.byte	0x2
	.4byte	0x1665
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST292
	.4byte	.LVUS292
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x28
	.4byte	0x24ec
	.4byte	.LBI1013
	.2byte	.LVU1473
	.4byte	.LBB1013
	.4byte	.LBE1013
	.byte	0x1
	.byte	0x6d
	.byte	0x2
	.4byte	0x16a7
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST293
	.4byte	.LVUS293
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST294
	.4byte	.LVUS294
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST295
	.4byte	.LVUS295
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL365
	.4byte	0x692
	.byte	0
	.uleb128 0x18
	.4byte	0x253f
	.4byte	.LBI1017
	.2byte	.LVU1486
	.4byte	.Ldebug_ranges0+0xa10
	.byte	0x1
	.byte	0x78
	.byte	0x3
	.4byte	0x171f
	.uleb128 0x19
	.4byte	0x254e
	.4byte	.LLST296
	.4byte	.LVUS296
	.uleb128 0x1a
	.4byte	0x286b
	.4byte	.LBI1019
	.2byte	.LVU1488
	.4byte	.Ldebug_ranges0+0xa28
	.byte	0x2
	.2byte	0x1d5
	.byte	0x2
	.4byte	0x16f9
	.uleb128 0x19
	.4byte	0x2879
	.4byte	.LLST297
	.4byte	.LVUS297
	.byte	0
	.uleb128 0x30
	.4byte	0x286b
	.4byte	.LBI1023
	.2byte	.LVU1513
	.4byte	.LBB1023
	.4byte	.LBE1023
	.byte	0x2
	.2byte	0x1d5
	.byte	0x1d
	.uleb128 0x19
	.4byte	0x2879
	.4byte	.LLST298
	.4byte	.LVUS298
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x2581
	.4byte	.LBI1027
	.2byte	.LVU1540
	.4byte	.Ldebug_ranges0+0xa40
	.byte	0x1
	.byte	0x7a
	.byte	0xb
	.4byte	0x1743
	.uleb128 0x19
	.4byte	0x2594
	.4byte	.LLST299
	.4byte	.LVUS299
	.byte	0
	.uleb128 0x18
	.4byte	0x1a11
	.4byte	.LBI1030
	.2byte	.LVU1554
	.4byte	.Ldebug_ranges0+0xa58
	.byte	0x1
	.byte	0x7c
	.byte	0x3
	.4byte	0x19a6
	.uleb128 0x19
	.4byte	0x1a1f
	.4byte	.LLST300
	.4byte	.LVUS300
	.uleb128 0x19
	.4byte	0x1a2b
	.4byte	.LLST301
	.4byte	.LVUS301
	.uleb128 0x19
	.4byte	0x1a37
	.4byte	.LLST302
	.4byte	.LVUS302
	.uleb128 0x19
	.4byte	0x1a43
	.4byte	.LLST303
	.4byte	.LVUS303
	.uleb128 0x19
	.4byte	0x1a4f
	.4byte	.LLST304
	.4byte	.LVUS304
	.uleb128 0x1d
	.4byte	0x1a5b
	.4byte	.LLST305
	.4byte	.LVUS305
	.uleb128 0x1d
	.4byte	0x1a65
	.4byte	.LLST306
	.4byte	.LVUS306
	.uleb128 0x1d
	.4byte	0x1a71
	.4byte	.LLST307
	.4byte	.LVUS307
	.uleb128 0x1d
	.4byte	0x1a7d
	.4byte	.LLST308
	.4byte	.LVUS308
	.uleb128 0x1d
	.4byte	0x1a89
	.4byte	.LLST309
	.4byte	.LVUS309
	.uleb128 0x1d
	.4byte	0x1a95
	.4byte	.LLST310
	.4byte	.LVUS310
	.uleb128 0x1d
	.4byte	0x1a9f
	.4byte	.LLST311
	.4byte	.LVUS311
	.uleb128 0x1e
	.4byte	0x1aab
	.4byte	.Ldebug_ranges0+0xa88
	.4byte	0x18a2
	.uleb128 0x1d
	.4byte	0x1aac
	.4byte	.LLST312
	.4byte	.LVUS312
	.uleb128 0x18
	.4byte	0x3315
	.4byte	.LBI1033
	.2byte	.LVU1600
	.4byte	.Ldebug_ranges0+0xaa0
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.4byte	0x1838
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST313
	.4byte	.LVUS313
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI1037
	.2byte	.LVU1614
	.4byte	.LBB1037
	.4byte	.LBE1037
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.4byte	0x1867
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST314
	.4byte	.LVUS314
	.uleb128 0x1c
	.4byte	0x332d
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.4byte	0x24ec
	.4byte	.LBI1039
	.2byte	.LVU1619
	.4byte	.Ldebug_ranges0+0xab8
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST315
	.4byte	.LVUS315
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST316
	.4byte	.LVUS316
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST317
	.4byte	.LVUS317
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x32ee
	.4byte	.LBI1043
	.2byte	.LVU1564
	.4byte	.Ldebug_ranges0+0xad0
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	0x18d3
	.uleb128 0x19
	.4byte	0x3300
	.4byte	.LLST318
	.4byte	.LVUS318
	.uleb128 0x19
	.4byte	0x330a
	.4byte	.LLST319
	.4byte	.LVUS319
	.byte	0
	.uleb128 0x18
	.4byte	0x32c7
	.4byte	.LBI1048
	.2byte	.LVU1558
	.4byte	.Ldebug_ranges0+0xaf8
	.byte	0x1
	.byte	0x54
	.byte	0xa
	.4byte	0x1904
	.uleb128 0x19
	.4byte	0x32d9
	.4byte	.LLST320
	.4byte	.LVUS320
	.uleb128 0x19
	.4byte	0x32e3
	.4byte	.LLST321
	.4byte	.LVUS321
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI1056
	.2byte	.LVU1635
	.4byte	.LBB1056
	.4byte	.LBE1056
	.byte	0x1
	.byte	0x6d
	.byte	0x2
	.4byte	0x1931
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST322
	.4byte	.LVUS322
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x28
	.4byte	0x3315
	.4byte	.LBI1058
	.2byte	.LVU1640
	.4byte	.LBB1058
	.4byte	.LBE1058
	.byte	0x1
	.byte	0x6d
	.byte	0x2
	.4byte	0x195e
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST323
	.4byte	.LVUS323
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x18
	.4byte	0x24ec
	.4byte	.LBI1060
	.2byte	.LVU1645
	.4byte	.Ldebug_ranges0+0xb10
	.byte	0x1
	.byte	0x6d
	.byte	0x2
	.4byte	0x199c
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST324
	.4byte	.LVUS324
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST325
	.4byte	.LVUS325
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST326
	.4byte	.LVUS326
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL399
	.4byte	0x692
	.byte	0
	.uleb128 0x29
	.4byte	0x253f
	.4byte	.LBI1073
	.2byte	.LVU1658
	.4byte	.Ldebug_ranges0+0xb38
	.byte	0x1
	.byte	0x7d
	.byte	0x3
	.uleb128 0x19
	.4byte	0x254e
	.4byte	.LLST327
	.4byte	.LVUS327
	.uleb128 0x1a
	.4byte	0x286b
	.4byte	.LBI1075
	.2byte	.LVU1660
	.4byte	.Ldebug_ranges0+0xb60
	.byte	0x2
	.2byte	0x1d5
	.byte	0x2
	.4byte	0x19ea
	.uleb128 0x19
	.4byte	0x2879
	.4byte	.LLST328
	.4byte	.LVUS328
	.byte	0
	.uleb128 0x30
	.4byte	0x286b
	.4byte	.LBI1080
	.2byte	.LVU1688
	.4byte	.LBB1080
	.4byte	.LBE1080
	.byte	0x2
	.2byte	0x1d5
	.byte	0x1d
	.uleb128 0x19
	.4byte	0x2879
	.4byte	.LLST329
	.4byte	.LVUS329
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF100
	.byte	0x1
	.byte	0x52
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x1aba
	.uleb128 0x32
	.4byte	.LASF81
	.byte	0x1
	.byte	0x52
	.byte	0x70
	.4byte	0xb82
	.uleb128 0x32
	.4byte	.LASF82
	.byte	0x1
	.byte	0x52
	.byte	0x7c
	.4byte	0x3e
	.uleb128 0x32
	.4byte	.LASF83
	.byte	0x1
	.byte	0x52
	.byte	0x97
	.4byte	0x1aba
	.uleb128 0x32
	.4byte	.LASF84
	.byte	0x1
	.byte	0x52
	.byte	0xaf
	.4byte	0x1aba
	.uleb128 0x32
	.4byte	.LASF92
	.byte	0x1
	.byte	0x52
	.byte	0xc5
	.4byte	0xab
	.uleb128 0x33
	.ascii	"x\000"
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x34
	.4byte	.LASF96
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x34
	.4byte	.LASF97
	.byte	0x1
	.byte	0x58
	.byte	0x11
	.4byte	0x6a6
	.uleb128 0x33
	.ascii	"row\000"
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.4byte	0xb82
	.uleb128 0x34
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5c
	.byte	0xb
	.4byte	0xbc
	.uleb128 0x33
	.ascii	"p\000"
	.byte	0x1
	.byte	0x5d
	.byte	0xc
	.4byte	0x1125
	.uleb128 0x34
	.4byte	.LASF87
	.byte	0x1
	.byte	0x5e
	.byte	0xb
	.4byte	0xbc
	.uleb128 0x35
	.uleb128 0x33
	.ascii	"pix\000"
	.byte	0x1
	.byte	0x63
	.byte	0xc
	.4byte	0xbc
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3ae
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST146
	.byte	0x1
	.4byte	0x2413
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.byte	0x41
	.byte	0x20
	.4byte	0xb82
	.4byte	.LLST147
	.4byte	.LVUS147
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0x41
	.byte	0x2c
	.4byte	0x3e
	.4byte	.LLST148
	.4byte	.LVUS148
	.uleb128 0x15
	.ascii	"p0\000"
	.byte	0x1
	.byte	0x41
	.byte	0x45
	.4byte	0xb88
	.4byte	.LLST149
	.4byte	.LVUS149
	.uleb128 0x15
	.ascii	"p1\000"
	.byte	0x1
	.byte	0x41
	.byte	0x57
	.4byte	0xb88
	.4byte	.LLST150
	.4byte	.LVUS150
	.uleb128 0x15
	.ascii	"p2\000"
	.byte	0x1
	.byte	0x41
	.byte	0x69
	.4byte	0xb88
	.4byte	.LLST151
	.4byte	.LVUS151
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x1
	.byte	0x41
	.byte	0x7c
	.4byte	0x6a6
	.4byte	.LLST152
	.4byte	.LVUS152
	.uleb128 0x16
	.ascii	"tri\000"
	.byte	0x1
	.byte	0x43
	.byte	0x1b
	.4byte	0x5ba
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	0x3e
	.4byte	.LLST153
	.4byte	.LVUS153
	.uleb128 0x18
	.4byte	0x263b
	.4byte	.LBI725
	.2byte	.LVU770
	.4byte	.Ldebug_ranges0+0x548
	.byte	0x1
	.byte	0x44
	.byte	0x2
	.4byte	0x1dba
	.uleb128 0x19
	.4byte	0x264a
	.4byte	.LLST154
	.4byte	.LVUS154
	.uleb128 0x19
	.4byte	0x2656
	.4byte	.LLST155
	.4byte	.LVUS155
	.uleb128 0x19
	.4byte	0x2662
	.4byte	.LLST156
	.4byte	.LVUS156
	.uleb128 0x19
	.4byte	0x266e
	.4byte	.LLST157
	.4byte	.LVUS157
	.uleb128 0x1d
	.4byte	0x267a
	.4byte	.LLST158
	.4byte	.LVUS158
	.uleb128 0x1d
	.4byte	0x2687
	.4byte	.LLST159
	.4byte	.LVUS159
	.uleb128 0x1d
	.4byte	0x2694
	.4byte	.LLST160
	.4byte	.LVUS160
	.uleb128 0x1a
	.4byte	0x26a2
	.4byte	.LBI727
	.2byte	.LVU774
	.4byte	.Ldebug_ranges0+0x590
	.byte	0x2
	.2byte	0x191
	.byte	0x14
	.4byte	0x1c7e
	.uleb128 0x19
	.4byte	0x26b5
	.4byte	.LLST161
	.4byte	.LVUS161
	.uleb128 0x19
	.4byte	0x26c1
	.4byte	.LLST162
	.4byte	.LVUS162
	.uleb128 0x19
	.4byte	0x26cd
	.4byte	.LLST163
	.4byte	.LVUS163
	.uleb128 0x19
	.4byte	0x26d9
	.4byte	.LLST164
	.4byte	.LVUS164
	.uleb128 0x19
	.4byte	0x26e6
	.4byte	.LLST165
	.4byte	.LVUS165
	.uleb128 0x19
	.4byte	0x26f3
	.4byte	.LLST166
	.4byte	.LVUS166
	.uleb128 0x1b
	.4byte	0x2700
	.uleb128 0x1c
	.4byte	0x270d
	.byte	0x1
	.byte	0x59
	.uleb128 0x1d
	.4byte	0x271a
	.4byte	.LLST167
	.4byte	.LVUS167
	.uleb128 0x1d
	.4byte	0x2726
	.4byte	.LLST168
	.4byte	.LVUS168
	.uleb128 0x1d
	.4byte	0x2732
	.4byte	.LLST169
	.4byte	.LVUS169
	.byte	0
	.uleb128 0x20
	.4byte	.LVL199
	.4byte	0x289d
	.4byte	0x1cb2
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL201
	.4byte	0x289d
	.4byte	0x1cdf
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL203
	.4byte	0x289d
	.4byte	0x1d1a
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL212
	.4byte	0x289d
	.4byte	0x1d4e
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL213
	.4byte	0x289d
	.4byte	0x1d82
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL215
	.4byte	0x289d
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x21
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x25c1
	.4byte	.LBI752
	.2byte	.LVU802
	.4byte	.Ldebug_ranges0+0x5d0
	.byte	0x1
	.byte	0x46
	.byte	0xf
	.4byte	0x1dde
	.uleb128 0x19
	.4byte	0x25d4
	.4byte	.LLST170
	.4byte	.LVUS170
	.byte	0
	.uleb128 0x18
	.4byte	0x253f
	.4byte	.LBI761
	.2byte	.LVU961
	.4byte	.Ldebug_ranges0+0x5f8
	.byte	0x1
	.byte	0x49
	.byte	0x3
	.4byte	0x1e48
	.uleb128 0x19
	.4byte	0x254e
	.4byte	.LLST171
	.4byte	.LVUS171
	.uleb128 0x1a
	.4byte	0x286b
	.4byte	.LBI762
	.2byte	.LVU963
	.4byte	.Ldebug_ranges0+0x620
	.byte	0x2
	.2byte	0x1d5
	.byte	0x2
	.4byte	0x1e26
	.uleb128 0x19
	.4byte	0x2879
	.4byte	.LLST172
	.4byte	.LVUS172
	.byte	0
	.uleb128 0x23
	.4byte	0x286b
	.4byte	.LBI767
	.2byte	.LVU990
	.4byte	.Ldebug_ranges0+0x640
	.byte	0x2
	.2byte	0x1d5
	.byte	0x1d
	.uleb128 0x19
	.4byte	0x2879
	.4byte	.LLST173
	.4byte	.LVUS173
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x2413
	.4byte	.LBI774
	.2byte	.LVU856
	.4byte	.Ldebug_ranges0+0x660
	.byte	0x1
	.byte	0x48
	.byte	0x3
	.4byte	0x20e8
	.uleb128 0x19
	.4byte	0x2421
	.4byte	.LLST174
	.4byte	.LVUS174
	.uleb128 0x19
	.4byte	0x242d
	.4byte	.LLST175
	.4byte	.LVUS175
	.uleb128 0x19
	.4byte	0x2439
	.4byte	.LLST176
	.4byte	.LVUS176
	.uleb128 0x19
	.4byte	0x2445
	.4byte	.LLST177
	.4byte	.LVUS177
	.uleb128 0x19
	.4byte	0x2451
	.4byte	.LLST178
	.4byte	.LVUS178
	.uleb128 0x1d
	.4byte	0x245d
	.4byte	.LLST179
	.4byte	.LVUS179
	.uleb128 0x1d
	.4byte	0x2467
	.4byte	.LLST180
	.4byte	.LVUS180
	.uleb128 0x1d
	.4byte	0x2473
	.4byte	.LLST181
	.4byte	.LVUS181
	.uleb128 0x1d
	.4byte	0x247f
	.4byte	.LLST182
	.4byte	.LVUS182
	.uleb128 0x1d
	.4byte	0x248b
	.4byte	.LLST183
	.4byte	.LVUS183
	.uleb128 0x1d
	.4byte	0x2497
	.4byte	.LLST184
	.4byte	.LVUS184
	.uleb128 0x1d
	.4byte	0x24a3
	.4byte	.LLST185
	.4byte	.LVUS185
	.uleb128 0x1d
	.4byte	0x24af
	.4byte	.LLST186
	.4byte	.LVUS186
	.uleb128 0x1d
	.4byte	0x24bb
	.4byte	.LLST187
	.4byte	.LVUS187
	.uleb128 0x1d
	.4byte	0x24c7
	.4byte	.LLST188
	.4byte	.LVUS188
	.uleb128 0x1d
	.4byte	0x24d3
	.4byte	.LLST189
	.4byte	.LVUS189
	.uleb128 0x18
	.4byte	0x32ee
	.4byte	.LBI776
	.2byte	.LVU867
	.4byte	.Ldebug_ranges0+0x6a0
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.4byte	0x1f5f
	.uleb128 0x19
	.4byte	0x3300
	.4byte	.LLST190
	.4byte	.LVUS190
	.uleb128 0x19
	.4byte	0x330a
	.4byte	.LLST191
	.4byte	.LVUS191
	.byte	0
	.uleb128 0x18
	.4byte	0x32c7
	.4byte	.LBI780
	.2byte	.LVU860
	.4byte	.Ldebug_ranges0+0x6c0
	.byte	0x1
	.byte	0x11
	.byte	0xa
	.4byte	0x1f90
	.uleb128 0x19
	.4byte	0x32d9
	.4byte	.LLST192
	.4byte	.LVUS192
	.uleb128 0x19
	.4byte	0x32e3
	.4byte	.LLST193
	.4byte	.LVUS193
	.byte	0
	.uleb128 0x18
	.4byte	0x3315
	.4byte	.LBI786
	.2byte	.LVU885
	.4byte	.Ldebug_ranges0+0x6d8
	.byte	0x1
	.byte	0x1c
	.byte	0x17
	.4byte	0x1fb3
	.uleb128 0x2d
	.4byte	0x3323
	.uleb128 0x1c
	.4byte	0x332d
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x18
	.4byte	0x3315
	.4byte	.LBI790
	.2byte	.LVU895
	.4byte	.Ldebug_ranges0+0x6f0
	.byte	0x1
	.byte	0x1e
	.byte	0x15
	.4byte	0x1fdc
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST194
	.4byte	.LVUS194
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x18
	.4byte	0x24ec
	.4byte	.LBI796
	.2byte	.LVU919
	.4byte	.Ldebug_ranges0+0x710
	.byte	0x1
	.byte	0x32
	.byte	0x4
	.4byte	0x201a
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST195
	.4byte	.LVUS195
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST196
	.4byte	.LVUS196
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST197
	.4byte	.LVUS197
	.byte	0
	.uleb128 0x28
	.4byte	0x24ec
	.4byte	.LBI799
	.2byte	.LVU940
	.4byte	.LBB799
	.4byte	.LBE799
	.byte	0x1
	.byte	0x37
	.byte	0x4
	.4byte	0x205c
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST198
	.4byte	.LVUS198
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST199
	.4byte	.LVUS199
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST200
	.4byte	.LVUS200
	.byte	0
	.uleb128 0x28
	.4byte	0x24ec
	.4byte	.LBI801
	.2byte	.LVU951
	.4byte	.LBB801
	.4byte	.LBE801
	.byte	0x1
	.byte	0x3c
	.byte	0x4
	.4byte	0x209e
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST201
	.4byte	.LVUS201
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST202
	.4byte	.LVUS202
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST203
	.4byte	.LVUS203
	.byte	0
	.uleb128 0x1f
	.4byte	0x24dd
	.4byte	.Ldebug_ranges0+0x728
	.uleb128 0x1d
	.4byte	0x24de
	.4byte	.LLST204
	.4byte	.LVUS204
	.uleb128 0x29
	.4byte	0x24ec
	.4byte	.LBI804
	.2byte	.LVU1245
	.4byte	.Ldebug_ranges0+0x750
	.byte	0x1
	.byte	0x2c
	.byte	0x3
	.uleb128 0x2d
	.4byte	0x24fa
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST205
	.4byte	.LVUS205
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST206
	.4byte	.LVUS206
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x2581
	.4byte	.LBI823
	.2byte	.LVU1018
	.4byte	.Ldebug_ranges0+0x768
	.byte	0x1
	.byte	0x4b
	.byte	0xb
	.4byte	0x210c
	.uleb128 0x19
	.4byte	0x2594
	.4byte	.LLST207
	.4byte	.LVUS207
	.byte	0
	.uleb128 0x18
	.4byte	0x2413
	.4byte	.LBI828
	.2byte	.LVU1039
	.4byte	.Ldebug_ranges0+0x788
	.byte	0x1
	.byte	0x4d
	.byte	0x3
	.4byte	0x23ac
	.uleb128 0x19
	.4byte	0x2421
	.4byte	.LLST208
	.4byte	.LVUS208
	.uleb128 0x19
	.4byte	0x242d
	.4byte	.LLST209
	.4byte	.LVUS209
	.uleb128 0x19
	.4byte	0x2439
	.4byte	.LLST210
	.4byte	.LVUS210
	.uleb128 0x19
	.4byte	0x2445
	.4byte	.LLST211
	.4byte	.LVUS211
	.uleb128 0x19
	.4byte	0x2451
	.4byte	.LLST212
	.4byte	.LVUS212
	.uleb128 0x1d
	.4byte	0x245d
	.4byte	.LLST213
	.4byte	.LVUS213
	.uleb128 0x1d
	.4byte	0x2467
	.4byte	.LLST214
	.4byte	.LVUS214
	.uleb128 0x1d
	.4byte	0x2473
	.4byte	.LLST215
	.4byte	.LVUS215
	.uleb128 0x1d
	.4byte	0x247f
	.4byte	.LLST216
	.4byte	.LVUS216
	.uleb128 0x1d
	.4byte	0x248b
	.4byte	.LLST217
	.4byte	.LVUS217
	.uleb128 0x1d
	.4byte	0x2497
	.4byte	.LLST218
	.4byte	.LVUS218
	.uleb128 0x1d
	.4byte	0x24a3
	.4byte	.LLST219
	.4byte	.LVUS219
	.uleb128 0x1d
	.4byte	0x24af
	.4byte	.LLST220
	.4byte	.LVUS220
	.uleb128 0x1d
	.4byte	0x24bb
	.4byte	.LLST221
	.4byte	.LVUS221
	.uleb128 0x1d
	.4byte	0x24c7
	.4byte	.LLST222
	.4byte	.LVUS222
	.uleb128 0x1d
	.4byte	0x24d3
	.4byte	.LLST223
	.4byte	.LVUS223
	.uleb128 0x18
	.4byte	0x32ee
	.4byte	.LBI830
	.2byte	.LVU1050
	.4byte	.Ldebug_ranges0+0x7c0
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.4byte	0x2223
	.uleb128 0x19
	.4byte	0x3300
	.4byte	.LLST224
	.4byte	.LVUS224
	.uleb128 0x19
	.4byte	0x330a
	.4byte	.LLST225
	.4byte	.LVUS225
	.byte	0
	.uleb128 0x18
	.4byte	0x32c7
	.4byte	.LBI834
	.2byte	.LVU1043
	.4byte	.Ldebug_ranges0+0x7e0
	.byte	0x1
	.byte	0x11
	.byte	0xa
	.4byte	0x2254
	.uleb128 0x19
	.4byte	0x32d9
	.4byte	.LLST226
	.4byte	.LVUS226
	.uleb128 0x19
	.4byte	0x32e3
	.4byte	.LLST227
	.4byte	.LVUS227
	.byte	0
	.uleb128 0x18
	.4byte	0x3315
	.4byte	.LBI840
	.2byte	.LVU1068
	.4byte	.Ldebug_ranges0+0x7f8
	.byte	0x1
	.byte	0x1c
	.byte	0x17
	.4byte	0x2277
	.uleb128 0x2d
	.4byte	0x3323
	.uleb128 0x1c
	.4byte	0x332d
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x18
	.4byte	0x3315
	.4byte	.LBI844
	.2byte	.LVU1078
	.4byte	.Ldebug_ranges0+0x810
	.byte	0x1
	.byte	0x1e
	.byte	0x15
	.4byte	0x22a0
	.uleb128 0x19
	.4byte	0x3323
	.4byte	.LLST228
	.4byte	.LVUS228
	.uleb128 0x1b
	.4byte	0x332d
	.byte	0
	.uleb128 0x18
	.4byte	0x24ec
	.4byte	.LBI850
	.2byte	.LVU1102
	.4byte	.Ldebug_ranges0+0x830
	.byte	0x1
	.byte	0x32
	.byte	0x4
	.4byte	0x22de
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST229
	.4byte	.LVUS229
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST230
	.4byte	.LVUS230
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST231
	.4byte	.LVUS231
	.byte	0
	.uleb128 0x28
	.4byte	0x24ec
	.4byte	.LBI853
	.2byte	.LVU1123
	.4byte	.LBB853
	.4byte	.LBE853
	.byte	0x1
	.byte	0x37
	.byte	0x4
	.4byte	0x2320
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST232
	.4byte	.LVUS232
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST233
	.4byte	.LVUS233
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST234
	.4byte	.LVUS234
	.byte	0
	.uleb128 0x28
	.4byte	0x24ec
	.4byte	.LBI855
	.2byte	.LVU1134
	.4byte	.LBB855
	.4byte	.LBE855
	.byte	0x1
	.byte	0x3c
	.byte	0x4
	.4byte	0x2362
	.uleb128 0x19
	.4byte	0x24fa
	.4byte	.LLST235
	.4byte	.LVUS235
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST236
	.4byte	.LVUS236
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST237
	.4byte	.LVUS237
	.byte	0
	.uleb128 0x1f
	.4byte	0x24dd
	.4byte	.Ldebug_ranges0+0x848
	.uleb128 0x1d
	.4byte	0x24de
	.4byte	.LLST238
	.4byte	.LVUS238
	.uleb128 0x29
	.4byte	0x24ec
	.4byte	.LBI858
	.2byte	.LVU1227
	.4byte	.Ldebug_ranges0+0x870
	.byte	0x1
	.byte	0x2c
	.byte	0x3
	.uleb128 0x2d
	.4byte	0x24fa
	.uleb128 0x19
	.4byte	0x2504
	.4byte	.LLST239
	.4byte	.LVUS239
	.uleb128 0x19
	.4byte	0x2510
	.4byte	.LLST240
	.4byte	.LVUS240
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x253f
	.4byte	.LBI871
	.2byte	.LVU1144
	.4byte	.Ldebug_ranges0+0x888
	.byte	0x1
	.byte	0x4e
	.byte	0x3
	.uleb128 0x19
	.4byte	0x254e
	.4byte	.LLST241
	.4byte	.LVUS241
	.uleb128 0x1a
	.4byte	0x286b
	.4byte	.LBI872
	.2byte	.LVU1146
	.4byte	.Ldebug_ranges0+0x8a0
	.byte	0x2
	.2byte	0x1d5
	.byte	0x2
	.4byte	0x23f0
	.uleb128 0x19
	.4byte	0x2879
	.4byte	.LLST242
	.4byte	.LVUS242
	.byte	0
	.uleb128 0x23
	.4byte	0x286b
	.4byte	.LBI875
	.2byte	.LVU1173
	.4byte	.Ldebug_ranges0+0x8b8
	.byte	0x2
	.2byte	0x1d5
	.byte	0x1d
	.uleb128 0x19
	.4byte	0x2879
	.4byte	.LLST243
	.4byte	.LVUS243
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF101
	.byte	0x1
	.byte	0xf
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x24ec
	.uleb128 0x32
	.4byte	.LASF81
	.byte	0x1
	.byte	0xf
	.byte	0x6e
	.4byte	0xb82
	.uleb128 0x32
	.4byte	.LASF82
	.byte	0x1
	.byte	0xf
	.byte	0x7a
	.4byte	0x3e
	.uleb128 0x32
	.4byte	.LASF83
	.byte	0x1
	.byte	0xf
	.byte	0x95
	.4byte	0x1aba
	.uleb128 0x32
	.4byte	.LASF84
	.byte	0x1
	.byte	0xf
	.byte	0xad
	.4byte	0x1aba
	.uleb128 0x32
	.4byte	.LASF99
	.byte	0x1
	.byte	0xf
	.byte	0xc4
	.4byte	0x6a6
	.uleb128 0x33
	.ascii	"x\000"
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x34
	.4byte	.LASF96
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x33
	.ascii	"row\000"
	.byte	0x1
	.byte	0x15
	.byte	0xb
	.4byte	0xb82
	.uleb128 0x33
	.ascii	"pat\000"
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.4byte	0xab
	.uleb128 0x34
	.4byte	.LASF102
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0xbc
	.uleb128 0x34
	.4byte	.LASF103
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x34
	.4byte	.LASF104
	.byte	0x1
	.byte	0x1c
	.byte	0xb
	.4byte	0xbc
	.uleb128 0x34
	.4byte	.LASF105
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x34
	.4byte	.LASF106
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.4byte	0xbc
	.uleb128 0x33
	.ascii	"col\000"
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x33
	.ascii	"p\000"
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.4byte	0x1125
	.uleb128 0x35
	.uleb128 0x34
	.4byte	.LASF86
	.byte	0x1
	.byte	0x25
	.byte	0xc
	.4byte	0xbc
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF107
	.byte	0x1
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x251d
	.uleb128 0x36
	.ascii	"p\000"
	.byte	0x1
	.byte	0x5
	.byte	0x6a
	.4byte	0x1125
	.uleb128 0x32
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5
	.byte	0x76
	.4byte	0xbc
	.uleb128 0x32
	.4byte	.LASF87
	.byte	0x1
	.byte	0x5
	.byte	0x85
	.4byte	0xbc
	.byte	0
	.uleb128 0x37
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x1d8
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x2539
	.uleb128 0x38
	.ascii	"st\000"
	.byte	0x2
	.2byte	0x1d8
	.byte	0x7f
	.4byte	0x2539
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x685
	.uleb128 0x37
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x1d3
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x255b
	.uleb128 0x38
	.ascii	"st\000"
	.byte	0x2
	.2byte	0x1d3
	.byte	0x87
	.4byte	0x255b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ba
	.uleb128 0x39
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x1cc
	.byte	0x4e
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x2581
	.uleb128 0x38
	.ascii	"st\000"
	.byte	0x2
	.2byte	0x1cc
	.byte	0x7e
	.4byte	0x2539
	.byte	0
	.uleb128 0x39
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x1c5
	.byte	0x4e
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x25a1
	.uleb128 0x38
	.ascii	"st\000"
	.byte	0x2
	.2byte	0x1c5
	.byte	0x86
	.4byte	0x255b
	.byte	0
	.uleb128 0x39
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x1be
	.byte	0x4e
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x25c1
	.uleb128 0x38
	.ascii	"st\000"
	.byte	0x2
	.2byte	0x1be
	.byte	0x7e
	.4byte	0x2539
	.byte	0
	.uleb128 0x39
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x1b7
	.byte	0x4e
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x25e1
	.uleb128 0x38
	.ascii	"st\000"
	.byte	0x2
	.2byte	0x1b7
	.byte	0x86
	.4byte	0x255b
	.byte	0
	.uleb128 0x37
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x1a5
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x263b
	.uleb128 0x38
	.ascii	"st\000"
	.byte	0x2
	.2byte	0x1a5
	.byte	0x7e
	.4byte	0x2539
	.uleb128 0x38
	.ascii	"p0\000"
	.byte	0x2
	.2byte	0x1a5
	.byte	0x90
	.4byte	0xb88
	.uleb128 0x38
	.ascii	"p1\000"
	.byte	0x2
	.2byte	0x1a5
	.byte	0xa2
	.4byte	0xb88
	.uleb128 0x38
	.ascii	"p2\000"
	.byte	0x2
	.2byte	0x1a5
	.byte	0xb4
	.4byte	0xb88
	.uleb128 0x38
	.ascii	"uvs\000"
	.byte	0x2
	.2byte	0x1a5
	.byte	0xc4
	.4byte	0xb8e
	.uleb128 0x3a
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x1a5
	.byte	0xd8
	.4byte	0xd6
	.byte	0
	.uleb128 0x37
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x18e
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x26a2
	.uleb128 0x38
	.ascii	"st\000"
	.byte	0x2
	.2byte	0x18e
	.byte	0x86
	.4byte	0x255b
	.uleb128 0x38
	.ascii	"p0\000"
	.byte	0x2
	.2byte	0x18e
	.byte	0x98
	.4byte	0xb88
	.uleb128 0x38
	.ascii	"p1\000"
	.byte	0x2
	.2byte	0x18e
	.byte	0xaa
	.4byte	0xb88
	.uleb128 0x38
	.ascii	"p2\000"
	.byte	0x2
	.2byte	0x18e
	.byte	0xbc
	.4byte	0xb88
	.uleb128 0x3b
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x190
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x3b
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x190
	.byte	0xd
	.4byte	0x3e
	.uleb128 0x3b
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x190
	.byte	0x14
	.4byte	0x3e
	.byte	0
	.uleb128 0x39
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x14f
	.byte	0xc
	.byte	0x1
	.4byte	0x5b3
	.byte	0x1
	.4byte	0x273f
	.uleb128 0x38
	.ascii	"p0\000"
	.byte	0x2
	.2byte	0x14f
	.byte	0x2c
	.4byte	0xb88
	.uleb128 0x38
	.ascii	"p1\000"
	.byte	0x2
	.2byte	0x14f
	.byte	0x3e
	.4byte	0xb88
	.uleb128 0x38
	.ascii	"p2\000"
	.byte	0x2
	.2byte	0x14f
	.byte	0x50
	.4byte	0xb88
	.uleb128 0x3a
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x14f
	.byte	0x59
	.4byte	0x273f
	.uleb128 0x3a
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x14f
	.byte	0x65
	.4byte	0x273f
	.uleb128 0x3a
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x14f
	.byte	0x71
	.4byte	0x273f
	.uleb128 0x3b
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x151
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x3b
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x151
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x3c
	.ascii	"Y0\000"
	.byte	0x2
	.2byte	0x152
	.byte	0x8
	.4byte	0x29
	.uleb128 0x3c
	.ascii	"Y1\000"
	.byte	0x2
	.2byte	0x152
	.byte	0x14
	.4byte	0x29
	.uleb128 0x3c
	.ascii	"Y2\000"
	.byte	0x2
	.2byte	0x152
	.byte	0x20
	.4byte	0x29
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x37
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x13f
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x277c
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x13f
	.byte	0x81
	.4byte	0x277c
	.uleb128 0x3a
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x13f
	.byte	0x9c
	.4byte	0x1119
	.uleb128 0x3a
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x13f
	.byte	0xb5
	.4byte	0x111f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x532
	.uleb128 0x39
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x13a
	.byte	0x12
	.byte	0x1
	.4byte	0x5b3
	.byte	0x3
	.4byte	0x27a3
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x13a
	.byte	0x42
	.4byte	0x277c
	.byte	0
	.uleb128 0x37
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x134
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x27c0
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x134
	.byte	0x82
	.4byte	0x277c
	.byte	0
	.uleb128 0x37
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x128
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x27dd
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x128
	.byte	0x83
	.4byte	0x277c
	.byte	0
	.uleb128 0x37
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x11d
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x27fa
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x11d
	.byte	0x82
	.4byte	0x277c
	.byte	0
	.uleb128 0x39
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x118
	.byte	0x12
	.byte	0x1
	.4byte	0x5b3
	.byte	0x3
	.4byte	0x281b
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x118
	.byte	0x49
	.4byte	0x277c
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF129
	.byte	0x2
	.byte	0xed
	.byte	0x12
	.byte	0x1
	.4byte	0x5b3
	.byte	0x3
	.4byte	0x286b
	.uleb128 0x32
	.4byte	.LASF85
	.byte	0x2
	.byte	0xed
	.byte	0x44
	.4byte	0x277c
	.uleb128 0x32
	.4byte	.LASF77
	.byte	0x2
	.byte	0xed
	.byte	0x5f
	.4byte	0x1119
	.uleb128 0x32
	.4byte	.LASF83
	.byte	0x2
	.byte	0xed
	.byte	0x78
	.4byte	0x111f
	.uleb128 0x32
	.4byte	.LASF84
	.byte	0x2
	.byte	0xed
	.byte	0x93
	.4byte	0x111f
	.uleb128 0x3b
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x10b
	.byte	0xc
	.4byte	0x9a
	.byte	0
	.uleb128 0x31
	.4byte	.LASF131
	.byte	0x2
	.byte	0xd0
	.byte	0x14
	.byte	0x1
	.byte	0x3
	.4byte	0x2884
	.uleb128 0x36
	.ascii	"t\000"
	.byte	0x2
	.byte	0xd0
	.byte	0x2c
	.4byte	0x5ad
	.byte	0
	.uleb128 0x31
	.4byte	.LASF132
	.byte	0x2
	.byte	0xc2
	.byte	0x14
	.byte	0x1
	.byte	0x3
	.4byte	0x289d
	.uleb128 0x36
	.ascii	"t\000"
	.byte	0x2
	.byte	0xc2
	.byte	0x32
	.4byte	0x67f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF134
	.byte	0x2
	.byte	0xab
	.byte	0xd
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST51
	.byte	0x1
	.4byte	0x2c9d
	.uleb128 0x3e
	.ascii	"t\000"
	.byte	0x2
	.byte	0xab
	.byte	0x25
	.4byte	0x5ad
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.ascii	"p0\000"
	.byte	0x2
	.byte	0xab
	.byte	0x36
	.4byte	0xb88
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x15
	.ascii	"p1\000"
	.byte	0x2
	.byte	0xab
	.byte	0x48
	.4byte	0xb88
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x15
	.ascii	"p2\000"
	.byte	0x2
	.byte	0xab
	.byte	0x5a
	.4byte	0xb88
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x15
	.ascii	"top\000"
	.byte	0x2
	.byte	0xab
	.byte	0x62
	.4byte	0x3e
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x2
	.byte	0xab
	.byte	0x6b
	.4byte	0x3e
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x17
	.4byte	.LASF136
	.byte	0x2
	.byte	0xad
	.byte	0x9
	.4byte	0x11b
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x17
	.4byte	.LASF137
	.byte	0x2
	.byte	0xae
	.byte	0x9
	.4byte	0x11b
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x17
	.4byte	.LASF138
	.byte	0x2
	.byte	0xaf
	.byte	0xc
	.4byte	0x12d
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0x2
	.byte	0xaf
	.byte	0x39
	.4byte	0x12d
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x17
	.4byte	.LASF140
	.byte	0x2
	.byte	0xb0
	.byte	0xc
	.4byte	0x12d
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x17
	.4byte	.LASF141
	.byte	0x2
	.byte	0xb0
	.byte	0x39
	.4byte	0x12d
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x17
	.4byte	.LASF142
	.byte	0x2
	.byte	0xb2
	.byte	0xc
	.4byte	0x9a
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x360
	.4byte	0x2b1c
	.uleb128 0x25
	.ascii	"dN\000"
	.byte	0x2
	.byte	0xb8
	.byte	0xd
	.4byte	0x12d
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0x25
	.ascii	"dM\000"
	.byte	0x2
	.byte	0xb9
	.byte	0xd
	.4byte	0x12d
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x17
	.4byte	.LASF143
	.byte	0x2
	.byte	0xbb
	.byte	0xd
	.4byte	0x12d
	.4byte	.LLST81
	.4byte	.LVUS81
	.uleb128 0x18
	.4byte	0x31c9
	.4byte	.LBI539
	.2byte	.LVU429
	.4byte	.Ldebug_ranges0+0x388
	.byte	0x2
	.byte	0xbc
	.byte	0x3
	.4byte	0x2a89
	.uleb128 0x19
	.4byte	0x31d7
	.4byte	.LLST82
	.4byte	.LVUS82
	.uleb128 0x19
	.4byte	0x31e3
	.4byte	.LLST83
	.4byte	.LVUS83
	.uleb128 0x19
	.4byte	0x31ef
	.4byte	.LLST84
	.4byte	.LVUS84
	.uleb128 0x19
	.4byte	0x31fb
	.4byte	.LLST85
	.4byte	.LVUS85
	.uleb128 0x2c
	.4byte	0x31c9
	.4byte	.LBI541
	.2byte	.LVU489
	.4byte	.LBB541
	.4byte	.LBE541
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.uleb128 0x19
	.4byte	0x31d7
	.4byte	.LLST86
	.4byte	.LVUS86
	.uleb128 0x19
	.4byte	0x31e3
	.4byte	.LLST87
	.4byte	.LVUS87
	.uleb128 0x19
	.4byte	0x31ef
	.4byte	.LLST88
	.4byte	.LVUS88
	.uleb128 0x19
	.4byte	0x31fb
	.4byte	.LLST89
	.4byte	.LVUS89
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x31c9
	.4byte	.LBI546
	.2byte	.LVU444
	.4byte	.Ldebug_ranges0+0x3a8
	.byte	0x2
	.byte	0xbd
	.byte	0x3
	.uleb128 0x19
	.4byte	0x31d7
	.4byte	.LLST90
	.4byte	.LVUS90
	.uleb128 0x19
	.4byte	0x31e3
	.4byte	.LLST91
	.4byte	.LVUS91
	.uleb128 0x19
	.4byte	0x31ef
	.4byte	.LLST92
	.4byte	.LVUS92
	.uleb128 0x19
	.4byte	0x31fb
	.4byte	.LLST93
	.4byte	.LVUS93
	.uleb128 0x2c
	.4byte	0x31c9
	.4byte	.LBI548
	.2byte	.LVU506
	.4byte	.LBB548
	.4byte	.LBE548
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.uleb128 0x19
	.4byte	0x31d7
	.4byte	.LLST94
	.4byte	.LVUS94
	.uleb128 0x19
	.4byte	0x31e3
	.4byte	.LLST95
	.4byte	.LVUS95
	.uleb128 0x19
	.4byte	0x31ef
	.4byte	.LLST96
	.4byte	.LVUS96
	.uleb128 0x19
	.4byte	0x31fb
	.4byte	.LLST97
	.4byte	.LVUS97
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x3279
	.4byte	.LBI498
	.2byte	.LVU340
	.4byte	.Ldebug_ranges0+0x278
	.byte	0x2
	.byte	0xaf
	.byte	0x15
	.4byte	0x2b40
	.uleb128 0x19
	.4byte	0x328b
	.4byte	.LLST64
	.4byte	.LVUS64
	.byte	0
	.uleb128 0x18
	.4byte	0x3279
	.4byte	.LBI503
	.2byte	.LVU343
	.4byte	.Ldebug_ranges0+0x2a0
	.byte	0x2
	.byte	0xaf
	.byte	0x42
	.4byte	0x2b64
	.uleb128 0x19
	.4byte	0x328b
	.4byte	.LLST65
	.4byte	.LVUS65
	.byte	0
	.uleb128 0x18
	.4byte	0x3279
	.4byte	.LBI506
	.2byte	.LVU347
	.4byte	.Ldebug_ranges0+0x2b8
	.byte	0x2
	.byte	0xb0
	.byte	0x15
	.4byte	0x2b88
	.uleb128 0x19
	.4byte	0x328b
	.4byte	.LLST66
	.4byte	.LVUS66
	.byte	0
	.uleb128 0x18
	.4byte	0x3279
	.4byte	.LBI512
	.2byte	.LVU356
	.4byte	.Ldebug_ranges0+0x2e0
	.byte	0x2
	.byte	0xb0
	.byte	0x42
	.4byte	0x2ba4
	.uleb128 0x2d
	.4byte	0x328b
	.byte	0
	.uleb128 0x18
	.4byte	0x3208
	.4byte	.LBI521
	.2byte	.LVU363
	.4byte	.Ldebug_ranges0+0x308
	.byte	0x2
	.byte	0xb1
	.byte	0x9
	.4byte	0x2be2
	.uleb128 0x19
	.4byte	0x321a
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x1d
	.4byte	0x3226
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x1d
	.4byte	0x3232
	.4byte	.LLST69
	.4byte	.LVUS69
	.byte	0
	.uleb128 0x28
	.4byte	0x3296
	.4byte	.LBI527
	.2byte	.LVU372
	.4byte	.LBB527
	.4byte	.LBE527
	.byte	0x2
	.byte	0xb1
	.byte	0x9
	.4byte	0x2c24
	.uleb128 0x19
	.4byte	0x32a8
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x19
	.4byte	0x32b2
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x19
	.4byte	0x32bc
	.4byte	.LLST72
	.4byte	.LVUS72
	.byte	0
	.uleb128 0x18
	.4byte	0x3208
	.4byte	.LBI529
	.2byte	.LVU382
	.4byte	.Ldebug_ranges0+0x328
	.byte	0x2
	.byte	0xb2
	.byte	0x13
	.4byte	0x2c62
	.uleb128 0x19
	.4byte	0x321a
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x1d
	.4byte	0x3226
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x1d
	.4byte	0x3232
	.4byte	.LLST75
	.4byte	.LVUS75
	.byte	0
	.uleb128 0x29
	.4byte	0x3296
	.4byte	.LBI534
	.2byte	.LVU391
	.4byte	.Ldebug_ranges0+0x348
	.byte	0x2
	.byte	0xb2
	.byte	0x13
	.uleb128 0x19
	.4byte	0x32a8
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x19
	.4byte	0x32b2
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x19
	.4byte	0x32bc
	.4byte	.LLST78
	.4byte	.LVUS78
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF144
	.byte	0x2
	.byte	0x85
	.byte	0xd
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST98
	.byte	0x1
	.4byte	0x30eb
	.uleb128 0x3e
	.ascii	"t\000"
	.byte	0x2
	.byte	0x85
	.byte	0x2b
	.4byte	0x67f
	.byte	0x1
	.byte	0x50
	.uleb128 0x3f
	.4byte	.LASF77
	.byte	0x2
	.byte	0x85
	.byte	0x43
	.4byte	0x1119
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.ascii	"p0\000"
	.byte	0x2
	.byte	0x85
	.byte	0x57
	.4byte	0xb88
	.4byte	.LLST99
	.4byte	.LVUS99
	.uleb128 0x15
	.ascii	"p1\000"
	.byte	0x2
	.byte	0x85
	.byte	0x69
	.4byte	0xb88
	.4byte	.LLST100
	.4byte	.LVUS100
	.uleb128 0x15
	.ascii	"p2\000"
	.byte	0x2
	.byte	0x85
	.byte	0x7b
	.4byte	0xb88
	.4byte	.LLST101
	.4byte	.LVUS101
	.uleb128 0x15
	.ascii	"top\000"
	.byte	0x2
	.byte	0x85
	.byte	0x83
	.4byte	0x3e
	.4byte	.LLST102
	.4byte	.LVUS102
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x2
	.byte	0x85
	.byte	0x8c
	.4byte	0x3e
	.4byte	.LLST103
	.4byte	.LVUS103
	.uleb128 0x17
	.4byte	.LASF136
	.byte	0x2
	.byte	0x87
	.byte	0x9
	.4byte	0x11b
	.4byte	.LLST104
	.4byte	.LVUS104
	.uleb128 0x17
	.4byte	.LASF137
	.byte	0x2
	.byte	0x88
	.byte	0x9
	.4byte	0x11b
	.4byte	.LLST105
	.4byte	.LVUS105
	.uleb128 0x17
	.4byte	.LASF138
	.byte	0x2
	.byte	0x89
	.byte	0xc
	.4byte	0x12d
	.4byte	.LLST106
	.4byte	.LVUS106
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0x2
	.byte	0x89
	.byte	0x39
	.4byte	0x12d
	.4byte	.LLST107
	.4byte	.LVUS107
	.uleb128 0x17
	.4byte	.LASF140
	.byte	0x2
	.byte	0x8a
	.byte	0xc
	.4byte	0x12d
	.4byte	.LLST108
	.4byte	.LVUS108
	.uleb128 0x17
	.4byte	.LASF141
	.byte	0x2
	.byte	0x8a
	.byte	0x39
	.4byte	0x12d
	.4byte	.LLST109
	.4byte	.LVUS109
	.uleb128 0x17
	.4byte	.LASF142
	.byte	0x2
	.byte	0x8c
	.byte	0xc
	.4byte	0x9a
	.4byte	.LLST110
	.4byte	.LVUS110
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x4a8
	.4byte	0x2f6a
	.uleb128 0x25
	.ascii	"dN\000"
	.byte	0x2
	.byte	0x92
	.byte	0xd
	.4byte	0x12d
	.4byte	.LLST126
	.4byte	.LVUS126
	.uleb128 0x25
	.ascii	"dM\000"
	.byte	0x2
	.byte	0x93
	.byte	0xd
	.4byte	0x12d
	.4byte	.LLST127
	.4byte	.LVUS127
	.uleb128 0x17
	.4byte	.LASF143
	.byte	0x2
	.byte	0x95
	.byte	0xd
	.4byte	0x12d
	.4byte	.LLST128
	.4byte	.LVUS128
	.uleb128 0x18
	.4byte	0x31c9
	.4byte	.LBI634
	.2byte	.LVU632
	.4byte	.Ldebug_ranges0+0x4d0
	.byte	0x2
	.byte	0x96
	.byte	0x3
	.4byte	0x2e97
	.uleb128 0x19
	.4byte	0x31d7
	.4byte	.LLST129
	.4byte	.LVUS129
	.uleb128 0x19
	.4byte	0x31e3
	.4byte	.LLST130
	.4byte	.LVUS130
	.uleb128 0x19
	.4byte	0x31ef
	.4byte	.LLST131
	.4byte	.LVUS131
	.uleb128 0x19
	.4byte	0x31fb
	.4byte	.LLST132
	.4byte	.LVUS132
	.uleb128 0x2c
	.4byte	0x31c9
	.4byte	.LBI636
	.2byte	.LVU739
	.4byte	.LBB636
	.4byte	.LBE636
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.uleb128 0x19
	.4byte	0x31d7
	.4byte	.LLST133
	.4byte	.LVUS133
	.uleb128 0x19
	.4byte	0x31e3
	.4byte	.LLST134
	.4byte	.LVUS134
	.uleb128 0x19
	.4byte	0x31ef
	.4byte	.LLST135
	.4byte	.LVUS135
	.uleb128 0x19
	.4byte	0x31fb
	.4byte	.LLST136
	.4byte	.LVUS136
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x31c9
	.4byte	.LBI639
	.2byte	.LVU647
	.4byte	.Ldebug_ranges0+0x4e8
	.byte	0x2
	.byte	0x97
	.byte	0x3
	.4byte	0x2f2d
	.uleb128 0x19
	.4byte	0x31d7
	.4byte	.LLST137
	.4byte	.LVUS137
	.uleb128 0x19
	.4byte	0x31e3
	.4byte	.LLST138
	.4byte	.LVUS138
	.uleb128 0x19
	.4byte	0x31ef
	.4byte	.LLST139
	.4byte	.LVUS139
	.uleb128 0x19
	.4byte	0x31fb
	.4byte	.LLST140
	.4byte	.LVUS140
	.uleb128 0x2c
	.4byte	0x31c9
	.4byte	.LBI641
	.2byte	.LVU755
	.4byte	.LBB641
	.4byte	.LBE641
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.uleb128 0x19
	.4byte	0x31d7
	.4byte	.LLST141
	.4byte	.LVUS141
	.uleb128 0x19
	.4byte	0x31e3
	.4byte	.LLST142
	.4byte	.LVUS142
	.uleb128 0x19
	.4byte	0x31ef
	.4byte	.LLST143
	.4byte	.LVUS143
	.uleb128 0x19
	.4byte	0x31fb
	.4byte	.LLST144
	.4byte	.LVUS144
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x325c
	.4byte	.LBI644
	.2byte	.LVU689
	.4byte	.Ldebug_ranges0+0x500
	.byte	0x2
	.byte	0x9a
	.byte	0x12
	.4byte	0x2f51
	.uleb128 0x19
	.4byte	0x326e
	.4byte	.LLST145
	.4byte	.LVUS145
	.byte	0
	.uleb128 0x29
	.4byte	0x325c
	.4byte	.LBI649
	.2byte	.LVU695
	.4byte	.Ldebug_ranges0+0x528
	.byte	0x2
	.byte	0x9b
	.byte	0x12
	.uleb128 0x2d
	.4byte	0x326e
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x3279
	.4byte	.LBI591
	.2byte	.LVU525
	.4byte	.Ldebug_ranges0+0x3c0
	.byte	0x2
	.byte	0x89
	.byte	0x15
	.4byte	0x2f8e
	.uleb128 0x19
	.4byte	0x328b
	.4byte	.LLST111
	.4byte	.LVUS111
	.byte	0
	.uleb128 0x18
	.4byte	0x3279
	.4byte	.LBI596
	.2byte	.LVU528
	.4byte	.Ldebug_ranges0+0x3e8
	.byte	0x2
	.byte	0x89
	.byte	0x42
	.4byte	0x2fb2
	.uleb128 0x19
	.4byte	0x328b
	.4byte	.LLST112
	.4byte	.LVUS112
	.byte	0
	.uleb128 0x18
	.4byte	0x3279
	.4byte	.LBI599
	.2byte	.LVU532
	.4byte	.Ldebug_ranges0+0x400
	.byte	0x2
	.byte	0x8a
	.byte	0x15
	.4byte	0x2fd6
	.uleb128 0x19
	.4byte	0x328b
	.4byte	.LLST113
	.4byte	.LVUS113
	.byte	0
	.uleb128 0x18
	.4byte	0x3279
	.4byte	.LBI605
	.2byte	.LVU541
	.4byte	.Ldebug_ranges0+0x428
	.byte	0x2
	.byte	0x8a
	.byte	0x42
	.4byte	0x2ff2
	.uleb128 0x2d
	.4byte	0x328b
	.byte	0
	.uleb128 0x18
	.4byte	0x3208
	.4byte	.LBI614
	.2byte	.LVU548
	.4byte	.Ldebug_ranges0+0x450
	.byte	0x2
	.byte	0x8b
	.byte	0x9
	.4byte	0x3030
	.uleb128 0x19
	.4byte	0x321a
	.4byte	.LLST114
	.4byte	.LVUS114
	.uleb128 0x1d
	.4byte	0x3226
	.4byte	.LLST115
	.4byte	.LVUS115
	.uleb128 0x1d
	.4byte	0x3232
	.4byte	.LLST116
	.4byte	.LVUS116
	.byte	0
	.uleb128 0x28
	.4byte	0x3296
	.4byte	.LBI620
	.2byte	.LVU557
	.4byte	.LBB620
	.4byte	.LBE620
	.byte	0x2
	.byte	0x8b
	.byte	0x9
	.4byte	0x3072
	.uleb128 0x19
	.4byte	0x32a8
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x19
	.4byte	0x32b2
	.4byte	.LLST118
	.4byte	.LVUS118
	.uleb128 0x19
	.4byte	0x32bc
	.4byte	.LLST119
	.4byte	.LVUS119
	.byte	0
	.uleb128 0x18
	.4byte	0x3208
	.4byte	.LBI622
	.2byte	.LVU567
	.4byte	.Ldebug_ranges0+0x470
	.byte	0x2
	.byte	0x8c
	.byte	0x13
	.4byte	0x30b0
	.uleb128 0x19
	.4byte	0x321a
	.4byte	.LLST120
	.4byte	.LVUS120
	.uleb128 0x1d
	.4byte	0x3226
	.4byte	.LLST121
	.4byte	.LVUS121
	.uleb128 0x1d
	.4byte	0x3232
	.4byte	.LLST122
	.4byte	.LVUS122
	.byte	0
	.uleb128 0x29
	.4byte	0x3296
	.4byte	.LBI627
	.2byte	.LVU576
	.4byte	.Ldebug_ranges0+0x490
	.byte	0x2
	.byte	0x8c
	.byte	0x13
	.uleb128 0x19
	.4byte	0x32a8
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x19
	.4byte	0x32b2
	.4byte	.LLST124
	.4byte	.LVUS124
	.uleb128 0x19
	.4byte	0x32bc
	.4byte	.LLST125
	.4byte	.LVUS125
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF145
	.byte	0x2
	.byte	0x49
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x31c3
	.uleb128 0x36
	.ascii	"t\000"
	.byte	0x2
	.byte	0x49
	.byte	0x2f
	.4byte	0x31c3
	.uleb128 0x36
	.ascii	"p0\000"
	.byte	0x2
	.byte	0x49
	.byte	0x40
	.4byte	0xb88
	.uleb128 0x36
	.ascii	"p1\000"
	.byte	0x2
	.byte	0x49
	.byte	0x52
	.4byte	0xb88
	.uleb128 0x36
	.ascii	"p2\000"
	.byte	0x2
	.byte	0x49
	.byte	0x64
	.4byte	0xb88
	.uleb128 0x36
	.ascii	"uvs\000"
	.byte	0x2
	.byte	0x49
	.byte	0x74
	.4byte	0xb8e
	.uleb128 0x32
	.4byte	.LASF115
	.byte	0x2
	.byte	0x49
	.byte	0x88
	.4byte	0xd6
	.uleb128 0x33
	.ascii	"det\000"
	.byte	0x2
	.byte	0x4b
	.byte	0xe
	.4byte	0xd6
	.uleb128 0x34
	.4byte	.LASF146
	.byte	0x2
	.byte	0x50
	.byte	0x8
	.4byte	0x29
	.uleb128 0x34
	.4byte	.LASF147
	.byte	0x2
	.byte	0x51
	.byte	0x8
	.4byte	0x29
	.uleb128 0x33
	.ascii	"x02\000"
	.byte	0x2
	.byte	0x66
	.byte	0x8
	.4byte	0x29
	.uleb128 0x33
	.ascii	"y02\000"
	.byte	0x2
	.byte	0x67
	.byte	0x8
	.4byte	0x29
	.uleb128 0x33
	.ascii	"x12\000"
	.byte	0x2
	.byte	0x68
	.byte	0x8
	.4byte	0x29
	.uleb128 0x33
	.ascii	"y12\000"
	.byte	0x2
	.byte	0x69
	.byte	0x8
	.4byte	0x29
	.uleb128 0x40
	.4byte	0x31a2
	.uleb128 0x34
	.4byte	.LASF23
	.byte	0x2
	.byte	0x54
	.byte	0xf
	.4byte	0xd6
	.byte	0
	.uleb128 0x40
	.4byte	0x31b4
	.uleb128 0x34
	.4byte	.LASF23
	.byte	0x2
	.byte	0x5a
	.byte	0xf
	.4byte	0xd6
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.4byte	.LASF23
	.byte	0x2
	.byte	0x60
	.byte	0xf
	.4byte	0xd6
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1f7
	.uleb128 0x31
	.4byte	.LASF148
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.byte	0x1
	.byte	0x3
	.4byte	0x3208
	.uleb128 0x32
	.4byte	.LASF33
	.byte	0x2
	.byte	0x2c
	.byte	0x24
	.4byte	0x3e
	.uleb128 0x32
	.4byte	.LASF34
	.byte	0x2
	.byte	0x2c
	.byte	0x33
	.4byte	0x3e
	.uleb128 0x32
	.4byte	.LASF149
	.byte	0x2
	.byte	0x2c
	.byte	0x45
	.4byte	0x273f
	.uleb128 0x32
	.4byte	.LASF150
	.byte	0x2
	.byte	0x2c
	.byte	0x53
	.4byte	0x273f
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF151
	.byte	0x2
	.byte	0x1d
	.byte	0x13
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x323f
	.uleb128 0x32
	.4byte	.LASF152
	.byte	0x2
	.byte	0x1d
	.byte	0x26
	.4byte	0x12d
	.uleb128 0x33
	.ascii	"res\000"
	.byte	0x2
	.byte	0x1f
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x34
	.4byte	.LASF33
	.byte	0x2
	.byte	0x20
	.byte	0x6
	.4byte	0x3e
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF153
	.byte	0x2
	.byte	0x1a
	.byte	0x55
	.byte	0x1
	.4byte	0x139
	.byte	0x3
	.4byte	0x325c
	.uleb128 0x36
	.ascii	"v\000"
	.byte	0x2
	.byte	0x1a
	.byte	0x6d
	.4byte	0x29
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF154
	.byte	0x2
	.byte	0x19
	.byte	0x50
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0x3279
	.uleb128 0x36
	.ascii	"v\000"
	.byte	0x2
	.byte	0x19
	.byte	0x6b
	.4byte	0x12d
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF155
	.byte	0x2
	.byte	0x18
	.byte	0x54
	.byte	0x1
	.4byte	0x12d
	.byte	0x3
	.4byte	0x3296
	.uleb128 0x36
	.ascii	"v\000"
	.byte	0x2
	.byte	0x18
	.byte	0x6b
	.4byte	0x29
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF156
	.byte	0x3
	.byte	0xaf
	.byte	0x13
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x32c7
	.uleb128 0x36
	.ascii	"v\000"
	.byte	0x3
	.byte	0xaf
	.byte	0x1f
	.4byte	0x3e
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x3
	.byte	0xaf
	.byte	0x26
	.4byte	0x3e
	.uleb128 0x36
	.ascii	"b\000"
	.byte	0x3
	.byte	0xaf
	.byte	0x2d
	.4byte	0x3e
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF157
	.byte	0x3
	.byte	0x96
	.byte	0x13
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x32ee
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x3
	.byte	0x96
	.byte	0x1c
	.4byte	0x3e
	.uleb128 0x36
	.ascii	"b\000"
	.byte	0x3
	.byte	0x96
	.byte	0x23
	.4byte	0x3e
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF158
	.byte	0x3
	.byte	0x91
	.byte	0x13
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x3315
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x3
	.byte	0x91
	.byte	0x1c
	.4byte	0x3e
	.uleb128 0x36
	.ascii	"b\000"
	.byte	0x3
	.byte	0x91
	.byte	0x23
	.4byte	0x3e
	.byte	0
	.uleb128 0x41
	.4byte	.LASF159
	.byte	0x3
	.byte	0x1d
	.byte	0x18
	.byte	0x1
	.4byte	0xbc
	.byte	0x3
	.uleb128 0x36
	.ascii	"n\000"
	.byte	0x3
	.byte	0x1d
	.byte	0x26
	.4byte	0xbc
	.uleb128 0x34
	.4byte	.LASF160
	.byte	0x3
	.byte	0x21
	.byte	0xb
	.4byte	0xbc
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST330:
	.4byte	.LFB75
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LCFI18
	.4byte	.LCFI19
	.2byte	0x3
	.byte	0x7d
	.sleb128 400
	.4byte	.LCFI19
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LCFI20
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI21
	.4byte	.LFE75
	.2byte	0x3
	.byte	0x7d
	.sleb128 400
	.4byte	0
	.4byte	0
.LVUS331:
	.uleb128 0
	.uleb128 .LVU1771
	.uleb128 .LVU1771
	.uleb128 .LVU1901
	.uleb128 .LVU1901
	.uleb128 .LVU2025
	.uleb128 .LVU2025
	.uleb128 .LVU2032
	.uleb128 .LVU2032
	.uleb128 .LVU2149
	.uleb128 .LVU2149
	.uleb128 .LVU2150
	.uleb128 .LVU2150
	.uleb128 .LVU2154
	.uleb128 .LVU2154
	.uleb128 .LVU2157
	.uleb128 .LVU2157
	.uleb128 .LVU2162
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2171
	.uleb128 .LVU2178
	.uleb128 .LVU2178
	.uleb128 0
.LLST331:
	.4byte	.LVL434
	.4byte	.LVL439
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL439
	.4byte	.LVL453
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL453
	.4byte	.LVL461
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL461
	.4byte	.LVL463
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL463
	.4byte	.LVL468
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL468
	.4byte	.LVL469
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LVL470
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL470
	.4byte	.LVL471
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL471
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL472
	.4byte	.LVL474
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL475
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS332:
	.uleb128 0
	.uleb128 .LVU1755
	.uleb128 .LVU1755
	.uleb128 .LVU1902
	.uleb128 .LVU1902
	.uleb128 .LVU2021
	.uleb128 .LVU2021
	.uleb128 .LVU2033
	.uleb128 .LVU2033
	.uleb128 .LVU2149
	.uleb128 .LVU2149
	.uleb128 .LVU2150
	.uleb128 .LVU2150
	.uleb128 0
.LLST332:
	.4byte	.LVL434
	.4byte	.LVL437
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL437
	.4byte	.LVL454
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL454
	.4byte	.LVL460
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL460
	.4byte	.LVL464
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL464
	.4byte	.LVL468
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL468
	.4byte	.LVL469
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS333:
	.uleb128 0
	.uleb128 .LVU1884
	.uleb128 .LVU1884
	.uleb128 .LVU1903
	.uleb128 .LVU1903
	.uleb128 .LVU2150
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2171
	.uleb128 .LVU2178
	.uleb128 .LVU2178
	.uleb128 0
.LLST333:
	.4byte	.LVL434
	.4byte	.LVL448-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL448-1
	.4byte	.LVL455
	.2byte	0x3
	.byte	0x91
	.sleb128 -376
	.4byte	.LVL455
	.4byte	.LVL469
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL472
	.4byte	.LVL474
	.2byte	0x3
	.byte	0x91
	.sleb128 -376
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL475
	.4byte	.LFE75
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS334:
	.uleb128 0
	.uleb128 .LVU1884
	.uleb128 .LVU1884
	.uleb128 .LVU2150
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2171
	.uleb128 .LVU2178
	.uleb128 .LVU2178
	.uleb128 0
.LLST334:
	.4byte	.LVL434
	.4byte	.LVL448-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL448-1
	.4byte	.LVL469
	.2byte	0x3
	.byte	0x91
	.sleb128 -372
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL472
	.4byte	.LVL474
	.2byte	0x3
	.byte	0x91
	.sleb128 -372
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL475
	.4byte	.LFE75
	.2byte	0x3
	.byte	0x91
	.sleb128 -372
	.4byte	0
	.4byte	0
.LVUS335:
	.uleb128 0
	.uleb128 .LVU2150
	.uleb128 .LVU2150
	.uleb128 0
.LLST335:
	.4byte	.LVL434
	.4byte	.LVL469
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL469
	.4byte	.LFE75
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS336:
	.uleb128 0
	.uleb128 .LVU2150
	.uleb128 .LVU2150
	.uleb128 0
.LLST336:
	.4byte	.LVL434
	.4byte	.LVL469
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL469
	.4byte	.LFE75
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS337:
	.uleb128 .LVU1897
	.uleb128 .LVU1900
	.uleb128 .LVU1903
	.uleb128 .LVU1968
	.uleb128 .LVU1968
	.uleb128 .LVU2019
	.uleb128 .LVU2019
	.uleb128 .LVU2020
	.uleb128 .LVU2031
	.uleb128 .LVU2033
	.uleb128 .LVU2033
	.uleb128 .LVU2105
	.uleb128 .LVU2105
	.uleb128 .LVU2148
	.uleb128 .LVU2148
	.uleb128 .LVU2149
	.uleb128 .LVU2168
	.uleb128 .LVU2171
.LLST337:
	.4byte	.LVL451
	.4byte	.LVL452
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL455
	.4byte	.LVL457
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL457
	.4byte	.LVL458
	.2byte	0x3
	.byte	0x79
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL458
	.4byte	.LVL459
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL462
	.4byte	.LVL464
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL464
	.4byte	.LVL466
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL466
	.4byte	.LVL467
	.2byte	0x3
	.byte	0x79
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL467
	.4byte	.LVL468
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL473
	.4byte	.LVL474
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS338:
	.uleb128 .LVU1752
	.uleb128 .LVU1790
	.uleb128 .LVU1790
	.uleb128 .LVU1887
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST338:
	.4byte	.LVL435
	.4byte	.LVL441
	.2byte	0x4
	.byte	0x91
	.sleb128 -368
	.byte	0x9f
	.4byte	.LVL441
	.4byte	.LVL450
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x4
	.byte	0x91
	.sleb128 -368
	.byte	0x9f
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x4
	.byte	0x91
	.sleb128 -368
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS339:
	.uleb128 .LVU1752
	.uleb128 .LVU1884
	.uleb128 .LVU1884
	.uleb128 .LVU1887
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST339:
	.4byte	.LVL435
	.4byte	.LVL448-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL448-1
	.4byte	.LVL450
	.2byte	0x3
	.byte	0x91
	.sleb128 -376
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS340:
	.uleb128 .LVU1752
	.uleb128 .LVU1884
	.uleb128 .LVU1884
	.uleb128 .LVU1887
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST340:
	.4byte	.LVL435
	.4byte	.LVL448-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL448-1
	.4byte	.LVL450
	.2byte	0x3
	.byte	0x91
	.sleb128 -372
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS341:
	.uleb128 .LVU1754
	.uleb128 .LVU1887
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST341:
	.4byte	.LVL436
	.4byte	.LVL450
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS342:
	.uleb128 .LVU1755
	.uleb128 .LVU1790
	.uleb128 .LVU1790
	.uleb128 .LVU1887
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST342:
	.4byte	.LVL437
	.4byte	.LVL441
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL441
	.4byte	.LVL450
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS343:
	.uleb128 .LVU1755
	.uleb128 .LVU1887
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST343:
	.4byte	.LVL437
	.4byte	.LVL450
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x40a00000
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x40a00000
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x40a00000
	.4byte	0
	.4byte	0
.LVUS344:
	.uleb128 .LVU1758
	.uleb128 .LVU1794
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST344:
	.4byte	.LVL437
	.4byte	.LVL443
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS345:
	.uleb128 .LVU1758
	.uleb128 .LVU1794
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST345:
	.4byte	.LVL437
	.4byte	.LVL443
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS346:
	.uleb128 .LVU1758
	.uleb128 .LVU1794
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST346:
	.4byte	.LVL437
	.4byte	.LVL443
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS347:
	.uleb128 .LVU1757
	.uleb128 .LVU1794
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST347:
	.4byte	.LVL437
	.4byte	.LVL443
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS348:
	.uleb128 .LVU1757
	.uleb128 .LVU1794
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST348:
	.4byte	.LVL437
	.4byte	.LVL443
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS349:
	.uleb128 .LVU1757
	.uleb128 .LVU1794
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST349:
	.4byte	.LVL437
	.4byte	.LVL443
	.2byte	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x9f
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS350:
	.uleb128 .LVU1760
	.uleb128 .LVU1776
	.uleb128 .LVU1776
	.uleb128 .LVU1791
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST350:
	.4byte	.LVL437
	.4byte	.LVL440
	.2byte	0x2
	.byte	0x90
	.uleb128 0x45
	.4byte	.LVL440
	.4byte	.LVL442
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x2
	.byte	0x90
	.uleb128 0x45
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x2
	.byte	0x90
	.uleb128 0x45
	.4byte	0
	.4byte	0
.LVUS351:
	.uleb128 .LVU1760
	.uleb128 .LVU1794
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST351:
	.4byte	.LVL437
	.4byte	.LVL443
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS352:
	.uleb128 .LVU1761
	.uleb128 .LVU1794
	.uleb128 .LVU2150
	.uleb128 .LVU2162
	.uleb128 .LVU2171
	.uleb128 .LVU2178
.LLST352:
	.4byte	.LVL438
	.4byte	.LVL443
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS353:
	.uleb128 .LVU1797
	.uleb128 .LVU1878
.LLST353:
	.4byte	.LVL443
	.4byte	.LVL447
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x40a00000
	.4byte	0
	.4byte	0
.LVUS354:
	.uleb128 .LVU1796
	.uleb128 .LVU1878
.LLST354:
	.4byte	.LVL443
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS355:
	.uleb128 .LVU1796
	.uleb128 .LVU1878
.LLST355:
	.4byte	.LVL443
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS356:
	.uleb128 .LVU1796
	.uleb128 .LVU1878
.LLST356:
	.4byte	.LVL443
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS357:
	.uleb128 .LVU1796
	.uleb128 .LVU1878
.LLST357:
	.4byte	.LVL443
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS358:
	.uleb128 .LVU1796
	.uleb128 .LVU1878
.LLST358:
	.4byte	.LVL443
	.4byte	.LVL447
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS359:
	.uleb128 .LVU1835
	.uleb128 .LVU1873
	.uleb128 .LVU1873
	.uleb128 .LVU1884
.LLST359:
	.4byte	.LVL444
	.4byte	.LVL446
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL446
	.4byte	.LVL448-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -308
	.4byte	0
	.4byte	0
.LVUS360:
	.uleb128 .LVU1836
	.uleb128 .LVU1873
	.uleb128 .LVU1873
	.uleb128 .LVU1878
.LLST360:
	.4byte	.LVL444
	.4byte	.LVL446
	.2byte	0x5
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL446
	.4byte	.LVL447
	.2byte	0x8
	.byte	0x91
	.sleb128 -308
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS361:
	.uleb128 .LVU1858
	.uleb128 .LVU1884
.LLST361:
	.4byte	.LVL445
	.4byte	.LVL448-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.4byte	0
	.4byte	0
.LVUS362:
	.uleb128 .LVU1859
	.uleb128 .LVU1884
.LLST362:
	.4byte	.LVL445
	.4byte	.LVL448-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x45
	.4byte	0
	.4byte	0
.LVUS363:
	.uleb128 .LVU1837
	.uleb128 .LVU1878
.LLST363:
	.4byte	.LVL444
	.4byte	.LVL447
	.2byte	0x2
	.byte	0x90
	.uleb128 0x46
	.4byte	0
	.4byte	0
.LVUS364:
	.uleb128 .LVU1854
	.uleb128 .LVU1878
.LLST364:
	.4byte	.LVL445
	.4byte	.LVL447
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.4byte	0
	.4byte	0
.LVUS365:
	.uleb128 .LVU1850
	.uleb128 .LVU1878
.LLST365:
	.4byte	.LVL445
	.4byte	.LVL447
	.2byte	0x2
	.byte	0x90
	.uleb128 0x47
	.4byte	0
	.4byte	0
.LVUS366:
	.uleb128 .LVU1889
	.uleb128 .LVU1894
	.uleb128 .LVU2162
	.uleb128 .LVU2165
.LLST366:
	.4byte	.LVL450
	.4byte	.LVL451
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL472
	.4byte	.LVL473
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS367:
	.uleb128 .LVU1906
	.uleb128 .LVU1966
.LLST367:
	.4byte	.LVL456
	.4byte	.LVL457
	.2byte	0x4
	.byte	0x91
	.sleb128 -368
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS368:
	.uleb128 .LVU1908
	.uleb128 .LVU1911
.LLST368:
	.4byte	.LVL456
	.4byte	.LVL456
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS369:
	.uleb128 .LVU1913
	.uleb128 .LVU1966
.LLST369:
	.4byte	.LVL456
	.4byte	.LVL457
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS370:
	.uleb128 .LVU2022
	.uleb128 .LVU2025
.LLST370:
	.4byte	.LVL460
	.4byte	.LVL461
	.2byte	0x4
	.byte	0x91
	.sleb128 -368
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS371:
	.uleb128 .LVU2035
	.uleb128 .LVU2103
.LLST371:
	.4byte	.LVL465
	.4byte	.LVL466
	.2byte	0x4
	.byte	0x91
	.sleb128 -368
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS372:
	.uleb128 .LVU2037
	.uleb128 .LVU2040
.LLST372:
	.4byte	.LVL465
	.4byte	.LVL465
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS373:
	.uleb128 .LVU2042
	.uleb128 .LVU2103
.LLST373:
	.4byte	.LVL465
	.4byte	.LVL466
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB74
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI5
	.4byte	.LFE74
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU317
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xa
	.byte	0x73
	.sleb128 20
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x13
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x14
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1a
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x14
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL61
	.2byte	0x21
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x14
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x21
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x14
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE74
	.2byte	0x10
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18
	.4byte	.LVL62
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE74
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL62
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE74
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU95
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU324
	.uleb128 0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL64
	.4byte	.LFE74
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU317
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x60
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x5c
	.4byte	.LVL8
	.4byte	.LVL8
	.2byte	0xe
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x58
	.4byte	.LVL8
	.4byte	.LVL8
	.2byte	0x1c
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x54
	.4byte	.LVL8
	.4byte	.LVL8
	.2byte	0x2a
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x50
	.4byte	.LVL8
	.4byte	.LVL8
	.2byte	0x38
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4c
	.4byte	.LVL8
	.4byte	.LVL8
	.2byte	0x4a
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x48
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x5c
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x44
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x44
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x32
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4c
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x2e
	.byte	0x93
	.uleb128 0xc
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4c
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2e
	.byte	0x93
	.uleb128 0xc
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4c
	.4byte	.LVL19
	.4byte	.LVL36
	.2byte	0x36
	.byte	0x93
	.uleb128 0xc
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x44
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x36
	.byte	0x93
	.uleb128 0xc
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x44
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x36
	.byte	0x93
	.uleb128 0xc
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x44
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x2e
	.byte	0x93
	.uleb128 0xc
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4c
	.4byte	.LVL43
	.4byte	.LVL61
	.2byte	0x39
	.byte	0x93
	.uleb128 0xc
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x34
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4c
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x5c
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x44
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x39
	.byte	0x93
	.uleb128 0xc
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x34
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4c
	.4byte	.LVL64
	.4byte	.LFE74
	.2byte	0x5c
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41000000
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x44
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU66
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU201
	.uleb128 .LVU248
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL63
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU68
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU161
	.uleb128 .LVU182
	.uleb128 .LVU201
	.uleb128 .LVU248
	.uleb128 .LVU274
	.uleb128 .LVU293
	.uleb128 .LVU303
	.uleb128 .LVU324
	.uleb128 0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64
	.4byte	.LFE74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU75
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU75
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU172
	.uleb128 .LVU182
	.uleb128 .LVU201
	.uleb128 .LVU248
	.uleb128 .LVU285
	.uleb128 .LVU293
	.uleb128 .LVU308
	.uleb128 .LVU324
	.uleb128 0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LFE74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU134
	.uleb128 .LVU136
.LLST29:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU138
	.uleb128 .LVU183
.LLST30:
	.4byte	.LVL23
	.4byte	.LVL34
	.2byte	0x12
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU147
	.uleb128 .LVU183
.LLST31:
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1b
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x48
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x48
	.byte	0x24
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU148
	.uleb128 .LVU161
.LLST32:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU162
	.uleb128 .LVU167
.LLST33:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU167
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU180
.LLST34:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7b
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU167
	.uleb128 .LVU180
.LLST35:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU167
	.uleb128 .LVU175
.LLST36:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU248
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 .LVU324
.LLST38:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU252
	.uleb128 .LVU296
.LLST39:
	.4byte	.LVL46
	.4byte	.LVL57
	.2byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU260
	.uleb128 .LVU296
.LLST40:
	.4byte	.LVL48
	.4byte	.LVL57
	.2byte	0x1b
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x48
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x8000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x48
	.byte	0x24
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU261
	.uleb128 .LVU274
.LLST41:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU275
	.uleb128 .LVU280
.LLST42:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU280
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU293
.LLST43:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x7a
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU280
	.uleb128 .LVU293
.LLST44:
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU280
	.uleb128 .LVU288
.LLST45:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU6
	.uleb128 .LVU64
	.uleb128 .LVU319
	.uleb128 .LVU320
.LLST11:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3090
	.sleb128 0
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3090
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU6
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU64
	.uleb128 .LVU319
	.uleb128 .LVU320
.LLST12:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU6
	.uleb128 .LVU64
	.uleb128 .LVU319
	.uleb128 .LVU320
.LLST13:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU6
	.uleb128 .LVU64
	.uleb128 .LVU319
	.uleb128 .LVU320
.LLST14:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU11
	.uleb128 .LVU14
.LLST15:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU11
	.uleb128 .LVU14
.LLST16:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU16
	.uleb128 .LVU20
.LLST17:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xa
	.2byte	0x190
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU17
	.uleb128 .LVU20
.LLST18:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU203
	.uleb128 .LVU245
.LLST19:
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3090
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU203
	.uleb128 .LVU245
.LLST20:
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU203
	.uleb128 .LVU245
.LLST21:
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU208
	.uleb128 .LVU213
.LLST22:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x90
	.uleb128 0x44
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU215
	.uleb128 .LVU218
.LLST23:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU98
	.uleb128 .LVU131
.LLST24:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3090
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU105
	.uleb128 .LVU107
.LLST25:
	.4byte	.LVL20
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU109
	.uleb128 .LVU111
.LLST26:
	.4byte	.LVL20
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU113
	.uleb128 .LVU115
.LLST27:
	.4byte	.LVL20
	.4byte	.LVL20
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x44
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4a
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU123
	.uleb128 .LVU125
.LLST28:
	.4byte	.LVL21
	.4byte	.LVL21
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU186
	.uleb128 .LVU198
.LLST37:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3090
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU300
	.uleb128 .LVU303
.LLST46:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU304
	.uleb128 .LVU308
.LLST47:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU309
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 .LVU324
.LLST48:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU309
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 .LVU324
.LLST49:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU309
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 .LVU324
.LLST50:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LFB73
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x3
	.byte	0x7d
	.sleb128 160
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI15
	.4byte	.LFE73
	.2byte	0x3
	.byte	0x7d
	.sleb128 160
	.4byte	0
	.4byte	0
.LVUS245:
	.uleb128 0
	.uleb128 .LVU1326
	.uleb128 .LVU1326
	.uleb128 .LVU1346
	.uleb128 .LVU1346
	.uleb128 .LVU1358
	.uleb128 .LVU1358
	.uleb128 .LVU1719
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 .LVU1740
	.uleb128 0
.LLST245:
	.4byte	.LVL328
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL337
	.4byte	.LVL345
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL345
	.4byte	.LVL351
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL351
	.4byte	.LVL426
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL428
	.4byte	.LVL432
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS246:
	.uleb128 0
	.uleb128 .LVU1324
	.uleb128 .LVU1324
	.uleb128 .LVU1346
	.uleb128 .LVU1346
	.uleb128 .LVU1356
	.uleb128 .LVU1356
	.uleb128 .LVU1552
	.uleb128 .LVU1552
	.uleb128 .LVU1718
	.uleb128 .LVU1718
	.uleb128 .LVU1719
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1731
	.uleb128 .LVU1737
	.uleb128 .LVU1737
	.uleb128 .LVU1740
	.uleb128 .LVU1740
	.uleb128 0
.LLST246:
	.4byte	.LVL328
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL335
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL345
	.4byte	.LVL349
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL349
	.4byte	.LVL394
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL394
	.4byte	.LVL425
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL425
	.4byte	.LVL426
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL431
	.4byte	.LVL432
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS247:
	.uleb128 0
	.uleb128 .LVU1325
	.uleb128 .LVU1325
	.uleb128 .LVU1331
	.uleb128 .LVU1331
	.uleb128 .LVU1332
	.uleb128 .LVU1332
	.uleb128 .LVU1346
	.uleb128 .LVU1346
	.uleb128 .LVU1357
	.uleb128 .LVU1357
	.uleb128 .LVU1363
	.uleb128 .LVU1363
	.uleb128 .LVU1364
	.uleb128 .LVU1364
	.uleb128 .LVU1719
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 .LVU1740
	.uleb128 0
.LLST247:
	.4byte	.LVL328
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL336
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL341
	.4byte	.LVL342-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL342-1
	.4byte	.LVL345
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL345
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL350
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL355
	.4byte	.LVL356-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL356-1
	.4byte	.LVL426
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL428
	.4byte	.LVL432
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS248:
	.uleb128 0
	.uleb128 .LVU1306
	.uleb128 .LVU1306
	.uleb128 .LVU1379
	.uleb128 .LVU1379
	.uleb128 .LVU1719
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 .LVU1740
	.uleb128 0
.LLST248:
	.4byte	.LVL328
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL331
	.4byte	.LVL359
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL359
	.4byte	.LVL426
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL428
	.4byte	.LVL432
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS249:
	.uleb128 0
	.uleb128 .LVU1719
	.uleb128 .LVU1719
	.uleb128 0
.LLST249:
	.4byte	.LVL328
	.4byte	.LVL426
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL426
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS250:
	.uleb128 0
	.uleb128 .LVU1719
	.uleb128 .LVU1719
	.uleb128 0
.LLST250:
	.4byte	.LVL328
	.4byte	.LVL426
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL426
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS251:
	.uleb128 .LVU1343
	.uleb128 .LVU1345
	.uleb128 .LVU1345
	.uleb128 .LVU1346
	.uleb128 .LVU1375
	.uleb128 .LVU1377
	.uleb128 .LVU1377
	.uleb128 .LVU1538
	.uleb128 .LVU1538
	.uleb128 .LVU1543
	.uleb128 .LVU1550
	.uleb128 .LVU1552
	.uleb128 .LVU1552
	.uleb128 .LVU1716
	.uleb128 .LVU1716
	.uleb128 .LVU1717
	.uleb128 .LVU1717
	.uleb128 .LVU1718
	.uleb128 .LVU1731
	.uleb128 .LVU1737
.LLST251:
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL357
	.4byte	.LVL358
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL358
	.4byte	.LVL390
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL390
	.4byte	.LVL392
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL393
	.4byte	.LVL394
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL394
	.4byte	.LVL423
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL423
	.4byte	.LVL424
	.2byte	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL424
	.4byte	.LVL425
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS252:
	.uleb128 .LVU1301
	.uleb128 .LVU1322
	.uleb128 .LVU1322
	.uleb128 .LVU1333
	.uleb128 .LVU1346
	.uleb128 .LVU1354
	.uleb128 .LVU1354
	.uleb128 .LVU1365
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST252:
	.4byte	.LVL329
	.4byte	.LVL334
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	.LVL334
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL345
	.4byte	.LVL347
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	.LVL347
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS253:
	.uleb128 .LVU1303
	.uleb128 .LVU1325
	.uleb128 .LVU1325
	.uleb128 .LVU1331
	.uleb128 .LVU1331
	.uleb128 .LVU1332
	.uleb128 .LVU1332
	.uleb128 .LVU1333
	.uleb128 .LVU1346
	.uleb128 .LVU1357
	.uleb128 .LVU1357
	.uleb128 .LVU1363
	.uleb128 .LVU1363
	.uleb128 .LVU1364
	.uleb128 .LVU1364
	.uleb128 .LVU1365
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST253:
	.4byte	.LVL330
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL336
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL341
	.4byte	.LVL342-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL342-1
	.4byte	.LVL342
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL345
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL350
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL355
	.4byte	.LVL356-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL356-1
	.4byte	.LVL356
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS254:
	.uleb128 .LVU1303
	.uleb128 .LVU1306
	.uleb128 .LVU1306
	.uleb128 .LVU1333
	.uleb128 .LVU1346
	.uleb128 .LVU1365
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST254:
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL331
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL345
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS255:
	.uleb128 .LVU1303
	.uleb128 .LVU1333
	.uleb128 .LVU1346
	.uleb128 .LVU1355
	.uleb128 .LVU1355
	.uleb128 .LVU1365
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST255:
	.4byte	.LVL330
	.4byte	.LVL342
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL345
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL348
	.4byte	.LVL356
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS256:
	.uleb128 .LVU1319
	.uleb128 .LVU1329
	.uleb128 .LVU1329
	.uleb128 .LVU1330
	.uleb128 .LVU1351
	.uleb128 .LVU1361
	.uleb128 .LVU1361
	.uleb128 .LVU1362
	.uleb128 .LVU1720
	.uleb128 .LVU1725
	.uleb128 .LVU1726
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 .LVU1744
	.uleb128 .LVU1744
	.uleb128 0
.LLST256:
	.4byte	.LVL333
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL339
	.4byte	.LVL340-1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL346
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL353
	.4byte	.LVL354-1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL426
	.4byte	.LVL427
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL427
	.4byte	.LVL428
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL432
	.4byte	.LVL433
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL433
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS257:
	.uleb128 .LVU1319
	.uleb128 .LVU1333
	.uleb128 .LVU1351
	.uleb128 .LVU1365
.LLST257:
	.4byte	.LVL333
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL346
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS258:
	.uleb128 .LVU1319
	.uleb128 .LVU1333
	.uleb128 .LVU1351
	.uleb128 .LVU1365
.LLST258:
	.4byte	.LVL333
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL346
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS259:
	.uleb128 .LVU1309
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST259:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS260:
	.uleb128 .LVU1309
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST260:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS261:
	.uleb128 .LVU1309
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST261:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS262:
	.uleb128 .LVU1308
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST262:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4649
	.sleb128 0
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4649
	.sleb128 0
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4649
	.sleb128 0
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4649
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS263:
	.uleb128 .LVU1308
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST263:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4662
	.sleb128 0
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4662
	.sleb128 0
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4662
	.sleb128 0
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4662
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS264:
	.uleb128 .LVU1308
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST264:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4675
	.sleb128 0
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4675
	.sleb128 0
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4675
	.sleb128 0
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4675
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS265:
	.uleb128 .LVU1311
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST265:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS266:
	.uleb128 .LVU1311
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST266:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS267:
	.uleb128 .LVU1311
	.uleb128 .LVU1320
	.uleb128 .LVU1346
	.uleb128 .LVU1352
	.uleb128 .LVU1719
	.uleb128 .LVU1731
	.uleb128 .LVU1740
	.uleb128 0
.LLST267:
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL432
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS268:
	.uleb128 .LVU1335
	.uleb128 .LVU1340
	.uleb128 .LVU1367
	.uleb128 .LVU1372
.LLST268:
	.4byte	.LVL342
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL356
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS269:
	.uleb128 .LVU1382
	.uleb128 .LVU1484
.LLST269:
	.4byte	.LVL360
	.4byte	.LVL387
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	0
	.4byte	0
.LVUS270:
	.uleb128 .LVU1382
	.uleb128 .LVU1484
.LLST270:
	.4byte	.LVL360
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS271:
	.uleb128 .LVU1382
	.uleb128 .LVU1403
.LLST271:
	.4byte	.LVL360
	.4byte	.LVL365-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS272:
	.uleb128 .LVU1382
	.uleb128 .LVU1403
.LLST272:
	.4byte	.LVL360
	.4byte	.LVL365-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS273:
	.uleb128 .LVU1382
	.uleb128 .LVU1484
.LLST273:
	.4byte	.LVL360
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS274:
	.uleb128 .LVU1390
	.uleb128 .LVU1422
	.uleb128 .LVU1422
	.uleb128 .LVU1437
	.uleb128 .LVU1437
	.uleb128 .LVU1476
.LLST274:
	.4byte	.LVL362
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL370
	.4byte	.LVL374
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL374
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS275:
	.uleb128 .LVU1398
	.uleb128 .LVU1403
	.uleb128 .LVU1403
	.uleb128 .LVU1543
.LLST275:
	.4byte	.LVL364
	.4byte	.LVL365-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL365-1
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS276:
	.uleb128 .LVU1406
	.uleb128 .LVU1411
	.uleb128 .LVU1411
	.uleb128 .LVU1413
.LLST276:
	.4byte	.LVL366
	.4byte	.LVL367
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL367
	.4byte	.LVL368
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS277:
	.uleb128 .LVU1407
	.uleb128 .LVU1413
.LLST277:
	.4byte	.LVL366
	.4byte	.LVL368
	.2byte	0xb
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS278:
	.uleb128 .LVU1408
	.uleb128 .LVU1418
	.uleb128 .LVU1418
	.uleb128 .LVU1440
	.uleb128 .LVU1460
	.uleb128 .LVU1466
.LLST278:
	.4byte	.LVL366
	.4byte	.LVL369
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL381
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS279:
	.uleb128 .LVU1417
	.uleb128 .LVU1424
	.uleb128 .LVU1424
	.uleb128 .LVU1460
	.uleb128 .LVU1460
	.uleb128 .LVU1484
.LLST279:
	.4byte	.LVL369
	.4byte	.LVL371
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL371
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL381
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS280:
	.uleb128 .LVU1417
	.uleb128 .LVU1418
	.uleb128 .LVU1418
	.uleb128 .LVU1451
	.uleb128 .LVU1460
	.uleb128 .LVU1471
.LLST280:
	.4byte	.LVL369
	.4byte	.LVL369
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL381
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS281:
	.uleb128 .LVU1427
	.uleb128 .LVU1432
	.uleb128 .LVU1432
	.uleb128 .LVU1457
.LLST281:
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x11
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4f
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL373
	.4byte	.LVL379
	.2byte	0x10
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7e
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x2b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4f
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS282:
	.uleb128 .LVU1428
	.uleb128 .LVU1440
.LLST282:
	.4byte	.LVL372
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS283:
	.uleb128 .LVU1441
	.uleb128 .LVU1446
.LLST283:
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS284:
	.uleb128 .LVU1446
	.uleb128 .LVU1459
	.uleb128 .LVU1459
	.uleb128 .LVU1460
.LLST284:
	.4byte	.LVL376
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS285:
	.uleb128 .LVU1446
	.uleb128 .LVU1460
.LLST285:
	.4byte	.LVL376
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS286:
	.uleb128 .LVU1446
	.uleb128 .LVU1454
.LLST286:
	.4byte	.LVL376
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS287:
	.uleb128 .LVU1392
	.uleb128 .LVU1398
.LLST287:
	.4byte	.LVL362
	.4byte	.LVL364
	.2byte	0x4
	.byte	0xa
	.2byte	0x190
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS288:
	.uleb128 .LVU1392
	.uleb128 .LVU1395
	.uleb128 .LVU1395
	.uleb128 .LVU1398
.LLST288:
	.4byte	.LVL362
	.4byte	.LVL363
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL363
	.4byte	.LVL364
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS289:
	.uleb128 .LVU1386
	.uleb128 .LVU1390
.LLST289:
	.4byte	.LVL361
	.4byte	.LVL362
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS290:
	.uleb128 .LVU1386
	.uleb128 .LVU1390
.LLST290:
	.4byte	.LVL361
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS291:
	.uleb128 .LVU1463
	.uleb128 .LVU1466
.LLST291:
	.4byte	.LVL382
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS292:
	.uleb128 .LVU1467
	.uleb128 .LVU1471
.LLST292:
	.4byte	.LVL383
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS293:
	.uleb128 .LVU1472
	.uleb128 .LVU1484
.LLST293:
	.4byte	.LVL384
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS294:
	.uleb128 .LVU1472
	.uleb128 .LVU1484
.LLST294:
	.4byte	.LVL384
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS295:
	.uleb128 .LVU1472
	.uleb128 .LVU1480
.LLST295:
	.4byte	.LVL384
	.4byte	.LVL386
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS296:
	.uleb128 .LVU1486
	.uleb128 .LVU1536
.LLST296:
	.4byte	.LVL387
	.4byte	.LVL389
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	0
	.4byte	0
.LVUS297:
	.uleb128 .LVU1488
	.uleb128 .LVU1511
.LLST297:
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS298:
	.uleb128 .LVU1513
	.uleb128 .LVU1536
.LLST298:
	.4byte	.LVL388
	.4byte	.LVL389
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS299:
	.uleb128 .LVU1540
	.uleb128 .LVU1543
.LLST299:
	.4byte	.LVL391
	.4byte	.LVL392
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	0
	.4byte	0
.LVUS300:
	.uleb128 .LVU1554
	.uleb128 .LVU1656
	.uleb128 .LVU1731
	.uleb128 .LVU1737
.LLST300:
	.4byte	.LVL394
	.4byte	.LVL421
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	0
	.4byte	0
.LVUS301:
	.uleb128 .LVU1554
	.uleb128 .LVU1656
	.uleb128 .LVU1731
	.uleb128 .LVU1737
.LLST301:
	.4byte	.LVL394
	.4byte	.LVL421
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS302:
	.uleb128 .LVU1554
	.uleb128 .LVU1575
.LLST302:
	.4byte	.LVL394
	.4byte	.LVL399-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS303:
	.uleb128 .LVU1554
	.uleb128 .LVU1575
.LLST303:
	.4byte	.LVL394
	.4byte	.LVL399-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS304:
	.uleb128 .LVU1554
	.uleb128 .LVU1656
	.uleb128 .LVU1731
	.uleb128 .LVU1737
.LLST304:
	.4byte	.LVL394
	.4byte	.LVL421
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS305:
	.uleb128 .LVU1562
	.uleb128 .LVU1594
	.uleb128 .LVU1594
	.uleb128 .LVU1609
	.uleb128 .LVU1609
	.uleb128 .LVU1656
	.uleb128 .LVU1731
	.uleb128 .LVU1737
.LLST305:
	.4byte	.LVL396
	.4byte	.LVL404
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL404
	.4byte	.LVL408
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL408
	.4byte	.LVL421
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS306:
	.uleb128 .LVU1570
	.uleb128 .LVU1575
	.uleb128 .LVU1575
	.uleb128 .LVU1718
	.uleb128 .LVU1731
	.uleb128 .LVU1737
.LLST306:
	.4byte	.LVL398
	.4byte	.LVL399-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL399-1
	.4byte	.LVL425
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS307:
	.uleb128 .LVU1578
	.uleb128 .LVU1583
	.uleb128 .LVU1583
	.uleb128 .LVU1585
.LLST307:
	.4byte	.LVL400
	.4byte	.LVL401
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL401
	.4byte	.LVL402
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS308:
	.uleb128 .LVU1579
	.uleb128 .LVU1585
.LLST308:
	.4byte	.LVL400
	.4byte	.LVL402
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS309:
	.uleb128 .LVU1580
	.uleb128 .LVU1590
	.uleb128 .LVU1590
	.uleb128 .LVU1612
	.uleb128 .LVU1632
	.uleb128 .LVU1638
.LLST309:
	.4byte	.LVL400
	.4byte	.LVL403
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL403
	.4byte	.LVL409
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL415
	.4byte	.LVL417
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS310:
	.uleb128 .LVU1589
	.uleb128 .LVU1596
	.uleb128 .LVU1596
	.uleb128 .LVU1632
	.uleb128 .LVU1632
	.uleb128 .LVU1655
	.uleb128 .LVU1731
	.uleb128 .LVU1735
.LLST310:
	.4byte	.LVL403
	.4byte	.LVL405
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL405
	.4byte	.LVL415
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL415
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL428
	.4byte	.LVL429
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS311:
	.uleb128 .LVU1589
	.uleb128 .LVU1590
	.uleb128 .LVU1590
	.uleb128 .LVU1623
	.uleb128 .LVU1632
	.uleb128 .LVU1643
.LLST311:
	.4byte	.LVL403
	.4byte	.LVL403
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL403
	.4byte	.LVL411
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL415
	.4byte	.LVL418
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS312:
	.uleb128 .LVU1599
	.uleb128 .LVU1604
	.uleb128 .LVU1604
	.uleb128 .LVU1629
.LLST312:
	.4byte	.LVL406
	.4byte	.LVL407
	.2byte	0x11
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4f
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL407
	.4byte	.LVL413
	.2byte	0x10
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7e
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x2b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4f
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS313:
	.uleb128 .LVU1600
	.uleb128 .LVU1612
.LLST313:
	.4byte	.LVL406
	.4byte	.LVL409
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS314:
	.uleb128 .LVU1613
	.uleb128 .LVU1618
.LLST314:
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS315:
	.uleb128 .LVU1618
	.uleb128 .LVU1631
	.uleb128 .LVU1631
	.uleb128 .LVU1632
.LLST315:
	.4byte	.LVL410
	.4byte	.LVL414
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL414
	.4byte	.LVL415
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS316:
	.uleb128 .LVU1618
	.uleb128 .LVU1632
.LLST316:
	.4byte	.LVL410
	.4byte	.LVL415
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS317:
	.uleb128 .LVU1618
	.uleb128 .LVU1626
.LLST317:
	.4byte	.LVL410
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS318:
	.uleb128 .LVU1564
	.uleb128 .LVU1570
.LLST318:
	.4byte	.LVL396
	.4byte	.LVL398
	.2byte	0x4
	.byte	0xa
	.2byte	0x190
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS319:
	.uleb128 .LVU1564
	.uleb128 .LVU1567
	.uleb128 .LVU1567
	.uleb128 .LVU1570
.LLST319:
	.4byte	.LVL396
	.4byte	.LVL397
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL397
	.4byte	.LVL398
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS320:
	.uleb128 .LVU1558
	.uleb128 .LVU1562
.LLST320:
	.4byte	.LVL395
	.4byte	.LVL396
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS321:
	.uleb128 .LVU1558
	.uleb128 .LVU1562
.LLST321:
	.4byte	.LVL395
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS322:
	.uleb128 .LVU1635
	.uleb128 .LVU1638
.LLST322:
	.4byte	.LVL416
	.4byte	.LVL417
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS323:
	.uleb128 .LVU1639
	.uleb128 .LVU1643
.LLST323:
	.4byte	.LVL417
	.4byte	.LVL418
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS324:
	.uleb128 .LVU1644
	.uleb128 .LVU1655
	.uleb128 .LVU1731
	.uleb128 .LVU1735
.LLST324:
	.4byte	.LVL418
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL428
	.4byte	.LVL429
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS325:
	.uleb128 .LVU1644
	.uleb128 .LVU1656
	.uleb128 .LVU1731
	.uleb128 .LVU1737
.LLST325:
	.4byte	.LVL418
	.4byte	.LVL421
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS326:
	.uleb128 .LVU1644
	.uleb128 .LVU1652
	.uleb128 .LVU1731
	.uleb128 .LVU1736
.LLST326:
	.4byte	.LVL418
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL428
	.4byte	.LVL430
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS327:
	.uleb128 .LVU1658
	.uleb128 .LVU1714
.LLST327:
	.4byte	.LVL421
	.4byte	.LVL423
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS328:
	.uleb128 .LVU1660
	.uleb128 .LVU1686
.LLST328:
	.4byte	.LVL421
	.4byte	.LVL422
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS329:
	.uleb128 .LVU1688
	.uleb128 .LVU1714
.LLST329:
	.4byte	.LVL422
	.4byte	.LVL423
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LFB71
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x3
	.byte	0x7d
	.sleb128 208
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI11
	.4byte	.LFE71
	.2byte	0x3
	.byte	0x7d
	.sleb128 208
	.4byte	0
	.4byte	0
.LVUS147:
	.uleb128 0
	.uleb128 .LVU793
	.uleb128 .LVU793
	.uleb128 .LVU812
	.uleb128 .LVU812
	.uleb128 .LVU825
	.uleb128 .LVU825
	.uleb128 .LVU1201
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 .LVU1290
	.uleb128 0
.LLST147:
	.4byte	.LVL187
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL198
	.4byte	.LVL206
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL206
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL211
	.4byte	.LVL290
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL294
	.4byte	.LVL325
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS148:
	.uleb128 0
	.uleb128 .LVU791
	.uleb128 .LVU791
	.uleb128 .LVU812
	.uleb128 .LVU812
	.uleb128 .LVU823
	.uleb128 .LVU823
	.uleb128 .LVU1201
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 .LVU1290
	.uleb128 0
.LLST148:
	.4byte	.LVL187
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL196
	.4byte	.LVL206
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL206
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL209
	.4byte	.LVL290
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL294
	.4byte	.LVL325
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS149:
	.uleb128 0
	.uleb128 .LVU792
	.uleb128 .LVU792
	.uleb128 .LVU798
	.uleb128 .LVU798
	.uleb128 .LVU799
	.uleb128 .LVU799
	.uleb128 .LVU812
	.uleb128 .LVU812
	.uleb128 .LVU824
	.uleb128 .LVU824
	.uleb128 .LVU828
	.uleb128 .LVU828
	.uleb128 .LVU829
	.uleb128 .LVU829
	.uleb128 .LVU1201
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 .LVU1290
	.uleb128 0
.LLST149:
	.4byte	.LVL187
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL202
	.4byte	.LVL203-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL203-1
	.4byte	.LVL206
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL214
	.4byte	.LVL215-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL215-1
	.4byte	.LVL290
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL294
	.4byte	.LVL325
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS150:
	.uleb128 0
	.uleb128 .LVU784
	.uleb128 .LVU784
	.uleb128 .LVU811
	.uleb128 .LVU811
	.uleb128 .LVU812
	.uleb128 .LVU812
	.uleb128 .LVU819
	.uleb128 .LVU819
	.uleb128 .LVU841
	.uleb128 .LVU841
	.uleb128 .LVU1201
	.uleb128 .LVU1201
	.uleb128 .LVU1208
	.uleb128 .LVU1208
	.uleb128 .LVU1210
	.uleb128 .LVU1210
	.uleb128 .LVU1217
	.uleb128 .LVU1217
	.uleb128 .LVU1219
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 .LVU1290
	.uleb128 .LVU1294
	.uleb128 .LVU1294
	.uleb128 0
.LLST150:
	.4byte	.LVL187
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL207
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL217
	.4byte	.LVL290
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL291
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL294
	.4byte	.LVL325
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS151:
	.uleb128 0
	.uleb128 .LVU1201
	.uleb128 .LVU1201
	.uleb128 0
.LLST151:
	.4byte	.LVL187
	.4byte	.LVL290
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL290
	.4byte	.LFE71
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS152:
	.uleb128 0
	.uleb128 .LVU1201
	.uleb128 .LVU1201
	.uleb128 0
.LLST152:
	.4byte	.LVL187
	.4byte	.LVL290
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL290
	.4byte	.LFE71
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS153:
	.uleb128 .LVU809
	.uleb128 .LVU811
	.uleb128 .LVU811
	.uleb128 .LVU812
	.uleb128 .LVU839
	.uleb128 .LVU841
	.uleb128 .LVU841
	.uleb128 .LVU854
	.uleb128 .LVU854
	.uleb128 .LVU1015
	.uleb128 .LVU1015
	.uleb128 .LVU1021
	.uleb128 .LVU1028
	.uleb128 .LVU1031
	.uleb128 .LVU1031
	.uleb128 .LVU1198
	.uleb128 .LVU1198
	.uleb128 .LVU1199
	.uleb128 .LVU1199
	.uleb128 .LVU1200
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST153:
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL218
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL250
	.4byte	.LVL252
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL287
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x3
	.byte	0x79
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS154:
	.uleb128 .LVU766
	.uleb128 .LVU790
	.uleb128 .LVU790
	.uleb128 .LVU800
	.uleb128 .LVU812
	.uleb128 .LVU822
	.uleb128 .LVU822
	.uleb128 .LVU830
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST154:
	.4byte	.LVL188
	.4byte	.LVL195
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL206
	.4byte	.LVL208
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS155:
	.uleb128 .LVU768
	.uleb128 .LVU792
	.uleb128 .LVU792
	.uleb128 .LVU798
	.uleb128 .LVU798
	.uleb128 .LVU799
	.uleb128 .LVU799
	.uleb128 .LVU800
	.uleb128 .LVU812
	.uleb128 .LVU824
	.uleb128 .LVU824
	.uleb128 .LVU828
	.uleb128 .LVU828
	.uleb128 .LVU829
	.uleb128 .LVU829
	.uleb128 .LVU830
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST155:
	.4byte	.LVL189
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL202
	.4byte	.LVL203-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL203-1
	.4byte	.LVL203
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL214
	.4byte	.LVL215-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL215-1
	.4byte	.LVL215
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS156:
	.uleb128 .LVU769
	.uleb128 .LVU784
	.uleb128 .LVU784
	.uleb128 .LVU800
	.uleb128 .LVU812
	.uleb128 .LVU819
	.uleb128 .LVU819
	.uleb128 .LVU830
	.uleb128 .LVU1201
	.uleb128 .LVU1208
	.uleb128 .LVU1208
	.uleb128 .LVU1210
	.uleb128 .LVU1210
	.uleb128 .LVU1217
	.uleb128 .LVU1217
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 .LVU1294
	.uleb128 .LVU1294
	.uleb128 0
.LLST156:
	.4byte	.LVL190
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL207
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL291
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS157:
	.uleb128 .LVU770
	.uleb128 .LVU800
	.uleb128 .LVU812
	.uleb128 .LVU830
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST157:
	.4byte	.LVL191
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL206
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS158:
	.uleb128 .LVU787
	.uleb128 .LVU796
	.uleb128 .LVU796
	.uleb128 .LVU797
	.uleb128 .LVU819
	.uleb128 .LVU830
	.uleb128 .LVU1202
	.uleb128 .LVU1210
	.uleb128 .LVU1211
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 .LVU1293
	.uleb128 .LVU1293
	.uleb128 0
.LLST158:
	.4byte	.LVL194
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL200
	.4byte	.LVL201-1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL207
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL290
	.4byte	.LVL292
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL292
	.4byte	.LVL294
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL326
	.4byte	.LFE71
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS159:
	.uleb128 .LVU787
	.uleb128 .LVU800
	.uleb128 .LVU819
	.uleb128 .LVU830
.LLST159:
	.4byte	.LVL194
	.4byte	.LVL203
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	.LVL207
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS160:
	.uleb128 .LVU787
	.uleb128 .LVU800
	.uleb128 .LVU819
	.uleb128 .LVU830
.LLST160:
	.4byte	.LVL194
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL207
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS161:
	.uleb128 .LVU775
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST161:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS162:
	.uleb128 .LVU775
	.uleb128 .LVU784
	.uleb128 .LVU784
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU819
	.uleb128 .LVU819
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1208
	.uleb128 .LVU1208
	.uleb128 .LVU1210
	.uleb128 .LVU1210
	.uleb128 .LVU1217
	.uleb128 .LVU1217
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 .LVU1294
	.uleb128 .LVU1294
	.uleb128 0
.LLST162:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL207
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL291
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS163:
	.uleb128 .LVU775
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST163:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS164:
	.uleb128 .LVU774
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST164:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7102
	.sleb128 0
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7102
	.sleb128 0
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7102
	.sleb128 0
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7102
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS165:
	.uleb128 .LVU774
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST165:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7115
	.sleb128 0
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7115
	.sleb128 0
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7115
	.sleb128 0
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7115
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS166:
	.uleb128 .LVU774
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST166:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7128
	.sleb128 0
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7128
	.sleb128 0
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7128
	.sleb128 0
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7128
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS167:
	.uleb128 .LVU777
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST167:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS168:
	.uleb128 .LVU777
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST168:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS169:
	.uleb128 .LVU777
	.uleb128 .LVU788
	.uleb128 .LVU812
	.uleb128 .LVU820
	.uleb128 .LVU1201
	.uleb128 .LVU1219
	.uleb128 .LVU1290
	.uleb128 0
.LLST169:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL325
	.4byte	.LFE71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS170:
	.uleb128 .LVU802
	.uleb128 .LVU806
	.uleb128 .LVU832
	.uleb128 .LVU836
.LLST170:
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS171:
	.uleb128 .LVU961
	.uleb128 .LVU1013
.LLST171:
	.4byte	.LVL246
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	0
	.4byte	0
.LVUS172:
	.uleb128 .LVU963
	.uleb128 .LVU988
.LLST172:
	.4byte	.LVL246
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS173:
	.uleb128 .LVU990
	.uleb128 .LVU1013
.LLST173:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS174:
	.uleb128 .LVU856
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST174:
	.4byte	.LVL218
	.4byte	.LVL246
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	0
	.4byte	0
.LVUS175:
	.uleb128 .LVU856
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST175:
	.4byte	.LVL218
	.4byte	.LVL246
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	0
	.4byte	0
.LVUS176:
	.uleb128 .LVU856
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST176:
	.4byte	.LVL218
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS177:
	.uleb128 .LVU856
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST177:
	.4byte	.LVL218
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS178:
	.uleb128 .LVU856
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST178:
	.4byte	.LVL218
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS179:
	.uleb128 .LVU865
	.uleb128 .LVU930
	.uleb128 .LVU930
	.uleb128 .LVU933
	.uleb128 .LVU933
	.uleb128 .LVU937
	.uleb128 .LVU937
	.uleb128 .LVU938
	.uleb128 .LVU1237
	.uleb128 .LVU1250
	.uleb128 .LVU1250
	.uleb128 .LVU1255
	.uleb128 .LVU1255
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST179:
	.4byte	.LVL220
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x3
	.byte	0x76
	.sleb128 -31
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL305
	.4byte	.LVL308
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS180:
	.uleb128 .LVU870
	.uleb128 .LVU935
	.uleb128 .LVU935
	.uleb128 .LVU936
	.uleb128 .LVU936
	.uleb128 .LVU973
	.uleb128 .LVU1237
	.uleb128 .LVU1243
	.uleb128 .LVU1243
	.uleb128 .LVU1255
	.uleb128 .LVU1255
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST180:
	.4byte	.LVL221
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x3
	.byte	0x72
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL247
	.2byte	0x13
	.byte	0xa
	.2byte	0x190
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x190
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302
	.4byte	.LVL308
	.2byte	0x13
	.byte	0xa
	.2byte	0x190
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x190
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x13
	.byte	0xa
	.2byte	0x190
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x190
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS181:
	.uleb128 .LVU874
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST181:
	.4byte	.LVL222
	.4byte	.LVL246
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS182:
	.uleb128 .LVU875
	.uleb128 .LVU928
	.uleb128 .LVU1237
	.uleb128 .LVU1254
	.uleb128 .LVU1255
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1267
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST182:
	.4byte	.LVL222
	.4byte	.LVL235
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL301
	.4byte	.LVL307
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS183:
	.uleb128 .LVU883
	.uleb128 .LVU957
	.uleb128 .LVU1237
	.uleb128 .LVU1252
	.uleb128 .LVU1252
	.uleb128 .LVU1254
	.uleb128 .LVU1255
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST183:
	.4byte	.LVL223
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL301
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x46
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x37
	.byte	0x1a
	.byte	0x1f
	.byte	0x71
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x101
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x37
	.byte	0x1a
	.byte	0x1f
	.byte	0x71
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x101
	.byte	0x1e
	.byte	0x40
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS184:
	.uleb128 .LVU884
	.uleb128 .LVU926
	.uleb128 .LVU926
	.uleb128 .LVU933
	.uleb128 .LVU933
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST184:
	.4byte	.LVL223
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL233
	.4byte	.LVL236
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL246
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS185:
	.uleb128 .LVU891
	.uleb128 .LVU927
	.uleb128 .LVU1237
	.uleb128 .LVU1244
	.uleb128 .LVU1255
	.uleb128 .LVU1257
	.uleb128 .LVU1257
	.uleb128 .LVU1258
	.uleb128 .LVU1278
	.uleb128 .LVU1284
	.uleb128 .LVU1288
	.uleb128 .LVU1289
.LLST185:
	.4byte	.LVL224
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL301
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS186:
	.uleb128 .LVU894
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST186:
	.4byte	.LVL225
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS187:
	.uleb128 .LVU906
	.uleb128 .LVU910
	.uleb128 .LVU910
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST187:
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL227
	.4byte	.LVL246
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	0
	.4byte	0
.LVUS188:
	.uleb128 .LVU908
	.uleb128 .LVU925
	.uleb128 .LVU925
	.uleb128 .LVU933
	.uleb128 .LVU933
	.uleb128 .LVU959
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST188:
	.4byte	.LVL226
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL232
	.4byte	.LVL236
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL246
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS189:
	.uleb128 .LVU913
	.uleb128 .LVU918
	.uleb128 .LVU918
	.uleb128 .LVU919
	.uleb128 .LVU919
	.uleb128 .LVU922
	.uleb128 .LVU922
	.uleb128 .LVU933
	.uleb128 .LVU933
	.uleb128 .LVU939
	.uleb128 .LVU939
	.uleb128 .LVU940
	.uleb128 .LVU940
	.uleb128 .LVU944
	.uleb128 .LVU944
	.uleb128 .LVU948
	.uleb128 .LVU1237
	.uleb128 .LVU1255
	.uleb128 .LVU1255
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST189:
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL231
	.4byte	.LVL236
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL236
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL241
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL301
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS190:
	.uleb128 .LVU867
	.uleb128 .LVU869
.LLST190:
	.4byte	.LVL220
	.4byte	.LVL220
	.2byte	0x4
	.byte	0xa
	.2byte	0x190
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS191:
	.uleb128 .LVU867
	.uleb128 .LVU869
.LLST191:
	.4byte	.LVL220
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS192:
	.uleb128 .LVU860
	.uleb128 .LVU865
.LLST192:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS193:
	.uleb128 .LVU860
	.uleb128 .LVU865
.LLST193:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS194:
	.uleb128 .LVU895
	.uleb128 .LVU906
.LLST194:
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0xd
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS195:
	.uleb128 .LVU919
	.uleb128 .LVU922
	.uleb128 .LVU922
	.uleb128 .LVU928
	.uleb128 .LVU1255
	.uleb128 .LVU1258
.LLST195:
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL235
	.2byte	0x7
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0x7
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS196:
	.uleb128 .LVU919
	.uleb128 .LVU927
	.uleb128 .LVU1255
	.uleb128 .LVU1257
	.uleb128 .LVU1257
	.uleb128 .LVU1258
.LLST196:
	.4byte	.LVL230
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS197:
	.uleb128 .LVU919
	.uleb128 .LVU928
	.uleb128 .LVU1255
	.uleb128 .LVU1258
.LLST197:
	.4byte	.LVL230
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS198:
	.uleb128 .LVU940
	.uleb128 .LVU944
.LLST198:
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS199:
	.uleb128 .LVU940
	.uleb128 .LVU944
.LLST199:
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS200:
	.uleb128 .LVU940
	.uleb128 .LVU944
.LLST200:
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS201:
	.uleb128 .LVU951
	.uleb128 .LVU959
.LLST201:
	.4byte	.LVL244
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS202:
	.uleb128 .LVU951
	.uleb128 .LVU959
.LLST202:
	.4byte	.LVL244
	.4byte	.LVL246
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	0
	.4byte	0
.LVUS203:
	.uleb128 .LVU951
	.uleb128 .LVU957
.LLST203:
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS204:
	.uleb128 .LVU1239
	.uleb128 .LVU1244
	.uleb128 .LVU1244
	.uleb128 .LVU1248
	.uleb128 .LVU1264
	.uleb128 .LVU1268
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
	.uleb128 .LVU1290
.LLST204:
	.4byte	.LVL301
	.4byte	.LVL303
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS205:
	.uleb128 .LVU1245
	.uleb128 .LVU1248
	.uleb128 .LVU1264
	.uleb128 .LVU1268
.LLST205:
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS206:
	.uleb128 .LVU1245
	.uleb128 .LVU1248
	.uleb128 .LVU1264
	.uleb128 .LVU1268
.LLST206:
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS207:
	.uleb128 .LVU1018
	.uleb128 .LVU1022
.LLST207:
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	0
	.4byte	0
.LVUS208:
	.uleb128 .LVU1039
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST208:
	.4byte	.LVL256
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	0
	.4byte	0
.LVUS209:
	.uleb128 .LVU1039
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST209:
	.4byte	.LVL256
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	0
	.4byte	0
.LVUS210:
	.uleb128 .LVU1039
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST210:
	.4byte	.LVL256
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS211:
	.uleb128 .LVU1039
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST211:
	.4byte	.LVL256
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS212:
	.uleb128 .LVU1039
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST212:
	.4byte	.LVL256
	.4byte	.LVL284
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS213:
	.uleb128 .LVU1048
	.uleb128 .LVU1113
	.uleb128 .LVU1113
	.uleb128 .LVU1116
	.uleb128 .LVU1116
	.uleb128 .LVU1120
	.uleb128 .LVU1120
	.uleb128 .LVU1121
	.uleb128 .LVU1219
	.uleb128 .LVU1232
	.uleb128 .LVU1232
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST213:
	.4byte	.LVL258
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL274
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x76
	.sleb128 -31
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL298
	.4byte	.LVL301
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS214:
	.uleb128 .LVU1053
	.uleb128 .LVU1118
	.uleb128 .LVU1118
	.uleb128 .LVU1119
	.uleb128 .LVU1119
	.uleb128 .LVU1156
	.uleb128 .LVU1219
	.uleb128 .LVU1225
	.uleb128 .LVU1225
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1260
	.uleb128 .LVU1260
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST214:
	.4byte	.LVL259
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL275
	.4byte	.LVL276
	.2byte	0x3
	.byte	0x71
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL285
	.2byte	0x13
	.byte	0xa
	.2byte	0x190
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x190
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL295
	.4byte	.LVL301
	.2byte	0x13
	.byte	0xa
	.2byte	0x190
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x190
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x13
	.byte	0xa
	.2byte	0x190
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x190
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS215:
	.uleb128 .LVU1057
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST215:
	.4byte	.LVL260
	.4byte	.LVL284
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0xd
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS216:
	.uleb128 .LVU1058
	.uleb128 .LVU1111
	.uleb128 .LVU1219
	.uleb128 .LVU1236
	.uleb128 .LVU1258
	.uleb128 .LVU1263
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST216:
	.4byte	.LVL260
	.4byte	.LVL273
	.2byte	0xc
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL294
	.4byte	.LVL300
	.2byte	0xc
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL310
	.4byte	.LVL313
	.2byte	0xc
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0xc
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0xc
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS217:
	.uleb128 .LVU1066
	.uleb128 .LVU1140
	.uleb128 .LVU1219
	.uleb128 .LVU1234
	.uleb128 .LVU1234
	.uleb128 .LVU1236
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST217:
	.4byte	.LVL261
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL294
	.4byte	.LVL299
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x46
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x37
	.byte	0x1a
	.byte	0x1f
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x101
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x37
	.byte	0x1a
	.byte	0x1f
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x101
	.byte	0x1e
	.byte	0x40
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS218:
	.uleb128 .LVU1067
	.uleb128 .LVU1109
	.uleb128 .LVU1109
	.uleb128 .LVU1116
	.uleb128 .LVU1116
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST218:
	.4byte	.LVL261
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL271
	.4byte	.LVL274
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL274
	.4byte	.LVL284
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS219:
	.uleb128 .LVU1074
	.uleb128 .LVU1110
	.uleb128 .LVU1219
	.uleb128 .LVU1226
	.uleb128 .LVU1258
	.uleb128 .LVU1259
	.uleb128 .LVU1259
	.uleb128 .LVU1260
	.uleb128 .LVU1271
	.uleb128 .LVU1277
	.uleb128 .LVU1285
	.uleb128 .LVU1287
.LLST219:
	.4byte	.LVL262
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL294
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL321
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS220:
	.uleb128 .LVU1077
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST220:
	.4byte	.LVL263
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS221:
	.uleb128 .LVU1089
	.uleb128 .LVU1093
	.uleb128 .LVU1093
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST221:
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL265
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	0
	.4byte	0
.LVUS222:
	.uleb128 .LVU1091
	.uleb128 .LVU1108
	.uleb128 .LVU1108
	.uleb128 .LVU1116
	.uleb128 .LVU1116
	.uleb128 .LVU1142
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST222:
	.4byte	.LVL264
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL270
	.4byte	.LVL274
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL274
	.4byte	.LVL284
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS223:
	.uleb128 .LVU1096
	.uleb128 .LVU1101
	.uleb128 .LVU1101
	.uleb128 .LVU1102
	.uleb128 .LVU1102
	.uleb128 .LVU1105
	.uleb128 .LVU1105
	.uleb128 .LVU1116
	.uleb128 .LVU1116
	.uleb128 .LVU1122
	.uleb128 .LVU1122
	.uleb128 .LVU1123
	.uleb128 .LVU1123
	.uleb128 .LVU1127
	.uleb128 .LVU1127
	.uleb128 .LVU1131
	.uleb128 .LVU1219
	.uleb128 .LVU1237
	.uleb128 .LVU1258
	.uleb128 .LVU1260
	.uleb128 .LVU1260
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST223:
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL269
	.4byte	.LVL274
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL274
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL279
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL310
	.4byte	.LVL312
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS224:
	.uleb128 .LVU1050
	.uleb128 .LVU1052
.LLST224:
	.4byte	.LVL258
	.4byte	.LVL258
	.2byte	0x4
	.byte	0xa
	.2byte	0x190
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS225:
	.uleb128 .LVU1050
	.uleb128 .LVU1052
.LLST225:
	.4byte	.LVL258
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS226:
	.uleb128 .LVU1043
	.uleb128 .LVU1048
.LLST226:
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS227:
	.uleb128 .LVU1043
	.uleb128 .LVU1048
.LLST227:
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS228:
	.uleb128 .LVU1078
	.uleb128 .LVU1089
.LLST228:
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0xd
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS229:
	.uleb128 .LVU1102
	.uleb128 .LVU1105
	.uleb128 .LVU1105
	.uleb128 .LVU1111
	.uleb128 .LVU1258
	.uleb128 .LVU1260
.LLST229:
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL269
	.4byte	.LVL273
	.2byte	0x7
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL312
	.2byte	0x7
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS230:
	.uleb128 .LVU1102
	.uleb128 .LVU1110
	.uleb128 .LVU1258
	.uleb128 .LVU1259
	.uleb128 .LVU1259
	.uleb128 .LVU1260
.LLST230:
	.4byte	.LVL268
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS231:
	.uleb128 .LVU1102
	.uleb128 .LVU1111
	.uleb128 .LVU1258
	.uleb128 .LVU1260
.LLST231:
	.4byte	.LVL268
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL310
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS232:
	.uleb128 .LVU1123
	.uleb128 .LVU1127
.LLST232:
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS233:
	.uleb128 .LVU1123
	.uleb128 .LVU1127
.LLST233:
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS234:
	.uleb128 .LVU1123
	.uleb128 .LVU1127
.LLST234:
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS235:
	.uleb128 .LVU1134
	.uleb128 .LVU1142
.LLST235:
	.4byte	.LVL282
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS236:
	.uleb128 .LVU1134
	.uleb128 .LVU1142
.LLST236:
	.4byte	.LVL282
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	0
	.4byte	0
.LVUS237:
	.uleb128 .LVU1134
	.uleb128 .LVU1140
.LLST237:
	.4byte	.LVL282
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS238:
	.uleb128 .LVU1221
	.uleb128 .LVU1226
	.uleb128 .LVU1226
	.uleb128 .LVU1230
	.uleb128 .LVU1260
	.uleb128 .LVU1264
	.uleb128 .LVU1271
	.uleb128 .LVU1278
	.uleb128 .LVU1285
	.uleb128 .LVU1288
.LLST238:
	.4byte	.LVL294
	.4byte	.LVL296
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS239:
	.uleb128 .LVU1227
	.uleb128 .LVU1230
	.uleb128 .LVU1260
	.uleb128 .LVU1264
.LLST239:
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS240:
	.uleb128 .LVU1227
	.uleb128 .LVU1230
	.uleb128 .LVU1260
	.uleb128 .LVU1264
.LLST240:
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS241:
	.uleb128 .LVU1144
	.uleb128 .LVU1196
.LLST241:
	.4byte	.LVL284
	.4byte	.LVL287
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS242:
	.uleb128 .LVU1146
	.uleb128 .LVU1171
.LLST242:
	.4byte	.LVL284
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS243:
	.uleb128 .LVU1173
	.uleb128 .LVU1196
.LLST243:
	.4byte	.LVL286
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LFB49
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE49
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU411
	.uleb128 .LVU411
	.uleb128 .LVU465
	.uleb128 .LVU465
	.uleb128 .LVU469
	.uleb128 .LVU469
	.uleb128 .LVU473
	.uleb128 .LVU473
	.uleb128 .LVU480
	.uleb128 .LVU480
	.uleb128 0
.LLST52:
	.4byte	.LVL66
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL79
	.4byte	.LVL85
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL89
	.4byte	.LVL107
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL117
	.4byte	.LFE49
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 0
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU411
	.uleb128 .LVU411
	.uleb128 .LVU473
	.uleb128 .LVU473
	.uleb128 .LVU480
	.uleb128 .LVU480
	.uleb128 0
.LLST53:
	.4byte	.LVL66
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL85
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL111
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE49
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 0
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU389
	.uleb128 .LVU389
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU411
	.uleb128 .LVU411
	.uleb128 .LVU458
	.uleb128 .LVU458
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 .LVU465
	.uleb128 .LVU465
	.uleb128 .LVU480
	.uleb128 .LVU480
	.uleb128 0
.LLST54:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL89
	.4byte	.LVL103
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL117
	.4byte	.LFE49
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 0
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 0
.LLST55:
	.4byte	.LVL66
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL85
	.4byte	.LFE49
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 0
.LLST56:
	.4byte	.LVL66
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL85
	.4byte	.LFE49
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU334
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU408
	.uleb128 .LVU410
	.uleb128 .LVU411
	.uleb128 .LVU411
	.uleb128 .LVU456
	.uleb128 .LVU458
	.uleb128 .LVU473
	.uleb128 .LVU473
	.uleb128 .LVU477
	.uleb128 .LVU478
	.uleb128 .LVU479
	.uleb128 .LVU479
	.uleb128 .LVU480
	.uleb128 .LVU480
	.uleb128 0
.LLST57:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL74
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL89
	.4byte	.LVL102
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL117
	.4byte	.LFE49
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU338
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 .LVU351
	.uleb128 .LVU351
	.uleb128 .LVU405
	.uleb128 .LVU407
	.uleb128 .LVU408
	.uleb128 .LVU411
	.uleb128 .LVU415
	.uleb128 .LVU458
	.uleb128 .LVU473
	.uleb128 .LVU475
	.uleb128 .LVU476
	.uleb128 .LVU476
	.uleb128 .LVU477
.LLST58:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL72
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU342
	.uleb128 .LVU405
	.uleb128 .LVU411
	.uleb128 .LVU473
	.uleb128 .LVU480
	.uleb128 0
.LLST59:
	.4byte	.LVL71
	.4byte	.LVL85
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL111
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LFE49
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU345
	.uleb128 .LVU405
	.uleb128 .LVU411
	.uleb128 .LVU415
	.uleb128 .LVU458
	.uleb128 .LVU473
.LLST60:
	.4byte	.LVL71
	.4byte	.LVL85
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU355
	.uleb128 .LVU405
	.uleb128 .LVU411
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 .LVU458
	.uleb128 .LVU458
	.uleb128 .LVU473
	.uleb128 .LVU480
	.uleb128 0
.LLST61:
	.4byte	.LVL76
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117
	.4byte	.LFE49
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU361
	.uleb128 .LVU405
	.uleb128 .LVU411
	.uleb128 .LVU413
	.uleb128 .LVU413
	.uleb128 .LVU458
	.uleb128 .LVU458
	.uleb128 .LVU473
	.uleb128 .LVU480
	.uleb128 0
.LLST62:
	.4byte	.LVL78
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL90
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL117
	.4byte	.LFE49
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU395
	.uleb128 .LVU398
.LLST63:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x18
	.byte	0x71
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x8
	.byte	0xf0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS79:
	.uleb128 .LVU419
	.uleb128 .LVU435
	.uleb128 .LVU435
	.uleb128 .LVU458
	.uleb128 .LVU480
	.uleb128 0
.LLST79:
	.4byte	.LVL92
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL97
	.4byte	.LVL103
	.2byte	0x8
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LFE49
	.2byte	0x8
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS80:
	.uleb128 .LVU421
	.uleb128 .LVU444
	.uleb128 .LVU444
	.uleb128 .LVU458
	.uleb128 .LVU480
	.uleb128 .LVU497
	.uleb128 .LVU497
	.uleb128 0
.LLST80:
	.4byte	.LVL93
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x8
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL121
	.4byte	.LFE49
	.2byte	0x8
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS81:
	.uleb128 .LVU428
	.uleb128 .LVU433
	.uleb128 .LVU433
	.uleb128 .LVU435
	.uleb128 .LVU435
	.uleb128 .LVU441
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU444
	.uleb128 .LVU458
	.uleb128 .LVU480
	.uleb128 .LVU485
	.uleb128 .LVU485
	.uleb128 .LVU497
	.uleb128 .LVU497
	.uleb128 0
.LLST81:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1f
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x20
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x2a
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1e
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1f
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x20
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE49
	.2byte	0x2a
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1e
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS82:
	.uleb128 .LVU429
	.uleb128 .LVU433
	.uleb128 .LVU433
	.uleb128 .LVU435
	.uleb128 .LVU435
	.uleb128 .LVU441
	.uleb128 .LVU480
	.uleb128 .LVU485
	.uleb128 .LVU485
	.uleb128 .LVU497
.LLST82:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1f
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1f
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x20
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS83:
	.uleb128 .LVU429
	.uleb128 .LVU441
	.uleb128 .LVU480
	.uleb128 .LVU497
.LLST83:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS84:
	.uleb128 .LVU429
	.uleb128 .LVU441
	.uleb128 .LVU480
	.uleb128 .LVU497
.LLST84:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS85:
	.uleb128 .LVU429
	.uleb128 .LVU441
	.uleb128 .LVU480
	.uleb128 .LVU497
.LLST85:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS86:
	.uleb128 .LVU490
	.uleb128 .LVU496
.LLST86:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x20
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1c
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x92
	.uleb128 0x4d
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS87:
	.uleb128 .LVU489
	.uleb128 .LVU496
.LLST87:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS88:
	.uleb128 .LVU489
	.uleb128 .LVU496
.LLST88:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS89:
	.uleb128 .LVU489
	.uleb128 .LVU496
.LLST89:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS90:
	.uleb128 .LVU444
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 .LVU453
	.uleb128 .LVU497
	.uleb128 .LVU500
	.uleb128 .LVU500
	.uleb128 .LVU503
	.uleb128 .LVU503
	.uleb128 0
.LLST90:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0xa
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE49
	.2byte	0xa
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS91:
	.uleb128 .LVU444
	.uleb128 .LVU453
	.uleb128 .LVU497
	.uleb128 0
.LLST91:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS92:
	.uleb128 .LVU444
	.uleb128 .LVU453
	.uleb128 .LVU497
	.uleb128 0
.LLST92:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE49
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS93:
	.uleb128 .LVU444
	.uleb128 .LVU453
	.uleb128 .LVU497
	.uleb128 0
.LLST93:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE49
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS94:
	.uleb128 .LVU507
	.uleb128 .LVU511
.LLST94:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0xa
	.byte	0x92
	.uleb128 0x4b
	.sleb128 0
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS95:
	.uleb128 .LVU506
	.uleb128 .LVU511
.LLST95:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS96:
	.uleb128 .LVU506
	.uleb128 .LVU511
.LLST96:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS97:
	.uleb128 .LVU506
	.uleb128 .LVU511
.LLST97:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS64:
	.uleb128 .LVU340
	.uleb128 .LVU342
.LLST64:
	.4byte	.LVL71
	.4byte	.LVL71
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 .LVU342
	.uleb128 .LVU345
.LLST65:
	.4byte	.LVL71
	.4byte	.LVL71
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 .LVU347
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 .LVU354
.LLST66:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS67:
	.uleb128 .LVU363
	.uleb128 .LVU371
	.uleb128 .LVU465
	.uleb128 .LVU473
.LLST67:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS68:
	.uleb128 .LVU370
	.uleb128 .LVU371
	.uleb128 .LVU472
	.uleb128 .LVU473
.LLST68:
	.4byte	.LVL79
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS69:
	.uleb128 .LVU366
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU371
	.uleb128 .LVU465
	.uleb128 .LVU468
	.uleb128 .LVU468
	.uleb128 .LVU473
.LLST69:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x73
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x73
	.sleb128 15
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS70:
	.uleb128 .LVU371
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 .LVU377
.LLST70:
	.4byte	.LVL79
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS71:
	.uleb128 .LVU371
	.uleb128 .LVU378
.LLST71:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS72:
	.uleb128 .LVU371
	.uleb128 .LVU378
.LLST72:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS73:
	.uleb128 .LVU382
	.uleb128 .LVU390
	.uleb128 .LVU458
	.uleb128 .LVU465
.LLST73:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS74:
	.uleb128 .LVU389
	.uleb128 .LVU390
	.uleb128 .LVU464
	.uleb128 .LVU465
.LLST74:
	.4byte	.LVL83
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS75:
	.uleb128 .LVU385
	.uleb128 .LVU389
	.uleb128 .LVU389
	.uleb128 .LVU390
	.uleb128 .LVU458
	.uleb128 .LVU460
	.uleb128 .LVU460
	.uleb128 .LVU465
.LLST75:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL83
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x7c
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x7c
	.sleb128 15
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS76:
	.uleb128 .LVU390
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU395
.LLST76:
	.4byte	.LVL83
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL83
	.4byte	.LVL83
	.2byte	0xd
	.byte	0x71
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS77:
	.uleb128 .LVU390
	.uleb128 .LVU395
.LLST77:
	.4byte	.LVL83
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS78:
	.uleb128 .LVU390
	.uleb128 .LVU395
.LLST78:
	.4byte	.LVL83
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LFB48
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LFE48
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0
	.4byte	0
.LVUS99:
	.uleb128 0
	.uleb128 .LVU555
	.uleb128 .LVU555
	.uleb128 .LVU590
	.uleb128 .LVU590
	.uleb128 .LVU598
	.uleb128 .LVU598
	.uleb128 .LVU605
	.uleb128 .LVU605
	.uleb128 .LVU609
	.uleb128 .LVU609
	.uleb128 .LVU725
	.uleb128 .LVU725
	.uleb128 .LVU731
	.uleb128 .LVU731
	.uleb128 0
.LLST99:
	.4byte	.LVL126
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LVL174
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179
	.4byte	.LFE48
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS100:
	.uleb128 0
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 .LVU590
	.uleb128 .LVU590
	.uleb128 .LVU598
	.uleb128 .LVU598
	.uleb128 .LVU725
	.uleb128 .LVU725
	.uleb128 .LVU731
	.uleb128 .LVU731
	.uleb128 0
.LLST100:
	.4byte	.LVL126
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LVL144
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148
	.4byte	.LVL174
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL179
	.4byte	.LFE48
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS101:
	.uleb128 0
	.uleb128 .LVU590
	.uleb128 .LVU590
	.uleb128 0
.LLST101:
	.4byte	.LVL126
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL144
	.4byte	.LFE48
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS102:
	.uleb128 0
	.uleb128 .LVU590
	.uleb128 .LVU590
	.uleb128 0
.LLST102:
	.4byte	.LVL126
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL144
	.4byte	.LFE48
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS103:
	.uleb128 0
	.uleb128 .LVU590
	.uleb128 .LVU590
	.uleb128 0
.LLST103:
	.4byte	.LVL126
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL144
	.4byte	.LFE48
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS104:
	.uleb128 .LVU519
	.uleb128 .LVU520
	.uleb128 .LVU520
	.uleb128 .LVU538
	.uleb128 .LVU538
	.uleb128 .LVU590
	.uleb128 .LVU592
	.uleb128 .LVU593
	.uleb128 .LVU593
	.uleb128 .LVU598
	.uleb128 .LVU598
	.uleb128 .LVU673
	.uleb128 .LVU726
	.uleb128 .LVU727
	.uleb128 .LVU727
	.uleb128 .LVU731
	.uleb128 .LVU731
	.uleb128 0
.LLST104:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL133
	.4byte	.LVL144
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL148
	.4byte	.LVL169
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL176
	.4byte	.LVL179
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL179
	.4byte	.LFE48
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS105:
	.uleb128 .LVU523
	.uleb128 .LVU524
	.uleb128 .LVU524
	.uleb128 .LVU536
	.uleb128 .LVU536
	.uleb128 .LVU590
	.uleb128 .LVU597
	.uleb128 .LVU598
	.uleb128 .LVU598
	.uleb128 .LVU618
	.uleb128 .LVU729
	.uleb128 .LVU730
	.uleb128 .LVU730
	.uleb128 .LVU731
.LLST105:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL131
	.4byte	.LVL144
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL148
	.4byte	.LVL158
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS106:
	.uleb128 .LVU527
	.uleb128 .LVU590
	.uleb128 .LVU598
	.uleb128 .LVU673
	.uleb128 .LVU731
	.uleb128 0
.LLST106:
	.4byte	.LVL130
	.4byte	.LVL144
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL169
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LFE48
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS107:
	.uleb128 .LVU530
	.uleb128 .LVU590
	.uleb128 .LVU598
	.uleb128 .LVU618
.LLST107:
	.4byte	.LVL130
	.4byte	.LVL144
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL158
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x41800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS108:
	.uleb128 .LVU540
	.uleb128 .LVU590
	.uleb128 .LVU598
	.uleb128 .LVU725
	.uleb128 .LVU731
	.uleb128 0
.LLST108:
	.4byte	.LVL135
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL148
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL179
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS109:
	.uleb128 .LVU546
	.uleb128 .LVU590
	.uleb128 .LVU598
	.uleb128 .LVU616
	.uleb128 .LVU616
	.uleb128 .LVU666
	.uleb128 .LVU731
	.uleb128 0
.LLST109:
	.4byte	.LVL137
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL148
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL157
	.4byte	.LVL168
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL179
	.4byte	.LFE48
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS110:
	.uleb128 .LVU580
	.uleb128 .LVU583
.LLST110:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x18
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x8
	.byte	0xf0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS126:
	.uleb128 .LVU622
	.uleb128 .LVU631
	.uleb128 .LVU631
	.uleb128 .LVU666
	.uleb128 .LVU731
	.uleb128 0
.LLST126:
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL161
	.4byte	.LVL168
	.2byte	0x7
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LFE48
	.2byte	0x7
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS127:
	.uleb128 .LVU624
	.uleb128 .LVU647
	.uleb128 .LVU647
	.uleb128 .LVU675
	.uleb128 .LVU731
	.uleb128 .LVU746
	.uleb128 .LVU746
	.uleb128 0
.LLST127:
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LVL170
	.2byte	0x7
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LFE48
	.2byte	0x7
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS128:
	.uleb128 .LVU631
	.uleb128 .LVU641
	.uleb128 .LVU641
	.uleb128 .LVU644
	.uleb128 .LVU644
	.uleb128 .LVU647
	.uleb128 .LVU647
	.uleb128 .LVU660
	.uleb128 .LVU660
	.uleb128 .LVU666
	.uleb128 .LVU731
	.uleb128 .LVU746
	.uleb128 .LVU746
	.uleb128 0
.LLST128:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x19
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x20
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1c
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x24
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x25
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL182
	.4byte	.LFE48
	.2byte	0x24
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x7c
	.sleb128 0
	.byte	0x1e
	.byte	0x20
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS129:
	.uleb128 .LVU632
	.uleb128 .LVU641
	.uleb128 .LVU641
	.uleb128 .LVU644
	.uleb128 .LVU731
	.uleb128 .LVU746
.LLST129:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x19
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x20
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS130:
	.uleb128 .LVU632
	.uleb128 .LVU644
	.uleb128 .LVU731
	.uleb128 .LVU746
.LLST130:
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS131:
	.uleb128 .LVU632
	.uleb128 .LVU644
	.uleb128 .LVU731
	.uleb128 .LVU746
.LLST131:
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS132:
	.uleb128 .LVU632
	.uleb128 .LVU644
	.uleb128 .LVU731
	.uleb128 .LVU746
.LLST132:
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS133:
	.uleb128 .LVU740
	.uleb128 .LVU744
.LLST133:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS134:
	.uleb128 .LVU739
	.uleb128 .LVU744
.LLST134:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS135:
	.uleb128 .LVU739
	.uleb128 .LVU744
.LLST135:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS136:
	.uleb128 .LVU739
	.uleb128 .LVU744
.LLST136:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS137:
	.uleb128 .LVU647
	.uleb128 .LVU655
	.uleb128 .LVU655
	.uleb128 .LVU657
	.uleb128 .LVU746
	.uleb128 .LVU749
	.uleb128 .LVU749
	.uleb128 .LVU752
	.uleb128 .LVU752
	.uleb128 0
.LLST137:
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x9
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LFE48
	.2byte	0x9
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS138:
	.uleb128 .LVU647
	.uleb128 .LVU657
	.uleb128 .LVU746
	.uleb128 0
.LLST138:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL182
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS139:
	.uleb128 .LVU647
	.uleb128 .LVU657
	.uleb128 .LVU746
	.uleb128 0
.LLST139:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LFE48
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS140:
	.uleb128 .LVU647
	.uleb128 .LVU657
	.uleb128 .LVU746
	.uleb128 0
.LLST140:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LFE48
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS141:
	.uleb128 .LVU756
	.uleb128 .LVU760
.LLST141:
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x9
	.byte	0x92
	.uleb128 0x4c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS142:
	.uleb128 .LVU755
	.uleb128 .LVU760
.LLST142:
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS143:
	.uleb128 .LVU755
	.uleb128 .LVU760
.LLST143:
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS144:
	.uleb128 .LVU755
	.uleb128 .LVU760
.LLST144:
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS145:
	.uleb128 .LVU689
	.uleb128 .LVU691
.LLST145:
	.4byte	.LVL171
	.4byte	.LVL171
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS111:
	.uleb128 .LVU525
	.uleb128 .LVU527
.LLST111:
	.4byte	.LVL130
	.4byte	.LVL130
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS112:
	.uleb128 .LVU527
	.uleb128 .LVU530
.LLST112:
	.4byte	.LVL130
	.4byte	.LVL130
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS113:
	.uleb128 .LVU532
	.uleb128 .LVU537
	.uleb128 .LVU537
	.uleb128 .LVU539
.LLST113:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f000000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS114:
	.uleb128 .LVU548
	.uleb128 .LVU556
	.uleb128 .LVU605
	.uleb128 .LVU613
.LLST114:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL152
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS115:
	.uleb128 .LVU555
	.uleb128 .LVU556
	.uleb128 .LVU609
	.uleb128 .LVU612
	.uleb128 .LVU612
	.uleb128 .LVU613
.LLST115:
	.4byte	.LVL138
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS116:
	.uleb128 .LVU551
	.uleb128 .LVU555
	.uleb128 .LVU555
	.uleb128 .LVU556
	.uleb128 .LVU605
	.uleb128 .LVU608
	.uleb128 .LVU608
	.uleb128 .LVU613
.LLST116:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138
	.4byte	.LVL138
	.2byte	0x3
	.byte	0x7c
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x3
	.byte	0x7c
	.sleb128 15
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS117:
	.uleb128 .LVU556
	.uleb128 .LVU559
	.uleb128 .LVU559
	.uleb128 .LVU561
	.uleb128 .LVU561
	.uleb128 .LVU562
.LLST117:
	.4byte	.LVL138
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS118:
	.uleb128 .LVU556
	.uleb128 .LVU563
.LLST118:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS119:
	.uleb128 .LVU556
	.uleb128 .LVU563
.LLST119:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS120:
	.uleb128 .LVU567
	.uleb128 .LVU575
	.uleb128 .LVU598
	.uleb128 .LVU605
.LLST120:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS121:
	.uleb128 .LVU574
	.uleb128 .LVU575
	.uleb128 .LVU601
	.uleb128 .LVU604
	.uleb128 .LVU604
	.uleb128 .LVU605
.LLST121:
	.4byte	.LVL142
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS122:
	.uleb128 .LVU570
	.uleb128 .LVU574
	.uleb128 .LVU574
	.uleb128 .LVU575
	.uleb128 .LVU598
	.uleb128 .LVU600
	.uleb128 .LVU600
	.uleb128 .LVU605
.LLST122:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL142
	.2byte	0x3
	.byte	0x7e
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x3
	.byte	0x7e
	.sleb128 15
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS123:
	.uleb128 .LVU575
	.uleb128 .LVU578
	.uleb128 .LVU578
	.uleb128 .LVU580
.LLST123:
	.4byte	.LVL142
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL142
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS124:
	.uleb128 .LVU575
	.uleb128 .LVU580
.LLST124:
	.4byte	.LVL142
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS125:
	.uleb128 .LVU575
	.uleb128 .LVU580
.LLST125:
	.4byte	.LVL142
	.4byte	.LVL142
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB340
	.4byte	.LBE340
	.4byte	.LBB359
	.4byte	.LBE359
	.4byte	.LBB388
	.4byte	.LBE388
	.4byte	.LBB389
	.4byte	.LBE389
	.4byte	.LBB429
	.4byte	.LBE429
	.4byte	.LBB430
	.4byte	.LBE430
	.4byte	.LBB431
	.4byte	.LBE431
	.4byte	.LBB432
	.4byte	.LBE432
	.4byte	.LBB433
	.4byte	.LBE433
	.4byte	.LBB445
	.4byte	.LBE445
	.4byte	.LBB447
	.4byte	.LBE447
	.4byte	.LBB449
	.4byte	.LBE449
	.4byte	.LBB470
	.4byte	.LBE470
	.4byte	.LBB472
	.4byte	.LBE472
	.4byte	0
	.4byte	0
	.4byte	.LBB360
	.4byte	.LBE360
	.4byte	.LBB444
	.4byte	.LBE444
	.4byte	.LBB446
	.4byte	.LBE446
	.4byte	.LBB448
	.4byte	.LBE448
	.4byte	.LBB450
	.4byte	.LBE450
	.4byte	0
	.4byte	0
	.4byte	.LBB362
	.4byte	.LBE362
	.4byte	.LBB368
	.4byte	.LBE368
	.4byte	0
	.4byte	0
	.4byte	.LBB365
	.4byte	.LBE365
	.4byte	.LBB369
	.4byte	.LBE369
	.4byte	0
	.4byte	0
	.4byte	.LBB370
	.4byte	.LBE370
	.4byte	.LBB375
	.4byte	.LBE375
	.4byte	.LBB376
	.4byte	.LBE376
	.4byte	.LBB381
	.4byte	.LBE381
	.4byte	0
	.4byte	0
	.4byte	.LBB377
	.4byte	.LBE377
	.4byte	.LBB382
	.4byte	.LBE382
	.4byte	.LBB383
	.4byte	.LBE383
	.4byte	0
	.4byte	0
	.4byte	.LBB390
	.4byte	.LBE390
	.4byte	.LBB434
	.4byte	.LBE434
	.4byte	.LBB436
	.4byte	.LBE436
	.4byte	0
	.4byte	0
	.4byte	.LBB392
	.4byte	.LBE392
	.4byte	.LBB412
	.4byte	.LBE412
	.4byte	.LBB413
	.4byte	.LBE413
	.4byte	0
	.4byte	0
	.4byte	.LBB396
	.4byte	.LBE396
	.4byte	.LBB408
	.4byte	.LBE408
	.4byte	.LBB410
	.4byte	.LBE410
	.4byte	.LBB411
	.4byte	.LBE411
	.4byte	0
	.4byte	0
	.4byte	.LBB403
	.4byte	.LBE403
	.4byte	.LBB407
	.4byte	.LBE407
	.4byte	.LBB409
	.4byte	.LBE409
	.4byte	0
	.4byte	0
	.4byte	.LBB416
	.4byte	.LBE416
	.4byte	.LBB435
	.4byte	.LBE435
	.4byte	.LBB437
	.4byte	.LBE437
	.4byte	0
	.4byte	0
	.4byte	.LBB417
	.4byte	.LBE417
	.4byte	.LBB428
	.4byte	.LBE428
	.4byte	0
	.4byte	0
	.4byte	.LBB418
	.4byte	.LBE418
	.4byte	.LBB421
	.4byte	.LBE421
	.4byte	0
	.4byte	0
	.4byte	.LBB424
	.4byte	.LBE424
	.4byte	.LBB427
	.4byte	.LBE427
	.4byte	0
	.4byte	0
	.4byte	.LBB438
	.4byte	.LBE438
	.4byte	.LBB442
	.4byte	.LBE442
	.4byte	.LBB443
	.4byte	.LBE443
	.4byte	0
	.4byte	0
	.4byte	.LBB453
	.4byte	.LBE453
	.4byte	.LBB456
	.4byte	.LBE456
	.4byte	0
	.4byte	0
	.4byte	.LBB459
	.4byte	.LBE459
	.4byte	.LBB462
	.4byte	.LBE462
	.4byte	0
	.4byte	0
	.4byte	.LBB467
	.4byte	.LBE467
	.4byte	.LBB471
	.4byte	.LBE471
	.4byte	0
	.4byte	0
	.4byte	.LBB498
	.4byte	.LBE498
	.4byte	.LBB553
	.4byte	.LBE553
	.4byte	.LBB555
	.4byte	.LBE555
	.4byte	.LBB557
	.4byte	.LBE557
	.4byte	0
	.4byte	0
	.4byte	.LBB503
	.4byte	.LBE503
	.4byte	.LBB554
	.4byte	.LBE554
	.4byte	0
	.4byte	0
	.4byte	.LBB506
	.4byte	.LBE506
	.4byte	.LBB511
	.4byte	.LBE511
	.4byte	.LBB517
	.4byte	.LBE517
	.4byte	.LBB519
	.4byte	.LBE519
	.4byte	0
	.4byte	0
	.4byte	.LBB512
	.4byte	.LBE512
	.4byte	.LBB518
	.4byte	.LBE518
	.4byte	.LBB520
	.4byte	.LBE520
	.4byte	.LBB525
	.4byte	.LBE525
	.4byte	0
	.4byte	0
	.4byte	.LBB521
	.4byte	.LBE521
	.4byte	.LBB526
	.4byte	.LBE526
	.4byte	.LBB560
	.4byte	.LBE560
	.4byte	0
	.4byte	0
	.4byte	.LBB529
	.4byte	.LBE529
	.4byte	.LBB533
	.4byte	.LBE533
	.4byte	.LBB559
	.4byte	.LBE559
	.4byte	0
	.4byte	0
	.4byte	.LBB534
	.4byte	.LBE534
	.4byte	.LBB537
	.4byte	.LBE537
	.4byte	0
	.4byte	0
	.4byte	.LBB538
	.4byte	.LBE538
	.4byte	.LBB556
	.4byte	.LBE556
	.4byte	.LBB558
	.4byte	.LBE558
	.4byte	.LBB561
	.4byte	.LBE561
	.4byte	0
	.4byte	0
	.4byte	.LBB539
	.4byte	.LBE539
	.4byte	.LBB545
	.4byte	.LBE545
	.4byte	.LBB551
	.4byte	.LBE551
	.4byte	0
	.4byte	0
	.4byte	.LBB546
	.4byte	.LBE546
	.4byte	.LBB552
	.4byte	.LBE552
	.4byte	0
	.4byte	0
	.4byte	.LBB591
	.4byte	.LBE591
	.4byte	.LBB660
	.4byte	.LBE660
	.4byte	.LBB662
	.4byte	.LBE662
	.4byte	.LBB664
	.4byte	.LBE664
	.4byte	0
	.4byte	0
	.4byte	.LBB596
	.4byte	.LBE596
	.4byte	.LBB661
	.4byte	.LBE661
	.4byte	0
	.4byte	0
	.4byte	.LBB599
	.4byte	.LBE599
	.4byte	.LBB604
	.4byte	.LBE604
	.4byte	.LBB610
	.4byte	.LBE610
	.4byte	.LBB612
	.4byte	.LBE612
	.4byte	0
	.4byte	0
	.4byte	.LBB605
	.4byte	.LBE605
	.4byte	.LBB611
	.4byte	.LBE611
	.4byte	.LBB613
	.4byte	.LBE613
	.4byte	.LBB618
	.4byte	.LBE618
	.4byte	0
	.4byte	0
	.4byte	.LBB614
	.4byte	.LBE614
	.4byte	.LBB619
	.4byte	.LBE619
	.4byte	.LBB632
	.4byte	.LBE632
	.4byte	0
	.4byte	0
	.4byte	.LBB622
	.4byte	.LBE622
	.4byte	.LBB626
	.4byte	.LBE626
	.4byte	.LBB631
	.4byte	.LBE631
	.4byte	0
	.4byte	0
	.4byte	.LBB627
	.4byte	.LBE627
	.4byte	.LBB630
	.4byte	.LBE630
	.4byte	0
	.4byte	0
	.4byte	.LBB633
	.4byte	.LBE633
	.4byte	.LBB663
	.4byte	.LBE663
	.4byte	.LBB665
	.4byte	.LBE665
	.4byte	.LBB666
	.4byte	.LBE666
	.4byte	0
	.4byte	0
	.4byte	.LBB634
	.4byte	.LBE634
	.4byte	.LBB658
	.4byte	.LBE658
	.4byte	0
	.4byte	0
	.4byte	.LBB639
	.4byte	.LBE639
	.4byte	.LBB659
	.4byte	.LBE659
	.4byte	0
	.4byte	0
	.4byte	.LBB644
	.4byte	.LBE644
	.4byte	.LBB653
	.4byte	.LBE653
	.4byte	.LBB655
	.4byte	.LBE655
	.4byte	.LBB656
	.4byte	.LBE656
	.4byte	0
	.4byte	0
	.4byte	.LBB649
	.4byte	.LBE649
	.4byte	.LBB654
	.4byte	.LBE654
	.4byte	.LBB657
	.4byte	.LBE657
	.4byte	0
	.4byte	0
	.4byte	.LBB725
	.4byte	.LBE725
	.4byte	.LBB748
	.4byte	.LBE748
	.4byte	.LBB749
	.4byte	.LBE749
	.4byte	.LBB750
	.4byte	.LBE750
	.4byte	.LBB751
	.4byte	.LBE751
	.4byte	.LBB758
	.4byte	.LBE758
	.4byte	.LBB882
	.4byte	.LBE882
	.4byte	.LBB892
	.4byte	.LBE892
	.4byte	0
	.4byte	0
	.4byte	.LBB727
	.4byte	.LBE727
	.4byte	.LBB735
	.4byte	.LBE735
	.4byte	.LBB736
	.4byte	.LBE736
	.4byte	.LBB737
	.4byte	.LBE737
	.4byte	.LBB738
	.4byte	.LBE738
	.4byte	.LBB739
	.4byte	.LBE739
	.4byte	.LBB740
	.4byte	.LBE740
	.4byte	0
	.4byte	0
	.4byte	.LBB752
	.4byte	.LBE752
	.4byte	.LBB757
	.4byte	.LBE757
	.4byte	.LBB759
	.4byte	.LBE759
	.4byte	.LBB760
	.4byte	.LBE760
	.4byte	0
	.4byte	0
	.4byte	.LBB761
	.4byte	.LBE761
	.4byte	.LBB818
	.4byte	.LBE818
	.4byte	.LBB820
	.4byte	.LBE820
	.4byte	.LBB822
	.4byte	.LBE822
	.4byte	0
	.4byte	0
	.4byte	.LBB762
	.4byte	.LBE762
	.4byte	.LBB766
	.4byte	.LBE766
	.4byte	.LBB772
	.4byte	.LBE772
	.4byte	0
	.4byte	0
	.4byte	.LBB767
	.4byte	.LBE767
	.4byte	.LBB771
	.4byte	.LBE771
	.4byte	.LBB773
	.4byte	.LBE773
	.4byte	0
	.4byte	0
	.4byte	.LBB774
	.4byte	.LBE774
	.4byte	.LBB819
	.4byte	.LBE819
	.4byte	.LBB821
	.4byte	.LBE821
	.4byte	.LBB884
	.4byte	.LBE884
	.4byte	.LBB886
	.4byte	.LBE886
	.4byte	.LBB889
	.4byte	.LBE889
	.4byte	.LBB891
	.4byte	.LBE891
	.4byte	0
	.4byte	0
	.4byte	.LBB776
	.4byte	.LBE776
	.4byte	.LBB783
	.4byte	.LBE783
	.4byte	.LBB785
	.4byte	.LBE785
	.4byte	0
	.4byte	0
	.4byte	.LBB780
	.4byte	.LBE780
	.4byte	.LBB784
	.4byte	.LBE784
	.4byte	0
	.4byte	0
	.4byte	.LBB786
	.4byte	.LBE786
	.4byte	.LBB789
	.4byte	.LBE789
	.4byte	0
	.4byte	0
	.4byte	.LBB790
	.4byte	.LBE790
	.4byte	.LBB794
	.4byte	.LBE794
	.4byte	.LBB795
	.4byte	.LBE795
	.4byte	0
	.4byte	0
	.4byte	.LBB796
	.4byte	.LBE796
	.4byte	.LBB808
	.4byte	.LBE808
	.4byte	0
	.4byte	0
	.4byte	.LBB803
	.4byte	.LBE803
	.4byte	.LBB809
	.4byte	.LBE809
	.4byte	.LBB810
	.4byte	.LBE810
	.4byte	.LBB811
	.4byte	.LBE811
	.4byte	0
	.4byte	0
	.4byte	.LBB804
	.4byte	.LBE804
	.4byte	.LBB807
	.4byte	.LBE807
	.4byte	0
	.4byte	0
	.4byte	.LBB823
	.4byte	.LBE823
	.4byte	.LBB827
	.4byte	.LBE827
	.4byte	.LBB887
	.4byte	.LBE887
	.4byte	0
	.4byte	0
	.4byte	.LBB828
	.4byte	.LBE828
	.4byte	.LBB880
	.4byte	.LBE880
	.4byte	.LBB883
	.4byte	.LBE883
	.4byte	.LBB885
	.4byte	.LBE885
	.4byte	.LBB888
	.4byte	.LBE888
	.4byte	.LBB890
	.4byte	.LBE890
	.4byte	0
	.4byte	0
	.4byte	.LBB830
	.4byte	.LBE830
	.4byte	.LBB837
	.4byte	.LBE837
	.4byte	.LBB839
	.4byte	.LBE839
	.4byte	0
	.4byte	0
	.4byte	.LBB834
	.4byte	.LBE834
	.4byte	.LBB838
	.4byte	.LBE838
	.4byte	0
	.4byte	0
	.4byte	.LBB840
	.4byte	.LBE840
	.4byte	.LBB843
	.4byte	.LBE843
	.4byte	0
	.4byte	0
	.4byte	.LBB844
	.4byte	.LBE844
	.4byte	.LBB848
	.4byte	.LBE848
	.4byte	.LBB849
	.4byte	.LBE849
	.4byte	0
	.4byte	0
	.4byte	.LBB850
	.4byte	.LBE850
	.4byte	.LBB862
	.4byte	.LBE862
	.4byte	0
	.4byte	0
	.4byte	.LBB857
	.4byte	.LBE857
	.4byte	.LBB863
	.4byte	.LBE863
	.4byte	.LBB864
	.4byte	.LBE864
	.4byte	.LBB865
	.4byte	.LBE865
	.4byte	0
	.4byte	0
	.4byte	.LBB858
	.4byte	.LBE858
	.4byte	.LBB861
	.4byte	.LBE861
	.4byte	0
	.4byte	0
	.4byte	.LBB871
	.4byte	.LBE871
	.4byte	.LBB881
	.4byte	.LBE881
	.4byte	0
	.4byte	0
	.4byte	.LBB872
	.4byte	.LBE872
	.4byte	.LBB878
	.4byte	.LBE878
	.4byte	0
	.4byte	0
	.4byte	.LBB875
	.4byte	.LBE875
	.4byte	.LBB879
	.4byte	.LBE879
	.4byte	0
	.4byte	0
	.4byte	.LBB951
	.4byte	.LBE951
	.4byte	.LBB974
	.4byte	.LBE974
	.4byte	.LBB975
	.4byte	.LBE975
	.4byte	.LBB976
	.4byte	.LBE976
	.4byte	.LBB977
	.4byte	.LBE977
	.4byte	.LBB981
	.4byte	.LBE981
	.4byte	.LBB1089
	.4byte	.LBE1089
	.4byte	.LBB1094
	.4byte	.LBE1094
	.4byte	0
	.4byte	0
	.4byte	.LBB953
	.4byte	.LBE953
	.4byte	.LBB961
	.4byte	.LBE961
	.4byte	.LBB962
	.4byte	.LBE962
	.4byte	.LBB963
	.4byte	.LBE963
	.4byte	.LBB964
	.4byte	.LBE964
	.4byte	.LBB965
	.4byte	.LBE965
	.4byte	.LBB966
	.4byte	.LBE966
	.4byte	0
	.4byte	0
	.4byte	.LBB978
	.4byte	.LBE978
	.4byte	.LBB982
	.4byte	.LBE982
	.4byte	0
	.4byte	0
	.4byte	.LBB983
	.4byte	.LBE983
	.4byte	.LBB1016
	.4byte	.LBE1016
	.4byte	0
	.4byte	0
	.4byte	.LBB985
	.4byte	.LBE985
	.4byte	.LBB1008
	.4byte	.LBE1008
	.4byte	0
	.4byte	0
	.4byte	.LBB986
	.4byte	.LBE986
	.4byte	.LBB989
	.4byte	.LBE989
	.4byte	0
	.4byte	0
	.4byte	.LBB992
	.4byte	.LBE992
	.4byte	.LBB995
	.4byte	.LBE995
	.4byte	0
	.4byte	0
	.4byte	.LBB996
	.4byte	.LBE996
	.4byte	.LBB1004
	.4byte	.LBE1004
	.4byte	.LBB1006
	.4byte	.LBE1006
	.4byte	.LBB1007
	.4byte	.LBE1007
	.4byte	0
	.4byte	0
	.4byte	.LBB1001
	.4byte	.LBE1001
	.4byte	.LBB1005
	.4byte	.LBE1005
	.4byte	0
	.4byte	0
	.4byte	.LBB1017
	.4byte	.LBE1017
	.4byte	.LBB1026
	.4byte	.LBE1026
	.4byte	0
	.4byte	0
	.4byte	.LBB1019
	.4byte	.LBE1019
	.4byte	.LBB1022
	.4byte	.LBE1022
	.4byte	0
	.4byte	0
	.4byte	.LBB1027
	.4byte	.LBE1027
	.4byte	.LBB1093
	.4byte	.LBE1093
	.4byte	0
	.4byte	0
	.4byte	.LBB1030
	.4byte	.LBE1030
	.4byte	.LBB1072
	.4byte	.LBE1072
	.4byte	.LBB1086
	.4byte	.LBE1086
	.4byte	.LBB1090
	.4byte	.LBE1090
	.4byte	.LBB1092
	.4byte	.LBE1092
	.4byte	0
	.4byte	0
	.4byte	.LBB1032
	.4byte	.LBE1032
	.4byte	.LBB1055
	.4byte	.LBE1055
	.4byte	0
	.4byte	0
	.4byte	.LBB1033
	.4byte	.LBE1033
	.4byte	.LBB1036
	.4byte	.LBE1036
	.4byte	0
	.4byte	0
	.4byte	.LBB1039
	.4byte	.LBE1039
	.4byte	.LBB1042
	.4byte	.LBE1042
	.4byte	0
	.4byte	0
	.4byte	.LBB1043
	.4byte	.LBE1043
	.4byte	.LBB1051
	.4byte	.LBE1051
	.4byte	.LBB1053
	.4byte	.LBE1053
	.4byte	.LBB1054
	.4byte	.LBE1054
	.4byte	0
	.4byte	0
	.4byte	.LBB1048
	.4byte	.LBE1048
	.4byte	.LBB1052
	.4byte	.LBE1052
	.4byte	0
	.4byte	0
	.4byte	.LBB1060
	.4byte	.LBE1060
	.4byte	.LBB1065
	.4byte	.LBE1065
	.4byte	.LBB1066
	.4byte	.LBE1066
	.4byte	.LBB1067
	.4byte	.LBE1067
	.4byte	0
	.4byte	0
	.4byte	.LBB1073
	.4byte	.LBE1073
	.4byte	.LBB1087
	.4byte	.LBE1087
	.4byte	.LBB1088
	.4byte	.LBE1088
	.4byte	.LBB1091
	.4byte	.LBE1091
	.4byte	0
	.4byte	0
	.4byte	.LBB1075
	.4byte	.LBE1075
	.4byte	.LBB1079
	.4byte	.LBE1079
	.4byte	.LBB1082
	.4byte	.LBE1082
	.4byte	0
	.4byte	0
	.4byte	.LBB1123
	.4byte	.LBE1123
	.4byte	.LBB1182
	.4byte	.LBE1182
	.4byte	.LBB1183
	.4byte	.LBE1183
	.4byte	.LBB1219
	.4byte	.LBE1219
	.4byte	.LBB1222
	.4byte	.LBE1222
	.4byte	0
	.4byte	0
	.4byte	.LBB1125
	.4byte	.LBE1125
	.4byte	.LBB1133
	.4byte	.LBE1133
	.4byte	.LBB1134
	.4byte	.LBE1134
	.4byte	.LBB1172
	.4byte	.LBE1172
	.4byte	.LBB1175
	.4byte	.LBE1175
	.4byte	.LBB1176
	.4byte	.LBE1176
	.4byte	.LBB1177
	.4byte	.LBE1177
	.4byte	0
	.4byte	0
	.4byte	.LBB1135
	.4byte	.LBE1135
	.4byte	.LBB1170
	.4byte	.LBE1170
	.4byte	.LBB1171
	.4byte	.LBE1171
	.4byte	.LBB1173
	.4byte	.LBE1173
	.4byte	.LBB1174
	.4byte	.LBE1174
	.4byte	0
	.4byte	0
	.4byte	.LBB1137
	.4byte	.LBE1137
	.4byte	.LBB1140
	.4byte	.LBE1140
	.4byte	.LBB1141
	.4byte	.LBE1141
	.4byte	.LBB1145
	.4byte	.LBE1145
	.4byte	.LBB1146
	.4byte	.LBE1146
	.4byte	.LBB1147
	.4byte	.LBE1147
	.4byte	.LBB1149
	.4byte	.LBE1149
	.4byte	.LBB1152
	.4byte	.LBE1152
	.4byte	.LBB1153
	.4byte	.LBE1153
	.4byte	.LBB1162
	.4byte	.LBE1162
	.4byte	.LBB1163
	.4byte	.LBE1163
	.4byte	0
	.4byte	0
	.4byte	.LBB1138
	.4byte	.LBE1138
	.4byte	.LBB1142
	.4byte	.LBE1142
	.4byte	.LBB1148
	.4byte	.LBE1148
	.4byte	.LBB1150
	.4byte	.LBE1150
	.4byte	.LBB1154
	.4byte	.LBE1154
	.4byte	.LBB1155
	.4byte	.LBE1155
	.4byte	.LBB1156
	.4byte	.LBE1156
	.4byte	.LBB1158
	.4byte	.LBE1158
	.4byte	.LBB1165
	.4byte	.LBE1165
	.4byte	0
	.4byte	0
	.4byte	.LBB1139
	.4byte	.LBE1139
	.4byte	.LBB1143
	.4byte	.LBE1143
	.4byte	.LBB1144
	.4byte	.LBE1144
	.4byte	.LBB1151
	.4byte	.LBE1151
	.4byte	.LBB1157
	.4byte	.LBE1157
	.4byte	.LBB1159
	.4byte	.LBE1159
	.4byte	.LBB1160
	.4byte	.LBE1160
	.4byte	.LBB1161
	.4byte	.LBE1161
	.4byte	.LBB1164
	.4byte	.LBE1164
	.4byte	0
	.4byte	0
	.4byte	.LBB1184
	.4byte	.LBE1184
	.4byte	.LBB1189
	.4byte	.LBE1189
	.4byte	.LBB1220
	.4byte	.LBE1220
	.4byte	.LBB1221
	.4byte	.LBE1221
	.4byte	0
	.4byte	0
	.4byte	.LBB1190
	.4byte	.LBE1190
	.4byte	.LBB1201
	.4byte	.LBE1201
	.4byte	0
	.4byte	0
	.4byte	.LBB1191
	.4byte	.LBE1191
	.4byte	.LBB1198
	.4byte	.LBE1198
	.4byte	0
	.4byte	0
	.4byte	.LBB1194
	.4byte	.LBE1194
	.4byte	.LBB1199
	.4byte	.LBE1199
	.4byte	.LBB1200
	.4byte	.LBE1200
	.4byte	0
	.4byte	0
	.4byte	.LBB1202
	.4byte	.LBE1202
	.4byte	.LBB1206
	.4byte	.LBE1206
	.4byte	.LBB1223
	.4byte	.LBE1223
	.4byte	0
	.4byte	0
	.4byte	.LBB1207
	.4byte	.LBE1207
	.4byte	.LBB1218
	.4byte	.LBE1218
	.4byte	0
	.4byte	0
	.4byte	.LBB1208
	.4byte	.LBE1208
	.4byte	.LBB1215
	.4byte	.LBE1215
	.4byte	0
	.4byte	0
	.4byte	.LBB1211
	.4byte	.LBE1211
	.4byte	.LBB1216
	.4byte	.LBE1216
	.4byte	.LBB1217
	.4byte	.LBE1217
	.4byte	0
	.4byte	0
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF58:
	.ascii	"v_left\000"
.LASF93:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF134:
	.ascii	"tri_edge_init\000"
.LASF68:
	.ascii	"raster_scanline_simple_t\000"
.LASF156:
	.ascii	"clamp_i\000"
.LASF21:
	.ascii	"fixed16_16\000"
.LASF47:
	.ascii	"invz_left\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF32:
	.ascii	"x_step\000"
.LASF54:
	.ascii	"uz_right\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF117:
	.ascii	"tri_sort_vertices\000"
.LASF31:
	.ascii	"tri_edge_uv\000"
.LASF122:
	.ascii	"v_bot_cmp\000"
.LASF69:
	.ascii	"e_top_bottom\000"
.LASF119:
	.ascii	"r_mid\000"
.LASF96:
	.ascii	"endx\000"
.LASF49:
	.ascii	"vz_left\000"
.LASF63:
	.ascii	"aff_remainder\000"
.LASF121:
	.ascii	"v_mid_cmp\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF161:
	.ascii	"get_blue_noise_buffer\000"
.LASF67:
	.ascii	"x_end\000"
.LASF0:
	.ascii	"float\000"
.LASF89:
	.ascii	"texpix\000"
.LASF160:
	.ascii	"result\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF24:
	.ascii	"invz_dx\000"
.LASF25:
	.ascii	"invz_dy\000"
.LASF133:
	.ascii	"draw_scanline_checker\000"
.LASF74:
	.ascii	"mid_is_left\000"
.LASF80:
	.ascii	"v_bottom\000"
.LASF38:
	.ascii	"invz_step_extra\000"
.LASF43:
	.ascii	"x_prestep\000"
.LASF146:
	.ascii	"invdx\000"
.LASF100:
	.ascii	"draw_scanline_bluenoise\000"
.LASF40:
	.ascii	"uz_step_extra\000"
.LASF90:
	.ascii	"draw_tri_checker\000"
.LASF130:
	.ascii	"width\000"
.LASF118:
	.ascii	"r_top\000"
.LASF136:
	.ascii	"vertTop\000"
.LASF124:
	.ascii	"raster_scanline_has_rem\000"
.LASF97:
	.ascii	"noise_row\000"
.LASF98:
	.ascii	"draw_tri_pattern\000"
.LASF75:
	.ascii	"_Bool\000"
.LASF113:
	.ascii	"raster_scanline_simple_begin1\000"
.LASF94:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\draw_style.c\000"
.LASF128:
	.ascii	"raster_scanline_spans_continue\000"
.LASF57:
	.ascii	"u_left\000"
.LASF151:
	.ascii	"Ceil28_4\000"
.LASF150:
	.ascii	"r_mod\000"
.LASF101:
	.ascii	"draw_scanline_pattern\000"
.LASF70:
	.ascii	"e_top_mid\000"
.LASF50:
	.ascii	"invz_aff_step\000"
.LASF155:
	.ascii	"FloatToFixed28_4\000"
.LASF147:
	.ascii	"invdy\000"
.LASF138:
	.ascii	"topXfx\000"
.LASF52:
	.ascii	"vz_aff_step\000"
.LASF17:
	.ascii	"char\000"
.LASF71:
	.ascii	"e_mid_bottom\000"
.LASF45:
	.ascii	"tri_edge\000"
.LASF107:
	.ascii	"_drawMaskPattern\000"
.LASF135:
	.ascii	"bottom\000"
.LASF108:
	.ascii	"raster_scanline_uv_y_step\000"
.LASF61:
	.ascii	"v_right\000"
.LASF56:
	.ascii	"z_left\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF95:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF28:
	.ascii	"vz_dx\000"
.LASF29:
	.ascii	"vz_dy\000"
.LASF55:
	.ascii	"vz_right\000"
.LASF139:
	.ascii	"botXfx\000"
.LASF153:
	.ascii	"FloatToFixed16_16\000"
.LASF159:
	.ascii	"swap\000"
.LASF12:
	.ascii	"long long int\000"
.LASF39:
	.ascii	"uz_step\000"
.LASF129:
	.ascii	"raster_scanline_line_init\000"
.LASF106:
	.ascii	"endmask\000"
.LASF123:
	.ascii	"raster_scanline_rem_begin\000"
.LASF140:
	.ascii	"topYfx\000"
.LASF145:
	.ascii	"tri_gradients_init\000"
.LASF51:
	.ascii	"uz_aff_step\000"
.LASF152:
	.ascii	"Value\000"
.LASF109:
	.ascii	"raster_scanline_simple_y_step\000"
.LASF141:
	.ascii	"botYfx\000"
.LASF105:
	.ascii	"endbit\000"
.LASF91:
	.ascii	"draw_tri_bluenoise\000"
.LASF44:
	.ascii	"y_prestep\000"
.LASF86:
	.ascii	"mask\000"
.LASF83:
	.ascii	"edge_l\000"
.LASF92:
	.ascii	"tri_color\000"
.LASF84:
	.ascii	"edge_r\000"
.LASF36:
	.ascii	"height\000"
.LASF142:
	.ascii	"YEnd\000"
.LASF154:
	.ascii	"Fixed28_4ToFloat\000"
.LASF62:
	.ascii	"aff_spans\000"
.LASF33:
	.ascii	"numerator\000"
.LASF16:
	.ascii	"long double\000"
.LASF116:
	.ascii	"raster_scanline_simple_begin\000"
.LASF23:
	.ascii	"invz\000"
.LASF112:
	.ascii	"raster_scanline_uv_begin1\000"
.LASF110:
	.ascii	"raster_scanline_uv_begin2\000"
.LASF148:
	.ascii	"FloorDivMod\000"
.LASF22:
	.ascii	"tri_gradients\000"
.LASF35:
	.ascii	"error_term\000"
.LASF143:
	.ascii	"init_numerator\000"
.LASF41:
	.ascii	"vz_step\000"
.LASF103:
	.ascii	"startbit\000"
.LASF76:
	.ascii	"raster_scanline_uv_t\000"
.LASF77:
	.ascii	"grad\000"
.LASF5:
	.ascii	"short int\000"
.LASF9:
	.ascii	"long int\000"
.LASF53:
	.ascii	"invz_right\000"
.LASF46:
	.ascii	"raster_scanline_line_t\000"
.LASF82:
	.ascii	"rowstride\000"
.LASF59:
	.ascii	"z_right\000"
.LASF48:
	.ascii	"uz_left\000"
.LASF30:
	.ascii	"inv_det\000"
.LASF88:
	.ascii	"checker\000"
.LASF87:
	.ascii	"color\000"
.LASF149:
	.ascii	"r_floor\000"
.LASF158:
	.ascii	"min2\000"
.LASF34:
	.ascii	"denominator\000"
.LASF7:
	.ascii	"__uint8_t\000"
.LASF79:
	.ascii	"v_mid\000"
.LASF120:
	.ascii	"r_bottom\000"
.LASF37:
	.ascii	"invz_step\000"
.LASF19:
	.ascii	"float3\000"
.LASF127:
	.ascii	"raster_scanline_spans_step\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF102:
	.ascii	"pattern4\000"
.LASF14:
	.ascii	"int32_t\000"
.LASF26:
	.ascii	"uz_dx\000"
.LASF27:
	.ascii	"uz_dy\000"
.LASF137:
	.ascii	"vertBottom\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF81:
	.ascii	"bitmap\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF85:
	.ascii	"line\000"
.LASF99:
	.ascii	"pattern\000"
.LASF104:
	.ascii	"startmask\000"
.LASF66:
	.ascii	"x_start\000"
.LASF132:
	.ascii	"tri_edge_uv_step\000"
.LASF42:
	.ascii	"vz_step_extra\000"
.LASF157:
	.ascii	"max2\000"
.LASF111:
	.ascii	"raster_scanline_simple_begin2\000"
.LASF60:
	.ascii	"u_right\000"
.LASF125:
	.ascii	"raster_scanline_inner_step\000"
.LASF114:
	.ascii	"raster_scanline_uv_begin\000"
.LASF115:
	.ascii	"uv_scale\000"
.LASF131:
	.ascii	"tri_edge_step\000"
.LASF3:
	.ascii	"signed char\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF78:
	.ascii	"v_top\000"
.LASF18:
	.ascii	"double\000"
.LASF64:
	.ascii	"clip_adj_l\000"
.LASF126:
	.ascii	"raster_scanline_inner_begin\000"
.LASF73:
	.ascii	"e_right\000"
.LASF65:
	.ascii	"clip_adj_r\000"
.LASF144:
	.ascii	"tri_edge_uv_init\000"
.LASF20:
	.ascii	"fixed28_4\000"
.LASF72:
	.ascii	"e_left\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
