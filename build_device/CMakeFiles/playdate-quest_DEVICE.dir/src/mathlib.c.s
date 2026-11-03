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
	.file	"mathlib.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\mathlib.c"
	.section	.text.v3_tri_normal,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	v3_tri_normal
	.syntax unified
	.thumb
	.thumb_func
	.type	v3_tri_normal, %function
v3_tri_normal:
.LVL0:
.LFB41:
	.loc 1 6 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 7 2 view .LVU1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:8: 		f3(p2->x - p1->x, p2->y - p1->y, p2->z - p1->z),
	.loc 1 8 46 is_stmt 0 view .LVU2
	vldr.32	s12, [r0, #8]	@ _8, p1_18(D)->z
.LBB63:
.LBB64:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.file 2 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\mathlib.h"
	.loc 2 282 8 view .LVU3
	vmov.f32	s8, #1.0e+0	@ tmp168,
.LBE64:
.LBE63:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:8: 		f3(p2->x - p1->x, p2->y - p1->y, p2->z - p1->z),
	.loc 1 8 16 view .LVU4
	vldr.32	s9, [r0]	@ _2, p1_18(D)->x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:6: {
	.loc 1 6 1 view .LVU5
	sub	sp, sp, #32	@,,
.LCFI0:
	.cfi_def_cfa_offset 32
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:7: 	float3 v = v3_cross(
	.loc 1 7 13 view .LVU6
	vldr.32	s14, [r1]	@ p2_17(D)->x, p2_17(D)->x
	vldr.32	s13, [r2, #8]	@ p3_19(D)->z, p3_19(D)->z
	vsub.f32	s14, s14, s9	@ _3, p2_17(D)->x, _2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:8: 		f3(p2->x - p1->x, p2->y - p1->y, p2->z - p1->z),
	.loc 1 8 31 view .LVU7
	vldr.32	s10, [r0, #4]	@ _5, p1_18(D)->y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:7: 	float3 v = v3_cross(
	.loc 1 7 13 view .LVU8
	vsub.f32	s13, s13, s12	@ _15, p3_19(D)->z, _8
.LVL1:
	.loc 1 7 13 view .LVU9
	vldr.32	s11, [r1, #8]	@ p2_17(D)->z, p2_17(D)->z
	vldr.32	s2, [r2]	@ p3_19(D)->x, p3_19(D)->x
	vldr.32	s15, [r2, #4]	@ p3_19(D)->y, p3_19(D)->y
	vsub.f32	s11, s11, s12	@ _9, p2_17(D)->z, _8
	vsub.f32	s2, s2, s9	@ _11, p3_19(D)->x, _2
	vldr.32	s12, [r1, #4]	@ p2_17(D)->y, p2_17(D)->y
	vsub.f32	s15, s15, s10	@ _13, p3_19(D)->y, _5
.LBB70:
.LBB71:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU10
	vnmul.f32	s1, s13, s14	@ _43, _15, _3
.LBE71:
.LBE70:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:7: 	float3 v = v3_cross(
	.loc 1 7 13 view .LVU11
	vsub.f32	s12, s12, s10	@ _6, p2_17(D)->y, _5
.LVL2:
.LBB73:
.LBI70:
	.loc 2 269 22 is_stmt 1 view .LVU12
.LBB72:
	.loc 2 271 2 view .LVU13
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 is_stmt 0 view .LVU14
	vnmul.f32	s0, s15, s11	@ _44, _13, _9
	vfma.f32	s1, s11, s2	@ _35, _9, _11
	vnmul.f32	s2, s2, s12	@ _42, _11, _6
.LVL3:
	.loc 2 271 9 view .LVU15
	vfma.f32	s0, s12, s13	@ _32, _6, _15
	vfma.f32	s2, s14, s15	@ _38, _3, _13
.LVL4:
	.loc 2 271 9 view .LVU16
.LBE72:
.LBE73:
	.loc 1 10 2 is_stmt 1 view .LVU17
.LBB74:
.LBI63:
	.loc 2 279 22 view .LVU18
.LBB69:
	.loc 2 281 2 view .LVU19
.LBB65:
.LBI65:
	.loc 2 20 21 view .LVU20
.LBB66:
	.loc 2 22 2 view .LVU21
	.loc 2 23 2 view .LVU22
.LBE66:
.LBE65:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:281: 	float d = sqrtf(v.x * v.x + v.y * v.y + v.z * v.z);
	.loc 2 281 41 is_stmt 0 view .LVU23
	vmul.f32	s15, s1, s1	@ powmult_21, _35, _35
.LBB68:
.LBB67:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:23: 	asm ("vsqrt.f32 %0, %1" : "=t"(result) : "t"(x));
	.loc 2 23 2 view .LVU24
	vfma.f32	s15, s0, s0	@ tmp166, _32, _32
	vfma.f32	s15, s2, s2	@ tmp165, _38, _38
	.syntax unified
@ 23 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	vsqrt.f32 s15, s15	@ result, tmp165
@ 0 "" 2
	.loc 2 24 2 is_stmt 1 view .LVU25
.LVL5:
	.loc 2 24 2 is_stmt 0 view .LVU26
	.thumb
	.syntax unified
.LBE67:
.LBE68:
	.loc 2 282 2 is_stmt 1 view .LVU27
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 is_stmt 0 view .LVU28
	vdiv.f32	s14, s8, s15	@ id, tmp168, result
.LVL6:
	.loc 2 283 2 is_stmt 1 view .LVU29
	.loc 2 284 2 view .LVU30
	.loc 2 284 2 is_stmt 0 view .LVU31
.LBE69:
.LBE74:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:11: }
	.loc 1 11 1 view .LVU32
	vmul.f32	s1, s14, s1	@, id, _35
	vmul.f32	s2, s14, s2	@, id, _38
	vmul.f32	s0, s14, s0	@, id, _32
	add	sp, sp, #32	@,,
.LCFI1:
	.cfi_def_cfa_offset 0
	@ sp needed	@
	bx	lr	@
	.cfi_endproc
.LFE41:
	.size	v3_tri_normal, .-v3_tri_normal
	.section	.text.xform_make,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_make
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_make, %function
xform_make:
.LVL7:
.LFB42:
	.loc 1 16 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 17 2 view .LVU34
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:17: 	return (xform) { .ax = { xx, xy, xz }, .ay = { yx, yy, yz }, .az = { zx, zy, zz }, .pos = { 0, 0, 0 } };
	.loc 1 17 9 is_stmt 0 view .LVU35
	movs	r3, #0	@ tmp124,
	vstr.32	s0, [r0, #12]	@ xx, <retval>.ax.x
	vstr.32	s1, [r0, #16]	@ xy, <retval>.ax.y
	str	r3, [r0]	@ float	@ tmp124, <retval>.pos.x
	str	r3, [r0, #4]	@ float	@ tmp124, <retval>.pos.y
	str	r3, [r0, #8]	@ float	@ tmp124, <retval>.pos.z
	vstr.32	s2, [r0, #20]	@ xz, <retval>.ax.z
	vstr.32	s3, [r0, #24]	@ yx, <retval>.ay.x
	vstr.32	s4, [r0, #28]	@ yy, <retval>.ay.y
	vstr.32	s5, [r0, #32]	@ yz, <retval>.ay.z
	vstr.32	s6, [r0, #36]	@ zx, <retval>.az.x
	vstr.32	s7, [r0, #40]	@ zy, <retval>.az.y
	vstr.32	s8, [r0, #44]	@ zz, <retval>.az.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:18: }
	.loc 1 18 1 view .LVU36
	bx	lr	@
	.cfi_endproc
.LFE42:
	.size	xform_make, .-xform_make
	.section	.text.xform_axes,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_axes
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_axes, %function
xform_axes:
.LVL8:
.LFB43:
	.loc 1 21 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 22 2 view .LVU38
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:21: {
	.loc 1 21 1 is_stmt 0 view .LVU39
	sub	sp, sp, #48	@,,
.LCFI2:
	.cfi_def_cfa_offset 48
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:21: {
	.loc 1 21 1 view .LVU40
	mov	r3, r0	@ .result_ptr, .result_ptr
	vstr.32	s9, [sp]	@ pos, pos
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:22: 	return (xform) { .ax = x, .ay = y, .az = z, .pos = pos };
	.loc 1 22 9 view .LVU41
	add	ip, r3, #12	@ tmp129, .result_ptr,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:21: {
	.loc 1 21 1 view .LVU42
	vstr.32	s10, [sp, #4]	@ pos, pos
	vstr.32	s11, [sp, #8]	@ pos, pos
	vstr.32	s0, [sp, #36]	@ x, x
	vstr.32	s1, [sp, #40]	@ x, x
	vstr.32	s2, [sp, #44]	@ x, x
	vstr.32	s3, [sp, #24]	@ y, y
	vstr.32	s4, [sp, #28]	@ y, y
	vstr.32	s5, [sp, #32]	@ y, y
	vstr.32	s6, [sp, #12]	@ z, z
	vstr.32	s7, [sp, #16]	@ z, z
	vstr.32	s8, [sp, #20]	@ z, z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:22: 	return (xform) { .ax = x, .ay = y, .az = z, .pos = pos };
	.loc 1 22 9 view .LVU43
	ldm	sp, {r0, r1, r2}	@,,,
.LVL9:
	.loc 1 22 9 view .LVU44
	stm	r3, {r0, r1, r2}	@ .result_ptr,,,
	add	r2, sp, #48	@ tmp149,,
	ldmdb	r2, {r0, r1, r2}	@ tmp149,,,
	stm	ip, {r0, r1, r2}	@ tmp129,,,
	add	r2, sp, #24	@ tmp132,,
	add	ip, r3, #24	@ tmp131, .result_ptr,
	ldm	r2, {r0, r1, r2}	@ tmp132,,,
	stm	ip, {r0, r1, r2}	@ tmp131,,,
	add	r2, sp, #12	@ tmp134,,
	add	ip, r3, #36	@ tmp133, .result_ptr,
	ldm	r2, {r0, r1, r2}	@ tmp134,,,
	stm	ip, {r0, r1, r2}	@ tmp133,,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:23: }
	.loc 1 23 1 view .LVU45
	mov	r0, r3	@, .result_ptr
	add	sp, sp, #48	@,,
.LCFI3:
	.cfi_def_cfa_offset 0
	@ sp needed	@
	bx	lr	@
	.cfi_endproc
.LFE43:
	.size	xform_axes, .-xform_axes
	.section	.text.xform_make_translate,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_make_translate
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_make_translate, %function
xform_make_translate:
.LVL10:
.LFB44:
	.loc 1 26 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 27 2 view .LVU47
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:27: 	return (xform) { .ax = { 1, 0, 0 }, .ay = { 0, 1, 0 }, .az = { 0, 0, 1 }, .pos = { dx, dy, dz } };
	.loc 1 27 9 is_stmt 0 view .LVU48
	movs	r3, #0	@ tmp119,
	mov	r2, #1065353216	@ tmp118,
	vstr.32	s0, [r0]	@ dx, <retval>.pos.x
	str	r2, [r0, #12]	@ float	@ tmp118, <retval>.ax.x
	vstr.32	s1, [r0, #4]	@ dy, <retval>.pos.y
	vstr.32	s2, [r0, #8]	@ dz, <retval>.pos.z
	str	r3, [r0, #16]	@ float	@ tmp119, <retval>.ax.y
	str	r3, [r0, #20]	@ float	@ tmp119, <retval>.ax.z
	str	r3, [r0, #24]	@ float	@ tmp119, <retval>.ay.x
	str	r2, [r0, #28]	@ float	@ tmp118, <retval>.ay.y
	str	r3, [r0, #32]	@ float	@ tmp119, <retval>.ay.z
	str	r3, [r0, #36]	@ float	@ tmp119, <retval>.az.x
	str	r3, [r0, #40]	@ float	@ tmp119, <retval>.az.y
	str	r2, [r0, #44]	@ float	@ tmp118, <retval>.az.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:28: }
	.loc 1 28 1 view .LVU49
	bx	lr	@
	.cfi_endproc
.LFE44:
	.size	xform_make_translate, .-xform_make_translate
	.section	.text.xform_make_axis_angle,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_make_axis_angle
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_make_axis_angle, %function
xform_make_axis_angle:
.LVL11:
.LFB45:
	.loc 1 31 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 31 1 is_stmt 0 view .LVU51
	push	{lr}	@
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	vpush.64	{d8}	@
.LCFI5:
	.cfi_def_cfa_offset 12
	.cfi_offset 80, -12
	.cfi_offset 81, -8
	vmov.f32	s17, s0	@ angle, angle
	sub	sp, sp, #36	@,,
.LCFI6:
	.cfi_def_cfa_offset 48
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:31: {
	.loc 1 31 1 view .LVU52
	str	r0, [sp, #16]	@ .result_ptr, %sfp
	vstr.32	s1, [sp, #12]	@ int	@ axis, %sfp
.LVL12:
	.loc 1 31 1 view .LVU53
	vstr.32	s2, [sp, #8]	@ int	@ axis, %sfp
.LVL13:
	.loc 1 31 1 view .LVU54
	vstr.32	s3, [sp, #4]	@ int	@ axis, %sfp
.LVL14:
	.loc 1 32 2 is_stmt 1 view .LVU55
	.loc 1 33 2 view .LVU56
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:33: 	float c = cosf(angle);
	.loc 1 33 12 is_stmt 0 view .LVU57
	bl	cosf		@
.LVL15:
	.loc 1 33 12 view .LVU58
	vmov.f32	s16, s0	@ c,
.LVL16:
	.loc 1 34 2 is_stmt 1 view .LVU59
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:34: 	float s = sinf(angle);
	.loc 1 34 12 is_stmt 0 view .LVU60
	vmov.f32	s0, s17	@, angle
.LVL17:
	.loc 1 34 12 view .LVU61
	bl	sinf		@
.LVL18:
	.loc 1 35 2 is_stmt 1 view .LVU62
.LBB75:
.LBB76:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:281: 	float d = sqrtf(v.x * v.x + v.y * v.y + v.z * v.z);
	.loc 2 281 41 is_stmt 0 view .LVU63
	vldr.32	s2, [sp, #8]	@ int	@ axis, %sfp
.LBB77:
.LBB78:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:23: 	asm ("vsqrt.f32 %0, %1" : "=t"(result) : "t"(x));
	.loc 2 23 2 view .LVU64
	vldr.32	s1, [sp, #12]	@ int	@ axis, %sfp
.LBE78:
.LBE77:
.LBE76:
.LBE75:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:35: 	float t = 1.0f - c;
	.loc 1 35 8 view .LVU65
	vmov.f32	s12, #1.0e+0	@ tmp154,
.LBB88:
.LBB85:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:281: 	float d = sqrtf(v.x * v.x + v.y * v.y + v.z * v.z);
	.loc 2 281 41 view .LVU66
	vmul.f32	s13, s2, s2	@ powmult_33, axis, axis
.LBB82:
.LBB79:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:23: 	asm ("vsqrt.f32 %0, %1" : "=t"(result) : "t"(x));
	.loc 2 23 2 view .LVU67
	vldr.32	s3, [sp, #4]	@ int	@ axis, %sfp
.LBE79:
.LBE82:
.LBE85:
.LBE88:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:53: }
	.loc 1 53 1 view .LVU68
	ldr	r0, [sp, #16]	@ .result_ptr, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:52: 	return p;
	.loc 1 52 9 view .LVU69
	movs	r3, #0	@ tmp165,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:35: 	float t = 1.0f - c;
	.loc 1 35 8 view .LVU70
	vsub.f32	s14, s12, s16	@ t, tmp154, c
.LVL19:
	.loc 1 36 2 is_stmt 1 view .LVU71
.LBB89:
.LBI75:
	.loc 2 279 22 view .LVU72
.LBB86:
	.loc 2 281 2 view .LVU73
.LBB83:
.LBI77:
	.loc 2 20 21 view .LVU74
.LBB80:
	.loc 2 22 2 view .LVU75
	.loc 2 23 2 view .LVU76
	vfma.f32	s13, s1, s1	@ tmp157, axis, axis
.LBE80:
.LBE83:
.LBE86:
.LBE89:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:52: 	return p;
	.loc 1 52 9 is_stmt 0 view .LVU77
	str	r3, [r0]	@ float	@ tmp165, MEM <float> [(struct xform *)&<retval>]
	str	r3, [r0, #4]	@ float	@ tmp165, MEM <float> [(struct xform *)&<retval> + 4B]
	str	r3, [r0, #8]	@ float	@ tmp165, MEM <float> [(struct xform *)&<retval> + 8B]
.LBB90:
.LBB87:
.LBB84:
.LBB81:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:23: 	asm ("vsqrt.f32 %0, %1" : "=t"(result) : "t"(x));
	.loc 2 23 2 view .LVU78
	vfma.f32	s13, s3, s3	@ tmp156, axis, axis
	.syntax unified
@ 23 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	vsqrt.f32 s13, s13	@ result, tmp156
@ 0 "" 2
	.loc 2 24 2 is_stmt 1 view .LVU79
.LVL20:
	.loc 2 24 2 is_stmt 0 view .LVU80
	.thumb
	.syntax unified
.LBE81:
.LBE84:
	.loc 2 282 2 is_stmt 1 view .LVU81
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 is_stmt 0 view .LVU82
	vdiv.f32	s15, s12, s13	@ id, tmp154, result
.LVL21:
	.loc 2 283 2 is_stmt 1 view .LVU83
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 39 is_stmt 0 view .LVU84
	vmul.f32	s3, s15, s3	@ _41, id, axis
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 19 view .LVU85
	vmul.f32	s1, s1, s15	@ _39, axis, id
.LVL22:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 29 view .LVU86
	vmul.f32	s2, s2, s15	@ _40, axis, id
.LVL23:
	.loc 2 284 2 is_stmt 1 view .LVU87
	.loc 2 284 2 is_stmt 0 view .LVU88
.LBE87:
.LBE90:
	.loc 1 37 2 is_stmt 1 view .LVU89
	.loc 1 38 2 view .LVU90
	.loc 1 39 2 view .LVU91
	.loc 1 40 2 view .LVU92
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:41: 	p.ax.y = x * y * t + z * s;
	.loc 1 41 25 is_stmt 0 view .LVU93
	vmul.f32	s13, s0, s3	@ _6, s, _41
.LVL24:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:42: 	p.ax.z = x * z * t - y * s;
	.loc 1 42 13 view .LVU94
	vmul.f32	s11, s1, s3	@ _8, _39, _41
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:41: 	p.ax.y = x * y * t + z * s;
	.loc 1 41 13 view .LVU95
	vmul.f32	s10, s1, s2	@ _4, _39, _40
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:41: 	p.ax.y = x * y * t + z * s;
	.loc 1 41 21 view .LVU96
	vmov.f32	s9, s13	@ _7, _6
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:42: 	p.ax.z = x * z * t - y * s;
	.loc 1 42 25 view .LVU97
	vmul.f32	s15, s0, s2	@ _10, s, _40
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:46: 	p.ay.z = y * z * t + x * s;
	.loc 1 46 25 view .LVU98
	vmul.f32	s0, s0, s1	@ _18, s, _39
.LVL25:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:41: 	p.ax.y = x * y * t + z * s;
	.loc 1 41 21 view .LVU99
	vfma.f32	s9, s10, s14	@ _7, _4, t
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:40: 	p.ax.x = c + x * x * t;
	.loc 1 40 21 view .LVU100
	vmul.f32	s1, s1, s1	@ powmult_1, _39, _39
.LVL26:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:46: 	p.ay.z = y * z * t + x * s;
	.loc 1 46 13 view .LVU101
	vmul.f32	s12, s2, s3	@ _16, _40, _41
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:44: 	p.ay.x = y * x * t - z * s;
	.loc 1 44 21 view .LVU102
	vfnms.f32	s13, s10, s14	@ _12, _4, t
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:45: 	p.ay.y = c + y * y * t;
	.loc 1 45 21 view .LVU103
	vmul.f32	s2, s2, s2	@ powmult_13, _40, _40
.LVL27:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:50: 	p.az.z = c + z * z * t;
	.loc 1 50 21 view .LVU104
	vmul.f32	s3, s3, s3	@ powmult_22, _41, _41
.LVL28:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:52: 	return p;
	.loc 1 52 9 view .LVU105
	vstr.32	s9, [r0, #16]	@ _7, <retval>.ax.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:40: 	p.ax.x = c + x * x * t;
	.loc 1 40 13 view .LVU106
	vmov.f32	s9, s16	@ _3, c
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:42: 	p.ax.z = x * z * t - y * s;
	.loc 1 42 21 view .LVU107
	vmov.f32	s8, s15	@ _11, _10
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:46: 	p.ay.z = y * z * t + x * s;
	.loc 1 46 21 view .LVU108
	vmov.f32	s10, s0	@ _19, _18
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:40: 	p.ax.x = c + x * x * t;
	.loc 1 40 13 view .LVU109
	vfma.f32	s9, s1, s14	@ _3, powmult_1, t
.LVL29:
	.loc 1 41 2 is_stmt 1 view .LVU110
	.loc 1 42 2 view .LVU111
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:52: 	return p;
	.loc 1 52 9 is_stmt 0 view .LVU112
	vstr.32	s13, [r0, #24]	@ _12, <retval>.ay.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:42: 	p.ax.z = x * z * t - y * s;
	.loc 1 42 21 view .LVU113
	vfnms.f32	s8, s11, s14	@ _11, _8, t
.LVL30:
	.loc 1 44 2 is_stmt 1 view .LVU114
	.loc 1 45 2 view .LVU115
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:46: 	p.ay.z = y * z * t + x * s;
	.loc 1 46 21 is_stmt 0 view .LVU116
	vfma.f32	s10, s12, s14	@ _19, _16, t
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:48: 	p.az.x = z * x * t + y * s;
	.loc 1 48 21 view .LVU117
	vfma.f32	s15, s11, s14	@ _20, _8, t
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:49: 	p.az.y = z * y * t - x * s;
	.loc 1 49 21 view .LVU118
	vfnms.f32	s0, s12, s14	@ _21, _16, t
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:52: 	return p;
	.loc 1 52 9 view .LVU119
	vstr.32	s9, [r0, #12]	@ _3, <retval>.ax.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:45: 	p.ay.y = c + y * y * t;
	.loc 1 45 13 view .LVU120
	vmov.f32	s9, s16	@ _15, c
.LVL31:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:52: 	return p;
	.loc 1 52 9 view .LVU121
	vfma.f32	s16, s3, s14	@ tmp168, powmult_22, t
.LVL32:
	.loc 1 52 9 view .LVU122
	vstr.32	s8, [r0, #20]	@ _11, <retval>.ax.z
	vstr.32	s10, [r0, #32]	@ _19, <retval>.ay.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:45: 	p.ay.y = c + y * y * t;
	.loc 1 45 13 view .LVU123
	vfma.f32	s9, s2, s14	@ _15, powmult_13, t
.LVL33:
	.loc 1 46 2 is_stmt 1 view .LVU124
	.loc 1 48 2 view .LVU125
	.loc 1 49 2 view .LVU126
	.loc 1 50 2 view .LVU127
	.loc 1 51 2 view .LVU128
	.loc 1 52 2 view .LVU129
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:52: 	return p;
	.loc 1 52 9 is_stmt 0 view .LVU130
	vstr.32	s15, [r0, #36]	@ _20, <retval>.az.x
	vstr.32	s0, [r0, #40]	@ _21, <retval>.az.y
	vstr.32	s16, [r0, #44]	@ tmp168, <retval>.az.z
.LVL34:
	.loc 1 52 9 view .LVU131
	vstr.32	s9, [r0, #28]	@ _15, <retval>.ay.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:53: }
	.loc 1 53 1 view .LVU132
	add	sp, sp, #36	@,,
.LCFI7:
	.cfi_def_cfa_offset 12
	@ sp needed	@
	vldm	sp!, {d8}	@
.LCFI8:
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 4
	pop	{pc}	@
	.loc 1 53 1 view .LVU133
	.cfi_endproc
.LFE45:
	.size	xform_make_axis_angle, .-xform_make_axis_angle
	.section	.text.xform_multiply,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_multiply
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_multiply, %function
xform_multiply:
.LVL35:
.LFB46:
	.loc 1 56 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 57 2 view .LVU135
	.loc 1 58 2 view .LVU136
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:56: {
	.loc 1 56 1 is_stmt 0 view .LVU137
	vpush.64	{d8, d9}	@
.LCFI9:
	.cfi_def_cfa_offset 16
	.cfi_offset 80, -16
	.cfi_offset 81, -12
	.cfi_offset 82, -8
	.cfi_offset 83, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 36 view .LVU138
	vldr.32	s7, [r1, #24]	@ _4, l_89(D)->ay.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:59: 	m.ax.y = l->ax.y * r->ax.x + l->ay.y * r->ax.y + l->az.y * r->ax.z;
	.loc 1 59 36 view .LVU139
	vldr.32	s17, [r1, #28]	@ _14, l_89(D)->ay.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:60: 	m.ax.z = l->ax.z * r->ax.x + l->ay.z * r->ax.y + l->az.z * r->ax.z;
	.loc 1 60 36 view .LVU140
	vldr.32	s4, [r1, #32]	@ _22, l_89(D)->ay.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 46 view .LVU141
	vldr.32	s12, [r2, #16]	@ _5, r_90(D)->ax.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 16 view .LVU142
	vldr.32	s9, [r1, #12]	@ _1, l_89(D)->ax.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:59: 	m.ax.y = l->ax.y * r->ax.x + l->ay.y * r->ax.y + l->az.y * r->ax.z;
	.loc 1 59 16 view .LVU143
	vldr.32	s10, [r1, #16]	@ _12, l_89(D)->ax.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 39 view .LVU144
	vmul.f32	s1, s7, s12	@ _6, _4, _5
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:60: 	m.ax.z = l->ax.z * r->ax.x + l->ay.z * r->ax.y + l->az.z * r->ax.z;
	.loc 1 60 16 view .LVU145
	vldr.32	s11, [r1, #20]	@ _20, l_89(D)->ax.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:59: 	m.ax.y = l->ax.y * r->ax.x + l->ay.y * r->ax.y + l->az.y * r->ax.z;
	.loc 1 59 39 view .LVU146
	vmul.f32	s2, s12, s17	@ _15, _5, _14
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:67: 	m.pos.x = l->pos.x + l->ax.x * r->pos.x + l->ay.x * r->pos.y + l->az.x * r->pos.z;
	.loc 1 67 39 view .LVU147
	vldr.32	s8, [r2]	@ _65, r_90(D)->pos.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:60: 	m.ax.z = l->ax.z * r->ax.x + l->ay.z * r->ax.y + l->az.z * r->ax.z;
	.loc 1 60 39 view .LVU148
	vmul.f32	s12, s12, s4	@ _23, _5, _22
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:67: 	m.pos.x = l->pos.x + l->ax.x * r->pos.x + l->ay.x * r->pos.y + l->az.x * r->pos.z;
	.loc 1 67 63 view .LVU149
	vldr.32	s6, [r1]	@ l_89(D)->pos.x, l_89(D)->pos.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:68: 	m.pos.y = l->pos.y + l->ax.y * r->pos.x + l->ay.y * r->pos.y + l->az.y * r->pos.z;
	.loc 1 68 63 view .LVU150
	vldr.32	s18, [r1, #4]	@ l_89(D)->pos.y, l_89(D)->pos.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:69: 	m.pos.z = l->pos.z + l->ax.z * r->pos.x + l->ay.z * r->pos.y + l->az.z * r->pos.z;
	.loc 1 69 63 view .LVU151
	vldr.32	s15, [r1, #8]	@ l_89(D)->pos.z, l_89(D)->pos.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:67: 	m.pos.x = l->pos.x + l->ax.x * r->pos.x + l->ay.x * r->pos.y + l->az.x * r->pos.z;
	.loc 1 67 63 view .LVU152
	vfma.f32	s6, s9, s8	@ tmp196, _1, _65
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:61: 	m.ay.x = l->ax.x * r->ay.x + l->ay.x * r->ay.y + l->az.x * r->ay.z;
	.loc 1 61 46 view .LVU153
	vldr.32	s13, [r2, #28]	@ _30, r_90(D)->ay.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:68: 	m.pos.y = l->pos.y + l->ax.y * r->pos.x + l->ay.y * r->pos.y + l->az.y * r->pos.z;
	.loc 1 68 63 view .LVU154
	vfma.f32	s18, s10, s8	@ tmp199, _12, _65
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:69: 	m.pos.z = l->pos.z + l->ax.z * r->pos.x + l->ay.z * r->pos.y + l->az.z * r->pos.z;
	.loc 1 69 63 view .LVU155
	vfma.f32	s15, s11, s8	@ tmp202, _20, _65
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 26 view .LVU156
	vldr.32	s8, [r2, #12]	@ _2, r_90(D)->ax.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:61: 	m.ay.x = l->ax.x * r->ay.x + l->ay.x * r->ay.y + l->az.x * r->ay.z;
	.loc 1 61 39 view .LVU157
	vmul.f32	s0, s7, s13	@ _31, _4, _30
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:64: 	m.az.x = l->ax.x * r->az.x + l->ay.x * r->az.y + l->az.x * r->az.z;
	.loc 1 64 46 view .LVU158
	vldr.32	s14, [r2, #40]	@ _48, r_90(D)->az.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:62: 	m.ay.y = l->ax.y * r->ay.x + l->ay.y * r->ay.y + l->az.y * r->ay.z;
	.loc 1 62 39 view .LVU159
	vmul.f32	s3, s17, s13	@ _37, _14, _30
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:64: 	m.az.x = l->ax.x * r->az.x + l->ay.x * r->az.y + l->az.x * r->az.z;
	.loc 1 64 26 view .LVU160
	vldr.32	s19, [r2, #36]	@ _46, r_90(D)->az.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:63: 	m.ay.z = l->ax.z * r->ay.x + l->ay.z * r->ay.y + l->az.z * r->ay.z;
	.loc 1 63 39 view .LVU161
	vmul.f32	s13, s4, s13	@ _42, _22, _30
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:61: 	m.ay.x = l->ax.x * r->ay.x + l->ay.x * r->ay.y + l->az.x * r->ay.z;
	.loc 1 61 66 view .LVU162
	vldr.32	s16, [r2, #32]	@ _33, r_90(D)->ay.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 49 view .LVU163
	vfma.f32	s1, s9, s8	@ tmp177, _1, _2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:59: 	m.ax.y = l->ax.y * r->ax.x + l->ay.y * r->ax.y + l->az.y * r->ax.z;
	.loc 1 59 49 view .LVU164
	vfma.f32	s2, s8, s10	@ tmp179, _2, _12
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:60: 	m.ax.z = l->ax.z * r->ax.x + l->ay.z * r->ax.y + l->az.z * r->ax.z;
	.loc 1 60 49 view .LVU165
	vfma.f32	s12, s8, s11	@ tmp181, _2, _20
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:61: 	m.ay.x = l->ax.x * r->ay.x + l->ay.x * r->ay.y + l->az.x * r->ay.z;
	.loc 1 61 26 view .LVU166
	vldr.32	s8, [r2, #24]	@ _28, r_90(D)->ay.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:65: 	m.az.y = l->ax.y * r->az.x + l->ay.y * r->az.y + l->az.y * r->az.z;
	.loc 1 65 39 view .LVU167
	vmul.f32	s5, s17, s14	@ _55, _14, _48
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:62: 	m.ay.y = l->ax.y * r->ay.x + l->ay.y * r->ay.y + l->az.y * r->ay.z;
	.loc 1 62 49 view .LVU168
	vfma.f32	s3, s10, s8	@ tmp185, _12, _28
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:61: 	m.ay.x = l->ax.x * r->ay.x + l->ay.x * r->ay.y + l->az.x * r->ay.z;
	.loc 1 61 49 view .LVU169
	vfma.f32	s0, s9, s8	@ tmp183, _1, _28
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:63: 	m.ay.z = l->ax.z * r->ay.x + l->ay.z * r->ay.y + l->az.z * r->ay.z;
	.loc 1 63 49 view .LVU170
	vfma.f32	s13, s11, s8	@ tmp187, _20, _28
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:64: 	m.az.x = l->ax.x * r->az.x + l->ay.x * r->az.y + l->az.x * r->az.z;
	.loc 1 64 39 view .LVU171
	vmul.f32	s8, s7, s14	@ _49, _4, _48
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:66: 	m.az.z = l->ax.z * r->az.x + l->ay.z * r->az.y + l->az.z * r->az.z;
	.loc 1 66 39 view .LVU172
	vmul.f32	s14, s4, s14	@ _60, _22, _48
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:65: 	m.az.y = l->ax.y * r->az.x + l->ay.y * r->az.y + l->az.y * r->az.z;
	.loc 1 65 49 view .LVU173
	vfma.f32	s5, s10, s19	@ tmp191, _12, _46
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:64: 	m.az.x = l->ax.x * r->az.x + l->ay.x * r->az.y + l->az.x * r->az.z;
	.loc 1 64 49 view .LVU174
	vfma.f32	s8, s9, s19	@ tmp189, _1, _46
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 56 view .LVU175
	vldr.32	s9, [r1, #36]	@ _8, l_89(D)->az.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:66: 	m.az.z = l->ax.z * r->az.x + l->ay.z * r->az.y + l->az.z * r->az.z;
	.loc 1 66 49 view .LVU176
	vfma.f32	s14, s11, s19	@ tmp193, _20, _46
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:67: 	m.pos.x = l->pos.x + l->ax.x * r->pos.x + l->ay.x * r->pos.y + l->az.x * r->pos.z;
	.loc 1 67 60 view .LVU177
	vldr.32	s11, [r2, #4]	@ _68, r_90(D)->pos.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:61: 	m.ay.x = l->ax.x * r->ay.x + l->ay.x * r->ay.y + l->az.x * r->ay.z;
	.loc 1 61 49 view .LVU178
	vmov.f32	s10, s0	@ tmp183, tmp183
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:67: 	m.pos.x = l->pos.x + l->ax.x * r->pos.x + l->ay.x * r->pos.y + l->az.x * r->pos.z;
	.loc 1 67 63 view .LVU179
	vfma.f32	s6, s7, s11	@ tmp195, _4, _68
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:68: 	m.pos.y = l->pos.y + l->ax.y * r->pos.x + l->ay.y * r->pos.y + l->az.y * r->pos.z;
	.loc 1 68 63 view .LVU180
	vmov.f32	s7, s18	@ tmp199, tmp199
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:69: 	m.pos.z = l->pos.z + l->ax.z * r->pos.x + l->ay.z * r->pos.y + l->az.z * r->pos.z;
	.loc 1 69 63 view .LVU181
	vfma.f32	s15, s4, s11	@ tmp201, _22, _68
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 66 view .LVU182
	vldr.32	s4, [r2, #20]	@ _9, r_90(D)->ax.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:61: 	m.ay.x = l->ax.x * r->ay.x + l->ay.x * r->ay.y + l->az.x * r->ay.z;
	.loc 1 61 49 view .LVU183
	vfma.f32	s10, s9, s16	@ tmp183, _8, _33
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:68: 	m.pos.y = l->pos.y + l->ax.y * r->pos.x + l->ay.y * r->pos.y + l->az.y * r->pos.z;
	.loc 1 68 63 view .LVU184
	vfma.f32	s7, s17, s11	@ tmp199, _14, _68
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:58: 	m.ax.x = l->ax.x * r->ax.x + l->ay.x * r->ax.y + l->az.x * r->ax.z;
	.loc 1 58 49 view .LVU185
	vmov.f32	s11, s1	@ tmp177, tmp177
	vfma.f32	s11, s9, s4	@ tmp177, _8, _9
.LVL36:
	.loc 1 59 2 is_stmt 1 view .LVU186
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:70: 	return m;
	.loc 1 70 9 is_stmt 0 view .LVU187
	vstr.32	s10, [r0, #24]	@ _35, <retval>.ay.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:59: 	m.ax.y = l->ax.y * r->ax.x + l->ay.y * r->ax.y + l->az.y * r->ax.z;
	.loc 1 59 56 view .LVU188
	vldr.32	s10, [r1, #40]	@ _17, l_89(D)->az.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:59: 	m.ax.y = l->ax.y * r->ax.x + l->ay.y * r->ax.y + l->az.y * r->ax.z;
	.loc 1 59 49 view .LVU189
	vfma.f32	s2, s4, s10	@ _19, _9, _17
.LVL37:
	.loc 1 60 2 is_stmt 1 view .LVU190
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:70: 	return m;
	.loc 1 70 9 is_stmt 0 view .LVU191
	vstr.32	s11, [r0, #12]	@ _11, <retval>.ax.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:62: 	m.ay.y = l->ax.y * r->ay.x + l->ay.y * r->ay.y + l->az.y * r->ay.z;
	.loc 1 62 49 view .LVU192
	vmov.f32	s11, s3	@ tmp185, tmp185
.LVL38:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:64: 	m.az.x = l->ax.x * r->az.x + l->ay.x * r->az.y + l->az.x * r->az.z;
	.loc 1 64 66 view .LVU193
	vldr.32	s3, [r2, #44]	@ _51, r_90(D)->az.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:62: 	m.ay.y = l->ax.y * r->ay.x + l->ay.y * r->ay.y + l->az.y * r->ay.z;
	.loc 1 62 49 view .LVU194
	vfma.f32	s11, s10, s16	@ tmp185, _17, _33
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:64: 	m.az.x = l->ax.x * r->az.x + l->ay.x * r->az.y + l->az.x * r->az.z;
	.loc 1 64 49 view .LVU195
	vfma.f32	s8, s9, s3	@ _53, _8, _51
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:70: 	return m;
	.loc 1 70 9 view .LVU196
	vstr.32	s2, [r0, #16]	@ _19, <retval>.ax.y
	vstr.32	s11, [r0, #28]	@ _40, <retval>.ay.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:60: 	m.ax.z = l->ax.z * r->ax.x + l->ay.z * r->ax.y + l->az.z * r->ax.z;
	.loc 1 60 56 view .LVU197
	vldr.32	s11, [r1, #44]	@ _25, l_89(D)->az.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:60: 	m.ax.z = l->ax.z * r->ax.x + l->ay.z * r->ax.y + l->az.z * r->ax.z;
	.loc 1 60 49 view .LVU198
	vfma.f32	s12, s4, s11	@ _27, _9, _25
.LVL39:
	.loc 1 61 2 is_stmt 1 view .LVU199
	.loc 1 62 2 view .LVU200
	.loc 1 63 2 view .LVU201
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:67: 	m.pos.x = l->pos.x + l->ax.x * r->pos.x + l->ay.x * r->pos.y + l->az.x * r->pos.z;
	.loc 1 67 81 is_stmt 0 view .LVU202
	vldr.32	s4, [r2, #8]	@ _71, r_90(D)->pos.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:63: 	m.ay.z = l->ax.z * r->ay.x + l->ay.z * r->ay.y + l->az.z * r->ay.z;
	.loc 1 63 49 view .LVU203
	vfma.f32	s13, s11, s16	@ _45, _25, _33
	.loc 1 64 2 is_stmt 1 view .LVU204
	.loc 1 65 2 view .LVU205
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:67: 	m.pos.x = l->pos.x + l->ax.x * r->pos.x + l->ay.x * r->pos.y + l->az.x * r->pos.z;
	.loc 1 67 63 is_stmt 0 view .LVU206
	vfma.f32	s6, s9, s4	@ _73, _8, _71
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:68: 	m.pos.y = l->pos.y + l->ax.y * r->pos.x + l->ay.y * r->pos.y + l->az.y * r->pos.z;
	.loc 1 68 63 view .LVU207
	vmov.f32	s9, s7	@ tmp198, tmp198
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:66: 	m.az.z = l->ax.z * r->az.x + l->ay.z * r->az.y + l->az.z * r->az.z;
	.loc 1 66 49 view .LVU208
	vfma.f32	s14, s11, s3	@ _63, _25, _51
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:69: 	m.pos.z = l->pos.z + l->ax.z * r->pos.x + l->ay.z * r->pos.y + l->az.z * r->pos.z;
	.loc 1 69 63 view .LVU209
	vfma.f32	s15, s11, s4	@ _87, _25, _71
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:70: 	return m;
	.loc 1 70 9 view .LVU210
	vstr.32	s12, [r0, #20]	@ _27, <retval>.ax.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:65: 	m.az.y = l->ax.y * r->az.x + l->ay.y * r->az.y + l->az.y * r->az.z;
	.loc 1 65 49 view .LVU211
	vmov.f32	s12, s5	@ tmp191, tmp191
.LVL40:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:68: 	m.pos.y = l->pos.y + l->ax.y * r->pos.x + l->ay.y * r->pos.y + l->az.y * r->pos.z;
	.loc 1 68 63 view .LVU212
	vfma.f32	s9, s10, s4	@ tmp198, _17, _71
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:70: 	return m;
	.loc 1 70 9 view .LVU213
	vstr.32	s6, [r0]	@ _73, <retval>.pos.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:65: 	m.az.y = l->ax.y * r->az.x + l->ay.y * r->az.y + l->az.y * r->az.z;
	.loc 1 65 49 view .LVU214
	vfma.f32	s12, s10, s3	@ tmp191, _17, _51
	.loc 1 66 2 is_stmt 1 view .LVU215
	.loc 1 67 2 view .LVU216
.LVL41:
	.loc 1 68 2 view .LVU217
	.loc 1 69 2 view .LVU218
	.loc 1 70 2 view .LVU219
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:70: 	return m;
	.loc 1 70 9 is_stmt 0 view .LVU220
	vstr.32	s9, [r0, #4]	@ _80, <retval>.pos.y
	vstr.32	s15, [r0, #8]	@ _87, <retval>.pos.z
	vstr.32	s13, [r0, #32]	@ _45, <retval>.ay.z
	vstr.32	s8, [r0, #36]	@ _53, <retval>.az.x
	vstr.32	s12, [r0, #40]	@ _58, <retval>.az.y
	vstr.32	s14, [r0, #44]	@ _63, <retval>.az.z
.LVL42:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:71: }
	.loc 1 71 1 view .LVU221
	vldm	sp!, {d8-d9}	@,
.LCFI10:
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 0
	bx	lr	@
	.cfi_endproc
.LFE46:
	.size	xform_multiply, .-xform_multiply
	.section	.text.xform_transform_pt,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_transform_pt
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_transform_pt, %function
xform_transform_pt:
.LVL43:
.LFB47:
	.loc 1 74 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 75 2 view .LVU223
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:75: 	float x = p.x * m->ax.x + p.y * m->ay.x + p.z * m->az.x + m->pos.x;
	.loc 1 75 8 is_stmt 0 view .LVU224
	vldr.32	s10, [r0, #12]	@ m_29(D)->ax.x, m_29(D)->ax.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:74: {
	.loc 1 74 1 view .LVU225
	sub	sp, sp, #48	@,,
.LCFI11:
	.cfi_def_cfa_offset 48
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:76: 	float y = p.x * m->ax.y + p.y * m->ay.y + p.z * m->az.y + m->pos.y;
	.loc 1 76 8 view .LVU226
	vldr.32	s11, [r0, #16]	@ m_29(D)->ax.y, m_29(D)->ax.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:77: 	float z = p.x * m->ax.z + p.y * m->ay.z + p.z * m->az.z + m->pos.z;
	.loc 1 77 8 view .LVU227
	vldr.32	s12, [r0, #20]	@ m_29(D)->ax.z, m_29(D)->ax.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:75: 	float x = p.x * m->ax.x + p.y * m->ay.x + p.z * m->az.x + m->pos.x;
	.loc 1 75 8 view .LVU228
	vldr.32	s14, [r0]	@ m_29(D)->pos.x, m_29(D)->pos.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:76: 	float y = p.x * m->ax.y + p.y * m->ay.y + p.z * m->az.y + m->pos.y;
	.loc 1 76 8 view .LVU229
	vldr.32	s13, [r0, #4]	@ m_29(D)->pos.y, m_29(D)->pos.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:77: 	float z = p.x * m->ax.z + p.y * m->ay.z + p.z * m->az.z + m->pos.z;
	.loc 1 77 8 view .LVU230
	vldr.32	s15, [r0, #8]	@ m_29(D)->pos.z, m_29(D)->pos.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:75: 	float x = p.x * m->ax.x + p.y * m->ay.x + p.z * m->az.x + m->pos.x;
	.loc 1 75 8 view .LVU231
	vfma.f32	s14, s10, s0	@ tmp146, m_29(D)->ax.x, p
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:76: 	float y = p.x * m->ax.y + p.y * m->ay.y + p.z * m->az.y + m->pos.y;
	.loc 1 76 8 view .LVU232
	vfma.f32	s13, s11, s0	@ tmp150, m_29(D)->ax.y, p
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:75: 	float x = p.x * m->ax.x + p.y * m->ay.x + p.z * m->az.x + m->pos.x;
	.loc 1 75 39 view .LVU233
	vldr.32	s7, [r0, #24]	@ _3, m_29(D)->ay.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:77: 	float z = p.x * m->ax.z + p.y * m->ay.z + p.z * m->az.z + m->pos.z;
	.loc 1 77 8 view .LVU234
	vfma.f32	s15, s12, s0	@ tmp154, m_29(D)->ax.z, p
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:76: 	float y = p.x * m->ax.y + p.y * m->ay.y + p.z * m->az.y + m->pos.y;
	.loc 1 76 39 view .LVU235
	vldr.32	s8, [r0, #28]	@ _12, m_29(D)->ay.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:77: 	float z = p.x * m->ax.z + p.y * m->ay.z + p.z * m->az.z + m->pos.z;
	.loc 1 77 39 view .LVU236
	vldr.32	s9, [r0, #32]	@ _21, m_29(D)->ay.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:76: 	float y = p.x * m->ax.y + p.y * m->ay.y + p.z * m->az.y + m->pos.y;
	.loc 1 76 55 view .LVU237
	vldr.32	s10, [r0, #40]	@ _15, m_29(D)->az.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:77: 	float z = p.x * m->ax.z + p.y * m->ay.z + p.z * m->az.z + m->pos.z;
	.loc 1 77 55 view .LVU238
	vldr.32	s12, [r0, #44]	@ _24, m_29(D)->az.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:75: 	float x = p.x * m->ax.x + p.y * m->ay.x + p.z * m->az.x + m->pos.x;
	.loc 1 75 8 view .LVU239
	vfma.f32	s14, s7, s1	@ tmp146, _3, p
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:75: 	float x = p.x * m->ax.x + p.y * m->ay.x + p.z * m->az.x + m->pos.x;
	.loc 1 75 55 view .LVU240
	vldr.32	s11, [r0, #36]	@ _6, m_29(D)->az.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:76: 	float y = p.x * m->ax.y + p.y * m->ay.y + p.z * m->az.y + m->pos.y;
	.loc 1 76 8 view .LVU241
	vfma.f32	s13, s8, s1	@ tmp149, _12, p
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:77: 	float z = p.x * m->ax.z + p.y * m->ay.z + p.z * m->az.z + m->pos.z;
	.loc 1 77 8 view .LVU242
	vfma.f32	s15, s9, s1	@ tmp153, _21, p
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:75: 	float x = p.x * m->ax.x + p.y * m->ay.x + p.z * m->az.x + m->pos.x;
	.loc 1 75 8 view .LVU243
	vmov.f32	s0, s14	@ tmp145, tmp146
.LVL44:
	.loc 1 76 2 is_stmt 1 view .LVU244
	.loc 1 77 2 view .LVU245
	.loc 1 78 2 view .LVU246
.LBB91:
.LBI91:
	.loc 2 264 22 view .LVU247
	.loc 2 266 2 view .LVU248
	.loc 2 266 2 is_stmt 0 view .LVU249
.LBE91:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:79: }
	.loc 1 79 1 view .LVU250
	vfma.f32	s13, s10, s2	@ tmp149, _15, p
.LVL45:
	.loc 1 79 1 view .LVU251
	vfma.f32	s15, s12, s2	@ tmp153, _24, p
.LVL46:
	.loc 1 79 1 view .LVU252
	vfma.f32	s0, s11, s2	@, _6, p
.LVL47:
	.loc 1 79 1 view .LVU253
	vmov.f32	s1, s13	@, tmp149
.LVL48:
	.loc 1 79 1 view .LVU254
	vmov.f32	s2, s15	@, tmp153
.LVL49:
	.loc 1 79 1 view .LVU255
	add	sp, sp, #48	@,,
.LCFI12:
	.cfi_def_cfa_offset 0
	@ sp needed	@
	bx	lr	@
	.cfi_endproc
.LFE47:
	.size	xform_transform_pt, .-xform_transform_pt
	.section	.text.xform_get_determinant,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_get_determinant
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_get_determinant, %function
xform_get_determinant:
.LVL50:
.LFB48:
	.loc 1 82 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 83 2 view .LVU257
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:84: 		+ m->ax.y * m->ay.z * m->az.x
	.loc 1 84 10 is_stmt 0 view .LVU258
	vldr.32	s14, [r0, #16]	@ _6, m_27(D)->ax.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:84: 		+ m->ax.y * m->ay.z * m->az.x
	.loc 1 84 20 view .LVU259
	vldr.32	s8, [r0, #32]	@ _7, m_27(D)->ay.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:83: 	return m->ax.x * m->ay.y * m->az.z
	.loc 1 83 14 view .LVU260
	vldr.32	s15, [r0, #12]	@ _1, m_27(D)->ax.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:84: 		+ m->ax.y * m->ay.z * m->az.x
	.loc 1 84 13 view .LVU261
	vmul.f32	s0, s14, s8	@ _8, _6, _7
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:83: 	return m->ax.x * m->ay.y * m->az.z
	.loc 1 83 24 view .LVU262
	vldr.32	s13, [r0, #28]	@ _2, m_27(D)->ay.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:84: 		+ m->ax.y * m->ay.z * m->az.x
	.loc 1 84 30 view .LVU263
	vldr.32	s7, [r0, #36]	@ _9, m_27(D)->az.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:83: 	return m->ax.x * m->ay.y * m->az.z
	.loc 1 83 17 view .LVU264
	vmul.f32	s5, s15, s13	@ _3, _1, _2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:83: 	return m->ax.x * m->ay.y * m->az.z
	.loc 1 83 34 view .LVU265
	vldr.32	s9, [r0, #44]	@ _4, m_27(D)->az.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:84: 		+ m->ax.y * m->ay.z * m->az.x
	.loc 1 84 23 view .LVU266
	vmul.f32	s0, s0, s7	@ _10, _8, _9
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:85: 		+ m->ax.z * m->ay.x * m->az.y
	.loc 1 85 10 view .LVU267
	vldr.32	s10, [r0, #20]	@ _12, m_27(D)->ax.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:85: 		+ m->ax.z * m->ay.x * m->az.y
	.loc 1 85 20 view .LVU268
	vldr.32	s11, [r0, #24]	@ _13, m_27(D)->ay.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:86: 		- m->az.x * m->ay.y * m->ax.z
	.loc 1 86 13 view .LVU269
	vmul.f32	s13, s13, s7	@ _18, _2, _9
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:85: 		+ m->ax.z * m->ay.x * m->az.y
	.loc 1 85 30 view .LVU270
	vldr.32	s12, [r0, #40]	@ _15, m_27(D)->az.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:88: 		- m->ax.x * m->az.y * m->ay.z;
	.loc 1 88 3 view .LVU271
	vmul.f32	s14, s9, s14	@ _33, _4, _6
	vfma.f32	s0, s5, s9	@ tmp149, _3, _4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:85: 		+ m->ax.z * m->ay.x * m->az.y
	.loc 1 85 13 view .LVU272
	vmul.f32	s6, s10, s11	@ _14, _12, _13
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:88: 		- m->ax.x * m->az.y * m->ay.z;
	.loc 1 88 3 view .LVU273
	vmul.f32	s15, s15, s8	@ _32, _1, _7
	vfma.f32	s0, s6, s12	@ tmp147, _14, _15
	vfms.f32	s0, s10, s13	@ tmp144, _12, _18
	vfms.f32	s0, s11, s14	@ tmp141, _13, _33
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:89: }
	.loc 1 89 1 view .LVU274
	vfms.f32	s0, s12, s15	@, _15, _32
	bx	lr	@
	.cfi_endproc
.LFE48:
	.size	xform_get_determinant, .-xform_get_determinant
	.section	.text.xform_look_at,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_look_at
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_look_at, %function
xform_look_at:
.LVL51:
.LFB49:
	.loc 1 92 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LBB92:
.LBB93:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:308: 	return f3(a.x - v.x, a.y - v.y, a.z - v.z);
	.loc 2 308 9 is_stmt 0 view .LVU276
	vsub.f32	s15, s4, s1	@ _22, target, pos
.LVL52:
	.loc 2 308 9 view .LVU277
.LBE93:
.LBE92:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:95: 	if (v3_lensq(fw) < 1.0e-6f)
	.loc 1 95 5 discriminator 1 view .LVU278
	vldr.32	s10, .L31	@ tmp177,
.LBB97:
.LBB94:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:308: 	return f3(a.x - v.x, a.y - v.y, a.z - v.z);
	.loc 2 308 9 view .LVU279
	vsub.f32	s11, s3, s0	@ _21, target, pos
.LBE94:
.LBE97:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:92: {
	.loc 1 92 1 view .LVU280
	sub	sp, sp, #40	@,,
.LCFI13:
	.cfi_def_cfa_offset 40
.LVL53:
.LBB98:
.LBB95:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:308: 	return f3(a.x - v.x, a.y - v.y, a.z - v.z);
	.loc 2 308 9 view .LVU281
	vsub.f32	s14, s5, s2	@ _23, target, pos
.LVL54:
	.loc 2 308 9 view .LVU282
.LBE95:
.LBE98:
	.loc 1 94 2 is_stmt 1 view .LVU283
.LBB99:
.LBI92:
	.loc 2 306 22 view .LVU284
.LBB96:
	.loc 2 308 2 view .LVU285
	.loc 2 308 2 is_stmt 0 view .LVU286
.LBE96:
.LBE99:
	.loc 1 95 2 is_stmt 1 view .LVU287
.LBB100:
.LBI100:
	.loc 2 292 21 view .LVU288
.LBB101:
	.loc 2 294 2 view .LVU289
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:294: 	return v.x * v.x + v.y * v.y + v.z * v.z;
	.loc 2 294 25 is_stmt 0 view .LVU290
	vmul.f32	s13, s15, s15	@ powmult_59, _22, _22
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:294: 	return v.x * v.x + v.y * v.y + v.z * v.z;
	.loc 2 294 31 view .LVU291
	vfma.f32	s13, s11, s11	@ tmp175, _21, _21
	vfma.f32	s13, s14, s14	@ _20, _23, _23
.LVL55:
	.loc 2 294 31 view .LVU292
.LBE101:
.LBE100:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:95: 	if (v3_lensq(fw) < 1.0e-6f)
	.loc 1 95 5 discriminator 1 view .LVU293
	vcmp.f32	s13, s10	@ _20, tmp177
	vmrs	APSR_nzcv, FPSCR
	bmi	.L16		@,
	.loc 1 98 3 is_stmt 1 view .LVU294
.LVL56:
.LBB102:
.LBI102:
	.loc 2 279 22 view .LVU295
.LBB103:
	.loc 2 281 2 view .LVU296
.LBB104:
.LBI104:
	.loc 2 20 21 view .LVU297
.LBB105:
	.loc 2 22 2 view .LVU298
	.loc 2 23 2 view .LVU299
.LBE105:
.LBE104:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 is_stmt 0 view .LVU300
	vmov.f32	s9, #1.0e+0	@ tmp179,
.LBB107:
.LBB106:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:23: 	asm ("vsqrt.f32 %0, %1" : "=t"(result) : "t"(x));
	.loc 2 23 2 view .LVU301
	.syntax unified
@ 23 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	vsqrt.f32 s13, s13	@ result, _20
@ 0 "" 2
.LVL57:
	.loc 2 24 2 is_stmt 1 view .LVU302
	.loc 2 24 2 is_stmt 0 view .LVU303
	.thumb
	.syntax unified
.LBE106:
.LBE107:
	.loc 2 282 2 is_stmt 1 view .LVU304
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 is_stmt 0 view .LVU305
	vdiv.f32	s12, s9, s13	@ id, tmp179, result
.LVL58:
	.loc 2 283 2 is_stmt 1 view .LVU306
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 29 is_stmt 0 view .LVU307
	vmul.f32	s15, s15, s12	@ fw$y, _22, id
.LVL59:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 39 view .LVU308
	vmul.f32	s14, s14, s12	@ fw$z, _23, id
.LVL60:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 19 view .LVU309
	vmul.f32	s11, s11, s12	@ fw$x, _21, id
.LVL61:
	.loc 2 284 2 is_stmt 1 view .LVU310
	.loc 2 284 2 is_stmt 0 view .LVU311
.LBE103:
.LBE102:
.LBB108:
.LBB109:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU312
	vnmul.f32	s9, s15, s8	@ _132, fw$y, up
	vnmul.f32	s13, s14, s6	@ _133, fw$z, up
.LVL62:
	.loc 2 271 9 view .LVU313
	vnmul.f32	s12, s11, s7	@ _134, fw$x, up$y
	vfma.f32	s9, s7, s14	@ _132, up$y, fw$z
	vfma.f32	s13, s8, s11	@ _133, up, fw$x
	vfma.f32	s12, s6, s15	@ rt$z, up, fw$y
	vmov.f32	s7, s9	@ up$y, _132
.LVL63:
	.loc 2 271 9 view .LVU314
.LBE109:
.LBE108:
	.loc 1 100 2 is_stmt 1 view .LVU315
.LBB113:
.LBI108:
	.loc 2 269 22 view .LVU316
.LBB110:
	.loc 2 271 2 view .LVU317
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 is_stmt 0 view .LVU318
	vmov.f32	s6, s13	@ rt$y, _133
.LVL64:
	.loc 2 271 9 view .LVU319
.LBE110:
.LBE113:
	.loc 1 102 2 is_stmt 1 view .LVU320
.LBB114:
.LBI114:
	.loc 2 292 21 view .LVU321
.LBB115:
	.loc 2 294 2 view .LVU322
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:294: 	return v.x * v.x + v.y * v.y + v.z * v.z;
	.loc 2 294 13 is_stmt 0 view .LVU323
	vmul.f32	s13, s9, s9	@ powmult_32, up$y, up$y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:294: 	return v.x * v.x + v.y * v.y + v.z * v.z;
	.loc 2 294 31 view .LVU324
	vfma.f32	s13, s12, s12	@ tmp185, rt$z, rt$z
	vfma.f32	s13, s6, s6	@ _33, rt$y, rt$y
.LVL65:
	.loc 2 294 31 view .LVU325
.LBE115:
.LBE114:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:102: 	if (v3_lensq(rt) < 1.0e-6f) {
	.loc 1 102 5 discriminator 1 view .LVU326
	vcmp.f32	s13, s10	@ _33, tmp177
	vmrs	APSR_nzcv, FPSCR
	bpl	.L17		@,
	.loc 1 103 3 is_stmt 1 view .LVU327
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:103: 		up = fabsf(fw.y) < 0.99f ? f3(0, 1, 0) : f3(1, 0, 0);
	.loc 1 103 8 is_stmt 0 view .LVU328
	vabs.f32	s12, s15	@ _2, fw$y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:103: 		up = fabsf(fw.y) < 0.99f ? f3(0, 1, 0) : f3(1, 0, 0);
	.loc 1 103 42 view .LVU329
	vldr.32	s10, .L31+4	@ tmp189,
.LBB117:
.LBB118:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:281: 	float d = sqrtf(v.x * v.x + v.y * v.y + v.z * v.z);
	.loc 2 281 41 view .LVU330
	vmul.f32	s13, s14, s14	@ _15, fw$z, fw$z
.LBE118:
.LBE117:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:103: 		up = fabsf(fw.y) < 0.99f ? f3(0, 1, 0) : f3(1, 0, 0);
	.loc 1 103 42 view .LVU331
	vcmp.f32	s12, s10	@ _2, tmp189
	vmrs	APSR_nzcv, FPSCR
	bmi	.L29		@,
.LVL66:
.LBB131:
.LBI131:
	.loc 2 264 22 is_stmt 1 view .LVU332
.LBB132:
	.loc 2 266 2 view .LVU333
	.loc 2 266 2 is_stmt 0 view .LVU334
.LBE132:
.LBE131:
.LBB135:
.LBB136:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU335
	vneg.f32	s12, s15	@ rt$z, fw$y
.LBE136:
.LBE135:
.LBB141:
.LBB133:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:266: 	return (float3) {.x=x, .y=y, .z=z };
	.loc 2 266 9 view .LVU336
	vldr.32	s7, .L31+8	@ up$y,
.LVL67:
	.loc 2 266 9 view .LVU337
.LBE133:
.LBE141:
	.loc 1 104 3 is_stmt 1 view .LVU338
.LBB142:
.LBI135:
	.loc 2 269 22 view .LVU339
.LBB137:
	.loc 2 271 2 view .LVU340
	.loc 2 271 2 is_stmt 0 view .LVU341
.LBE137:
.LBE142:
.LBB143:
.LBB134:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:266: 	return (float3) {.x=x, .y=y, .z=z };
	.loc 2 266 9 view .LVU342
	vmov.f32	s6, s14	@ rt$y, fw$z
.LBE134:
.LBE143:
.LBB144:
.LBB123:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:281: 	float d = sqrtf(v.x * v.x + v.y * v.y + v.z * v.z);
	.loc 2 281 12 view .LVU343
	vfma.f32	s13, s12, s12	@ _33, rt$z, rt$z
.LVL68:
.L17:
	.loc 2 281 12 view .LVU344
.LBE123:
.LBE144:
	.loc 1 106 2 is_stmt 1 view .LVU345
.LBB145:
.LBI117:
	.loc 2 279 22 view .LVU346
.LBB124:
	.loc 2 281 2 view .LVU347
.LBB119:
.LBI119:
	.loc 2 20 21 view .LVU348
.LBB120:
	.loc 2 22 2 view .LVU349
	.loc 2 23 2 view .LVU350
.LBE120:
.LBE119:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 is_stmt 0 view .LVU351
	vmov.f32	s9, #1.0e+0	@ tmp191,
.LBE124:
.LBE145:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 view .LVU352
	vstr.32	s15, [r0, #40]	@ fw$y, MEM <float> [(struct xform *)&<retval> + 40B]
.LBB146:
.LBB125:
.LBB122:
.LBB121:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:23: 	asm ("vsqrt.f32 %0, %1" : "=t"(result) : "t"(x));
	.loc 2 23 2 view .LVU353
	.syntax unified
@ 23 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	vsqrt.f32 s13, s13	@ result, _33
@ 0 "" 2
	.loc 2 24 2 is_stmt 1 view .LVU354
.LVL69:
	.loc 2 24 2 is_stmt 0 view .LVU355
	.thumb
	.syntax unified
.LBE121:
.LBE122:
	.loc 2 282 2 is_stmt 1 view .LVU356
.LBE125:
.LBE146:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 is_stmt 0 view .LVU357
	vstr.32	s0, [r0]	@ pos, MEM <float> [(struct xform *)&<retval>]
.LBB147:
.LBB126:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 view .LVU358
	vdiv.f32	s10, s9, s13	@ id, tmp191, result
.LBE126:
.LBE147:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 view .LVU359
	vstr.32	s1, [r0, #4]	@ pos, MEM <float> [(struct xform *)&<retval> + 4B]
.LVL70:
.LBB148:
.LBB127:
	.loc 2 283 2 is_stmt 1 view .LVU360
.LBE127:
.LBE148:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 is_stmt 0 view .LVU361
	vstr.32	s2, [r0, #8]	@ pos, MEM <float> [(struct xform *)&<retval> + 8B]
	vstr.32	s11, [r0, #36]	@ fw$x, MEM <float> [(struct xform *)&<retval> + 36B]
	vstr.32	s14, [r0, #44]	@ fw$z, MEM <float> [(struct xform *)&<retval> + 44B]
.LBB149:
.LBB128:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 39 view .LVU362
	vmul.f32	s12, s12, s10	@ _67, rt$z, id
.LVL71:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 29 view .LVU363
	vmul.f32	s6, s6, s10	@ _66, rt$y, id
.LVL72:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 19 view .LVU364
	vmul.f32	s7, s7, s10	@ _65, up$y, id
.LVL73:
	.loc 2 284 2 is_stmt 1 view .LVU365
	.loc 2 284 2 is_stmt 0 view .LVU366
.LBE128:
.LBE149:
	.loc 1 108 2 is_stmt 1 view .LVU367
.LBB150:
.LBI150:
	.loc 2 269 22 view .LVU368
.LBB151:
	.loc 2 271 2 view .LVU369
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 is_stmt 0 view .LVU370
	vnmul.f32	s13, s11, s12	@ _130, fw$x, _67
.LVL74:
	.loc 2 271 9 view .LVU371
.LBE151:
.LBE150:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 view .LVU372
	vstr.32	s12, [r0, #20]	@ _67, MEM <float> [(struct xform *)&<retval> + 20B]
.LBB156:
.LBB152:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU373
	vnmul.f32	s9, s14, s6	@ _131, fw$z, _66
.LBE152:
.LBE156:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 view .LVU374
	vstr.32	s6, [r0, #16]	@ _66, MEM <float> [(struct xform *)&<retval> + 16B]
	vstr.32	s7, [r0, #12]	@ _65, MEM <float> [(struct xform *)&<retval> + 12B]
.LBB157:
.LBB153:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU375
	vfma.f32	s9, s12, s15	@ _51, _67, fw$y
.LBE153:
.LBE157:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 view .LVU376
	vnmul.f32	s12, s15, s7	@ _129, fw$y, _65
.LVL75:
.LBB158:
.LBB154:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU377
	vmov.f32	s15, s13	@ _130, _130
.LVL76:
	.loc 2 271 9 view .LVU378
.LBE154:
.LBE158:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 view .LVU379
	vfma.f32	s12, s6, s11	@ _129, _66, fw$x
.LBB159:
.LBB155:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU380
	vfma.f32	s15, s7, s14	@ _130, _65, fw$z
.LVL77:
	.loc 2 271 9 view .LVU381
.LBE155:
.LBE159:
	.loc 1 110 2 is_stmt 1 view .LVU382
	.loc 1 111 2 view .LVU383
	.loc 1 112 2 view .LVU384
	.loc 1 113 2 view .LVU385
	.loc 1 114 2 view .LVU386
	.loc 1 115 2 view .LVU387
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:115: 	return x;
	.loc 1 115 9 is_stmt 0 view .LVU388
	vstr.32	s9, [r0, #24]	@ _51, MEM <float> [(struct xform *)&<retval> + 24B]
	vstr.32	s12, [r0, #32]	@ tmp196, MEM <float> [(struct xform *)&<retval> + 32B]
	vstr.32	s15, [r0, #28]	@ _54, MEM <float> [(struct xform *)&<retval> + 28B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:116: }
	.loc 1 116 1 view .LVU389
	add	sp, sp, #40	@,,
.LCFI14:
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	@ sp needed	@
	bx	lr	@
.LVL78:
.L16:
.LCFI15:
	.cfi_restore_state
	.loc 1 100 2 is_stmt 1 view .LVU390
.LBB160:
	.loc 2 269 22 view .LVU391
.LBB111:
	.loc 2 271 2 view .LVU392
	.loc 2 271 2 is_stmt 0 view .LVU393
.LBE111:
.LBE160:
	.loc 1 102 2 is_stmt 1 view .LVU394
.LBB161:
	.loc 2 292 21 view .LVU395
.LBB116:
	.loc 2 294 2 view .LVU396
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:294: 	return v.x * v.x + v.y * v.y + v.z * v.z;
	.loc 2 294 25 is_stmt 0 view .LVU397
	vmul.f32	s13, s6, s6	@ powmult_99, up, up
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:294: 	return v.x * v.x + v.y * v.y + v.z * v.z;
	.loc 2 294 31 view .LVU398
	vfma.f32	s13, s7, s7	@ _33, up$y, up$y
.LVL79:
	.loc 2 294 31 view .LVU399
.LBE116:
.LBE161:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:102: 	if (v3_lensq(rt) < 1.0e-6f) {
	.loc 1 102 5 discriminator 1 view .LVU400
	vcmp.f32	s13, s10	@ _33, tmp177
	vmrs	APSR_nzcv, FPSCR
	bpl	.L30		@,
.LBB162:
.LBB129:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:281: 	float d = sqrtf(v.x * v.x + v.y * v.y + v.z * v.z);
	.loc 2 281 41 view .LVU401
	vmov.f32	s13, #1.0e+0	@ _15,
.LBE129:
.LBE162:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:102: 	if (v3_lensq(rt) < 1.0e-6f) {
	.loc 1 102 5 discriminator 1 view .LVU402
	vldr.32	s15, .L31+8	@ fw$y,
	vmov.f32	s12, s15	@ rt$z, fw$y
	vmov.f32	s14, s13	@ fw$z, _15
.LVL80:
.L22:
.LBB163:
.LBB130:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:281: 	float d = sqrtf(v.x * v.x + v.y * v.y + v.z * v.z);
	.loc 2 281 12 view .LVU403
	vfma.f32	s13, s12, s12	@ _33, rt$z, rt$z
.LBE130:
.LBE163:
.LBB164:
.LBB138:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU404
	vldr.32	s6, .L31+8	@ rt$y,
.LVL81:
	.loc 2 271 9 view .LVU405
.LBE138:
.LBE164:
	.loc 1 104 3 is_stmt 1 view .LVU406
.LBB165:
.LBB139:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 is_stmt 0 view .LVU407
	vneg.f32	s7, s14	@ up$y, fw$z
	vmov.f32	s11, s12	@ fw$x, rt$z
.LVL82:
	.loc 2 271 9 view .LVU408
.LBE139:
	.loc 2 269 22 is_stmt 1 view .LVU409
.LBB140:
	.loc 2 271 2 view .LVU410
	.loc 2 271 2 is_stmt 0 view .LVU411
	b	.L17		@
.LVL83:
.L30:
	.loc 2 271 2 view .LVU412
.LBE140:
.LBE165:
.LBB166:
.LBB112:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:271: 	return f3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
	.loc 2 271 9 view .LVU413
	vldr.32	s15, .L31+8	@ fw$y,
	vneg.f32	s6, s6	@ rt$y, up
	vmov.f32	s14, #1.0e+0	@ fw$z,
	vmov.f32	s11, s15	@ fw$x, fw$y
	vmov.f32	s12, s15	@ rt$z, fw$y
	b	.L17		@
.LVL84:
.L29:
	.loc 2 271 9 view .LVU414
.LBE112:
.LBE166:
	vmov.f32	s12, s11	@ rt$z, fw$x
	b	.L22		@
.L32:
	.align	2
.L31:
	.word	897988541
	.word	1065185444
	.word	0
	.cfi_endproc
.LFE49:
	.size	xform_look_at, .-xform_look_at
	.section	.text.xform_invert,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	xform_invert
	.syntax unified
	.thumb
	.thumb_func
	.type	xform_invert, %function
xform_invert:
.LVL85:
.LFB50:
	.loc 1 119 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 120 2 view .LVU416
	.loc 1 121 2 view .LVU417
	vldr.32	s15, [r1, #4]	@ b$y, m_14(D)->pos.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:121: 	r.ax.x = m->ax.x; r.ay.x = m->ax.y; r.az.x = m->ax.z;
	.loc 1 121 34 is_stmt 0 view .LVU418
	vldr.32	s6, [r1, #16]	@ _2, m_14(D)->ax.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:122: 	r.ax.y = m->ay.x; r.ay.y = m->ay.y; r.az.y = m->ay.z;
	.loc 1 122 34 view .LVU419
	vldr.32	s7, [r1, #28]	@ _5, m_14(D)->ay.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:123: 	r.ax.z = m->az.x; r.ay.z = m->az.y; r.az.z = m->az.z;
	.loc 1 123 34 view .LVU420
	vldr.32	s8, [r1, #40]	@ _8, m_14(D)->az.y
.LBB167:
.LBB168:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:276: 	return a.x * b.x + a.y * b.y + a.z * b.z;
	.loc 2 276 25 view .LVU421
	vmul.f32	s13, s6, s15	@ _26, _2, b$y
.LBE168:
.LBE167:
.LBB170:
.LBB171:
	vmul.f32	s14, s7, s15	@ _21, _5, b$y
	vldr.32	s11, [r1]	@ b$x, m_14(D)->pos.x
.LBE171:
.LBE170:
.LBB173:
.LBB174:
	vmul.f32	s15, s8, s15	@ _16, _8, b$y
.LBE174:
.LBE173:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:121: 	r.ax.x = m->ax.x; r.ay.x = m->ax.y; r.az.x = m->ax.z;
	.loc 1 121 16 view .LVU422
	vldr.32	s3, [r1, #12]	@ _1, m_14(D)->ax.x
.LVL86:
	.loc 1 121 20 is_stmt 1 view .LVU423
	.loc 1 121 38 view .LVU424
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:122: 	r.ax.y = m->ay.x; r.ay.y = m->ay.y; r.az.y = m->ay.z;
	.loc 1 122 16 is_stmt 0 view .LVU425
	vldr.32	s4, [r1, #24]	@ _4, m_14(D)->ay.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:123: 	r.ax.z = m->az.x; r.ay.z = m->az.y; r.az.z = m->az.z;
	.loc 1 123 16 view .LVU426
	vldr.32	s5, [r1, #36]	@ _7, m_14(D)->az.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:124: 	r.pos.x = -v3_dot(m->ax, m->pos);
	.loc 1 124 12 discriminator 1 view .LVU427
	vfma.f32	s13, s3, s11	@ tmp141, _1, b$x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:125: 	r.pos.y = -v3_dot(m->ay, m->pos);
	.loc 1 125 12 discriminator 1 view .LVU428
	vfma.f32	s14, s4, s11	@ tmp145, _4, b$x
	vldr.32	s12, [r1, #8]	@ b$z, m_14(D)->pos.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:126: 	r.pos.z = -v3_dot(m->az, m->pos);
	.loc 1 126 12 discriminator 1 view .LVU429
	vfma.f32	s15, s5, s11	@ tmp149, _7, b$x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:121: 	r.ax.x = m->ax.x; r.ay.x = m->ax.y; r.az.x = m->ax.z;
	.loc 1 121 52 view .LVU430
	vldr.32	s9, [r1, #20]	@ _3, m_14(D)->ax.z
	.loc 1 122 2 is_stmt 1 view .LVU431
.LVL87:
	.loc 1 122 20 view .LVU432
	.loc 1 122 38 view .LVU433
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:122: 	r.ax.y = m->ay.x; r.ay.y = m->ay.y; r.az.y = m->ay.z;
	.loc 1 122 52 is_stmt 0 view .LVU434
	vldr.32	s10, [r1, #32]	@ _6, m_14(D)->ay.z
	.loc 1 123 2 is_stmt 1 view .LVU435
.LVL88:
	.loc 1 123 20 view .LVU436
	.loc 1 123 38 view .LVU437
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:123: 	r.ax.z = m->az.x; r.ay.z = m->az.y; r.az.z = m->az.z;
	.loc 1 123 52 is_stmt 0 view .LVU438
	vldr.32	s11, [r1, #44]	@ _9, m_14(D)->az.z
	.loc 1 124 2 is_stmt 1 view .LVU439
.LVL89:
.LBB176:
.LBI167:
	.loc 2 274 21 view .LVU440
.LBB169:
	.loc 2 276 2 view .LVU441
	.loc 2 276 2 is_stmt 0 view .LVU442
.LBE169:
.LBE176:
	.loc 1 125 2 is_stmt 1 view .LVU443
.LBB177:
.LBI170:
	.loc 2 274 21 view .LVU444
.LBB172:
	.loc 2 276 2 view .LVU445
	.loc 2 276 2 is_stmt 0 view .LVU446
.LBE172:
.LBE177:
	.loc 1 126 2 is_stmt 1 view .LVU447
.LBB178:
.LBI173:
	.loc 2 274 21 view .LVU448
.LBB175:
	.loc 2 276 2 view .LVU449
	.loc 2 276 2 is_stmt 0 view .LVU450
.LBE175:
.LBE178:
	.loc 1 127 2 is_stmt 1 view .LVU451
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:127: 	return r;
	.loc 1 127 9 is_stmt 0 view .LVU452
	vstr.32	s3, [r0, #12]	@ _1, <retval>.ax.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:124: 	r.pos.x = -v3_dot(m->ax, m->pos);
	.loc 1 124 12 discriminator 1 view .LVU453
	vfma.f32	s13, s9, s12	@ tmp140, _3, b$z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:127: 	return r;
	.loc 1 127 9 view .LVU454
	vstr.32	s4, [r0, #16]	@ _4, <retval>.ax.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:125: 	r.pos.y = -v3_dot(m->ay, m->pos);
	.loc 1 125 12 discriminator 1 view .LVU455
	vfma.f32	s14, s10, s12	@ tmp144, _6, b$z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:127: 	return r;
	.loc 1 127 9 view .LVU456
	vstr.32	s5, [r0, #20]	@ _7, <retval>.ax.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:126: 	r.pos.z = -v3_dot(m->az, m->pos);
	.loc 1 126 12 discriminator 1 view .LVU457
	vfma.f32	s15, s11, s12	@ tmp148, _9, b$z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:127: 	return r;
	.loc 1 127 9 view .LVU458
	vstr.32	s6, [r0, #24]	@ _2, <retval>.ay.x
	vstr.32	s7, [r0, #28]	@ _5, <retval>.ay.y
	vstr.32	s8, [r0, #32]	@ _8, <retval>.ay.z
	vstr.32	s9, [r0, #36]	@ _3, <retval>.az.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:124: 	r.pos.x = -v3_dot(m->ax, m->pos);
	.loc 1 124 12 discriminator 1 view .LVU459
	vneg.f32	s13, s13	@ _10, tmp140
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:127: 	return r;
	.loc 1 127 9 view .LVU460
	vstr.32	s10, [r0, #40]	@ _6, <retval>.az.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:125: 	r.pos.y = -v3_dot(m->ay, m->pos);
	.loc 1 125 12 discriminator 1 view .LVU461
	vneg.f32	s14, s14	@ _11, tmp144
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:127: 	return r;
	.loc 1 127 9 view .LVU462
	vstr.32	s11, [r0, #44]	@ _9, <retval>.az.z
.LVL90:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:126: 	r.pos.z = -v3_dot(m->az, m->pos);
	.loc 1 126 12 discriminator 1 view .LVU463
	vneg.f32	s15, s15	@ _12, tmp148
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:127: 	return r;
	.loc 1 127 9 view .LVU464
	vstr.32	s13, [r0]	@ _10, <retval>.pos.x
	vstr.32	s14, [r0, #4]	@ _11, <retval>.pos.y
	vstr.32	s15, [r0, #8]	@ _12, <retval>.pos.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.c:128: }
	.loc 1 128 1 view .LVU465
	bx	lr	@
	.cfi_endproc
.LFE50:
	.size	xform_invert, .-xform_invert
	.global	xform_identity
	.section	.data.xform_identity,"aw"
	.align	2
	.type	xform_identity, %object
	.size	xform_identity, 48
xform_identity:
@ pos:
@ x:
	.word	0
@ y:
	.word	0
@ z:
	.word	0
@ ax:
@ x:
	.word	1065353216
@ y:
	.word	0
@ z:
	.word	0
@ ay:
@ x:
	.word	0
@ y:
	.word	1065353216
@ z:
	.word	0
@ az:
@ x:
	.word	0
@ y:
	.word	0
@ z:
	.word	1065353216
	.text
.Letext0:
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/math.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xab2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0x240
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0xc
	.byte	0x2
	.2byte	0x101
	.byte	0x10
	.4byte	0xc4
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x103
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x105
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x106
	.byte	0x3
	.4byte	0x8b
	.uleb128 0x7
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x30
	.byte	0x2
	.2byte	0x15c
	.byte	0x10
	.4byte	0x122
	.uleb128 0x5
	.ascii	"pos\000"
	.byte	0x2
	.2byte	0x15e
	.byte	0x9
	.4byte	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ax\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0x9
	.4byte	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.ascii	"ay\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0xd
	.4byte	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.ascii	"az\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0x11
	.4byte	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x160
	.byte	0x3
	.4byte	0xd6
	.uleb128 0x7
	.4byte	0x122
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.2byte	0x161
	.byte	0xe
	.4byte	0x122
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x134
	.byte	0x1
	.byte	0xd
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.4byte	xform_identity
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x177
	.byte	0xe
	.byte	0x1
	.4byte	0x29
	.byte	0x1
	.4byte	0x16b
	.uleb128 0xb
	.4byte	0x29
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x176
	.byte	0xe
	.byte	0x1
	.4byte	0x29
	.byte	0x1
	.4byte	0x185
	.uleb128 0xb
	.4byte	0x29
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x76
	.byte	0x7
	.byte	0x1
	.4byte	0x122
	.4byte	.LFB50
	.4byte	.LFE50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x24e
	.uleb128 0xd
	.ascii	"m\000"
	.byte	0x1
	.byte	0x76
	.byte	0x21
	.4byte	0x24e
	.byte	0x1
	.byte	0x51
	.uleb128 0xe
	.ascii	"r\000"
	.byte	0x1
	.byte	0x78
	.byte	0x8
	.4byte	0x122
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0xf
	.4byte	0xa08
	.4byte	.LBI167
	.byte	.LVU440
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.byte	0x7c
	.byte	0xd
	.4byte	0x1f1
	.uleb128 0x10
	.4byte	0xa1b
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x10
	.4byte	0xa26
	.4byte	.LLST57
	.4byte	.LVUS57
	.byte	0
	.uleb128 0xf
	.4byte	0xa08
	.4byte	.LBI170
	.byte	.LVU444
	.4byte	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0x7d
	.byte	0xd
	.4byte	0x221
	.uleb128 0x10
	.4byte	0xa1b
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x10
	.4byte	0xa26
	.4byte	.LLST59
	.4byte	.LVUS59
	.byte	0
	.uleb128 0x11
	.4byte	0xa08
	.4byte	.LBI173
	.byte	.LVU448
	.4byte	.Ldebug_ranges0+0x228
	.byte	0x1
	.byte	0x7e
	.byte	0xd
	.uleb128 0x10
	.4byte	0xa1b
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x10
	.4byte	0xa26
	.4byte	.LLST61
	.4byte	.LVUS61
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x12f
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x1
	.4byte	0x122
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST28
	.byte	0x1
	.4byte	0x4f7
	.uleb128 0x14
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.4byte	0xc4
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x1
	.byte	0x5b
	.byte	0x28
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.ascii	"up\000"
	.byte	0x1
	.byte	0x5b
	.byte	0x37
	.4byte	0xc4
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0xe
	.ascii	"fw\000"
	.byte	0x1
	.byte	0x5e
	.byte	0x9
	.4byte	0xc4
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0xe
	.ascii	"rt\000"
	.byte	0x1
	.byte	0x64
	.byte	0x9
	.4byte	0xc4
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x1
	.byte	0x6e
	.byte	0x8
	.4byte	0x122
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0xf
	.4byte	0x97e
	.4byte	.LBI92
	.byte	.LVU284
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x5e
	.byte	0xe
	.4byte	0x311
	.uleb128 0x10
	.4byte	0x991
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x10
	.4byte	0x99c
	.4byte	.LLST35
	.4byte	.LVUS35
	.byte	0
	.uleb128 0x16
	.4byte	0x9a8
	.4byte	.LBI100
	.byte	.LVU288
	.4byte	.LBB100
	.4byte	.LBE100
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	0x338
	.uleb128 0x10
	.4byte	0x9bb
	.4byte	.LLST36
	.4byte	.LVUS36
	.byte	0
	.uleb128 0x16
	.4byte	0x9c7
	.4byte	.LBI102
	.byte	.LVU295
	.4byte	.LBB102
	.4byte	.LBE102
	.byte	0x1
	.byte	0x62
	.byte	0x8
	.4byte	0x3a3
	.uleb128 0x10
	.4byte	0x9da
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x17
	.4byte	0x9e5
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x17
	.4byte	0x9f0
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x18
	.4byte	0x9fc
	.uleb128 0x19
	.4byte	0xa90
	.4byte	.LBI104
	.byte	.LVU297
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x2
	.2byte	0x119
	.byte	0xc
	.uleb128 0x10
	.4byte	0xa9e
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x18
	.4byte	0xaa8
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xa32
	.4byte	.LBI108
	.byte	.LVU316
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.4byte	0x3d3
	.uleb128 0x10
	.4byte	0xa45
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x10
	.4byte	0xa50
	.4byte	.LLST42
	.4byte	.LVUS42
	.byte	0
	.uleb128 0xf
	.4byte	0x9a8
	.4byte	.LBI114
	.byte	.LVU321
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.4byte	0x3f6
	.uleb128 0x10
	.4byte	0x9bb
	.4byte	.LLST43
	.4byte	.LVUS43
	.byte	0
	.uleb128 0xf
	.4byte	0x9c7
	.4byte	.LBI117
	.byte	.LVU346
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0x6a
	.byte	0x7
	.4byte	0x45d
	.uleb128 0x10
	.4byte	0x9da
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x17
	.4byte	0x9e5
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x17
	.4byte	0x9f0
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x18
	.4byte	0x9fc
	.uleb128 0x19
	.4byte	0xa90
	.4byte	.LBI119
	.byte	.LVU348
	.4byte	.Ldebug_ranges0+0x168
	.byte	0x2
	.2byte	0x119
	.byte	0xc
	.uleb128 0x10
	.4byte	0xa9e
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x18
	.4byte	0xaa8
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xa5c
	.4byte	.LBI131
	.byte	.LVU332
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x67
	.byte	0x2c
	.4byte	0x49a
	.uleb128 0x10
	.4byte	0xa6e
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x10
	.4byte	0xa79
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x10
	.4byte	0xa84
	.4byte	.LLST49
	.4byte	.LVUS49
	.byte	0
	.uleb128 0xf
	.4byte	0xa32
	.4byte	.LBI135
	.byte	.LVU339
	.4byte	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.byte	0x68
	.byte	0x8
	.4byte	0x4ca
	.uleb128 0x10
	.4byte	0xa45
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x10
	.4byte	0xa50
	.4byte	.LLST52
	.4byte	.LVUS52
	.byte	0
	.uleb128 0x11
	.4byte	0xa32
	.4byte	.LBI150
	.byte	.LVU368
	.4byte	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.byte	0x6c
	.byte	0x7
	.uleb128 0x10
	.4byte	0xa45
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x10
	.4byte	0xa50
	.4byte	.LLST54
	.4byte	.LVUS54
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x51
	.byte	0x7
	.byte	0x1
	.4byte	0x29
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x522
	.uleb128 0xd
	.ascii	"m\000"
	.byte	0x1
	.byte	0x51
	.byte	0x24
	.4byte	0x522
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x122
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x49
	.byte	0x8
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x5c1
	.uleb128 0xd
	.ascii	"m\000"
	.byte	0x1
	.byte	0x49
	.byte	0x28
	.4byte	0x24e
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.ascii	"p\000"
	.byte	0x1
	.byte	0x49
	.byte	0x32
	.4byte	0xc4
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x1
	.byte	0x4b
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x1
	.byte	0x4c
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0x1
	.byte	0x4d
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x1a
	.4byte	0xa5c
	.4byte	.LBI91
	.byte	.LVU247
	.4byte	.LBB91
	.4byte	.LBE91
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.uleb128 0x1b
	.4byte	0xa6e
	.uleb128 0x1b
	.4byte	0xa79
	.uleb128 0x1b
	.4byte	0xa84
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x37
	.byte	0x7
	.byte	0x1
	.4byte	0x122
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x60b
	.uleb128 0xd
	.ascii	"l\000"
	.byte	0x1
	.byte	0x37
	.byte	0x23
	.4byte	0x24e
	.byte	0x1
	.byte	0x51
	.uleb128 0xd
	.ascii	"r\000"
	.byte	0x1
	.byte	0x37
	.byte	0x33
	.4byte	0x24e
	.byte	0x1
	.byte	0x52
	.uleb128 0xe
	.ascii	"m\000"
	.byte	0x1
	.byte	0x39
	.byte	0x8
	.4byte	0x122
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1e
	.byte	0x7
	.byte	0x1
	.4byte	0x122
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x758
	.uleb128 0x1c
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1e
	.byte	0x23
	.4byte	0x29
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1e
	.byte	0x31
	.4byte	0xc4
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xe
	.ascii	"p\000"
	.byte	0x1
	.byte	0x20
	.byte	0x8
	.4byte	0x122
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xe
	.ascii	"c\000"
	.byte	0x1
	.byte	0x21
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xe
	.ascii	"s\000"
	.byte	0x1
	.byte	0x22
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xe
	.ascii	"t\000"
	.byte	0x1
	.byte	0x23
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x1
	.byte	0x26
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0x1
	.byte	0x27
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xf
	.4byte	0x9c7
	.4byte	.LBI75
	.byte	.LVU72
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.4byte	0x72f
	.uleb128 0x10
	.4byte	0x9da
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x17
	.4byte	0x9e5
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x17
	.4byte	0x9f0
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x18
	.4byte	0x9fc
	.uleb128 0x19
	.4byte	0xa90
	.4byte	.LBI77
	.byte	.LVU74
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x2
	.2byte	0x119
	.byte	0xc
	.uleb128 0x1b
	.4byte	0xa9e
	.uleb128 0x18
	.4byte	0xaa8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0x16b
	.4byte	0x745
	.uleb128 0x1e
	.byte	0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x3
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x29
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL18
	.4byte	0x151
	.uleb128 0x1e
	.byte	0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x3
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x29
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x19
	.byte	0x7
	.byte	0x1
	.4byte	0x122
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x7a1
	.uleb128 0xd
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x19
	.byte	0x22
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0xd
	.ascii	"dy\000"
	.byte	0x1
	.byte	0x19
	.byte	0x2c
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0xd
	.ascii	"dz\000"
	.byte	0x1
	.byte	0x19
	.byte	0x36
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x42
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0x14
	.byte	0x7
	.byte	0x1
	.4byte	0x122
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x7f7
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x1
	.byte	0x14
	.byte	0x19
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x1
	.byte	0x14
	.byte	0x23
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x1
	.byte	0x14
	.byte	0x2d
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x14
	.byte	0x37
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x122
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x894
	.uleb128 0xd
	.ascii	"xx\000"
	.byte	0x1
	.byte	0xf
	.byte	0x18
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0xd
	.ascii	"xy\000"
	.byte	0x1
	.byte	0xf
	.byte	0x22
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0xd
	.ascii	"xz\000"
	.byte	0x1
	.byte	0xf
	.byte	0x2c
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0xd
	.ascii	"yx\000"
	.byte	0x1
	.byte	0xf
	.byte	0x36
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x43
	.uleb128 0xd
	.ascii	"yy\000"
	.byte	0x1
	.byte	0xf
	.byte	0x40
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x44
	.uleb128 0xd
	.ascii	"yz\000"
	.byte	0x1
	.byte	0xf
	.byte	0x4a
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x45
	.uleb128 0xd
	.ascii	"zx\000"
	.byte	0x1
	.byte	0xf
	.byte	0x54
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x46
	.uleb128 0xd
	.ascii	"zy\000"
	.byte	0x1
	.byte	0xf
	.byte	0x5e
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x47
	.uleb128 0xd
	.ascii	"zz\000"
	.byte	0x1
	.byte	0xf
	.byte	0x68
	.4byte	0x29
	.byte	0x2
	.byte	0x90
	.uleb128 0x48
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5
	.byte	0x8
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x978
	.uleb128 0xd
	.ascii	"p1\000"
	.byte	0x1
	.byte	0x5
	.byte	0x24
	.4byte	0x978
	.byte	0x1
	.byte	0x50
	.uleb128 0xd
	.ascii	"p2\000"
	.byte	0x1
	.byte	0x5
	.byte	0x36
	.4byte	0x978
	.byte	0x1
	.byte	0x51
	.uleb128 0xd
	.ascii	"p3\000"
	.byte	0x1
	.byte	0x5
	.byte	0x48
	.4byte	0x978
	.byte	0x1
	.byte	0x52
	.uleb128 0xe
	.ascii	"v\000"
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.4byte	0xc4
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xf
	.4byte	0x9c7
	.4byte	.LBI63
	.byte	.LVU18
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x94b
	.uleb128 0x10
	.4byte	0x9da
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x17
	.4byte	0x9e5
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x17
	.4byte	0x9f0
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x18
	.4byte	0x9fc
	.uleb128 0x19
	.4byte	0xa90
	.4byte	.LBI65
	.byte	.LVU20
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2
	.2byte	0x119
	.byte	0xc
	.uleb128 0x1b
	.4byte	0xa9e
	.uleb128 0x18
	.4byte	0xaa8
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xa32
	.4byte	.LBI70
	.byte	.LVU12
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x7
	.byte	0xd
	.uleb128 0x10
	.4byte	0xa45
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x10
	.4byte	0xa50
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0xd1
	.uleb128 0x20
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x132
	.byte	0x16
	.byte	0x1
	.4byte	0xc4
	.byte	0x3
	.4byte	0x9a8
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x132
	.byte	0x24
	.4byte	0xc4
	.uleb128 0x21
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x132
	.byte	0x2e
	.4byte	0xc4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x124
	.byte	0x15
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0x9c7
	.uleb128 0x21
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x124
	.byte	0x25
	.4byte	0xc4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x117
	.byte	0x16
	.byte	0x1
	.4byte	0xc4
	.byte	0x3
	.4byte	0xa08
	.uleb128 0x21
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x117
	.byte	0x2a
	.4byte	0xc4
	.uleb128 0x22
	.ascii	"d\000"
	.byte	0x2
	.2byte	0x119
	.byte	0x8
	.4byte	0x29
	.uleb128 0x22
	.ascii	"id\000"
	.byte	0x2
	.2byte	0x11a
	.byte	0x8
	.4byte	0x29
	.uleb128 0x22
	.ascii	"r\000"
	.byte	0x2
	.2byte	0x11b
	.byte	0x9
	.4byte	0xc4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x112
	.byte	0x15
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0xa32
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x112
	.byte	0x23
	.4byte	0xc4
	.uleb128 0x21
	.ascii	"b\000"
	.byte	0x2
	.2byte	0x112
	.byte	0x2d
	.4byte	0xc4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x10d
	.byte	0x16
	.byte	0x1
	.4byte	0xc4
	.byte	0x3
	.4byte	0xa5c
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x10d
	.byte	0x26
	.4byte	0xc4
	.uleb128 0x21
	.ascii	"b\000"
	.byte	0x2
	.2byte	0x10d
	.byte	0x30
	.4byte	0xc4
	.byte	0
	.uleb128 0x23
	.ascii	"f3\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x16
	.byte	0x1
	.4byte	0xc4
	.byte	0x3
	.4byte	0xa90
	.uleb128 0x21
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x1f
	.4byte	0x29
	.uleb128 0x21
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x28
	.4byte	0x29
	.uleb128 0x21
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x31
	.4byte	0x29
	.byte	0
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x2
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x2
	.byte	0x14
	.byte	0x28
	.4byte	0x29
	.uleb128 0x26
	.4byte	.LASF39
	.byte	0x2
	.byte	0x16
	.byte	0x8
	.4byte	0x29
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
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
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS55:
	.uleb128 .LVU423
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 .LVU432
	.uleb128 .LVU432
	.uleb128 .LVU433
	.uleb128 .LVU433
	.uleb128 .LVU436
	.uleb128 .LVU436
	.uleb128 .LVU442
	.uleb128 .LVU442
	.uleb128 .LVU446
	.uleb128 .LVU446
	.uleb128 .LVU450
	.uleb128 .LVU450
	.uleb128 .LVU463
.LLST55:
	.4byte	.LVL86
	.4byte	.LVL86
	.2byte	0x8
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0xe
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.4byte	.LVL87
	.4byte	.LVL87
	.2byte	0x12
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x16
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x18
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x45
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL89
	.4byte	.LVL89
	.2byte	0x18
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x45
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL89
	.4byte	.LVL89
	.2byte	0x18
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x45
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x18
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x45
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU440
	.uleb128 .LVU442
.LLST56:
	.4byte	.LVL89
	.4byte	.LVL89
	.2byte	0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU440
	.uleb128 .LVU442
.LLST57:
	.4byte	.LVL89
	.4byte	.LVL89
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU444
	.uleb128 .LVU446
.LLST58:
	.4byte	.LVL89
	.4byte	.LVL89
	.2byte	0xc
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU444
	.uleb128 .LVU446
.LLST59:
	.4byte	.LVL89
	.4byte	.LVL89
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU448
	.uleb128 .LVU450
.LLST60:
	.4byte	.LVL89
	.4byte	.LVL89
	.2byte	0xc
	.byte	0x90
	.uleb128 0x45
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x48
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU448
	.uleb128 .LVU450
.LLST61:
	.4byte	.LVL89
	.4byte	.LVL89
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB49
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI15
	.4byte	.LFE49
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU276
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 0
.LLST29:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0xa
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL52
	.4byte	.LFE49
	.2byte	0xc
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU281
	.uleb128 .LVU282
	.uleb128 .LVU282
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU344
	.uleb128 .LVU381
	.uleb128 .LVU390
	.uleb128 .LVU390
	.uleb128 .LVU403
	.uleb128 .LVU403
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 .LVU412
	.uleb128 .LVU412
	.uleb128 .LVU414
	.uleb128 .LVU414
	.uleb128 0
.LLST30:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL54
	.4byte	.LVL63
	.2byte	0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0xa
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x18
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0xa
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0xa
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL84
	.4byte	.LFE49
	.2byte	0xa
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU286
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU344
	.uleb128 .LVU390
	.uleb128 .LVU403
	.uleb128 .LVU412
	.uleb128 .LVU414
	.uleb128 .LVU414
	.uleb128 0
.LLST31:
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x12
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x44
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x18
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x44
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x45
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL61
	.4byte	.LVL61
	.2byte	0x1e
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x44
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x45
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL61
	.4byte	.LVL68
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x18
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x18
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL84
	.4byte	.LFE49
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU319
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU341
	.uleb128 .LVU344
	.uleb128 .LVU363
	.uleb128 .LVU363
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU365
	.uleb128 .LVU366
	.uleb128 .LVU377
	.uleb128 .LVU377
	.uleb128 .LVU388
	.uleb128 .LVU393
	.uleb128 .LVU403
	.uleb128 .LVU412
	.uleb128 .LVU414
	.uleb128 .LVU414
	.uleb128 0
.LLST32:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x2c
	.byte	0xf5
	.uleb128 0x47
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0x1e
	.byte	0x91
	.sleb128 -28
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x47
	.uleb128 0x29
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL67
	.4byte	.LVL67
	.2byte	0x2c
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0x1e
	.byte	0x91
	.sleb128 -28
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0xc
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0xa
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0xc
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0xc
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x15
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x15
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL84
	.4byte	.LFE49
	.2byte	0x2c
	.byte	0xf5
	.uleb128 0x47
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0x1e
	.byte	0x91
	.sleb128 -28
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x47
	.uleb128 0x29
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU384
	.uleb128 .LVU385
	.uleb128 .LVU385
	.uleb128 .LVU387
	.uleb128 .LVU387
	.uleb128 .LVU388
.LLST33:
	.4byte	.LVL77
	.4byte	.LVL77
	.2byte	0x10
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x18
	.4byte	.LVL77
	.4byte	.LVL77
	.2byte	0x18
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL77
	.4byte	.LVL77
	.2byte	0x22
	.byte	0x70
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU284
	.uleb128 .LVU286
.LLST34:
	.4byte	.LVL54
	.4byte	.LVL54
	.2byte	0xc
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU284
	.uleb128 .LVU286
.LLST35:
	.4byte	.LVL54
	.4byte	.LVL54
	.2byte	0xc
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU288
	.uleb128 .LVU292
.LLST36:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU295
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU311
.LLST37:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x12
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x44
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x18
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x44
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x45
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL61
	.4byte	.LVL61
	.2byte	0x1e
	.byte	0xf5
	.uleb128 0x43
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x44
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x45
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU303
	.uleb128 .LVU313
.LLST38:
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU306
	.uleb128 .LVU311
.LLST39:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU297
	.uleb128 .LVU302
.LLST40:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU316
	.uleb128 .LVU319
	.uleb128 .LVU391
	.uleb128 .LVU393
.LLST41:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL78
	.2byte	0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU316
	.uleb128 .LVU319
	.uleb128 .LVU391
	.uleb128 .LVU393
.LLST42:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL78
	.2byte	0x18
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU321
	.uleb128 .LVU325
	.uleb128 .LVU395
	.uleb128 .LVU399
.LLST43:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2c
	.byte	0xf5
	.uleb128 0x47
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0x1e
	.byte	0x91
	.sleb128 -28
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x47
	.uleb128 0x29
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x15
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU346
	.uleb128 .LVU363
	.uleb128 .LVU363
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU365
.LLST44:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0xc
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0xa
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU355
	.uleb128 .LVU371
.LLST45:
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU360
	.uleb128 .LVU366
.LLST46:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU348
	.uleb128 .LVU355
.LLST47:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x12
	.byte	0xf5
	.uleb128 0x47
	.uleb128 0x29
	.byte	0x12
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x46
	.uleb128 0x29
	.byte	0x12
	.byte	0x1e
	.byte	0x22
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0x12
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU332
	.uleb128 .LVU334
.LLST48:
	.4byte	.LVL66
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU332
	.uleb128 .LVU334
.LLST49:
	.4byte	.LVL66
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 .LVU339
	.uleb128 .LVU341
	.uleb128 .LVU408
	.uleb128 .LVU411
.LLST51:
	.4byte	.LVL67
	.4byte	.LVL67
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL82
	.4byte	.LVL82
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 .LVU339
	.uleb128 .LVU341
	.uleb128 .LVU408
	.uleb128 .LVU411
.LLST52:
	.4byte	.LVL67
	.4byte	.LVL67
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL82
	.4byte	.LVL82
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU368
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 .LVU381
.LLST53:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 .LVU368
	.uleb128 .LVU377
	.uleb128 .LVU377
	.uleb128 .LVU381
.LLST54:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0xc
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0xc
	.byte	0x90
	.uleb128 0x47
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB47
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI12
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU223
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU255
.LLST24:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0xc
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU253
	.uleb128 0
.LLST25:
	.4byte	.LVL47
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU251
	.uleb128 0
.LLST26:
	.4byte	.LVL45
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU252
	.uleb128 0
.LLST27:
	.4byte	.LVL46
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB46
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI10
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU186
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU221
.LLST22:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x8
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0xc
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x1c
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xc
	.byte	0x93
	.uleb128 0xc
	.byte	0x70
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x1c
	.4byte	.LVL39
	.4byte	.LVL39
	.2byte	0x10
	.byte	0x93
	.uleb128 0xc
	.byte	0x70
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x18
	.4byte	.LVL39
	.4byte	.LVL39
	.2byte	0x14
	.byte	0x93
	.uleb128 0xc
	.byte	0x70
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 24
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x18
	.byte	0x93
	.uleb128 0xc
	.byte	0x70
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 24
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 28
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x18
	.byte	0x93
	.uleb128 0xc
	.byte	0x70
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 24
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 28
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL41
	.4byte	.LVL41
	.2byte	0x1c
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x70
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 24
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 28
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL41
	.4byte	.LVL41
	.2byte	0x20
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 24
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 28
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x22
	.byte	0x90
	.uleb128 0x46
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 24
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 28
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB45
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI8
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL15-1
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU53
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU105
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xa
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL14
	.4byte	.LVL23
	.2byte	0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0xc
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU110
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU131
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0xf
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x1c
	.4byte	.LVL30
	.4byte	.LVL30
	.2byte	0x13
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x48
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x18
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x17
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x48
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1a
	.byte	0x93
	.uleb128 0xc
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x48
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x14
	.4byte	.LVL33
	.4byte	.LVL33
	.2byte	0x1e
	.byte	0x93
	.uleb128 0xc
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x48
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x34
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x48
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x49
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU59
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU124
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL17
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x49
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU62
	.uleb128 .LVU99
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU71
	.uleb128 0
.LLST14:
	.4byte	.LVL19
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU90
	.uleb128 .LVU101
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU91
	.uleb128 .LVU104
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU92
	.uleb128 .LVU105
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU72
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU88
.LLST18:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0xc
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU80
	.uleb128 .LVU94
.LLST19:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU83
	.uleb128 .LVU88
.LLST20:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB43
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI3
	.4byte	.LFE43
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB41
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI1
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU16
	.uleb128 .LVU31
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0xc
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU18
	.uleb128 .LVU31
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0xc
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU26
	.uleb128 0
.LLST3:
	.4byte	.LVL5
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU29
	.uleb128 .LVU31
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU9
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU16
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU12
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0xc
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x14
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	0
	.4byte	0
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	0
	.4byte	0
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	.LBB160
	.4byte	.LBE160
	.4byte	.LBB166
	.4byte	.LBE166
	.4byte	0
	.4byte	0
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	0
	.4byte	0
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	.LBB145
	.4byte	.LBE145
	.4byte	.LBB146
	.4byte	.LBE146
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	.LBB148
	.4byte	.LBE148
	.4byte	.LBB149
	.4byte	.LBE149
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	.LBB163
	.4byte	.LBE163
	.4byte	0
	.4byte	0
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	0
	.4byte	0
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	.LBB141
	.4byte	.LBE141
	.4byte	.LBB143
	.4byte	.LBE143
	.4byte	0
	.4byte	0
	.4byte	.LBB135
	.4byte	.LBE135
	.4byte	.LBB142
	.4byte	.LBE142
	.4byte	.LBB164
	.4byte	.LBE164
	.4byte	.LBB165
	.4byte	.LBE165
	.4byte	0
	.4byte	0
	.4byte	.LBB150
	.4byte	.LBE150
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	.LBB157
	.4byte	.LBE157
	.4byte	.LBB158
	.4byte	.LBE158
	.4byte	.LBB159
	.4byte	.LBE159
	.4byte	0
	.4byte	0
	.4byte	.LBB167
	.4byte	.LBE167
	.4byte	.LBB176
	.4byte	.LBE176
	.4byte	0
	.4byte	0
	.4byte	.LBB170
	.4byte	.LBE170
	.4byte	.LBB177
	.4byte	.LBE177
	.4byte	0
	.4byte	0
	.4byte	.LBB173
	.4byte	.LBE173
	.4byte	.LBB178
	.4byte	.LBE178
	.4byte	0
	.4byte	0
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF34:
	.ascii	"v3_sub\000"
.LASF23:
	.ascii	"xform_multiply\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF25:
	.ascii	"angle\000"
.LASF14:
	.ascii	"xform\000"
.LASF17:
	.ascii	"xform_identity\000"
.LASF7:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF22:
	.ascii	"xform_transform_pt\000"
.LASF5:
	.ascii	"long int\000"
.LASF33:
	.ascii	"v3_tri_normal\000"
.LASF12:
	.ascii	"double\000"
.LASF21:
	.ascii	"xform_get_determinant\000"
.LASF32:
	.ascii	"xform_make\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF38:
	.ascii	"v3_cross\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF37:
	.ascii	"v3_dot\000"
.LASF19:
	.ascii	"xform_look_at\000"
.LASF26:
	.ascii	"axis\000"
.LASF20:
	.ascii	"target\000"
.LASF10:
	.ascii	"long double\000"
.LASF24:
	.ascii	"xform_make_axis_angle\000"
.LASF30:
	.ascii	"xform_make_translate\000"
.LASF0:
	.ascii	"float\000"
.LASF35:
	.ascii	"v3_lensq\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"_lib3d_sqrtf\000"
.LASF3:
	.ascii	"short int\000"
.LASF13:
	.ascii	"float3\000"
.LASF31:
	.ascii	"xform_axes\000"
.LASF29:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF11:
	.ascii	"char\000"
.LASF15:
	.ascii	"sinf\000"
.LASF16:
	.ascii	"cosf\000"
.LASF27:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF18:
	.ascii	"xform_invert\000"
.LASF36:
	.ascii	"v3_normalize\000"
.LASF28:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\mathlib.c\000"
.LASF39:
	.ascii	"result\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
