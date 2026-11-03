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
	.file	"render.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\render.c"
	.section	.text.draw_black_fragment.part.0,"ax",%progbits
	.align	1
	.p2align 4,,15
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_black_fragment.part.0, %function
draw_black_fragment.part.0:
.LVL0:
.LFB62:
	.loc 1 17 13 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 22 2 view .LVU1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:25: 	if (x2 > SCREEN_X)
	.loc 1 25 5 is_stmt 0 view .LVU2
	cmp	r2, #400	@ x2,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:22: 	if (x1 < 0)
	.loc 1 22 5 view .LVU3
	bic	r1, r1, r1, asr #31	@ x, x1
.LVL1:
	.loc 1 25 2 is_stmt 1 view .LVU4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:25: 	if (x2 > SCREEN_X)
	.loc 1 25 5 is_stmt 0 view .LVU5
	it	ge
	movge	r2, #400	@ _4,
.LVL2:
	.loc 1 28 2 is_stmt 1 view .LVU6
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:28: 	if (x1 > x2)
	.loc 1 28 5 is_stmt 0 view .LVU7
	cmp	r1, r2	@ x, _4
	bgt	.L25		@,
	.loc 1 33 2 is_stmt 1 view .LVU8
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:34: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 34 31 is_stmt 0 view .LVU9
	movs	r3, #1	@ tmp165,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:17: static void draw_black_fragment(uint32_t* row, int x1, int x2)
	.loc 1 17 13 view .LVU10
	push	{r4, r5, r6, r7, lr}	@
.LCFI0:
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:33: 	int startbit = x1 % 32;
	.loc 1 33 6 view .LVU11
	and	lr, r1, #31	@ startbit, x,
.LVL3:
	.loc 1 34 2 is_stmt 1 view .LVU12
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:17: static void draw_black_fragment(uint32_t* row, int x1, int x2)
	.loc 1 17 13 is_stmt 0 view .LVU13
	sub	sp, sp, #12	@,,
.LCFI1:
	.cfi_def_cfa_offset 32
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:34: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 34 38 view .LVU14
	rsb	r4, lr, #32	@ _6, startbit,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:34: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 34 31 view .LVU15
	lsl	ip, r3, r4	@ _7, tmp165, _6
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:34: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 34 38 view .LVU16
	mov	r6, r4	@ _6, _6
.LVL4:
.LBB147:
.LBI147:
	.file 2 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\mathlib.h"
	.loc 2 29 24 is_stmt 1 view .LVU17
.LBB148:
	.loc 2 33 2 view .LVU18
	.loc 2 34 2 view .LVU19
.LBE148:
.LBE147:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:34: 	uint32_t startmask = swap((1 << (32 - startbit)) - 1);
	.loc 1 34 51 is_stmt 0 view .LVU20
	add	r4, ip, #-1	@ _8, _7,
.LVL5:
.LBB150:
.LBB149:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 2 34 2 view .LVU21
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r4, r4	@ result, _8
@ 0 "" 2
	.thumb
	.syntax unified
	mov	ip, r4	@ result, result
	.loc 2 35 2 is_stmt 1 view .LVU22
.LVL6:
	.loc 2 35 2 is_stmt 0 view .LVU23
.LBE149:
.LBE150:
	.loc 1 35 2 is_stmt 1 view .LVU24
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:35: 	int endbit = x2 % 32;
	.loc 1 35 6 is_stmt 0 view .LVU25
	and	r4, r2, #31	@ endbit, _4,
.LVL7:
	.loc 1 36 2 is_stmt 1 view .LVU26
.LBB151:
.LBI151:
	.loc 2 29 24 view .LVU27
.LBB152:
	.loc 2 33 2 view .LVU28
	.loc 2 34 2 view .LVU29
.LBE152:
.LBE151:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:36: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 36 30 is_stmt 0 view .LVU30
	lsls	r3, r3, r4	@ _13, tmp165, endbit
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:36: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 36 53 view .LVU31
	rsb	r5, r4, #32	@ _15, endbit,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:36: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 36 41 view .LVU32
	subs	r3, r3, #1	@ _14, _13,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:36: 	uint32_t endmask = swap(((1 << endbit) - 1) << (32 - endbit));
	.loc 1 36 46 view .LVU33
	lsls	r3, r3, r5	@ _16, _14, _15
.LBB154:
.LBB153:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:34: 	__asm volatile ("rev %0, %1" : "=l" (result) : "l" (n));
	.loc 2 34 2 view .LVU34
	.syntax unified
@ 34 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	rev r3, r3	@ result, _16
@ 0 "" 2
	.thumb
	.syntax unified
	mov	r7, r3	@ result, result
	.loc 2 35 2 is_stmt 1 view .LVU35
.LVL8:
	.loc 2 35 2 is_stmt 0 view .LVU36
.LBE153:
.LBE154:
	.loc 1 38 2 is_stmt 1 view .LVU37
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:38: 	int col = x1 / 32;
	.loc 1 38 6 is_stmt 0 view .LVU38
	asrs	r3, r1, #5	@ col, x,
.LVL9:
	.loc 1 39 2 is_stmt 1 view .LVU39
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:41: 	if (col == x2 / 32)
	.loc 1 41 5 is_stmt 0 view .LVU40
	cmp	r3, r2, asr #5	@ col, _4,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:39: 	uint32_t* p = row + col;
	.loc 1 39 12 view .LVU41
	add	r5, r0, r3, lsl #2	@ p, row, col,
.LVL10:
	.loc 1 41 2 is_stmt 1 view .LVU42
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:41: 	if (col == x2 / 32)
	.loc 1 41 5 is_stmt 0 view .LVU43
	beq	.L29		@,
.LBB155:
	.loc 1 54 3 is_stmt 1 view .LVU44
.LVL11:
	.loc 1 55 3 view .LVU45
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:55: 		if (startbit > 0)
	.loc 1 55 6 is_stmt 0 view .LVU46
	cmp	lr, #0	@ startbit
	beq	.L8	@
	.loc 1 57 4 is_stmt 1 view .LVU47
.LVL12:
.LBB156:
.LBI156:
	.loc 1 12 79 view .LVU48
.LBB157:
	.loc 1 14 2 view .LVU49
.LBE157:
.LBE156:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:58: 			x += (32 - startbit);
	.loc 1 58 6 is_stmt 0 view .LVU50
	add	r1, r1, r6	@ x, _6
.LVL13:
.LBB161:
.LBB158:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 11 view .LVU51
	ldr	r6, [r0, r3, lsl #2]	@ tmp212, *p_23
.LBE158:
.LBE161:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:57: 			write_masked_black(p++, startmask);
	.loc 1 57 4 view .LVU52
	adds	r5, r5, #4	@ p, p,
.LVL14:
.LBB162:
.LBB159:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 11 view .LVU53
	bic	ip, r6, ip	@ _36, tmp212, result
.LVL15:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 5 view .LVU54
	str	ip, [r0, r3, lsl #2]	@ _36, *p_23
.LVL16:
	.loc 1 14 5 view .LVU55
.LBE159:
.LBE162:
	.loc 1 58 4 is_stmt 1 view .LVU56
.L8:
	.loc 1 60 17 view .LVU57
	add	r3, r1, #31	@ _58, x,
.LVL17:
	.loc 1 60 17 is_stmt 0 view .LVU58
	cmp	r2, r3	@ _4, _58
	ble	.L9		@,
.LBB163:
.LBB164:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 5 view .LVU59
	sub	r3, r2, #32	@ _39, _4,
	mov	r0, r5	@, p
.LVL18:
	.loc 1 14 5 view .LVU60
	adds	r5, r5, #4	@ _61, p,
	subs	r3, r3, r1	@ _75, _39, x
	movs	r1, #0	@,
.LVL19:
	.loc 1 14 5 view .LVU61
	lsrs	r3, r3, #5	@ _76, _75,
	adds	r2, r3, #1	@ _77, _76,
.LVL20:
	.loc 1 14 5 view .LVU62
	str	r3, [sp, #4]	@ _76, %sfp
	lsls	r2, r2, #2	@, _77,
	bl	memset		@
.LVL21:
	.loc 1 14 5 view .LVU63
	ldr	r3, [sp, #4]	@ _76, %sfp
	add	r5, r5, r3, lsl #2	@ p, _61, _76,
.L9:
.LBE164:
.LBE163:
	.loc 1 65 3 is_stmt 1 view .LVU64
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:65: 		if (endbit > 0)
	.loc 1 65 6 is_stmt 0 view .LVU65
	cbz	r4, .L1	@ endbit,
	.loc 1 66 4 is_stmt 1 view .LVU66
.LVL22:
.LBB165:
.LBI165:
	.loc 1 12 79 view .LVU67
.LBB166:
	.loc 1 14 2 view .LVU68
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 11 is_stmt 0 view .LVU69
	ldr	r3, [r5]	@ *p_60, *p_60
	bic	r3, r3, r7	@ _45, *p_60, result
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 5 view .LVU70
	str	r3, [r5]	@ _45, *p_60
.LVL23:
.L1:
	.loc 1 14 5 view .LVU71
.LBE166:
.LBE165:
.LBE155:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:68: }
	.loc 1 68 1 view .LVU72
	add	sp, sp, #12	@,,
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed	@
	pop	{r4, r5, r6, r7, pc}	@
.LVL24:
.L29:
.LCFI3:
	.cfi_restore_state
.LBB170:
	.loc 1 43 3 is_stmt 1 view .LVU73
	.loc 1 44 3 view .LVU74
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:44: 		if (startbit > 0 && endbit > 0)
	.loc 1 44 6 is_stmt 0 view .LVU75
	cmp	lr, #0	@ startbit
	beq	.L7	@
	cbz	r4, .L5	@ endbit,
	.loc 1 45 4 is_stmt 1 view .LVU76
.LVL25:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:45: 			mask = startmask & endmask;
	.loc 1 45 9 is_stmt 0 view .LVU77
	and	ip, ip, r7	@ mask_28, result, result
.LVL26:
.LBB171:
.LBB172:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 13 view .LVU78
	mvn	ip, ip	@ _12, mask_28
.LVL27:
.L6:
	.loc 1 14 13 view .LVU79
.LBE172:
.LBE171:
	.loc 1 50 3 is_stmt 1 view .LVU80
.LBB174:
.LBI171:
	.loc 1 12 79 view .LVU81
.LBB173:
	.loc 1 14 2 view .LVU82
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 11 is_stmt 0 view .LVU83
	ldr	r2, [r0, r3, lsl #2]	@ *p_23, *p_23
.LVL28:
	.loc 1 14 11 view .LVU84
	and	r2, r2, ip	@ _32, *p_23, _12
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 5 view .LVU85
	str	r2, [r0, r3, lsl #2]	@ _32, *p_23
.LVL29:
	.loc 1 14 5 view .LVU86
.LBE173:
.LBE174:
.LBE170:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:68: }
	.loc 1 68 1 view .LVU87
	add	sp, sp, #12	@,,
.LCFI4:
	.cfi_def_cfa_offset 20
	@ sp needed	@
	pop	{r4, r5, r6, r7, pc}	@
.LVL30:
.L25:
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.loc 1 68 1 view .LVU88
	bx	lr	@
.LVL31:
.L5:
.LCFI6:
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB175:
	.loc 1 46 8 is_stmt 1 view .LVU89
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:46: 		else if (startbit > 0)
	.loc 1 46 11 is_stmt 0 view .LVU90
	cmp	lr, #0	@ startbit
	bne	.L30	@
.L7:
	.loc 1 48 8 is_stmt 1 view .LVU91
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:48: 		else if (endbit > 0)
	.loc 1 48 11 is_stmt 0 view .LVU92
	cbz	r4, .L11	@ endbit,
	.loc 1 49 4 is_stmt 1 view .LVU93
.LVL32:
	.loc 1 49 4 is_stmt 0 view .LVU94
.LBE175:
.LBB176:
.LBB168:
.LBB167:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:14: 	*p = (*p & ~mask); // " | (color & mask)" but color is always black
	.loc 1 14 13 view .LVU95
	mvn	ip, r7	@ _12, result
.LVL33:
	.loc 1 14 13 view .LVU96
	b	.L6		@
.LVL34:
.L30:
	.loc 1 14 13 view .LVU97
.LBE167:
.LBE168:
.LBB169:
.LBB160:
	mvn	ip, ip	@ _12, result
.LVL35:
	.loc 1 14 13 view .LVU98
	b	.L6		@
.LVL36:
.L11:
	.loc 1 14 13 view .LVU99
.LBE160:
.LBE169:
.LBE176:
.LBB177:
	mov	ip, #-1	@ _12,
.LVL37:
	.loc 1 14 13 view .LVU100
	b	.L6		@
.LBE177:
	.cfi_endproc
.LFE62:
	.size	draw_black_fragment.part.0, .-draw_black_fragment.part.0
	.section	.text.mesh_free.part.0,"ax",%progbits
	.align	1
	.p2align 4,,15
	.syntax unified
	.thumb
	.thumb_func
	.type	mesh_free.part.0, %function
mesh_free.part.0:
.LVL38:
.LFB63:
	.loc 1 626 6 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 630 2 view .LVU102
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:626: void mesh_free(Mesh* mesh)
	.loc 1 626 6 is_stmt 0 view .LVU103
	push	{r4, lr}	@
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:626: void mesh_free(Mesh* mesh)
	.loc 1 626 6 view .LVU104
	mov	r4, r0	@ mesh, mesh
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:630: 	plat_free(mesh->vertices);
	.loc 1 630 2 view .LVU105
	ldr	r0, [r0, #8]	@, mesh_1(D)->vertices
.LVL39:
	.loc 1 630 2 view .LVU106
	bl	plat_free		@
.LVL40:
	.loc 1 631 2 is_stmt 1 view .LVU107
	ldr	r0, [r4, #20]	@, mesh_1(D)->uvs
	bl	plat_free		@
.LVL41:
	.loc 1 632 2 view .LVU108
	ldr	r0, [r4, #16]	@, mesh_1(D)->tris
	bl	plat_free		@
.LVL42:
	.loc 1 633 2 view .LVU109
	ldr	r0, [r4, #24]	@, mesh_1(D)->colors
	bl	plat_free		@
.LVL43:
	.loc 1 634 2 view .LVU110
	ldr	r0, [r4, #28]	@, mesh_1(D)->wire_flags
	bl	plat_free		@
.LVL44:
	.loc 1 635 2 view .LVU111
	ldr	r0, [r4, #32]	@, mesh_1(D)->adjacency
	bl	plat_free		@
.LVL45:
	.loc 1 636 2 view .LVU112
	mov	r0, r4	@, mesh
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:637: }
	.loc 1 637 1 is_stmt 0 view .LVU113
	pop	{r4, lr}	@
.LCFI8:
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL46:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:636: 	plat_free(mesh);
	.loc 1 636 2 view .LVU114
	b	plat_free		@
.LVL47:
	.loc 1 636 2 view .LVU115
	.cfi_endproc
.LFE63:
	.size	mesh_free.part.0, .-mesh_free.part.0
	.section	.text.draw_black_line,"ax",%progbits
	.align	1
	.p2align 4,,15
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_black_line, %function
draw_black_line:
.LVL48:
.LFB44:
	.loc 1 82 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 83 2 view .LVU117
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:83: 	if (p1->y > p2->y)
	.loc 1 83 8 is_stmt 0 view .LVU118
	vldr.32	s15, [r2, #4]	@ _1, p1_48(D)->y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:83: 	if (p1->y > p2->y)
	.loc 1 83 16 view .LVU119
	vldr.32	s14, [r3, #4]	@ _2, p2_49(D)->y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:83: 	if (p1->y > p2->y)
	.loc 1 83 5 view .LVU120
	vcmp.f32	s15, s14	@ _1, _2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:82: {
	.loc 1 82 1 view .LVU121
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI9:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:83: 	if (p1->y > p2->y)
	.loc 1 83 5 view .LVU122
	vmrs	APSR_nzcv, FPSCR
	bgt	.L34		@,
	vmov.f32	s13, s14	@ _2, _2
	mov	r4, r3	@ p2, p2
	vmov.f32	s14, s15	@ _2, _1
	mov	r3, r2	@ p2, p1
.LVL49:
	.loc 1 83 5 view .LVU123
	mov	r2, r4	@ p1, p2
.LVL50:
	.loc 1 83 5 view .LVU124
	vmov.f32	s15, s13	@ _1, _2
.LVL51:
.L34:
	.loc 1 90 2 is_stmt 1 view .LVU125
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:90: 	int y = (int)p1->y;
	.loc 1 90 6 is_stmt 0 view .LVU126
	vcvt.s32.f32	s13, s14	@ y, _2
	vmov	ip, s13	@ int	@ y, y
.LVL52:
	.loc 1 91 2 is_stmt 1 view .LVU127
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:91: 	int endy = (int)p2->y;
	.loc 1 91 6 is_stmt 0 view .LVU128
	vcvt.s32.f32	s13, s15	@ endy, _1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:93: 	if (y >= SCREEN_Y || endy < 0 || min2f(p1->x, p2->x) >= SCREEN_X || max2f(p1->x, p2->x) < 0)
	.loc 1 93 5 view .LVU129
	cmp	ip, #239	@ y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:91: 	int endy = (int)p2->y;
	.loc 1 91 6 view .LVU130
	vmov	r10, s13	@ int	@ endy, endy
.LVL53:
	.loc 1 93 2 is_stmt 1 view .LVU131
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:93: 	if (y >= SCREEN_Y || endy < 0 || min2f(p1->x, p2->x) >= SCREEN_X || max2f(p1->x, p2->x) < 0)
	.loc 1 93 5 is_stmt 0 view .LVU132
	bgt	.L33		@,
	cmp	r10, #0	@ endy,
	blt	.L33		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:93: 	if (y >= SCREEN_Y || endy < 0 || min2f(p1->x, p2->x) >= SCREEN_X || max2f(p1->x, p2->x) < 0)
	.loc 1 93 38 discriminator 1 view .LVU133
	vldr.32	s13, [r3]	@ _8, p1_35->x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:93: 	if (y >= SCREEN_Y || endy < 0 || min2f(p1->x, p2->x) >= SCREEN_X || max2f(p1->x, p2->x) < 0)
	.loc 1 93 45 discriminator 1 view .LVU134
	vldr.32	s12, [r2]	@ _9, p2_36->x
.LVL54:
.LBB189:
.LBI189:
	.loc 2 155 21 is_stmt 1 view .LVU135
.LBB190:
	.loc 2 157 2 view .LVU136
	.loc 2 157 2 is_stmt 0 view .LVU137
.LBE190:
.LBE189:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:93: 	if (y >= SCREEN_Y || endy < 0 || min2f(p1->x, p2->x) >= SCREEN_X || max2f(p1->x, p2->x) < 0)
	.loc 1 93 27 discriminator 2 view .LVU138
	vldr.32	s11, .L60	@ tmp175,
.LBB192:
.LBB191:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:157: 	return a < b ? a : b;
	.loc 2 157 19 view .LVU139
	vminnm.f32	s10, s13, s12	@ _55, _8, _9
.LBE191:
.LBE192:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:93: 	if (y >= SCREEN_Y || endy < 0 || min2f(p1->x, p2->x) >= SCREEN_X || max2f(p1->x, p2->x) < 0)
	.loc 1 93 27 discriminator 2 view .LVU140
	vcmp.f32	s10, s11	@ _55, tmp175
	vmrs	APSR_nzcv, FPSCR
	bge	.L33		@,
.LVL55:
.LBB193:
.LBI193:
	.loc 2 160 21 is_stmt 1 view .LVU141
.LBB194:
	.loc 2 162 2 view .LVU142
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:162: 	return a > b ? a : b;
	.loc 2 162 19 is_stmt 0 view .LVU143
	vmaxnm.f32	s11, s13, s12	@ _53, _8, _9
.LBE194:
.LBE193:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:93: 	if (y >= SCREEN_Y || endy < 0 || min2f(p1->x, p2->x) >= SCREEN_X || max2f(p1->x, p2->x) < 0)
	.loc 1 93 57 discriminator 4 view .LVU144
	vcmp.f32	s11, #0	@ _53
	vmrs	APSR_nzcv, FPSCR
	bmi	.L33		@,
	.loc 1 96 2 is_stmt 1 view .LVU145
.LBB195:
.LBB196:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:73: 	float dy = y2-y1;
	.loc 1 73 8 is_stmt 0 view .LVU146
	vsub.f32	s15, s15, s14	@ dy, _1, _2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:75: 	if (dy < 1)
	.loc 1 75 5 view .LVU147
	vmov.f32	s10, #1.0e+0	@ tmp180,
.LBE196:
.LBE195:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:96: 	int32_t x = (int32_t)(p1->x * (1<<16));
	.loc 1 96 10 view .LVU148
	vmov.f32	s11, s13	@ x, _8
.LBB202:
.LBB197:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:72: 	float dx = x2-x1;
	.loc 1 72 8 view .LVU149
	vsub.f32	s13, s12, s13	@ dx, _9, _8
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:75: 	if (dy < 1)
	.loc 1 75 5 view .LVU150
	vcmp.f32	s15, s10	@ dy, tmp180
.LBE197:
.LBE202:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:96: 	int32_t x = (int32_t)(p1->x * (1<<16));
	.loc 1 96 10 view .LVU151
	vcvt.s32.f32	s11, s11, #16	@ x, x,
.LBB203:
.LBB198:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:75: 	if (dy < 1)
	.loc 1 75 5 view .LVU152
	vmrs	APSR_nzcv, FPSCR
.LBE198:
.LBE203:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:96: 	int32_t x = (int32_t)(p1->x * (1<<16));
	.loc 1 96 10 view .LVU153
	vmov	r3, s11	@ int	@ x, x
.LVL56:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:96: 	int32_t x = (int32_t)(p1->x * (1<<16));
	.loc 1 96 30 view .LVU154
	vldr.32	s11, .L60+4	@ tmp179,
.LVL57:
	.loc 1 97 2 is_stmt 1 view .LVU155
.LBB204:
.LBI195:
	.loc 1 70 23 view .LVU156
.LBB199:
	.loc 1 72 2 view .LVU157
	.loc 1 73 2 view .LVU158
	.loc 1 75 2 view .LVU159
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:75: 	if (dy < 1)
	.loc 1 75 5 is_stmt 0 view .LVU160
	bmi	.L57		@,
	.loc 1 78 3 is_stmt 1 view .LVU161
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:78: 		return (int32_t)(dx / dy * (1 << shift));
	.loc 1 78 23 is_stmt 0 view .LVU162
	vdiv.f32	s10, s13, s15	@ _67, dx, dy
.LBE199:
.LBE204:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:100: 	if (y < 0)
	.loc 1 100 5 view .LVU163
	cmp	ip, #0	@ y,
.LBB205:
.LBB200:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:78: 		return (int32_t)(dx / dy * (1 << shift));
	.loc 1 78 28 view .LVU164
	vmul.f32	s13, s10, s11	@ _68, _67, tmp179
.LVL58:
	.loc 1 78 28 view .LVU165
.LBE200:
.LBE205:
	.loc 1 98 2 is_stmt 1 view .LVU166
	.loc 1 100 2 view .LVU167
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:102: 		x += (int32_t)(-p1->y * dx);
	.loc 1 102 25 is_stmt 0 view .LVU168
	vrintz.f32	s11, s13	@ prephitmp_88, _68
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:100: 	if (y < 0)
	.loc 1 100 5 view .LVU169
	blt	.L41		@,
.LVL59:
.L59:
	.loc 1 107 2 is_stmt 1 view .LVU170
	.loc 1 109 2 view .LVU171
	.loc 1 109 11 view .LVU172
	cmp	ip, r10	@ y, endy
	bgt	.L33		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:107: 	int32_t x1 = (int32_t)(x + dx * (y+1-py));
	.loc 1 107 36 is_stmt 0 view .LVU173
	add	r4, ip, #1	@ y, y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:107: 	int32_t x1 = (int32_t)(x + dx * (y+1-py));
	.loc 1 107 38 view .LVU174
	vmov	s15, r4	@ int	@ y, y
	vcvt.f32.s32	s15, s15	@ _104, y
	vsub.f32	s15, s15, s14	@ _106, _104, _2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:107: 	int32_t x1 = (int32_t)(x + dx * (y+1-py));
	.loc 1 107 32 view .LVU175
	vmul.f32	s11, s11, s15	@ prephitmp_88, prephitmp_88, _106
.LVL60:
.L42:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:107: 	int32_t x1 = (int32_t)(x + dx * (y+1-py));
	.loc 1 107 27 view .LVU176
	vmov	s15, r3	@ int	@ x, x
	vcvt.s32.f32	s14, s13	@ _70, _68
	mov	r8, r1	@ rowstride, rowstride
	mla	fp, ip, r1, r0	@ ivtmp.219, y, rowstride, bitmap
	vcvt.f32.s32	s15, s15	@ _15, x
.LBB206:
.LBB207:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:19: 	if (x2 < 0 || x1 >= SCREEN_X)
	.loc 1 19 19 view .LVU177
	movw	r9, #399	@ tmp220,
	vmov	r6, s14	@ int	@ _70, _70
.LBE207:
.LBE206:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:112: 			x1 = (int32_t)(p2->x * (1<<16));
	.loc 1 112 7 view .LVU178
	vmov.f32	s14, s12	@ x1, _9
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:107: 	int32_t x1 = (int32_t)(x + dx * (y+1-py));
	.loc 1 107 27 view .LVU179
	vadd.f32	s15, s15, s11	@ _21, _15, prephitmp_88
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:112: 			x1 = (int32_t)(p2->x * (1<<16));
	.loc 1 112 7 view .LVU180
	vcvt.s32.f32	s14, s14, #16	@ x1, x1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:107: 	int32_t x1 = (int32_t)(x + dx * (y+1-py));
	.loc 1 107 10 view .LVU181
	vcvt.s32.f32	s15, s15	@ x1, _21
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:112: 			x1 = (int32_t)(p2->x * (1<<16));
	.loc 1 112 7 view .LVU182
	vmov	r7, s14	@ int	@ x1, x1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:107: 	int32_t x1 = (int32_t)(x + dx * (y+1-py));
	.loc 1 107 10 view .LVU183
	vmov	r2, s15	@ int	@ x1, x1
	b	.L46		@
.LVL61:
.L44:
.LBB210:
.LBB208:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:19: 	if (x2 < 0 || x1 >= SCREEN_X)
	.loc 1 19 5 view .LVU184
	adds	r2, r1, #1	@ _34, _114,
	mov	r1, r3	@, _113
.LVL62:
	.loc 1 19 5 view .LVU185
	bmi	.L45		@,
.LVL63:
	.loc 1 19 5 view .LVU186
	cmp	r3, r9	@ _113, tmp220
	bgt	.L45		@,
.LVL64:
.L55:
	.loc 1 19 5 view .LVU187
	mov	r0, fp	@, ivtmp.219
	bl	draw_black_fragment.part.0		@
.LVL65:
.L45:
	.loc 1 19 5 view .LVU188
.LBE208:
.LBE210:
	.loc 1 119 3 is_stmt 1 view .LVU189
	.loc 1 122 3 view .LVU190
	.loc 1 123 3 view .LVU191
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:119: 		if (++y == SCREEN_Y)
	.loc 1 119 6 is_stmt 0 view .LVU192
	cmp	r4, #240	@ y,
	mov	ip, r4	@ y, y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:123: 		x1 += dx;
	.loc 1 123 6 view .LVU193
	add	r2, r5, r6	@ x1, x1, _70
.LVL66:
	.loc 1 109 11 is_stmt 1 view .LVU194
	add	fp, fp, r8	@ ivtmp.219, rowstride
	mov	r3, r5	@ x, x1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:119: 		if (++y == SCREEN_Y)
	.loc 1 119 6 is_stmt 0 view .LVU195
	beq	.L33		@,
.LVL67:
.L58:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:109: 	while (y <= endy)
	.loc 1 109 11 view .LVU196
	cmp	r10, r4	@ endy, y
	add	r4, r4, #1	@ y, y,
.LVL68:
	.loc 1 109 11 view .LVU197
	blt	.L33		@,
.LVL69:
.L46:
	.loc 1 111 3 is_stmt 1 view .LVU198
	.loc 1 115 4 view .LVU199
	.loc 1 117 4 view .LVU200
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:111: 		if (y == endy)
	.loc 1 111 6 is_stmt 0 view .LVU201
	cmp	r10, ip	@ endy, y
	ite	eq		@
	moveq	r5, r7	@, x1, x1
	movne	r5, r2	@, x1, x1
.LVL70:
	.loc 1 114 3 is_stmt 1 view .LVU202
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:114: 		if (dx < 0)
	.loc 1 114 6 is_stmt 0 view .LVU203
	cmp	r6, #0	@ _70,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:115: 			draw_black_fragment((uint32_t*)&bitmap[y * rowstride], x1 >> 16, (x >> 16) + 1);
	.loc 1 115 72 view .LVU204
	asr	r3, r3, #16	@ _113, x,
.LVL71:
.LBB211:
.LBI211:
	.loc 1 17 13 is_stmt 1 view .LVU205
.LBB212:
	.loc 1 19 2 view .LVU206
.LBE212:
.LBE211:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:115: 			draw_black_fragment((uint32_t*)&bitmap[y * rowstride], x1 >> 16, (x >> 16) + 1);
	.loc 1 115 62 is_stmt 0 view .LVU207
	asr	r1, r5, #16	@ _114, x1,
.LVL72:
.LBB214:
.LBI206:
	.loc 1 17 13 is_stmt 1 view .LVU208
.LBB209:
	.loc 1 19 2 view .LVU209
.LBE209:
.LBE214:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:114: 		if (dx < 0)
	.loc 1 114 6 is_stmt 0 view .LVU210
	bge	.L44		@,
.LBB215:
.LBB213:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:19: 	if (x2 < 0 || x1 >= SCREEN_X)
	.loc 1 19 5 view .LVU211
	adds	r2, r3, #1	@ _28, _113,
.LVL73:
	.loc 1 19 5 view .LVU212
	bmi	.L45		@,
	cmp	r1, r9	@ _114, tmp220
	ble	.L55		@,
.LVL74:
	.loc 1 19 5 view .LVU213
.LBE213:
.LBE215:
	.loc 1 119 3 is_stmt 1 view .LVU214
	.loc 1 122 3 view .LVU215
	.loc 1 123 3 view .LVU216
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:119: 		if (++y == SCREEN_Y)
	.loc 1 119 6 is_stmt 0 view .LVU217
	cmp	r4, #240	@ y,
	mov	ip, r4	@ y, y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:123: 		x1 += dx;
	.loc 1 123 6 view .LVU218
	add	r2, r5, r6	@ x1, x1, _70
.LVL75:
	.loc 1 109 11 is_stmt 1 view .LVU219
	add	fp, fp, r8	@ ivtmp.219, rowstride
	mov	r3, r5	@ x, x1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:119: 		if (++y == SCREEN_Y)
	.loc 1 119 6 is_stmt 0 view .LVU220
	bne	.L58		@,
.LVL76:
.L33:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:125: }
	.loc 1 125 1 view .LVU221
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL77:
.L57:
.LBB216:
.LBB201:
	.loc 1 76 3 is_stmt 1 view .LVU222
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:76: 		return (int32_t)(dx * (1 << shift));
	.loc 1 76 23 is_stmt 0 view .LVU223
	vmul.f32	s13, s13, s11	@ _68, dx, tmp179
.LVL78:
	.loc 1 76 23 view .LVU224
.LBE201:
.LBE216:
	.loc 1 98 2 is_stmt 1 view .LVU225
	.loc 1 100 2 view .LVU226
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:100: 	if (y < 0)
	.loc 1 100 5 is_stmt 0 view .LVU227
	cmp	ip, #0	@ y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:102: 		x += (int32_t)(-p1->y * dx);
	.loc 1 102 25 view .LVU228
	vrintz.f32	s11, s13	@ prephitmp_88, _68
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:100: 	if (y < 0)
	.loc 1 100 5 view .LVU229
	bge	.L59		@,
.LVL79:
.L41:
	.loc 1 102 3 is_stmt 1 view .LVU230
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:102: 		x += (int32_t)(-p1->y * dx);
	.loc 1 102 8 is_stmt 0 view .LVU231
	vnmul.f32	s14, s11, s14	@ _13, prephitmp_88, _2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:103: 		y = 0;
	.loc 1 103 5 view .LVU232
	mov	ip, #0	@ y,
.LVL80:
	.loc 1 103 5 view .LVU233
	movs	r4, #1	@ y,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:102: 		x += (int32_t)(-p1->y * dx);
	.loc 1 102 8 view .LVU234
	vcvt.s32.f32	s14, s14	@ _14, _13
.LVL81:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:102: 		x += (int32_t)(-p1->y * dx);
	.loc 1 102 5 view .LVU235
	vmov	r2, s14	@ int	@ _14, _14
	add	r3, r3, r2	@ x, _14
.LVL82:
	.loc 1 103 3 is_stmt 1 view .LVU236
	.loc 1 104 3 view .LVU237
	.loc 1 107 2 view .LVU238
	.loc 1 109 2 view .LVU239
	.loc 1 109 11 view .LVU240
	b	.L42		@
.L61:
	.align	2
.L60:
	.word	1137180672
	.word	1199570944
	.cfi_endproc
.LFE44:
	.size	draw_black_line, .-draw_black_line
	.section	.text.scene_shutdown,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	scene_shutdown
	.syntax unified
	.thumb
	.thumb_func
	.type	scene_shutdown, %function
scene_shutdown:
.LVL83:
.LFB46:
	.loc 1 141 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 142 2 view .LVU242
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:141: {
	.loc 1 141 1 is_stmt 0 view .LVU243
	push	{r4, lr}	@
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:141: {
	.loc 1 141 1 view .LVU244
	mov	r4, r0	@ scene, scene
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:142: 	plat_free(scene->tmp_view_points);
	.loc 1 142 2 view .LVU245
	ldr	r0, [r0, #124]	@, scene_10(D)->tmp_view_points
.LVL84:
	.loc 1 142 2 view .LVU246
	bl	plat_free		@
.LVL85:
	.loc 1 143 2 is_stmt 1 view .LVU247
	ldr	r0, [r4, #128]	@, scene_10(D)->tmp_proj_points
	bl	plat_free		@
.LVL86:
	.loc 1 144 2 view .LVU248
	ldr	r0, [r4, #136]	@, scene_10(D)->tmp_order_table1
	bl	plat_free		@
.LVL87:
	.loc 1 145 2 view .LVU249
	ldr	r0, [r4, #140]	@, scene_10(D)->tmp_order_table2
	bl	plat_free		@
.LVL88:
	.loc 1 146 2 view .LVU250
	ldr	r0, [r4, #160]	@, scene_10(D)->instances
	bl	plat_free		@
.LVL89:
	.loc 1 147 2 view .LVU251
	ldr	r0, [r4, #164]	@, scene_10(D)->tmp_inst_order_table1
	bl	plat_free		@
.LVL90:
	.loc 1 148 2 view .LVU252
	ldr	r0, [r4, #168]	@, scene_10(D)->tmp_inst_order_table2
	bl	plat_free		@
.LVL91:
	.loc 1 149 2 view .LVU253
	ldr	r0, [r4, #180]	@, scene_10(D)->line_buf
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:150: }
	.loc 1 150 1 is_stmt 0 view .LVU254
	pop	{r4, lr}	@
.LCFI11:
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL92:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:149: 	plat_free(scene->line_buf);
	.loc 1 149 2 view .LVU255
	b	plat_free		@
.LVL93:
	.cfi_endproc
.LFE46:
	.size	scene_shutdown, .-scene_shutdown
	.section	.text.scene_setLight,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	scene_setLight
	.syntax unified
	.thumb
	.thumb_func
	.type	scene_setLight, %function
scene_setLight:
.LVL94:
.LFB47:
	.loc 1 153 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 154 2 view .LVU257
.LBB221:
.LBB222:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:281: 	float d = sqrtf(v.x * v.x + v.y * v.y + v.z * v.z);
	.loc 2 281 41 is_stmt 0 view .LVU258
	vmul.f32	s15, s1, s1	@ powmult_7, light, light
.LBE222:
.LBE221:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:153: {
	.loc 1 153 1 view .LVU259
	sub	sp, sp, #16	@,,
.LCFI12:
	.cfi_def_cfa_offset 16
.LBB227:
.LBB225:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 view .LVU260
	vmov.f32	s13, #1.0e+0	@ tmp134,
.LVL95:
	.loc 2 282 8 view .LVU261
.LBE225:
.LBI221:
	.loc 2 279 22 is_stmt 1 view .LVU262
.LBB226:
	.loc 2 281 2 view .LVU263
.LBB223:
.LBI223:
	.loc 2 20 21 view .LVU264
.LBB224:
	.loc 2 22 2 view .LVU265
	.loc 2 23 2 view .LVU266
	vfma.f32	s15, s0, s0	@ tmp132, light, light
	vfma.f32	s15, s2, s2	@ tmp131, light, light
	.syntax unified
@ 23 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	vsqrt.f32 s15, s15	@ result, tmp131
@ 0 "" 2
	.loc 2 24 2 view .LVU267
.LVL96:
	.loc 2 24 2 is_stmt 0 view .LVU268
	.thumb
	.syntax unified
.LBE224:
.LBE223:
	.loc 2 282 2 is_stmt 1 view .LVU269
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 is_stmt 0 view .LVU270
	vdiv.f32	s14, s13, s15	@ id, tmp134, result
.LVL97:
	.loc 2 283 2 is_stmt 1 view .LVU271
	.loc 2 284 2 view .LVU272
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 19 is_stmt 0 view .LVU273
	vmul.f32	s0, s0, s14	@ _13, light, id
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:283: 	float3 r = { v.x * id, v.y * id, v.z * id };
	.loc 2 283 39 view .LVU274
	vmul.f32	s2, s14, s2	@ _15, id, light
.LBE226:
.LBE227:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:155: 	scene->light.y = -scene->light.y; // compensate for view space being flipped vertically
	.loc 1 155 19 view .LVU275
	vnmul.f32	s1, s1, s14	@ _1, light, id
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:154: 	scene->light = v3_normalize(light);
	.loc 1 154 17 view .LVU276
	vstr.32	s0, [r0, #96]	@ _13, MEM <float> [(struct Scene *)scene_3(D) + 96B]
	vstr.32	s2, [r0, #104]	@ _15, MEM <float> [(struct Scene *)scene_3(D) + 104B]
	.loc 1 155 2 is_stmt 1 view .LVU277
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:155: 	scene->light.y = -scene->light.y; // compensate for view space being flipped vertically
	.loc 1 155 17 is_stmt 0 view .LVU278
	vstr.32	s1, [r0, #100]	@ _1, scene_3(D)->light.y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:156: }
	.loc 1 156 1 view .LVU279
	add	sp, sp, #16	@,,
.LCFI13:
	.cfi_def_cfa_offset 0
	@ sp needed	@
	bx	lr	@
	.cfi_endproc
.LFE47:
	.size	scene_setLight, .-scene_setLight
	.section	.text.scene_setCenter,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	scene_setCenter
	.syntax unified
	.thumb
	.thumb_func
	.type	scene_setCenter, %function
scene_setCenter:
.LVL98:
.LFB48:
	.loc 1 159 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 160 2 view .LVU281
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:160: 	scene->centerx = x;
	.loc 1 160 17 is_stmt 0 view .LVU282
	vstr.32	s0, [r0, #108]	@ x, scene_2(D)->centerx
	.loc 1 161 2 is_stmt 1 view .LVU283
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:161: 	scene->centery = y;
	.loc 1 161 17 is_stmt 0 view .LVU284
	vstr.32	s1, [r0, #112]	@ y, scene_2(D)->centery
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:162: }
	.loc 1 162 1 view .LVU285
	bx	lr	@
	.cfi_endproc
.LFE48:
	.size	scene_setCenter, .-scene_setCenter
	.section	.text.scene_setCamera,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	scene_setCamera
	.syntax unified
	.thumb
	.thumb_func
	.type	scene_setCamera, %function
scene_setCamera:
.LVL99:
.LFB49:
	.loc 1 165 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 166 2 view .LVU287
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:165: {
	.loc 1 165 1 is_stmt 0 view .LVU288
	vmov.f32	s15, s6	@ scale, scale
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:166: 	scene->scale = 240 * scale;
	.loc 1 166 21 view .LVU289
	vldr.32	s14, .L69	@ tmp133,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:165: {
	.loc 1 165 1 view .LVU290
	vmov.f32	s6, s7	@ up, up
.LVL100:
	.loc 1 165 1 view .LVU291
	vmov.f32	s7, s8	@ up, up
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:166: 	scene->scale = 240 * scale;
	.loc 1 166 21 view .LVU292
	vmul.f32	s15, s15, s14	@ _1, scale, tmp133
.LVL101:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:167: 	xform m = xform_look_at(origin, lookAt, up);
	.loc 1 167 12 view .LVU293
	vmov.f32	s8, s9	@, up
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:165: {
	.loc 1 165 1 view .LVU294
	push	{r4, lr}	@
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0	@ scene, scene
	sub	sp, sp, #136	@,,
.LCFI15:
	.cfi_def_cfa_offset 144
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:166: 	scene->scale = 240 * scale;
	.loc 1 166 15 view .LVU295
	vstr.32	s15, [r4, #116]	@ _1, scene_4(D)->scale
	.loc 1 167 2 is_stmt 1 view .LVU296
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:167: 	xform m = xform_look_at(origin, lookAt, up);
	.loc 1 167 12 is_stmt 0 view .LVU297
	add	r0, sp, #88	@ tmp166,,
.LVL102:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:165: {
	.loc 1 165 1 view .LVU298
	vstr.32	s0, [sp, #76]	@ origin, origin
	vstr.32	s1, [sp, #80]	@ origin, origin
	vstr.32	s2, [sp, #84]	@ origin, origin
	vstr.32	s3, [sp, #64]	@ lookAt, lookAt
	vstr.32	s4, [sp, #68]	@ lookAt, lookAt
	vstr.32	s5, [sp, #72]	@ lookAt, lookAt
	vstr.32	s6, [sp, #52]	@ up, up
	vstr.32	s7, [sp, #56]	@ up, up
	vstr.32	s9, [sp, #60]	@ up, up
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:167: 	xform m = xform_look_at(origin, lookAt, up);
	.loc 1 167 12 view .LVU299
	bl	xform_look_at		@
.LVL103:
	.loc 1 168 2 is_stmt 1 view .LVU300
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:168: 	scene->camera_xform = m;
	.loc 1 168 22 is_stmt 0 view .LVU301
	add	lr, sp, #88	@ tmp167,,
	mov	ip, r4	@ scene, scene
.LBB228:
.LBB229:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:289: 	return f3(-v.x, -v.y, -v.z);
	.loc 2 289 9 view .LVU302
	vldr.32	s14, [sp, #116]	@ m.ay.y, m.ay.y
	vldr.32	s15, [sp, #120]	@ m.ay.z, m.ay.z
	vldr.32	s13, [sp, #112]	@ m.ay.x, m.ay.x
	vneg.f32	s14, s14	@ _12, m.ay.y
	vneg.f32	s15, s15	@ _13, m.ay.z
	vneg.f32	s13, s13	@ _11, m.ay.x
.LBE229:
.LBE228:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:168: 	scene->camera_xform = m;
	.loc 1 168 22 view .LVU303
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp145,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ scene,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp145,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ scene,,,,
	ldm	lr, {r0, r1, r2, r3}	@ tmp145,,,,
	stm	ip, {r0, r1, r2, r3}	@ scene,,,,
	.loc 1 169 2 is_stmt 1 view .LVU304
.LVL104:
.LBB231:
.LBI228:
	.loc 2 287 22 view .LVU305
.LBB230:
	.loc 2 289 2 view .LVU306
	.loc 2 289 2 is_stmt 0 view .LVU307
.LBE230:
.LBE231:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:170: 	scene->view_xform = xform_invert(&m);
	.loc 1 170 22 view .LVU308
	add	r1, sp, #88	@ tmp168,,
	mov	r0, sp	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:169: 	m.ay = v3_neg(m.ay);
	.loc 1 169 9 view .LVU309
	vstr.32	s13, [sp, #112]	@ _11, MEM <float> [(struct float3 *)&m + 24B]
	vstr.32	s14, [sp, #116]	@ _12, MEM <float> [(struct float3 *)&m + 28B]
	vstr.32	s15, [sp, #120]	@ _13, MEM <float> [(struct float3 *)&m + 32B]
	.loc 1 170 2 is_stmt 1 view .LVU310
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:170: 	scene->view_xform = xform_invert(&m);
	.loc 1 170 22 is_stmt 0 view .LVU311
	bl	xform_invert		@
.LVL105:
	mov	lr, sp	@ tmp153,
	add	ip, r4, #48	@ tmp152, scene,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp153,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp153,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldm	lr, {r0, r1, r2, r3}	@ tmp153,,,,
	stm	ip, {r0, r1, r2, r3}	@ tmp152,,,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:171: }
	.loc 1 171 1 view .LVU312
	add	sp, sp, #136	@,,
.LCFI16:
	.cfi_def_cfa_offset 8
	@ sp needed	@
	pop	{r4, pc}	@
.LVL106:
.L70:
	.loc 1 171 1 view .LVU313
	.align	2
.L69:
	.word	1131413504
	.cfi_endproc
.LFE49:
	.size	scene_setCamera, .-scene_setCamera
	.section	.text.scene_init,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	scene_init
	.syntax unified
	.thumb
	.thumb_func
	.type	scene_init, %function
scene_init:
.LVL107:
.LFB45:
	.loc 1 132 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 133 2 view .LVU315
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:132: {
	.loc 1 132 1 is_stmt 0 view .LVU316
	push	{r4, lr}	@
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:133: 	memset(scene, 0, sizeof(*scene));
	.loc 1 133 2 view .LVU317
	movs	r2, #188	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:132: {
	.loc 1 132 1 view .LVU318
	sub	sp, sp, #48	@,,
.LCFI18:
	.cfi_def_cfa_offset 56
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:133: 	memset(scene, 0, sizeof(*scene));
	.loc 1 133 2 view .LVU319
	movs	r1, #0	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:132: {
	.loc 1 132 1 view .LVU320
	mov	r4, r0	@ scene, scene
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:133: 	memset(scene, 0, sizeof(*scene));
	.loc 1 133 2 view .LVU321
	bl	memset		@
.LVL108:
	.loc 1 134 2 is_stmt 1 view .LVU322
.LBB244:
.LBI244:
	.loc 2 264 22 view .LVU323
	.loc 2 266 2 view .LVU324
	vmov.f32	s8, #1.0e+0	@ tmp125,
	vldr.32	s9, .L73	@ tmp120,
.LVL109:
	.loc 2 266 2 is_stmt 0 view .LVU325
.LBE244:
.LBB245:
.LBI245:
	.loc 2 264 22 is_stmt 1 view .LVU326
	.loc 2 266 2 view .LVU327
	.loc 2 266 2 is_stmt 0 view .LVU328
.LBE245:
.LBB246:
.LBI246:
	.loc 2 264 22 is_stmt 1 view .LVU329
	.loc 2 266 2 view .LVU330
	.loc 2 266 2 is_stmt 0 view .LVU331
.LBE246:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:134: 	scene_setCamera(scene, f3(0, 0, 0), f3(0, 0, 1), 1.0f, f3(0, 1, 0));
	.loc 1 134 2 discriminator 3 view .LVU332
	mov	r0, r4	@, scene
	vmov.f32	s7, s9	@, tmp120
	vstr.32	s8, [sp, #4]	@ int	@ tmp125, %sfp
	vmov.f32	s6, s8	@, tmp125
	vstr.32	s9, [sp]	@ int	@ tmp120, %sfp
	vmov.f32	s3, s9	@, tmp120
	vmov.f32	s4, s9	@, tmp120
	vmov.f32	s5, s8	@, tmp125
	vmov.f32	s0, s9	@, tmp120
	vmov.f32	s1, s9	@, tmp120
	vmov.f32	s2, s9	@, tmp120
	bl	scene_setCamera		@
.LVL110:
	.loc 1 135 2 is_stmt 1 view .LVU333
.LBB247:
.LBI247:
	.loc 1 152 6 view .LVU334
.LBB248:
	.loc 1 154 2 view .LVU335
.LBB249:
.LBI249:
	.loc 2 279 22 view .LVU336
.LBB250:
	.loc 2 281 2 view .LVU337
.LBB251:
.LBI251:
	.loc 2 20 21 view .LVU338
.LBB252:
	.loc 2 22 2 view .LVU339
	.loc 2 23 2 view .LVU340
	vldr.32	s8, [sp, #4]	@ int	@ tmp125, %sfp
	.syntax unified
@ 23 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	vsqrt.f32 s14, s8	@ result, tmp125
@ 0 "" 2
	.loc 2 24 2 view .LVU341
.LVL111:
	.loc 2 24 2 is_stmt 0 view .LVU342
	.thumb
	.syntax unified
.LBE252:
.LBE251:
	.loc 2 282 2 is_stmt 1 view .LVU343
	.loc 2 283 2 view .LVU344
	.loc 2 284 2 view .LVU345
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:282: 	float id = 1.0f / d;
	.loc 2 282 8 is_stmt 0 view .LVU346
	vdiv.f32	s15, s8, s14	@ id_29, tmp125, result
.LBE250:
.LBE249:
.LBE248:
.LBE247:
.LBB256:
.LBB257:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:160: 	scene->centerx = x;
	.loc 1 160 17 view .LVU347
	mov	r3, #1056964608	@ tmp144,
.LBE257:
.LBE256:
.LBB261:
.LBB253:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:154: 	scene->light = v3_normalize(light);
	.loc 1 154 17 view .LVU348
	vldr.32	s9, [sp]	@ int	@ tmp120, %sfp
.LBE253:
.LBE261:
.LBB262:
.LBB258:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:160: 	scene->centerx = x;
	.loc 1 160 17 view .LVU349
	str	r3, [r4, #108]	@ float	@ tmp144, scene_2(D)->centerx
.LBE258:
.LBE262:
.LBB263:
.LBB254:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:154: 	scene->light = v3_normalize(light);
	.loc 1 154 17 view .LVU350
	vstr.32	s9, [r4, #96]	@ tmp120, MEM <float> [(struct Scene *)scene_2(D) + 96B]
	vstr.32	s9, [r4, #104]	@ tmp120, MEM <float> [(struct Scene *)scene_2(D) + 104B]
	.loc 1 155 2 is_stmt 1 view .LVU351
.LBE254:
.LBE263:
.LBB264:
.LBB259:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:161: 	scene->centery = y;
	.loc 1 161 17 is_stmt 0 view .LVU352
	str	r3, [r4, #112]	@ float	@ tmp144, scene_2(D)->centery
.LBE259:
.LBE264:
.LBB265:
.LBB255:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:155: 	scene->light.y = -scene->light.y; // compensate for view space being flipped vertically
	.loc 1 155 17 view .LVU353
	vstr.32	s15, [r4, #100]	@ id_29, scene_2(D)->light.y
.LVL112:
	.loc 1 155 17 view .LVU354
.LBE255:
.LBE265:
	.loc 1 137 2 is_stmt 1 view .LVU355
.LBB266:
.LBI256:
	.loc 1 158 6 view .LVU356
.LBB260:
	.loc 1 160 2 view .LVU357
	.loc 1 161 2 view .LVU358
	.loc 1 161 2 is_stmt 0 view .LVU359
.LBE260:
.LBE266:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:138: }
	.loc 1 138 1 view .LVU360
	add	sp, sp, #48	@,,
.LCFI19:
	.cfi_def_cfa_offset 8
	@ sp needed	@
	pop	{r4, pc}	@
.LVL113:
.L74:
	.loc 1 138 1 view .LVU361
	.align	2
.L73:
	.word	0
	.cfi_endproc
.LFE45:
	.size	scene_init, .-scene_init
	.section	.text.scene_add_mesh,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	scene_add_mesh
	.syntax unified
	.thumb
	.thumb_func
	.type	scene_add_mesh, %function
scene_add_mesh:
.LVL114:
.LFB55:
	.loc 1 454 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 455 2 view .LVU363
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:454: {
	.loc 1 454 1 is_stmt 0 view .LVU364
	push	{r3, r4, r5, lr}	@
.LCFI20:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:455: 	if (scene->inst_count + 1 > scene->inst_cap) {
	.loc 1 455 5 view .LVU365
	ldrd	r3, r2, [r0, #152]	@ _1, scene_26(D)->inst_cap, scene,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:454: {
	.loc 1 454 1 view .LVU366
	mov	r4, r0	@ scene, scene
	mov	r5, r1	@ inst, inst
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:455: 	if (scene->inst_count + 1 > scene->inst_cap) {
	.loc 1 455 5 view .LVU367
	cmp	r3, r2	@ _1, scene_26(D)->inst_cap
	bge	.L78		@,
.LVL115:
.L76:
	.loc 1 463 2 is_stmt 1 view .LVU368
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:463: 	scene->instances[scene->inst_count] = inst;
	.loc 1 463 38 is_stmt 0 view .LVU369
	ldr	r1, [r4, #160]	@ scene_26(D)->instances, scene_26(D)->instances
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:464: 	scene->inst_count++;
	.loc 1 464 19 view .LVU370
	adds	r2, r3, #1	@ _23, _1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:463: 	scene->instances[scene->inst_count] = inst;
	.loc 1 463 38 view .LVU371
	str	r5, [r1, r3, lsl #2]	@ inst, *_22
	.loc 1 464 2 is_stmt 1 view .LVU372
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:464: 	scene->inst_count++;
	.loc 1 464 19 is_stmt 0 view .LVU373
	str	r2, [r4, #152]	@ _23, scene_26(D)->inst_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:465: }
	.loc 1 465 1 view .LVU374
	pop	{r3, r4, r5, pc}	@
.LVL116:
.L78:
	.loc 1 456 3 is_stmt 1 view .LVU375
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:456: 		scene->inst_cap = scene->inst_count + 32;
	.loc 1 456 39 is_stmt 0 view .LVU376
	adds	r3, r3, #32	@ _3, _1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:457: 		scene->instances = plat_realloc(scene->instances, scene->inst_cap * sizeof(scene->instances[0]));
	.loc 1 457 22 view .LVU377
	ldr	r0, [r0, #160]	@, scene_26(D)->instances
.LVL117:
	.loc 1 457 22 view .LVU378
	lsls	r1, r3, #2	@, _3,
.LVL118:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:456: 		scene->inst_cap = scene->inst_count + 32;
	.loc 1 456 19 view .LVU379
	str	r3, [r4, #156]	@ _3, scene_26(D)->inst_cap
	.loc 1 457 3 is_stmt 1 view .LVU380
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:457: 		scene->instances = plat_realloc(scene->instances, scene->inst_cap * sizeof(scene->instances[0]));
	.loc 1 457 22 is_stmt 0 view .LVU381
	bl	plat_realloc		@
.LVL119:
	mov	r3, r0	@ _7,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:458: 		plat_free(scene->tmp_inst_order_table1);
	.loc 1 458 3 view .LVU382
	ldr	r0, [r4, #164]	@, scene_26(D)->tmp_inst_order_table1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:457: 		scene->instances = plat_realloc(scene->instances, scene->inst_cap * sizeof(scene->instances[0]));
	.loc 1 457 20 discriminator 1 view .LVU383
	str	r3, [r4, #160]	@ _7, scene_26(D)->instances
	.loc 1 458 3 is_stmt 1 view .LVU384
	bl	plat_free		@
.LVL120:
	.loc 1 459 3 view .LVU385
	ldr	r0, [r4, #168]	@, scene_26(D)->tmp_inst_order_table2
	bl	plat_free		@
.LVL121:
	.loc 1 460 3 view .LVU386
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:460: 		scene->tmp_inst_order_table1 = plat_malloc(scene->inst_cap * sizeof(scene->tmp_inst_order_table1[0]));
	.loc 1 460 62 is_stmt 0 view .LVU387
	ldr	r0, [r4, #156]	@ scene_26(D)->inst_cap, scene_26(D)->inst_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:460: 		scene->tmp_inst_order_table1 = plat_malloc(scene->inst_cap * sizeof(scene->tmp_inst_order_table1[0]));
	.loc 1 460 34 view .LVU388
	lsls	r0, r0, #2	@, scene_26(D)->inst_cap,
	bl	plat_malloc		@
.LVL122:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:461: 		scene->tmp_inst_order_table2 = plat_malloc(scene->inst_cap * sizeof(scene->tmp_inst_order_table2[0]));
	.loc 1 461 62 view .LVU389
	ldr	r3, [r4, #156]	@ scene_26(D)->inst_cap, scene_26(D)->inst_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:460: 		scene->tmp_inst_order_table1 = plat_malloc(scene->inst_cap * sizeof(scene->tmp_inst_order_table1[0]));
	.loc 1 460 32 discriminator 1 view .LVU390
	str	r0, [r4, #164]	@ _13, scene_26(D)->tmp_inst_order_table1
	.loc 1 461 3 is_stmt 1 view .LVU391
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:461: 		scene->tmp_inst_order_table2 = plat_malloc(scene->inst_cap * sizeof(scene->tmp_inst_order_table2[0]));
	.loc 1 461 34 is_stmt 0 view .LVU392
	lsls	r0, r3, #2	@, scene_26(D)->inst_cap,
	bl	plat_malloc		@
.LVL123:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:463: 	scene->instances[scene->inst_count] = inst;
	.loc 1 463 24 view .LVU393
	ldr	r3, [r4, #152]	@ _1, scene_26(D)->inst_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:461: 		scene->tmp_inst_order_table2 = plat_malloc(scene->inst_cap * sizeof(scene->tmp_inst_order_table2[0]));
	.loc 1 461 32 discriminator 1 view .LVU394
	str	r0, [r4, #168]	@ _17, scene_26(D)->tmp_inst_order_table2
	b	.L76		@
	.cfi_endproc
.LFE55:
	.size	scene_add_mesh, .-scene_add_mesh
	.section	.text.scene_add_line,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	scene_add_line
	.syntax unified
	.thumb
	.thumb_func
	.type	scene_add_line, %function
scene_add_line:
.LVL124:
.LFB56:
	.loc 1 468 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 469 2 view .LVU396
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:469: 	if (scene->line_count + 2 > scene->line_cap) {
	.loc 1 469 11 is_stmt 0 view .LVU397
	ldr	r3, [r0, #172]	@ _1, scene_20(D)->line_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:469: 	if (scene->line_count + 2 > scene->line_cap) {
	.loc 1 469 5 view .LVU398
	ldr	r2, [r0, #176]	@ scene_20(D)->line_cap, scene_20(D)->line_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:469: 	if (scene->line_count + 2 > scene->line_cap) {
	.loc 1 469 28 view .LVU399
	adds	r1, r3, #1	@ _2, _1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:468: {
	.loc 1 468 1 view .LVU400
	push	{r4, lr}	@
.LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:469: 	if (scene->line_count + 2 > scene->line_cap) {
	.loc 1 469 5 view .LVU401
	cmp	r1, r2	@ _2, scene_20(D)->line_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:468: {
	.loc 1 468 1 view .LVU402
	sub	sp, sp, #24	@,,
.LCFI22:
	.cfi_def_cfa_offset 32
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:468: {
	.loc 1 468 1 view .LVU403
	mov	r4, r0	@ scene, scene
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:471: 		scene->line_buf = plat_realloc(scene->line_buf, scene->line_cap * sizeof(scene->line_buf[0]));
	.loc 1 471 39 view .LVU404
	ldr	r0, [r0, #180]	@ prephitmp_38, scene_20(D)->line_buf
.LVL125:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:468: {
	.loc 1 468 1 view .LVU405
	vstr.32	s0, [sp, #12]	@ a, a
	vstr.32	s1, [sp, #16]	@ a, a
	vstr.32	s2, [sp, #20]	@ a, a
	vstr.32	s3, [sp]	@ b, b
	vstr.32	s4, [sp, #4]	@ b, b
	vstr.32	s5, [sp, #8]	@ b, b
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:469: 	if (scene->line_count + 2 > scene->line_cap) {
	.loc 1 469 5 view .LVU406
	bge	.L82		@,
.L80:
	.loc 1 473 2 is_stmt 1 view .LVU407
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:473: 	scene->line_buf[scene->line_count + 0] = a;
	.loc 1 473 17 is_stmt 0 view .LVU408
	add	r2, r3, r3, lsl #1	@ _12, _1, _1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:475: 	scene->line_count += 2;
	.loc 1 475 20 view .LVU409
	add	ip, r3, #2	@ _17, _1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:473: 	scene->line_buf[scene->line_count + 0] = a;
	.loc 1 473 41 view .LVU410
	add	r3, r0, r2, lsl #2	@ tmp144, prephitmp_38, _12,
	add	r2, sp, #24	@ tmp159,,
	ldmdb	r2, {r0, r1, r2}	@ tmp159,,,
	stm	r3, {r0, r1, r2}	@ tmp144,,,
	.loc 1 474 2 is_stmt 1 view .LVU411
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:474: 	scene->line_buf[scene->line_count + 1] = b;
	.loc 1 474 41 is_stmt 0 view .LVU412
	adds	r3, r3, #12	@ tmp147, tmp144,
	ldm	sp, {r0, r1, r2}	@,,,
	stm	r3, {r0, r1, r2}	@ tmp147,,,
	.loc 1 475 2 is_stmt 1 view .LVU413
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:475: 	scene->line_count += 2;
	.loc 1 475 20 is_stmt 0 view .LVU414
	str	ip, [r4, #172]	@ _17, scene_20(D)->line_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:476: }
	.loc 1 476 1 view .LVU415
	add	sp, sp, #24	@,,
.LCFI23:
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed	@
	pop	{r4, pc}	@
.LVL126:
.L82:
.LCFI24:
	.cfi_restore_state
	.loc 1 470 3 is_stmt 1 view .LVU416
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:470: 		scene->line_cap = scene->line_count + 32;
	.loc 1 470 39 is_stmt 0 view .LVU417
	adds	r3, r3, #32	@ _4, _1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:471: 		scene->line_buf = plat_realloc(scene->line_buf, scene->line_cap * sizeof(scene->line_buf[0]));
	.loc 1 471 67 view .LVU418
	add	r1, r3, r3, lsl #1	@ _7, _4, _4,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:470: 		scene->line_cap = scene->line_count + 32;
	.loc 1 470 19 view .LVU419
	str	r3, [r4, #176]	@ _4, scene_20(D)->line_cap
	.loc 1 471 3 is_stmt 1 view .LVU420
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:471: 		scene->line_buf = plat_realloc(scene->line_buf, scene->line_cap * sizeof(scene->line_buf[0]));
	.loc 1 471 21 is_stmt 0 view .LVU421
	lsls	r1, r1, #2	@, _7,
	bl	plat_realloc		@
.LVL127:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:473: 	scene->line_buf[scene->line_count + 0] = a;
	.loc 1 473 23 view .LVU422
	ldr	r3, [r4, #172]	@ _1, scene_20(D)->line_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:471: 		scene->line_buf = plat_realloc(scene->line_buf, scene->line_cap * sizeof(scene->line_buf[0]));
	.loc 1 471 19 discriminator 1 view .LVU423
	str	r0, [r4, #180]	@ prephitmp_38, scene_20(D)->line_buf
	b	.L80		@
	.cfi_endproc
.LFE56:
	.size	scene_add_line, .-scene_add_line
	.section	.text.scene_draw,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	scene_draw
	.syntax unified
	.thumb
	.thumb_func
	.type	scene_draw, %function
scene_draw:
.LVL128:
.LFB57:
	.loc 1 480 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 481 2 view .LVU425
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:480: {
	.loc 1 480 1 is_stmt 0 view .LVU426
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI25:
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
	vpush.64	{d8, d9, d10, d11, d12}	@
.LCFI26:
	.cfi_def_cfa_offset 76
	.cfi_offset 80, -76
	.cfi_offset 81, -72
	.cfi_offset 82, -68
	.cfi_offset 83, -64
	.cfi_offset 84, -60
	.cfi_offset 85, -56
	.cfi_offset 86, -52
	.cfi_offset 87, -48
	.cfi_offset 88, -44
	.cfi_offset 89, -40
	sub	sp, sp, #124	@,,
.LCFI27:
	.cfi_def_cfa_offset 200
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:481: 	scene->stats_visible_tris = 0;
	.loc 1 481 28 view .LVU427
	movs	r5, #0	@ tmp538,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:480: {
	.loc 1 480 1 view .LVU428
	mov	fp, r0	@ scene, scene
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:481: 	scene->stats_visible_tris = 0;
	.loc 1 481 28 view .LVU429
	str	r5, [r0, #184]	@ tmp538, scene_68(D)->stats_visible_tris
	.loc 1 484 2 is_stmt 1 view .LVU430
	.loc 1 485 2 view .LVU431
	.loc 1 486 2 view .LVU432
.LBB328:
	.loc 1 486 7 view .LVU433
.LVL129:
	.loc 1 486 20 discriminator 1 view .LVU434
.LBE328:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:480: {
	.loc 1 480 1 is_stmt 0 view .LVU435
	str	r3, [sp, #44]	@ draw_flags, %sfp
	strd	r1, r2, [sp, #36]	@ buffer, rowstride,,
.LBB344:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:486: 	for (int i = 0; i < scene->inst_count; ++i, ++inst)
	.loc 1 486 20 discriminator 1 view .LVU436
	ldr	r1, [r0, #152]	@ scene_68(D)->inst_count, scene_68(D)->inst_count
.LVL130:
	.loc 1 486 20 discriminator 1 view .LVU437
	cmp	r1, r5	@ scene_68(D)->inst_count,
	ble	.L84		@,
	ldr	r7, [r0, #160]	@ scene_68(D)->instances, scene_68(D)->instances
.LBE344:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:485: 	int valid_inst_count = 0;
	.loc 1 485 6 view .LVU438
	mov	r8, r5	@ valid_inst_count, i
.LBB345:
.LBB329:
.LBB330:
.LBB331:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:254: 	bits.u = (bits.u & 0xFFFF0000) | index;
	.loc 1 254 19 view .LVU439
	ldr	r4, .L224	@ tmp1006,
	subs	r7, r7, #4	@ ivtmp.302, scene_68(D)->instances,
.LVL131:
.L86:
	.loc 1 254 19 view .LVU440
.LBE331:
.LBE330:
	.loc 1 488 3 is_stmt 1 view .LVU441
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:488: 		const Mesh* mesh = (*inst)->mesh;
	.loc 1 488 23 is_stmt 0 view .LVU442
	ldr	r3, [r7, #4]!	@ _1, MEM[(const struct MeshInstance * *)_725]
.LVL132:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:494: 		scene->tmp_inst_order_table1[valid_inst_count++] = pack_depth_index(-z, i);
	.loc 1 494 48 view .LVU443
	mov	r9, r8	@ _814, valid_inst_count
	.loc 1 491 3 is_stmt 1 view .LVU444
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:491: 		float3 center_local = xform_transform_pt(&(*inst)->tr, mesh->center);
	.loc 1 491 25 is_stmt 0 view .LVU445
	adds	r0, r3, #4	@, _1,
.LVL133:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:488: 		const Mesh* mesh = (*inst)->mesh;
	.loc 1 488 15 view .LVU446
	ldr	r3, [r3]	@ mesh, _1->mesh
.LVL134:
	.loc 1 489 3 is_stmt 1 view .LVU447
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:489: 		if (!mesh)
	.loc 1 489 6 is_stmt 0 view .LVU448
	cbz	r3, .L85	@ mesh,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:491: 		float3 center_local = xform_transform_pt(&(*inst)->tr, mesh->center);
	.loc 1 491 25 view .LVU449
	vldr.32	s2, [r3, #68]	@, mesh_93->center
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:494: 		scene->tmp_inst_order_table1[valid_inst_count++] = pack_depth_index(-z, i);
	.loc 1 494 48 view .LVU450
	add	r8, r8, #1	@ valid_inst_count, valid_inst_count,
.LVL135:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:491: 		float3 center_local = xform_transform_pt(&(*inst)->tr, mesh->center);
	.loc 1 491 25 view .LVU451
	vldr.32	s0, [r3, #60]	@, mesh_93->center
	vldr.32	s1, [r3, #64]	@, mesh_93->center
	bl	xform_transform_pt		@
.LVL136:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:492: 		float3 center = xform_transform_pt(&scene->view_xform, center_local);
	.loc 1 492 19 view .LVU452
	add	r0, fp, #48	@, scene,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:491: 		float3 center_local = xform_transform_pt(&(*inst)->tr, mesh->center);
	.loc 1 491 25 view .LVU453
	vstr.32	s0, [sp, #96]	@ tmp1013, MEM[(struct float3 *)_382]
	vstr.32	s1, [sp, #100]	@ tmp1014, MEM[(struct float3 *)_382]
	vstr.32	s2, [sp, #104]	@ tmp1015, MEM[(struct float3 *)_382]
	.loc 1 492 3 is_stmt 1 view .LVU454
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:492: 		float3 center = xform_transform_pt(&scene->view_xform, center_local);
	.loc 1 492 19 is_stmt 0 view .LVU455
	bl	xform_transform_pt		@
.LVL137:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:493: 		float z = center.z + (*inst)->sort_bias;
	.loc 1 493 31 view .LVU456
	ldr	r3, [r7]	@ MEM[(const struct MeshInstance * *)_725], MEM[(const struct MeshInstance * *)_725]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:494: 		scene->tmp_inst_order_table1[valid_inst_count++] = pack_depth_index(-z, i);
	.loc 1 494 31 view .LVU457
	ldr	r2, [fp, #164]	@ scene_68(D)->tmp_inst_order_table1, scene_68(D)->tmp_inst_order_table1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:493: 		float z = center.z + (*inst)->sort_bias;
	.loc 1 493 9 view .LVU458
	vldr.32	s15, [r3, #64]	@ _5->sort_bias, _5->sort_bias
	ldr	r1, [fp, #152]	@ scene_68(D)->inst_count, scene_68(D)->inst_count
	vadd.f32	s15, s15, s2	@ z_96, _5->sort_bias, tmp1018
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:492: 		float3 center = xform_transform_pt(&scene->view_xform, center_local);
	.loc 1 492 19 view .LVU459
	vstr.32	s0, [sp, #108]	@ tmp1016, MEM[(struct float3 *)_384]
	vstr.32	s1, [sp, #112]	@ tmp1017, MEM[(struct float3 *)_384]
	vstr.32	s2, [sp, #116]	@ tmp1018, MEM[(struct float3 *)_384]
	.loc 1 493 3 is_stmt 1 view .LVU460
.LVL138:
	.loc 1 494 3 view .LVU461
.LBB342:
.LBI330:
	.loc 1 246 24 view .LVU462
.LBB340:
	.loc 1 248 2 view .LVU463
	.loc 1 250 2 view .LVU464
	.loc 1 251 2 view .LVU465
.LBB332:
.LBI332:
	.loc 2 118 24 view .LVU466
.LBB333:
	.loc 2 121 2 view .LVU467
	.loc 2 122 2 view .LVU468
.LBE333:
.LBE332:
.LBE340:
.LBE342:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:494: 		scene->tmp_inst_order_table1[valid_inst_count++] = pack_depth_index(-z, i);
	.loc 1 494 54 is_stmt 0 view .LVU469
	vneg.f32	s15, s15	@ _7, z_96
.LVL139:
.LBB343:
.LBB341:
.LBB335:
.LBB334:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:122: 	asm("vcvtt.f16.f32 %0, %1" : "=t"(bits.f) : "t"(x));
	.loc 2 122 2 view .LVU470
	.syntax unified
@ 122 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	vcvtt.f16.f32 s15, s15	@ tmp557, _7
@ 0 "" 2
	.thumb
	.syntax unified
	vmov	r0, s15	@ int	@ bits, tmp557
.LVL140:
	.loc 2 123 2 is_stmt 1 view .LVU471
	.loc 2 123 2 is_stmt 0 view .LVU472
.LBE334:
.LBE335:
	.loc 1 252 2 is_stmt 1 view .LVU473
.LBB336:
.LBI336:
	.loc 1 240 24 view .LVU474
.LBB337:
	.loc 1 242 2 view .LVU475
	.loc 1 243 2 view .LVU476
	.loc 1 243 2 is_stmt 0 view .LVU477
.LBE337:
.LBE336:
	.loc 1 254 2 is_stmt 1 view .LVU478
	.loc 1 255 2 view .LVU479
.LBB339:
.LBB338:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:242: 	uint32_t mask = -((int32_t)(f >> 31)) | 0x80000000;
	.loc 1 242 18 is_stmt 0 view .LVU480
	asrs	r3, r0, #31	@ _106, bits,
.LVL141:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:242: 	uint32_t mask = -((int32_t)(f >> 31)) | 0x80000000;
	.loc 1 242 11 view .LVU481
	orr	r3, r3, #-2147483648	@ _107, _106,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:243: 	return f ^ mask;
	.loc 1 243 11 view .LVU482
	eors	r3, r3, r0	@, _109, _107, bits
.LBE338:
.LBE339:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:254: 	bits.u = (bits.u & 0xFFFF0000) | index;
	.loc 1 254 19 view .LVU483
	ands	r3, r3, r4	@, _110, _109, tmp1006
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:254: 	bits.u = (bits.u & 0xFFFF0000) | index;
	.loc 1 254 33 view .LVU484
	orrs	r3, r3, r5	@, _111, _110, i
.LBE341:
.LBE343:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:494: 		scene->tmp_inst_order_table1[valid_inst_count++] = pack_depth_index(-z, i);
	.loc 1 494 52 discriminator 1 view .LVU485
	str	r3, [r2, r9, lsl #2]	@ _111, *_12
.LVL142:
.L85:
	.loc 1 494 52 discriminator 1 view .LVU486
.LBE329:
	.loc 1 486 44 is_stmt 1 discriminator 2 view .LVU487
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:486: 	for (int i = 0; i < scene->inst_count; ++i, ++inst)
	.loc 1 486 41 is_stmt 0 discriminator 2 view .LVU488
	adds	r5, r5, #1	@ i, i,
.LVL143:
	.loc 1 486 20 is_stmt 1 discriminator 1 view .LVU489
	cmp	r1, r5	@ scene_68(D)->inst_count, i
	bgt	.L86		@,
	.loc 1 486 20 is_stmt 0 discriminator 1 view .LVU490
.LBE345:
	.loc 1 496 2 is_stmt 1 view .LVU491
	mov	r2, r8	@, valid_inst_count
.LBB346:
	str	r8, [sp, #52]	@ valid_inst_count, %sfp
.LBE346:
	ldrd	r0, r1, [fp, #164]	@,, scene,
.LVL144:
	.loc 1 496 2 is_stmt 0 view .LVU492
	bl	radixsort_upper16keys		@
.LVL145:
	.loc 1 499 2 is_stmt 1 view .LVU493
.LBB347:
	.loc 1 499 7 view .LVU494
	.loc 1 499 20 discriminator 1 view .LVU495
	cmp	r8, #0	@ valid_inst_count
	beq	.L88	@
.LBB348:
.LBB349:
.LBB350:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:336: 	const float proj_add_x = 1.6666666f * scene->centerx * scene_scale;
	.loc 1 336 14 is_stmt 0 view .LVU496
	vldr.32	s20, .L224+4	@ tmp999,
.LBE350:
.LBE349:
.LBE348:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:499: 	for (int i = 0; i < valid_inst_count; ++i)
	.loc 1 499 11 view .LVU497
	movs	r7, #0	@ i,
.LVL146:
.LBB481:
.LBB475:
.LBB469:
.LBB351:
.LBB352:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:343: 		if (pz >= k_min_z)
	.loc 1 343 6 view .LVU498
	vldr.32	s17, .L224+8	@ tmp1000,
.LBE352:
.LBE351:
.LBB357:
.LBB358:
.LBB359:
.LBB360:
.LBB361:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:226: 			int color = clamp_i((int)(brightness * 255.0f), 0, 255);
	.loc 1 226 41 view .LVU499
	vldr.32	s19, .L224+12	@ tmp1001,
.LBE361:
.LBB366:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:219: 			int pat_idx = clamp_i((int)(brightness * 32.99f), 0, 32);
	.loc 1 219 43 view .LVU500
	vldr.32	s18, .L224+16	@ tmp1002,
.LVL147:
.L89:
	.loc 1 219 43 view .LVU501
.LBE366:
.LBE360:
.LBE359:
.LBE358:
.LBE357:
.LBE469:
.LBE475:
	.loc 1 501 3 is_stmt 1 view .LVU502
	.loc 1 502 3 view .LVU503
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:502: 		const MeshInstance* inst = scene->instances[index];
	.loc 1 502 23 is_stmt 0 view .LVU504
	ldrd	r3, r2, [fp, #160]	@ scene_68(D)->instances, scene_68(D)->tmp_inst_order_table1, scene,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:502: 		const MeshInstance* inst = scene->instances[index];
	.loc 1 502 46 view .LVU505
	ldrh	r2, [r2, r7, lsl #2]	@ _113, *_20
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:502: 		const MeshInstance* inst = scene->instances[index];
	.loc 1 502 23 view .LVU506
	ldr	r0, [r3, r2, lsl #2]	@ inst, *_24
.LBB476:
.LBB470:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:265: 	Mesh* mesh = inst->mesh;
	.loc 1 265 8 view .LVU507
	ldr	r3, [r0]	@ mesh, inst_89->mesh
.LBE470:
.LBE476:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:502: 		const MeshInstance* inst = scene->instances[index];
	.loc 1 502 23 view .LVU508
	str	r0, [sp, #12]	@ inst, %sfp
.LVL148:
	.loc 1 503 3 is_stmt 1 view .LVU509
.LBB477:
.LBI349:
	.loc 1 263 13 view .LVU510
.LBB471:
	.loc 1 265 2 view .LVU511
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:265: 	Mesh* mesh = inst->mesh;
	.loc 1 265 8 is_stmt 0 view .LVU512
	str	r3, [sp, #24]	@ mesh, %sfp
.LVL149:
	.loc 1 266 2 is_stmt 1 view .LVU513
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:266: 	if (!mesh)
	.loc 1 266 5 is_stmt 0 view .LVU514
	cmp	r3, #0	@ mesh
	beq	.L91	@
	.loc 1 268 2 is_stmt 1 view .LVU515
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:272: 	if (scene->tmp_points_cap < mesh->vertex_count) {
	.loc 1 272 34 is_stmt 0 view .LVU516
	ldr	r1, [r3]	@ _119, mesh_114->vertex_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:268: 	const xform* matrix = &inst->tr;
	.loc 1 268 15 view .LVU517
	adds	r4, r0, #4	@ matrix, inst,
.LVL150:
	.loc 1 269 2 is_stmt 1 view .LVU518
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:272: 	if (scene->tmp_points_cap < mesh->vertex_count) {
	.loc 1 272 5 is_stmt 0 view .LVU519
	ldr	r3, [fp, #120]	@ scene_68(D)->tmp_points_cap, scene_68(D)->tmp_points_cap
.LVL151:
	.loc 1 272 5 view .LVU520
	ldrb	r2, [r0, #56]	@ zero_extendqisi2	@ inst_89->flags, inst_89->flags
	cmp	r3, r1	@ scene_68(D)->tmp_points_cap, _119
	and	r10, r2, #8	@ _117, inst_89->flags,
.LVL152:
	.loc 1 272 2 is_stmt 1 view .LVU521
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:272: 	if (scene->tmp_points_cap < mesh->vertex_count) {
	.loc 1 272 5 is_stmt 0 view .LVU522
	blt	.L212		@,
.LVL153:
.L92:
	.loc 1 277 2 is_stmt 1 view .LVU523
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:277: 	if (scene->order_cap < mesh->tri_count) {
	.loc 1 277 29 is_stmt 0 view .LVU524
	ldr	r3, [sp, #24]	@ mesh, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:277: 	if (scene->order_cap < mesh->tri_count) {
	.loc 1 277 5 view .LVU525
	ldr	r2, [fp, #132]	@ scene_68(D)->order_cap, scene_68(D)->order_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:277: 	if (scene->order_cap < mesh->tri_count) {
	.loc 1 277 29 view .LVU526
	ldr	r3, [r3, #12]	@ _130, mesh_114->tri_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:277: 	if (scene->order_cap < mesh->tri_count) {
	.loc 1 277 5 view .LVU527
	cmp	r2, r3	@ scene_68(D)->order_cap, _130
	blt	.L213		@,
.L93:
	.loc 1 284 2 is_stmt 1 view .LVU528
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:284: 	if (use_silhouette) {
	.loc 1 284 5 is_stmt 0 view .LVU529
	cmp	r10, #0	@ _117
	beq	.L95	@
.LBB406:
	.loc 1 286 3 is_stmt 1 view .LVU530
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:286: 		int mesh_tri_mask_count = ((mesh->tri_count * 3) + 31) >> 5;
	.loc 1 286 47 is_stmt 0 view .LVU531
	ldr	r3, [sp, #24]	@ mesh, %sfp
	ldr	r3, [r3, #12]	@ mesh_114->tri_count, mesh_114->tri_count
	add	r3, r3, r3, lsl #1	@ _142, mesh_114->tri_count, mesh_114->tri_count,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:289: 			plat_free(scene->tmp_vis_tris_mask);
	.loc 1 289 19 view .LVU532
	ldrd	r2, r0, [fp, #144]	@ scene_68(D)->vis_tris_mask_cap, prephitmp_770, scene,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:286: 		int mesh_tri_mask_count = ((mesh->tri_count * 3) + 31) >> 5;
	.loc 1 286 52 view .LVU533
	adds	r3, r3, #31	@ _143, _142,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:287: 		if (scene->vis_tris_mask_cap < mesh_tri_mask_count) {
	.loc 1 287 6 view .LVU534
	cmp	r2, r3, asr #5	@ scene_68(D)->vis_tris_mask_cap, _143,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:286: 		int mesh_tri_mask_count = ((mesh->tri_count * 3) + 31) >> 5;
	.loc 1 286 7 view .LVU535
	asr	r5, r3, #5	@ mesh_tri_mask_count, _143,
.LVL154:
	.loc 1 287 3 is_stmt 1 view .LVU536
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:287: 		if (scene->vis_tris_mask_cap < mesh_tri_mask_count) {
	.loc 1 287 6 is_stmt 0 view .LVU537
	blt	.L214		@,
.L96:
	.loc 1 292 3 is_stmt 1 view .LVU538
	lsls	r2, r5, #2	@, mesh_tri_mask_count,
	movs	r1, #0	@,
	bl	memset		@
.LVL155:
	.loc 1 295 3 view .LVU539
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:295: 		if (!mesh->adjacency)
	.loc 1 295 6 is_stmt 0 view .LVU540
	ldr	r3, [sp, #24]	@ mesh, %sfp
	ldr	r3, [r3, #32]	@ mesh_114->adjacency, mesh_114->adjacency
	cmp	r3, #0	@ mesh_114->adjacency
	beq	.L215	@
.LVL156:
.L95:
	.loc 1 295 6 view .LVU541
.LBE406:
	.loc 1 303 2 is_stmt 1 view .LVU542
.LBB407:
.LBI407:
	.loc 2 175 19 view .LVU543
.LBB408:
	.loc 2 177 2 view .LVU544
	.loc 2 178 2 view .LVU545
	.loc 2 179 2 view .LVU546
	.loc 2 179 2 is_stmt 0 view .LVU547
.LBE408:
.LBE407:
	.loc 1 304 2 is_stmt 1 view .LVU548
.LBB411:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:307: 		const uint32_t* src_vtx = (const uint32_t*)mesh->vertices + frame * mesh->vertex_count;
	.loc 1 307 75 is_stmt 0 view .LVU549
	ldr	r5, [sp, #24]	@ mesh, %sfp
.LBE411:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:303: 	int frame = clamp_i(inst->frame, 0, mesh->vertex_frame_count - 1);
	.loc 1 303 14 view .LVU550
	ldrd	r2, r3, [r5]	@ pretmp_810, mesh_114->vertex_frame_count, mesh
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:304: 	if ((mesh->flags & MeshFlag_FloatVertices) == 0)
	.loc 1 304 5 view .LVU551
	ldrb	r6, [r5, #72]	@ zero_extendqisi2	@ mesh_114->flags, mesh_114->flags
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:303: 	int frame = clamp_i(inst->frame, 0, mesh->vertex_frame_count - 1);
	.loc 1 303 14 view .LVU552
	add	r8, r3, #-1	@ _165, mesh_114->vertex_frame_count,
.LBB437:
.LBB409:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:177: 	if (v < a) v = a;
	.loc 2 177 5 view .LVU553
	ldr	r3, [sp, #12]	@ inst, %sfp
.LBE409:
.LBE437:
.LBB438:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:307: 		const uint32_t* src_vtx = (const uint32_t*)mesh->vertices + frame * mesh->vertex_count;
	.loc 1 307 50 view .LVU554
	ldr	r1, [r5, #8]	@ pretmp_809, mesh_114->vertices
.LBE438:
.LBB439:
.LBB410:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:177: 	if (v < a) v = a;
	.loc 2 177 5 view .LVU555
	ldr	r0, [r3, #52]	@ inst_89->frame, inst_89->frame
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:178: 	if (v > b) v = b;
	.loc 2 178 5 view .LVU556
	mov	r3, r8	@ _165, _165
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:177: 	if (v < a) v = a;
	.loc 2 177 5 view .LVU557
	bic	r0, r0, r0, asr #31	@ _166, inst_89->frame
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:178: 	if (v > b) v = b;
	.loc 2 178 5 view .LVU558
	cmp	r8, r0	@ _165, _166
	it	ge
	movge	r3, r0	@ _165, _166
.LBE410:
.LBE439:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:304: 	if ((mesh->flags & MeshFlag_FloatVertices) == 0)
	.loc 1 304 5 view .LVU559
	ands	r6, r6, #1	@ tmp634, mesh_114->flags,
.LBB440:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:307: 		const uint32_t* src_vtx = (const uint32_t*)mesh->vertices + frame * mesh->vertex_count;
	.loc 1 307 69 view .LVU560
	mul	r8, r2, r3	@ _812, pretmp_810, _167
.LBE440:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:304: 	if ((mesh->flags & MeshFlag_FloatVertices) == 0)
	.loc 1 304 5 view .LVU561
	bne	.L98		@,
.LBB441:
	.loc 1 307 3 is_stmt 1 view .LVU562
.LVL157:
	.loc 1 308 3 view .LVU563
	.loc 1 309 3 view .LVU564
.LBB412:
.LBI412:
	.loc 2 306 22 view .LVU565
.LBB413:
	.loc 2 308 2 view .LVU566
	.loc 2 308 2 is_stmt 0 view .LVU567
.LBE413:
.LBE412:
.LBB416:
.LBI416:
	.loc 2 314 22 is_stmt 1 view .LVU568
.LBB417:
	.loc 2 316 2 view .LVU569
	.loc 2 316 2 is_stmt 0 view .LVU570
.LBE417:
.LBE416:
	.loc 1 310 3 is_stmt 1 view .LVU571
.LBB421:
	.loc 1 310 8 view .LVU572
	.loc 1 310 21 discriminator 1 view .LVU573
	cmp	r2, #0	@ pretmp_810,
	ble	.L104		@,
	ldr	r3, [sp, #24]	@ mesh, %sfp
.LBE421:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:307: 		const uint32_t* src_vtx = (const uint32_t*)mesh->vertices + frame * mesh->vertex_count;
	.loc 1 307 19 is_stmt 0 view .LVU574
	add	r8, r1, r8, lsl #2	@ src_vtx_175, pretmp_809, _812,
.LVL158:
.LBB431:
.LBB418:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:316: 	return f3(a.x * b.x, a.y * b.y, a.z * b.z);
	.loc 2 316 9 view .LVU575
	vldr.32	s15, .L224+20	@ tmp638,
	vldr.32	s25, [r3, #36]	@ v$x, mesh_114->bbox_min.x
	sub	r8, r8, #4	@ ivtmp.286, src_vtx_175,
	vldr.32	s24, [r3, #40]	@ v$y, mesh_114->bbox_min.y
	mov	r9, r3	@ mesh, mesh
	vldr.32	s23, [r3, #44]	@ v$z, mesh_114->bbox_min.z
.LBE418:
.LBE431:
.LBB432:
.LBB414:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:308: 	return f3(a.x - v.x, a.y - v.y, a.z - v.z);
	.loc 2 308 9 view .LVU576
	vldr.32	s22, [r3, #48]	@ mesh_114->bbox_max.x, mesh_114->bbox_max.x
	vldr.32	s21, [r3, #52]	@ mesh_114->bbox_max.y, mesh_114->bbox_max.y
	vldr.32	s16, [r3, #56]	@ mesh_114->bbox_max.z, mesh_114->bbox_max.z
	vsub.f32	s22, s22, s25	@ _182, mesh_114->bbox_max.x, v$x
	vsub.f32	s21, s21, s24	@ _183, mesh_114->bbox_max.y, v$y
.LBE414:
.LBE432:
.LBB433:
.LBB419:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:316: 	return f3(a.x * b.x, a.y * b.y, a.z * b.z);
	.loc 2 316 9 view .LVU577
	vldr.32	s14, .L224+24	@ tmp641,
.LBE419:
.LBE433:
.LBB434:
.LBB415:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:308: 	return f3(a.x - v.x, a.y - v.y, a.z - v.z);
	.loc 2 308 9 view .LVU578
	vsub.f32	s16, s16, s23	@ _184, mesh_114->bbox_max.z, v$z
.LBE415:
.LBE434:
.LBB435:
.LBB420:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:316: 	return f3(a.x * b.x, a.y * b.y, a.z * b.z);
	.loc 2 316 9 view .LVU579
	vmul.f32	s22, s22, s15	@ _185, _182, tmp638
	vmul.f32	s21, s21, s14	@ _186, _183, tmp641
	vmul.f32	s16, s16, s15	@ _187, _184, tmp638
.LVL159:
.L102:
	.loc 2 316 9 view .LVU580
.LBE420:
.LBE435:
.LBB436:
.LBB422:
	.loc 1 312 4 is_stmt 1 view .LVU581
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:312: 			const uint32_t v_bits = *src_vtx;
	.loc 1 312 19 is_stmt 0 view .LVU582
	ldr	r3, [r8, #4]!	@ v_bits, MEM[(const uint32_t *)_736]
.LVL160:
	.loc 1 313 4 is_stmt 1 view .LVU583
	.loc 1 314 4 view .LVU584
	.loc 1 315 4 view .LVU585
	.loc 1 316 4 view .LVU586
	.loc 1 317 4 view .LVU587
.LBB423:
.LBI423:
	.loc 2 302 22 view .LVU588
.LBB424:
	.loc 2 304 2 view .LVU589
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:304: 	return f3(a.x + v.x, a.y + v.y, a.z + v.z);
	.loc 2 304 9 is_stmt 0 view .LVU590
	vmov.f32	s0, s25	@ _203, v$x
	vmov.f32	s1, s24	@ _204, v$y
.LBE424:
.LBE423:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:318: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, v_pos));
	.loc 1 318 32 view .LVU591
	mov	r0, r4	@, matrix
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:313: 			const uint32_t v_bits_x = v_bits & 2047;
	.loc 1 313 19 view .LVU592
	ubfx	r2, r3, #0, #11	@ v_bits_x_190, v_bits,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:318: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, v_pos));
	.loc 1 318 32 view .LVU593
	vmov.f32	s2, s23	@ tmp654, v$z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:313: 			const uint32_t v_bits_x = v_bits & 2047;
	.loc 1 313 19 view .LVU594
	vmov	s15, r2	@ int	@ v_bits_x_190, v_bits_x_190
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:314: 			const uint32_t v_bits_y = (v_bits >> 11) & 1023;
	.loc 1 314 19 view .LVU595
	ubfx	r2, r3, #11, #10	@ v_bits_y_192, v_bits,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:315: 			const uint32_t v_bits_z = v_bits >> 21;
	.loc 1 315 19 view .LVU596
	lsrs	r3, r3, #21	@ v_bits_z_193, v_bits,
.LVL161:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:316: 			float3 v_pos = { (float)v_bits_x, (float)v_bits_y, (float)v_bits_z };
	.loc 1 316 21 view .LVU597
	vcvt.f32.s32	s15, s15	@ _195, v_bits_x_190
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:314: 			const uint32_t v_bits_y = (v_bits >> 11) & 1023;
	.loc 1 314 19 view .LVU598
	vmov	s14, r2	@ int	@ v_bits_y_192, v_bits_y_192
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:316: 			float3 v_pos = { (float)v_bits_x, (float)v_bits_y, (float)v_bits_z };
	.loc 1 316 38 view .LVU599
	vcvt.f32.s32	s14, s14	@ _197, v_bits_y_192
.LBB427:
.LBB425:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:304: 	return f3(a.x + v.x, a.y + v.y, a.z + v.z);
	.loc 2 304 9 view .LVU600
	vfma.f32	s0, s22, s15	@ _203, _185, _195
.LBE425:
.LBE427:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:316: 			float3 v_pos = { (float)v_bits_x, (float)v_bits_y, (float)v_bits_z };
	.loc 1 316 55 view .LVU601
	vmov	s15, r3	@ int	@ v_bits_z_193, v_bits_z_193
	vcvt.f32.s32	s15, s15	@ _199, v_bits_z_193
.LVL162:
.LBB428:
.LBB426:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:304: 	return f3(a.x + v.x, a.y + v.y, a.z + v.z);
	.loc 2 304 9 view .LVU602
	vfma.f32	s1, s21, s14	@ _204, _186, _197
.LVL163:
	.loc 2 304 9 view .LVU603
.LBE426:
.LBE428:
	.loc 1 318 4 is_stmt 1 view .LVU604
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:318: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, v_pos));
	.loc 1 318 32 is_stmt 0 view .LVU605
	vfma.f32	s2, s16, s15	@ tmp654, _187, _199
	vstr.32	s0, [sp, #72]	@ _203, v_pos.x
	vstr.32	s1, [sp, #76]	@ _204, v_pos.y
	vstr.32	s2, [sp, #80]	@ tmp654, v_pos.z
	bl	xform_transform_pt		@
.LVL164:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:318: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, v_pos));
	.loc 1 318 32 discriminator 1 view .LVU606
	add	r0, fp, #48	@, scene,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:318: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, v_pos));
	.loc 1 318 32 view .LVU607
	vstr.32	s0, [sp, #108]	@ tmp1025, MEM[(struct float3 *)_384]
	vstr.32	s1, [sp, #112]	@ tmp1026, MEM[(struct float3 *)_384]
	vstr.32	s2, [sp, #116]	@ tmp1027, MEM[(struct float3 *)_384]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:318: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, v_pos));
	.loc 1 318 32 discriminator 1 view .LVU608
	bl	xform_transform_pt		@
.LVL165:
	ldr	r3, [fp, #124]	@ ivtmp.278, scene_68(D)->tmp_view_points
	add	r2, r6, r6, lsl #1	@ tmp673, i, i,
.LBE422:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:310: 		for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 310 27 discriminator 1 view .LVU609
	ldr	r1, [r9]	@ _214, mesh_114->vertex_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:310: 		for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 310 43 discriminator 3 view .LVU610
	adds	r6, r6, #1	@ i, i,
.LVL166:
.LBB429:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:318: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, v_pos));
	.loc 1 318 32 discriminator 1 view .LVU611
	add	r2, r3, r2, lsl #2	@ tmp675, ivtmp.278, tmp673,
.LBE429:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:310: 		for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 310 21 discriminator 1 view .LVU612
	cmp	r6, r1	@ i, _214
.LBB430:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:318: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, v_pos));
	.loc 1 318 32 discriminator 1 view .LVU613
	vstr.32	s0, [r2]	@ tmp1028, *_211
	vstr.32	s1, [r2, #4]	@ tmp1029, *_211
	vstr.32	s2, [r2, #8]	@ tmp1030, *_211
	.loc 1 319 4 is_stmt 1 view .LVU614
.LVL167:
	.loc 1 319 4 is_stmt 0 view .LVU615
.LBE430:
	.loc 1 310 43 is_stmt 1 discriminator 3 view .LVU616
	.loc 1 310 21 discriminator 1 view .LVU617
	blt	.L102		@,
.LVL168:
.L103:
	.loc 1 310 21 is_stmt 0 discriminator 1 view .LVU618
.LBE436:
.LBE441:
	.loc 1 334 2 is_stmt 1 view .LVU619
	.loc 1 335 2 view .LVU620
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:335: 	const float scene_scale = scene->scale;
	.loc 1 335 14 is_stmt 0 view .LVU621
	vldr.32	s10, [fp, #116]	@ scene_scale, scene_68(D)->scale
.LVL169:
	.loc 1 336 2 is_stmt 1 view .LVU622
.LBB442:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:338: 	for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 338 20 is_stmt 0 discriminator 1 view .LVU623
	cmp	r1, #0	@ _214,
.LBE442:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:336: 	const float proj_add_x = 1.6666666f * scene->centerx * scene_scale;
	.loc 1 336 55 view .LVU624
	vldr.32	s13, [fp, #108]	@ scene_68(D)->centerx, scene_68(D)->centerx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:337: 	const float proj_add_y = scene->centery * scene_scale;
	.loc 1 337 14 view .LVU625
	vldr.32	s9, [fp, #112]	@ scene_68(D)->centery, scene_68(D)->centery
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:336: 	const float proj_add_x = 1.6666666f * scene->centerx * scene_scale;
	.loc 1 336 55 view .LVU626
	vmul.f32	s13, s10, s13	@ _233, scene_scale, scene_68(D)->centerx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:337: 	const float proj_add_y = scene->centery * scene_scale;
	.loc 1 337 14 view .LVU627
	vmul.f32	s9, s10, s9	@ proj_add_y, scene_scale, scene_68(D)->centery
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:336: 	const float proj_add_x = 1.6666666f * scene->centerx * scene_scale;
	.loc 1 336 14 view .LVU628
	vmul.f32	s13, s13, s20	@ proj_add_x, _233, tmp999
.LVL170:
	.loc 1 337 2 is_stmt 1 view .LVU629
	.loc 1 338 2 view .LVU630
.LBB443:
	.loc 1 338 7 view .LVU631
	.loc 1 338 20 discriminator 1 view .LVU632
	ble	.L104		@,
	add	r1, r1, r1, lsl #1	@ _743, _214, _214,
	ldr	r2, [fp, #128]	@ ivtmp.279, scene_68(D)->tmp_proj_points
	add	r1, r3, r1, lsl #2	@ _741, ivtmp.278, _743,
.LVL171:
.L108:
.LBB355:
	.loc 1 340 3 view .LVU633
	.loc 1 341 3 view .LVU634
	.loc 1 342 3 view .LVU635
.LBB353:
	.loc 1 345 4 view .LVU636
.LBE353:
	.loc 1 349 3 view .LVU637
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:342: 		const float pz = p->z;
	.loc 1 342 15 is_stmt 0 view .LVU638
	vldr.32	s15, [r3, #8]	@ pz, MEM[(float *)_748 + 8B]
.LVL172:
	.loc 1 343 3 is_stmt 1 view .LVU639
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:343: 		if (pz >= k_min_z)
	.loc 1 343 6 is_stmt 0 view .LVU640
	vcmp.f32	s15, s17	@ pz, tmp1000
	vmrs	APSR_nzcv, FPSCR
	blt	.L106		@,
.LBB354:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:345: 			const float inv_z = scene_scale / pz;
	.loc 1 345 16 view .LVU641
	vdiv.f32	s14, s10, s15	@ inv_z, scene_scale, pz
	.loc 1 346 4 is_stmt 1 view .LVU642
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:346: 			pp->x = p->x * inv_z + proj_add_x;
	.loc 1 346 10 is_stmt 0 view .LVU643
	vldr.32	s11, [r3]	@ MEM[(float *)_748], MEM[(float *)_748]
	vmov.f32	s12, s13	@ tmp708, proj_add_x
	vfma.f32	s12, s11, s14	@ tmp708, MEM[(float *)_748], inv_z
	vstr.32	s12, [r2]	@ tmp708, MEM[(float *)_493]
	.loc 1 347 4 is_stmt 1 view .LVU644
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:347: 			pp->y = p->y * inv_z + proj_add_y;
	.loc 1 347 10 is_stmt 0 view .LVU645
	vmov.f32	s12, s9	@ tmp710, proj_add_y
	vldr.32	s11, [r3, #4]	@ MEM[(float *)_748 + 4B], MEM[(float *)_748 + 4B]
	vfma.f32	s12, s11, s14	@ tmp710, MEM[(float *)_748 + 4B], inv_z
	vstr.32	s12, [r2, #4]	@ tmp710, MEM[(float *)_493 + 4B]
.L106:
	.loc 1 347 10 view .LVU646
.LBE354:
.LBE355:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:338: 	for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 338 20 discriminator 1 view .LVU647
	adds	r3, r3, #12	@ ivtmp.278, ivtmp.278,
.LVL173:
.LBB356:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:349: 		pp->z = pz;
	.loc 1 349 9 view .LVU648
	vstr.32	s15, [r2, #8]	@ pz, MEM[(float *)_745 + 8B]
.LBE356:
	.loc 1 338 42 is_stmt 1 discriminator 2 view .LVU649
	.loc 1 338 20 discriminator 1 view .LVU650
	adds	r2, r2, #12	@ ivtmp.279, ivtmp.279,
	cmp	r3, r1	@ ivtmp.278, _741
	bne	.L108		@,
.LVL174:
.L104:
	.loc 1 338 20 is_stmt 0 discriminator 1 view .LVU651
.LBE443:
	.loc 1 353 2 is_stmt 1 view .LVU652
	.loc 1 354 2 view .LVU653
	.loc 1 355 2 view .LVU654
.LBB444:
	.loc 1 355 7 view .LVU655
	.loc 1 355 20 discriminator 1 view .LVU656
	ldr	r3, [sp, #24]	@ mesh, %sfp
	ldr	r8, [r3, #12]	@ mesh_114->tri_count, mesh_114->tri_count
	cmp	r8, #0	@ mesh_114->tri_count,
	ble	.L216		@,
	ldr	r3, [sp, #24]	@ mesh, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:355: 	for (int i = 0; i < mesh->tri_count; ++i, ibPtr += 3)
	.loc 1 355 11 is_stmt 0 view .LVU657
	movs	r5, #0	@ i,
.LBB445:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:379: 			(y1 >= SCREEN_Y && y2 >= SCREEN_Y && y3 >= SCREEN_Y))
	.loc 1 379 8 view .LVU658
	vldr.32	s8, .L224+28	@ tmp997,
	ldr	r1, [r3, #16]	@ mesh_114->tris, mesh_114->tris
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:377: 			(x1 >= SCREEN_X && x2 >= SCREEN_X && x3 >= SCREEN_X) ||
	.loc 1 377 8 view .LVU659
	vldr.32	s9, .L224+32	@ tmp998,
	adds	r1, r1, #6	@ ivtmp.272, mesh_114->tris,
	ldr	ip, [fp, #128]	@ _259, scene_68(D)->tmp_proj_points
	ldr	r9, [fp, #136]	@ scene_68(D)->tmp_order_table1, scene_68(D)->tmp_order_table1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:397: 			scene->tmp_vis_tris_mask[i >> 5] |= 1u << (i & 31);
	.loc 1 397 43 view .LVU660
	strd	r10, r7, [sp, #16]	@ _117, i,,
	mov	r10, #0	@ vis_tri_count,
.LVL175:
	.loc 1 397 43 view .LVU661
	b	.L117		@
.L225:
	.align	2
.L224:
	.word	-65536
	.word	1070945621
	.word	1014350479
	.word	1132396544
	.word	1107555779
	.word	973082626
	.word	981475336
	.word	1131413504
	.word	1137180672
	.word	998277249
.LVL176:
.L218:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:376: 		if ((x1 < 0 && x2 < 0 && x3 < 0) ||
	.loc 1 376 25 discriminator 1 view .LVU662
	vcmp.f32	s12, #0	@ p2$x
	vmrs	APSR_nzcv, FPSCR
	bmi	.L109		@,
.L111:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:360: 		const float3 p0 = scene->tmp_proj_points[idx0];
	.loc 1 360 16 view .LVU663
	vldr.32	s10, [r7, #4]	@ p0$y, _262->y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:361: 		const float3 p1 = scene->tmp_proj_points[idx1];
	.loc 1 361 16 view .LVU664
	vldr.32	s15, [r6, #4]	@ p1$y, _268->y
.LVL177:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:377: 			(x1 >= SCREEN_X && x2 >= SCREEN_X && x3 >= SCREEN_X) ||
	.loc 1 377 42 discriminator 1 view .LVU665
	vcmp.f32	s10, #0	@ p0$y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:362: 		const float3 p2 = scene->tmp_proj_points[idx2];
	.loc 1 362 16 view .LVU666
	vldr.32	s11, [lr, #4]	@ p2$y, _274->y
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:377: 			(x1 >= SCREEN_X && x2 >= SCREEN_X && x3 >= SCREEN_X) ||
	.loc 1 377 42 discriminator 1 view .LVU667
	vmrs	APSR_nzcv, FPSCR
	bpl	.L113		@,
	.loc 1 377 42 discriminator 1 view .LVU668
	vcmp.f32	s15, #0	@ p1$y
	vmrs	APSR_nzcv, FPSCR
	bpl	.L113		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:378: 			(y1 < 0 && y2 < 0 && y3 < 0) ||
	.loc 1 378 22 view .LVU669
	vcmp.f32	s11, #0	@ p2$y
	vmrs	APSR_nzcv, FPSCR
	bmi	.L109		@,
.L114:
	.loc 1 383 3 is_stmt 1 view .LVU670
.LVL178:
	.loc 1 384 3 view .LVU671
	.loc 1 385 3 view .LVU672
	.loc 1 386 3 view .LVU673
	.loc 1 387 3 view .LVU674
	.loc 1 388 3 view .LVU675
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:385: 		float dx31 = x3 - x1;
	.loc 1 385 9 is_stmt 0 view .LVU676
	vsub.f32	s12, s12, s13	@ dx31_297, p2$x, p0$x
.LVL179:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:386: 		float dy21 = y2 - y1;
	.loc 1 386 9 view .LVU677
	vsub.f32	s15, s15, s10	@ dy21_298, p1$y, p0$y
.LVL180:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:383: 		float dx21 = x2 - x1;
	.loc 1 383 9 view .LVU678
	vsub.f32	s14, s14, s13	@ dx21_295, p1$x, p0$x
.LVL181:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:384: 		float dy31 = y3 - y1;
	.loc 1 384 9 view .LVU679
	vsub.f32	s11, s11, s10	@ dy31_296, p2$y, p0$y
.LVL182:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:388: 		if (d <= 0)
	.loc 1 388 6 view .LVU680
	vnmul.f32	s15, s15, s12	@ _585, dy21_298, dx31_297
.LVL183:
	.loc 1 388 6 view .LVU681
	vfma.f32	s15, s14, s11	@ tmp784, dx21_295, dy31_296
	vcmp.f32	s15, #0	@ tmp784
	vmrs	APSR_nzcv, FPSCR
	bls	.L109		@,
	.loc 1 392 3 is_stmt 1 view .LVU682
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 20 is_stmt 0 view .LVU683
	ldr	r4, [fp, #124]	@ _302, scene_68(D)->tmp_view_points
.LVL184:
	.loc 1 393 3 is_stmt 1 view .LVU684
.LBB446:
.LBI446:
	.loc 1 246 24 view .LVU685
.LBB447:
	.loc 1 248 2 view .LVU686
	.loc 1 250 2 view .LVU687
	.loc 1 251 2 view .LVU688
.LBB448:
.LBI448:
	.loc 2 118 24 view .LVU689
.LBB449:
	.loc 2 121 2 view .LVU690
	.loc 2 122 2 view .LVU691
.LBE449:
.LBE448:
.LBE447:
.LBE446:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 43 is_stmt 0 view .LVU692
	add	r2, r4, r2, lsl #2	@ tmp795, _302, _261,
.LVL185:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 76 view .LVU693
	add	r3, r4, r3, lsl #2	@ tmp796, _302, _267,
.LVL186:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 46 view .LVU694
	vldr.32	s15, [r2, #8]	@ _303->z, _303->z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 109 view .LVU695
	add	r4, r4, r0, lsl #2	@ tmp800, _302, _273,
.LVL187:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 46 view .LVU696
	vldr.32	s13, [r3, #8]	@ _305->z, _305->z
.LVL188:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 79 view .LVU697
	vldr.32	s14, [r4, #8]	@ _308->z, _308->z
.LVL189:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 46 view .LVU698
	vadd.f32	s15, s15, s13	@ _307, _303->z, _305->z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 79 view .LVU699
	vadd.f32	s15, s15, s14	@ _310, _307, _308->z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:392: 		float z = -(scene->tmp_view_points[idx0].z + scene->tmp_view_points[idx1].z + scene->tmp_view_points[idx2].z);
	.loc 1 392 9 view .LVU700
	vneg.f32	s15, s15	@ z_311, _310
.LBB457:
.LBB456:
.LBB451:
.LBB450:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:122: 	asm("vcvtt.f16.f32 %0, %1" : "=t"(bits.f) : "t"(x));
	.loc 2 122 2 view .LVU701
	.syntax unified
@ 122 "D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h" 1
	vcvtt.f16.f32 s15, s15	@ tmp794, z_311
@ 0 "" 2
	.thumb
	.syntax unified
	vmov	r2, s15	@ int	@ bits, tmp794
.LVL190:
	.loc 2 123 2 is_stmt 1 view .LVU702
	.loc 2 123 2 is_stmt 0 view .LVU703
.LBE450:
.LBE451:
	.loc 1 252 2 is_stmt 1 view .LVU704
.LBB452:
.LBI452:
	.loc 1 240 24 view .LVU705
.LBB453:
	.loc 1 242 2 view .LVU706
	.loc 1 243 2 view .LVU707
	.loc 1 243 2 is_stmt 0 view .LVU708
.LBE453:
.LBE452:
	.loc 1 254 2 is_stmt 1 view .LVU709
	.loc 1 255 2 view .LVU710
.LBB455:
.LBB454:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:242: 	uint32_t mask = -((int32_t)(f >> 31)) | 0x80000000;
	.loc 1 242 18 is_stmt 0 view .LVU711
	asrs	r3, r2, #31	@ _321, bits,
.LVL191:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:242: 	uint32_t mask = -((int32_t)(f >> 31)) | 0x80000000;
	.loc 1 242 11 view .LVU712
	orr	r3, r3, #-2147483648	@ _322, _321,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:243: 	return f ^ mask;
	.loc 1 243 11 view .LVU713
	eors	r3, r3, r2	@, _324, _322, bits
.LBE454:
.LBE455:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:254: 	bits.u = (bits.u & 0xFFFF0000) | index;
	.loc 1 254 19 view .LVU714
	bfc	r3, #0, #16	@ _325,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:254: 	bits.u = (bits.u & 0xFFFF0000) | index;
	.loc 1 254 33 view .LVU715
	orrs	r3, r3, r5	@, _326, _325, i
.LBE456:
.LBE457:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:393: 		scene->tmp_order_table1[vis_tri_count] = pack_depth_index(z, i);
	.loc 1 393 42 discriminator 1 view .LVU716
	str	r3, [r9, r10, lsl #2]	@ _326, *_318
.LVL192:
	.loc 1 396 3 is_stmt 1 view .LVU717
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:396: 		if (use_silhouette)
	.loc 1 396 6 is_stmt 0 view .LVU718
	ldr	r3, [sp, #16]	@ _117, %sfp
	cbz	r3, .L116	@ _117,
	.loc 1 397 4 is_stmt 1 view .LVU719
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:397: 			scene->tmp_vis_tris_mask[i >> 5] |= 1u << (i & 31);
	.loc 1 397 28 is_stmt 0 view .LVU720
	asrs	r4, r5, #5	@ _328, i,
	ldr	r0, [fp, #148]	@ scene_68(D)->tmp_vis_tris_mask, scene_68(D)->tmp_vis_tris_mask
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:397: 			scene->tmp_vis_tris_mask[i >> 5] |= 1u << (i & 31);
	.loc 1 397 43 view .LVU721
	movs	r3, #1	@ tmp1145,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:397: 			scene->tmp_vis_tris_mask[i >> 5] |= 1u << (i & 31);
	.loc 1 397 49 view .LVU722
	and	r2, r5, #31	@ _333, i,
.LVL193:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:397: 			scene->tmp_vis_tris_mask[i >> 5] |= 1u << (i & 31);
	.loc 1 397 43 view .LVU723
	lsl	r2, r3, r2	@ _334, tmp1145, _333
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:397: 			scene->tmp_vis_tris_mask[i >> 5] |= 1u << (i & 31);
	.loc 1 397 37 view .LVU724
	ldr	r3, [r0, r4, lsl #2]	@ *_331, *_331
	orrs	r3, r3, r2	@, _335, *_331, _334
	str	r3, [r0, r4, lsl #2]	@ _335, *_331
.LVL194:
.L116:
	.loc 1 398 3 is_stmt 1 view .LVU725
	add	r10, r10, #1	@ vis_tri_count, vis_tri_count,
.LVL195:
.L109:
	.loc 1 398 3 is_stmt 0 view .LVU726
.LBE445:
	.loc 1 355 42 is_stmt 1 discriminator 2 view .LVU727
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:355: 	for (int i = 0; i < mesh->tri_count; ++i, ibPtr += 3)
	.loc 1 355 39 is_stmt 0 discriminator 2 view .LVU728
	adds	r5, r5, #1	@ i, i,
.LVL196:
	.loc 1 355 20 is_stmt 1 discriminator 1 view .LVU729
	adds	r1, r1, #6	@ ivtmp.272, ivtmp.272,
.LVL197:
	.loc 1 355 20 is_stmt 0 discriminator 1 view .LVU730
	cmp	r5, r8	@ i, mesh_114->tri_count
	bge	.L217		@,
.LVL198:
.L117:
.LBB458:
	.loc 1 357 3 is_stmt 1 view .LVU731
	.loc 1 358 3 view .LVU732
	.loc 1 359 3 view .LVU733
	.loc 1 360 3 view .LVU734
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:360: 		const float3 p0 = scene->tmp_proj_points[idx0];
	.loc 1 360 43 is_stmt 0 view .LVU735
	ldrh	r2, [r1, #-6]	@ _260, MEM[(const uint16_t *)_240 + 4294967290B]
.LVL199:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:361: 		const float3 p1 = scene->tmp_proj_points[idx1];
	.loc 1 361 43 view .LVU736
	ldrh	r3, [r1, #-4]	@ _266, MEM[(const uint16_t *)_240 + 4294967292B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:360: 		const float3 p0 = scene->tmp_proj_points[idx0];
	.loc 1 360 43 view .LVU737
	add	r2, r2, r2, lsl #1	@ _261, _260, _260,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:362: 		const float3 p2 = scene->tmp_proj_points[idx2];
	.loc 1 362 43 view .LVU738
	ldrh	r0, [r1, #-2]	@ _272, MEM[(const uint16_t *)_240 + 4294967294B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:361: 		const float3 p1 = scene->tmp_proj_points[idx1];
	.loc 1 361 43 view .LVU739
	add	r3, r3, r3, lsl #1	@ _267, _266, _266,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:360: 		const float3 p0 = scene->tmp_proj_points[idx0];
	.loc 1 360 43 view .LVU740
	add	r7, ip, r2, lsl #2	@ _262, _259, _261,
.LVL200:
	.loc 1 361 3 is_stmt 1 view .LVU741
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:361: 		const float3 p1 = scene->tmp_proj_points[idx1];
	.loc 1 361 43 is_stmt 0 view .LVU742
	add	r6, ip, r3, lsl #2	@ _268, _259, _267,
.LVL201:
	.loc 1 362 3 is_stmt 1 view .LVU743
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:365: 		const int any_non_pos = (p0.z < k_min_z) | (p1.z < k_min_z) | (p2.z < k_min_z);
	.loc 1 365 44 is_stmt 0 view .LVU744
	vldr.32	s15, [r7, #8]	@ _262->z, _262->z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:362: 		const float3 p2 = scene->tmp_proj_points[idx2];
	.loc 1 362 43 view .LVU745
	add	r0, r0, r0, lsl #1	@ _273, _272, _272,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:365: 		const int any_non_pos = (p0.z < k_min_z) | (p1.z < k_min_z) | (p2.z < k_min_z);
	.loc 1 365 44 view .LVU746
	vcmp.f32	s15, s17	@ _262->z, tmp1000
	vldr.32	s15, [r6, #8]	@ _268->z, _268->z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:362: 		const float3 p2 = scene->tmp_proj_points[idx2];
	.loc 1 362 43 view .LVU747
	add	lr, ip, r0, lsl #2	@ _274, _259, _273,
.LVL202:
	.loc 1 365 3 is_stmt 1 view .LVU748
	.loc 1 366 3 view .LVU749
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:365: 		const int any_non_pos = (p0.z < k_min_z) | (p1.z < k_min_z) | (p2.z < k_min_z);
	.loc 1 365 44 is_stmt 0 view .LVU750
	vmrs	APSR_nzcv, FPSCR
	vcmp.f32	s15, s17	@ _268->z, tmp1000
	ite	mi
	movmi	r4, #1	@ tmp731,
	movpl	r4, #0	@ tmp731,
	vmrs	APSR_nzcv, FPSCR
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:366: 		if (any_non_pos)
	.loc 1 366 6 view .LVU751
	it	mi	@
	orrmi	r4, r4, #1	@, tmp738, tmp731
	cmp	r4, #0	@ tmp738
	bne	.L109	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:365: 		const int any_non_pos = (p0.z < k_min_z) | (p1.z < k_min_z) | (p2.z < k_min_z);
	.loc 1 365 71 view .LVU752
	vldr.32	s15, [lr, #8]	@ _274->z, _274->z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:366: 		if (any_non_pos)
	.loc 1 366 6 view .LVU753
	vcmp.f32	s17, s15	@ tmp1000, _274->z
	vmrs	APSR_nzcv, FPSCR
	bgt	.L109		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:360: 		const float3 p0 = scene->tmp_proj_points[idx0];
	.loc 1 360 16 view .LVU754
	vldr.32	s13, [r7]	@ p0$x, _262->x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:361: 		const float3 p1 = scene->tmp_proj_points[idx1];
	.loc 1 361 16 view .LVU755
	vldr.32	s14, [r6]	@ p1$x, _268->x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:376: 		if ((x1 < 0 && x2 < 0 && x3 < 0) ||
	.loc 1 376 6 view .LVU756
	vcmp.f32	s13, #0	@ p0$x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:362: 		const float3 p2 = scene->tmp_proj_points[idx2];
	.loc 1 362 16 view .LVU757
	vldr.32	s12, [lr]	@ p2$x, _274->x
	.loc 1 370 3 is_stmt 1 view .LVU758
.LVL203:
	.loc 1 371 3 view .LVU759
	.loc 1 372 3 view .LVU760
	.loc 1 373 3 view .LVU761
	.loc 1 374 3 view .LVU762
	.loc 1 375 3 view .LVU763
	.loc 1 376 3 view .LVU764
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:376: 		if ((x1 < 0 && x2 < 0 && x3 < 0) ||
	.loc 1 376 6 is_stmt 0 view .LVU765
	vmrs	APSR_nzcv, FPSCR
	bpl	.L110		@,
	vcmp.f32	s14, #0	@ p1$x
	vmrs	APSR_nzcv, FPSCR
	bmi	.L218		@,
.L110:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:377: 			(x1 >= SCREEN_X && x2 >= SCREEN_X && x3 >= SCREEN_X) ||
	.loc 1 377 8 view .LVU766
	vcmp.f32	s13, s9	@ p0$x, tmp998
	vmrs	APSR_nzcv, FPSCR
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:377: 			(x1 >= SCREEN_X && x2 >= SCREEN_X && x3 >= SCREEN_X) ||
	.loc 1 377 21 view .LVU767
	vcmp.f32	s14, s9	@ p1$x, tmp998
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:377: 			(x1 >= SCREEN_X && x2 >= SCREEN_X && x3 >= SCREEN_X) ||
	.loc 1 377 8 view .LVU768
	ite	ge
	movge	r4, #1	@ tmp753,
	movlt	r4, #0	@ tmp753,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:377: 			(x1 >= SCREEN_X && x2 >= SCREEN_X && x3 >= SCREEN_X) ||
	.loc 1 377 21 view .LVU769
	vmrs	APSR_nzcv, FPSCR
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:377: 			(x1 >= SCREEN_X && x2 >= SCREEN_X && x3 >= SCREEN_X) ||
	.loc 1 377 28 view .LVU770
	and	r4, r4, #1	@ tmp759, tmp753,
	it	lt
	movlt	r4, #0	@ tmp759,
	cmp	r4, #0	@ tmp759
	beq	.L111	@
	vcmp.f32	s12, s9	@ p2$x, tmp998
	vmrs	APSR_nzcv, FPSCR
	blt	.L111		@,
	b	.L109		@
.LVL204:
.L213:
	.loc 1 377 28 view .LVU771
.LBE458:
.LBE444:
	.loc 1 278 3 is_stmt 1 view .LVU772
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:278: 		scene->order_cap = mesh->tri_count;
	.loc 1 278 20 is_stmt 0 view .LVU773
	str	r3, [fp, #132]	@ _130, scene_68(D)->order_cap
	.loc 1 279 3 is_stmt 1 view .LVU774
	ldr	r0, [fp, #136]	@, scene_68(D)->tmp_order_table1
	bl	plat_free		@
.LVL205:
	.loc 1 280 3 view .LVU775
	ldr	r0, [fp, #140]	@, scene_68(D)->tmp_order_table2
	bl	plat_free		@
.LVL206:
	.loc 1 281 3 view .LVU776
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:281: 		scene->tmp_order_table1 = plat_malloc(scene->order_cap * sizeof(scene->tmp_order_table1[0]));
	.loc 1 281 58 is_stmt 0 view .LVU777
	ldr	r0, [fp, #132]	@ scene_68(D)->order_cap, scene_68(D)->order_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:281: 		scene->tmp_order_table1 = plat_malloc(scene->order_cap * sizeof(scene->tmp_order_table1[0]));
	.loc 1 281 29 view .LVU778
	lsls	r0, r0, #2	@, scene_68(D)->order_cap,
	bl	plat_malloc		@
.LVL207:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:281: 		scene->tmp_order_table1 = plat_malloc(scene->order_cap * sizeof(scene->tmp_order_table1[0]));
	.loc 1 281 27 discriminator 1 view .LVU779
	str	r0, [fp, #136]	@ _136, scene_68(D)->tmp_order_table1
	.loc 1 282 3 is_stmt 1 view .LVU780
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:282: 		scene->tmp_order_table2 = plat_malloc(scene->order_cap * sizeof(scene->tmp_order_table2[0]));
	.loc 1 282 58 is_stmt 0 view .LVU781
	ldr	r0, [fp, #132]	@ scene_68(D)->order_cap, scene_68(D)->order_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:282: 		scene->tmp_order_table2 = plat_malloc(scene->order_cap * sizeof(scene->tmp_order_table2[0]));
	.loc 1 282 29 view .LVU782
	lsls	r0, r0, #2	@, scene_68(D)->order_cap,
	bl	plat_malloc		@
.LVL208:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:282: 		scene->tmp_order_table2 = plat_malloc(scene->order_cap * sizeof(scene->tmp_order_table2[0]));
	.loc 1 282 27 discriminator 1 view .LVU783
	str	r0, [fp, #140]	@ _140, scene_68(D)->tmp_order_table2
	b	.L93		@
.LVL209:
.L113:
.LBB460:
.LBB459:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:379: 			(y1 >= SCREEN_Y && y2 >= SCREEN_Y && y3 >= SCREEN_Y))
	.loc 1 379 8 view .LVU784
	vcmp.f32	s10, s8	@ p0$y, tmp997
	vmrs	APSR_nzcv, FPSCR
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:379: 			(y1 >= SCREEN_Y && y2 >= SCREEN_Y && y3 >= SCREEN_Y))
	.loc 1 379 21 view .LVU785
	vcmp.f32	s15, s8	@ p1$y, tmp997
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:379: 			(y1 >= SCREEN_Y && y2 >= SCREEN_Y && y3 >= SCREEN_Y))
	.loc 1 379 8 view .LVU786
	ite	ge
	movge	r4, #1	@ tmp773,
	movlt	r4, #0	@ tmp773,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:379: 			(y1 >= SCREEN_Y && y2 >= SCREEN_Y && y3 >= SCREEN_Y))
	.loc 1 379 21 view .LVU787
	vmrs	APSR_nzcv, FPSCR
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:379: 			(y1 >= SCREEN_Y && y2 >= SCREEN_Y && y3 >= SCREEN_Y))
	.loc 1 379 28 view .LVU788
	and	r4, r4, #1	@ tmp779, tmp773,
	it	lt
	movlt	r4, #0	@ tmp779,
	cmp	r4, #0	@ tmp779
	beq	.L114	@
	vcmp.f32	s11, s8	@ p2$y, tmp997
	vmrs	APSR_nzcv, FPSCR
	blt	.L114		@,
.LVL210:
	.loc 1 379 28 view .LVU789
.LBE459:
	.loc 1 355 42 is_stmt 1 discriminator 2 view .LVU790
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:355: 	for (int i = 0; i < mesh->tri_count; ++i, ibPtr += 3)
	.loc 1 355 39 is_stmt 0 discriminator 2 view .LVU791
	adds	r5, r5, #1	@ i, i,
.LVL211:
	.loc 1 355 20 is_stmt 1 discriminator 1 view .LVU792
	adds	r1, r1, #6	@ ivtmp.272, ivtmp.272,
.LVL212:
	.loc 1 355 20 is_stmt 0 discriminator 1 view .LVU793
	cmp	r5, r8	@ i, mesh_114->tri_count
	blt	.L117		@,
.LVL213:
.L217:
	.loc 1 355 20 discriminator 1 view .LVU794
.LBE460:
	.loc 1 400 2 is_stmt 1 view .LVU795
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:400: 	scene->stats_visible_tris += vis_tri_count;
	.loc 1 400 28 is_stmt 0 view .LVU796
	ldr	r3, [fp, #184]	@ scene_68(D)->stats_visible_tris, scene_68(D)->stats_visible_tris
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:403: 	radixsort_upper16keys(scene->tmp_order_table1, scene->tmp_order_table2, vis_tri_count);
	.loc 1 403 2 view .LVU797
	mov	r0, r9	@, scene_68(D)->tmp_order_table1
	mov	r2, r10	@, vis_tri_count
.LVL214:
	.loc 1 403 2 view .LVU798
	ldr	r1, [fp, #140]	@, scene_68(D)->tmp_order_table2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:400: 	scene->stats_visible_tris += vis_tri_count;
	.loc 1 400 28 view .LVU799
	add	r3, r3, r10	@ _341, vis_tri_count
	ldr	r7, [sp, #20]	@ i, %sfp
.LVL215:
	.loc 1 400 28 view .LVU800
	str	r10, [sp, #32]	@ vis_tri_count, %sfp
	str	r3, [fp, #184]	@ _341, scene_68(D)->stats_visible_tris
	.loc 1 403 2 is_stmt 1 view .LVU801
	bl	radixsort_upper16keys		@
.LVL216:
	.loc 1 404 2 view .LVU802
	ldr	r3, [sp, #12]	@ inst, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:404: 	const uint32_t* sorted_order = scene->tmp_order_table1;
	.loc 1 404 18 is_stmt 0 view .LVU803
	ldr	r9, [fp, #136]	@ scene_68(D)->tmp_order_table1, scene_68(D)->tmp_order_table1
.LVL217:
	.loc 1 407 2 is_stmt 1 view .LVU804
	ldrb	r3, [r3, #56]	@ zero_extendqisi2	@ inst_89->flags, inst_89->flags
	and	r3, r3, #3	@ _347, inst_89->flags,
	str	r3, [sp, #28]	@ _347, %sfp
.LVL218:
	.loc 1 408 2 view .LVU805
.LBB461:
	.loc 1 408 7 view .LVU806
	.loc 1 408 20 discriminator 1 view .LVU807
	cmp	r10, #0	@ vis_tri_count
	beq	.L91	@
	.loc 1 408 20 is_stmt 0 discriminator 1 view .LVU808
	sub	r3, r9, #4	@ ivtmp.268, scene_68(D)->tmp_order_table1,
.LBB401:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:425: 			brightness *= mesh->colors[fi] * (1.0f / 255.0f);
	.loc 1 425 15 view .LVU809
	vldr.32	s21, .L224+36	@ tmp992,
	ldr	r10, [sp, #24]	@ mesh, %sfp
.LVL219:
	.loc 1 425 15 view .LVU810
	str	r3, [sp, #16]	@ ivtmp.268, %sfp
.LVL220:
	.loc 1 425 15 view .LVU811
.LBE401:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:408: 	for (int i = 0; i < vis_tri_count; ++i)
	.loc 1 408 11 view .LVU812
	movs	r3, #0	@ i,
.LBB402:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:425: 			brightness *= mesh->colors[fi] * (1.0f / 255.0f);
	.loc 1 425 15 view .LVU813
	str	r7, [sp, #48]	@ i, %sfp
.LBE402:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:408: 	for (int i = 0; i < vis_tri_count; ++i)
	.loc 1 408 11 view .LVU814
	str	r3, [sp, #20]	@ i, %sfp
.LVL221:
	.loc 1 408 11 view .LVU815
	b	.L136		@
.LVL222:
.L221:
.LBB403:
.LBB380:
	.loc 1 434 4 is_stmt 1 view .LVU816
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:434: 			const uint16_t opf0 = mesh->adjacency[fi * 3 + 0];
	.loc 1 434 30 is_stmt 0 view .LVU817
	ldr	r1, [r10, #32]	@ _399, mesh_114->adjacency
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:434: 			const uint16_t opf0 = mesh->adjacency[fi * 3 + 0];
	.loc 1 434 19 view .LVU818
	ldrh	r0, [r1, r9, lsl #1]	@ opf0, *_400
.LVL223:
	.loc 1 435 4 is_stmt 1 view .LVU819
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:435: 			const uint16_t opf1 = mesh->adjacency[fi * 3 + 1];
	.loc 1 435 19 is_stmt 0 view .LVU820
	ldrh	r2, [r1, r3]	@ opf1, *_402
.LVL224:
	.loc 1 436 4 is_stmt 1 view .LVU821
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:436: 			const uint16_t opf2 = mesh->adjacency[fi * 3 + 2];
	.loc 1 436 19 is_stmt 0 view .LVU822
	ldrh	r3, [r1, r8]	@ opf2, *_404
.LVL225:
	.loc 1 437 4 is_stmt 1 view .LVU823
.LBB381:
.LBI381:
	.loc 1 258 12 view .LVU824
.LBB382:
	.loc 1 260 2 view .LVU825
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 24 is_stmt 0 view .LVU826
	movw	r1, #65535	@ tmp869,
	cmp	r0, r1	@ opf0, tmp869
	beq	.L147		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 56 discriminator 1 view .LVU827
	lsrs	r7, r0, #5	@ _433, opf0,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 52 discriminator 1 view .LVU828
	ldr	r1, [fp, #148]	@ MEM[(const struct Scene *)scene_68(D)].tmp_vis_tris_mask, MEM[(const struct Scene *)scene_68(D)].tmp_vis_tris_mask
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 74 discriminator 1 view .LVU829
	and	r0, r0, #31	@ _438, opf0,
.LVL226:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 62 discriminator 1 view .LVU830
	ldr	r7, [r1, r7, lsl #2]	@ *_435, *_435
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 67 discriminator 1 view .LVU831
	movs	r1, #1	@ tmp876,
	lsls	r1, r1, r0	@ _439, tmp876, _438
.LBE382:
.LBE381:
.LBE380:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:431: 		uint8_t wire_flag = 0xFF;
	.loc 1 431 11 view .LVU832
	tst	r1, r7	@ _439, *_435
	ite	ne
	movne	r7, #251	@ wire_flag,
	moveq	r7, #255	@ wire_flag,
.L122:
.LVL227:
.LBB387:
	.loc 1 439 4 is_stmt 1 view .LVU833
.LBB383:
.LBI383:
	.loc 1 258 12 view .LVU834
.LBB384:
	.loc 1 260 2 view .LVU835
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 24 is_stmt 0 view .LVU836
	movw	r1, #65535	@ tmp879,
	cmp	r2, r1	@ opf1, tmp879
	beq	.L123		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 56 discriminator 1 view .LVU837
	lsrs	r0, r2, #5	@ _446, opf1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 52 discriminator 1 view .LVU838
	ldr	r1, [fp, #148]	@ MEM[(const struct Scene *)scene_68(D)].tmp_vis_tris_mask, MEM[(const struct Scene *)scene_68(D)].tmp_vis_tris_mask
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 74 discriminator 1 view .LVU839
	and	r2, r2, #31	@ _451, opf1,
.LVL228:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 62 discriminator 1 view .LVU840
	ldr	r1, [r1, r0, lsl #2]	@ *_448, *_448
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 67 discriminator 1 view .LVU841
	movs	r0, #1	@ tmp886,
	lsl	r2, r0, r2	@ _452, tmp886, _451
.LBE384:
.LBE383:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:440: 				wire_flag &= ~2;
	.loc 1 440 15 view .LVU842
	tst	r2, r1	@ _452, *_448
	and	r2, r7, #253	@ tmp987, wire_flag,
	it	ne
	movne	r7, r2	@ wire_flag, tmp987
.LVL229:
.L123:
	.loc 1 441 4 is_stmt 1 view .LVU843
.LBB385:
.LBI385:
	.loc 1 258 12 view .LVU844
.LBB386:
	.loc 1 260 2 view .LVU845
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 24 is_stmt 0 view .LVU846
	movw	r2, #65535	@ tmp890,
	cmp	r3, r2	@ opf2, tmp890
	beq	.L125		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 56 discriminator 1 view .LVU847
	lsrs	r2, r3, #5	@ _459, opf2,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 74 discriminator 1 view .LVU848
	and	r1, r3, #31	@ _464, opf2,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 52 discriminator 1 view .LVU849
	ldr	r3, [fp, #148]	@ MEM[(const struct Scene *)scene_68(D)].tmp_vis_tris_mask, MEM[(const struct Scene *)scene_68(D)].tmp_vis_tris_mask
.LVL230:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 62 discriminator 1 view .LVU850
	ldr	r2, [r3, r2, lsl #2]	@ *_461, *_461
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 67 discriminator 1 view .LVU851
	movs	r3, #1	@ tmp897,
	lsls	r3, r3, r1	@ _465, tmp897, _464
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:260: 	return (fi != 0xFFFF) && (scene->tmp_vis_tris_mask[fi >> 5] & (1 << (fi & 31)));
	.loc 1 260 24 discriminator 1 view .LVU852
	tst	r3, r2	@ _465, *_461
	beq	.L125		@,
.LVL231:
	.loc 1 260 24 discriminator 1 view .LVU853
.LBE386:
.LBE385:
	.loc 1 442 5 is_stmt 1 view .LVU854
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:442: 				wire_flag &= ~1;
	.loc 1 442 15 is_stmt 0 view .LVU855
	and	r7, r7, #254	@ wire_flag, wire_flag,
.LVL232:
	.loc 1 442 15 view .LVU856
.LBE387:
	.loc 1 449 3 is_stmt 1 view .LVU857
.LBB388:
.LBI359:
	.loc 1 212 13 view .LVU858
.LBB373:
	.loc 1 214 2 view .LVU859
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:214: 	if (draw_flags & MeshDrawFlag_Solid)
	.loc 1 214 5 is_stmt 0 view .LVU860
	cmp	ip, #0	@ _799
	beq	.L127	@
.LVL233:
.L126:
	.loc 1 216 3 is_stmt 1 view .LVU861
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:216: 		if ((scene_draw_flags & SceneDrawFlag_DitherBluenoise) == 0)
	.loc 1 216 6 is_stmt 0 view .LVU862
	ldr	r3, [sp, #44]	@ draw_flags, %sfp
	lsls	r0, r3, #31	@, draw_flags,
	bmi	.L131		@,
.LVL234:
.L223:
.LBB371:
	.loc 1 219 4 is_stmt 1 view .LVU863
.LBB367:
.LBI367:
	.loc 2 175 19 view .LVU864
.LBB368:
	.loc 2 177 2 view .LVU865
	.loc 2 178 2 view .LVU866
	.loc 2 179 2 view .LVU867
	.loc 2 179 2 is_stmt 0 view .LVU868
.LBE368:
.LBE367:
	.loc 1 220 4 is_stmt 1 view .LVU869
	.loc 1 221 4 view .LVU870
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:219: 			int pat_idx = clamp_i((int)(brightness * 32.99f), 0, 32);
	.loc 1 219 43 is_stmt 0 view .LVU871
	vmul.f32	s16, s16, s18	@ _472, brightness, tmp1002
.LVL235:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:220: 			const uint8_t* pattern = (const uint8_t*)&patterns[pat_idx];
	.loc 1 220 19 view .LVU872
	ldr	ip, .L226+4	@ tmp912,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:221: 			draw_tri_pattern(bitmap, rowstride, p1, p2, p3, pattern);
	.loc 1 221 4 view .LVU873
	ldr	r3, [sp, #24]	@, %sfp
	mov	r2, r6	@, _798
	ldr	r1, [sp, #40]	@, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:219: 			int pat_idx = clamp_i((int)(brightness * 32.99f), 0, 32);
	.loc 1 219 18 view .LVU874
	vcvt.s32.f32	s15, s16	@ _473, _472
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:221: 			draw_tri_pattern(bitmap, rowstride, p1, p2, p3, pattern);
	.loc 1 221 4 view .LVU875
	str	r5, [sp]	@ _800,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:219: 			int pat_idx = clamp_i((int)(brightness * 32.99f), 0, 32);
	.loc 1 219 18 view .LVU876
	vmov	r0, s15	@ int	@ _473, _473
.LBB370:
.LBB369:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:177: 	if (v < a) v = a;
	.loc 2 177 5 view .LVU877
	bic	r0, r0, r0, asr #31	@ _473, _473
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:178: 	if (v > b) v = b;
	.loc 2 178 5 view .LVU878
	cmp	r0, #32	@ _473,
	it	ge
	movge	r0, #32	@ _473,
.LBE369:
.LBE370:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:220: 			const uint8_t* pattern = (const uint8_t*)&patterns[pat_idx];
	.loc 1 220 19 view .LVU879
	add	r0, ip, r0, lsl #3	@ pattern_476, tmp912, _473,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:221: 			draw_tri_pattern(bitmap, rowstride, p1, p2, p3, pattern);
	.loc 1 221 4 view .LVU880
	str	r0, [sp, #4]	@ pattern_476,
	ldr	r0, [sp, #36]	@, %sfp
	bl	draw_tri_pattern		@
.LVL236:
.L132:
	.loc 1 221 4 view .LVU881
.LBE371:
	.loc 1 232 2 is_stmt 1 view .LVU882
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:232: 	if (draw_flags & (MeshDrawFlag_Wire | MeshDrawFlag_SilhouetteWire))
	.loc 1 232 5 is_stmt 0 view .LVU883
	tst	r4, #12	@ _397,
	bne	.L130		@,
.L133:
.LVL237:
	.loc 1 232 5 view .LVU884
.LBE373:
.LBE388:
.LBE403:
	.loc 1 408 37 is_stmt 1 discriminator 2 view .LVU885
	ldr	r3, [sp, #20]	@ i, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:408: 	for (int i = 0; i < vis_tri_count; ++i)
	.loc 1 408 20 is_stmt 0 discriminator 1 view .LVU886
	ldr	r2, [sp, #32]	@ vis_tri_count, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:408: 	for (int i = 0; i < vis_tri_count; ++i)
	.loc 1 408 37 discriminator 2 view .LVU887
	adds	r3, r3, #1	@ i, i,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:408: 	for (int i = 0; i < vis_tri_count; ++i)
	.loc 1 408 20 discriminator 1 view .LVU888
	cmp	r3, r2	@ i, vis_tri_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:408: 	for (int i = 0; i < vis_tri_count; ++i)
	.loc 1 408 37 discriminator 2 view .LVU889
	str	r3, [sp, #20]	@ i, %sfp
.LVL238:
	.loc 1 408 20 is_stmt 1 discriminator 1 view .LVU890
	beq	.L219		@,
.LVL239:
.L136:
.LBB404:
	.loc 1 410 3 view .LVU891
	.loc 1 411 3 view .LVU892
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:415: 		float brightness = inst->color;
	.loc 1 415 9 is_stmt 0 view .LVU893
	ldr	r3, [sp, #12]	@ inst, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:411: 		uint16_t idx0 = mesh->tris[fi * 3 + 0];
	.loc 1 411 23 view .LVU894
	ldr	r2, [r10, #16]	@ _353, mesh_114->tris
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:415: 		float brightness = inst->color;
	.loc 1 415 9 view .LVU895
	vldr.32	s16, [r3, #60]	@ brightness, inst_89->color
	ldr	r3, [sp, #16]	@ ivtmp.268, %sfp
	ldr	r7, [r3, #4]!	@ MEM[(const uint32_t *)_245], MEM[(const uint32_t *)_245]
.LVL240:
	.loc 1 415 9 view .LVU896
	uxth	r7, r7	@ _354, MEM[(const uint32_t *)_245]
	str	r3, [sp, #16]	@ ivtmp.268, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:411: 		uint16_t idx0 = mesh->tris[fi * 3 + 0];
	.loc 1 411 29 view .LVU897
	add	r9, r7, r7, lsl #1	@ _355, _354, _354,
	lsl	r8, r9, #1	@ tmp831, _355,
.LVL241:
	.loc 1 412 3 is_stmt 1 view .LVU898
.LBB389:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 57 is_stmt 0 view .LVU899
	ldrh	r6, [r2, r9, lsl #1]	@ _802, *_356
.LBE389:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:412: 		uint16_t idx1 = mesh->tris[fi * 3 + 1];
	.loc 1 412 37 view .LVU900
	add	r3, r8, #2	@ _358, tmp831,
.LVL242:
	.loc 1 413 3 is_stmt 1 view .LVU901
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:413: 		uint16_t idx2 = mesh->tris[fi * 3 + 2];
	.loc 1 413 37 is_stmt 0 view .LVU902
	add	r8, r8, #4	@ _361, tmp831,
.LVL243:
	.loc 1 415 3 is_stmt 1 view .LVU903
	.loc 1 416 3 view .LVU904
.LBB391:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 57 is_stmt 0 view .LVU905
	add	r6, r6, r6, lsl #1	@ _803, _802, _802,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 119 view .LVU906
	ldrh	r5, [r2, r3]	@ _806, *_359
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 88 view .LVU907
	ldrh	r4, [r2, r8]	@ _804, *_362
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 57 view .LVU908
	lsls	r6, r6, #2	@ tmp836, _803,
.LBE391:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:416: 		if (use_lighting)
	.loc 1 416 6 view .LVU909
	ldr	r2, [sp, #28]	@ _347, %sfp
.LVL244:
.LBB392:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 119 view .LVU910
	add	r5, r5, r5, lsl #1	@ _807, _806, _806,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 88 view .LVU911
	add	r4, r4, r4, lsl #1	@ _805, _804, _804,
.LBE392:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:416: 		if (use_lighting)
	.loc 1 416 6 view .LVU912
	cmp	r2, #3	@ _347,
.LBB393:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 119 view .LVU913
	lsl	r5, r5, #2	@ tmp846, _807,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 88 view .LVU914
	lsl	r4, r4, #2	@ tmp841, _805,
.LBE393:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:416: 		if (use_lighting)
	.loc 1 416 6 view .LVU915
	beq	.L220		@,
.LVL245:
.L119:
	.loc 1 423 3 is_stmt 1 view .LVU916
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:423: 		if (mesh->colors)
	.loc 1 423 11 is_stmt 0 view .LVU917
	ldr	r2, [r10, #24]	@ _389, mesh_114->colors
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:423: 		if (mesh->colors)
	.loc 1 423 6 view .LVU918
	cbz	r2, .L120	@ _389,
	.loc 1 425 4 is_stmt 1 view .LVU919
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:425: 			brightness *= mesh->colors[fi] * (1.0f / 255.0f);
	.loc 1 425 30 is_stmt 0 view .LVU920
	ldrb	r2, [r2, r7]	@ zero_extendqisi2	@ _392, *_390
	vmov	s15, r2	@ int	@ _392, _392
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:425: 			brightness *= mesh->colors[fi] * (1.0f / 255.0f);
	.loc 1 425 15 view .LVU921
	vcvt.f32.s32	s15, s15	@ _393, _392
	vmul.f32	s15, s15, s21	@ _319, _393, tmp992
	vmul.f32	s16, s16, s15	@ brightness, brightness, _319
.LVL246:
.L120:
	.loc 1 431 3 is_stmt 1 view .LVU922
	.loc 1 432 3 view .LVU923
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:449: 		draw_triangle(buffer, rowstride, &scene->tmp_proj_points[idx0], &scene->tmp_proj_points[idx2], &scene->tmp_proj_points[idx1], brightness, inst->flags, wire_flag, scene_draw_flags);
	.loc 1 449 42 is_stmt 0 view .LVU924
	ldr	r2, [fp, #128]	@ _259, scene_68(D)->tmp_proj_points
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:449: 		draw_triangle(buffer, rowstride, &scene->tmp_proj_points[idx0], &scene->tmp_proj_points[idx2], &scene->tmp_proj_points[idx1], brightness, inst->flags, wire_flag, scene_draw_flags);
	.loc 1 449 36 view .LVU925
	add	r6, r6, r2	@ _798, _259
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:449: 		draw_triangle(buffer, rowstride, &scene->tmp_proj_points[idx0], &scene->tmp_proj_points[idx2], &scene->tmp_proj_points[idx1], brightness, inst->flags, wire_flag, scene_draw_flags);
	.loc 1 449 98 view .LVU926
	add	r5, r5, r2	@ _800, _259
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:449: 		draw_triangle(buffer, rowstride, &scene->tmp_proj_points[idx0], &scene->tmp_proj_points[idx2], &scene->tmp_proj_points[idx1], brightness, inst->flags, wire_flag, scene_draw_flags);
	.loc 1 449 67 view .LVU927
	add	r2, r2, r4	@ _801, tmp841
	str	r2, [sp, #24]	@ _801, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:432: 		if (inst->flags & MeshDrawFlag_SilhouetteWire)
	.loc 1 432 11 view .LVU928
	ldr	r2, [sp, #12]	@ inst, %sfp
	ldrb	r4, [r2, #56]	@ zero_extendqisi2	@ _397, inst_89->flags
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:432: 		if (inst->flags & MeshDrawFlag_SilhouetteWire)
	.loc 1 432 6 view .LVU929
	lsls	r2, r4, #28	@, _397,
	and	ip, r4, #1	@ _799, _397,
	bmi	.L221		@,
	.loc 1 444 8 is_stmt 1 view .LVU930
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:444: 		else if (inst->flags & MeshDrawFlag_Wire)
	.loc 1 444 11 is_stmt 0 view .LVU931
	lsls	r3, r4, #29	@, _397,
	bmi	.L222		@,
	.loc 1 449 3 is_stmt 1 view .LVU932
.LVL247:
.LBB394:
	.loc 1 212 13 view .LVU933
.LBB374:
	.loc 1 214 2 view .LVU934
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:214: 	if (draw_flags & MeshDrawFlag_Solid)
	.loc 1 214 5 is_stmt 0 view .LVU935
	cmp	ip, #0	@ _799
	beq	.L133	@
.LVL248:
.L150:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:216: 		if ((scene_draw_flags & SceneDrawFlag_DitherBluenoise) == 0)
	.loc 1 216 6 view .LVU936
	ldr	r3, [sp, #44]	@ draw_flags, %sfp
.LBE374:
.LBE394:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:431: 		uint8_t wire_flag = 0xFF;
	.loc 1 431 11 view .LVU937
	movs	r7, #255	@ wire_flag,
.LBB395:
.LBB375:
	.loc 1 216 3 is_stmt 1 view .LVU938
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:216: 		if ((scene_draw_flags & SceneDrawFlag_DitherBluenoise) == 0)
	.loc 1 216 6 is_stmt 0 view .LVU939
	lsls	r0, r3, #31	@, draw_flags,
	bpl	.L223		@,
.LVL249:
.L131:
.LBB372:
	.loc 1 226 4 is_stmt 1 view .LVU940
.LBB362:
.LBI362:
	.loc 2 175 19 view .LVU941
.LBB363:
	.loc 2 177 2 view .LVU942
	.loc 2 178 2 view .LVU943
	.loc 2 179 2 view .LVU944
	.loc 2 179 2 is_stmt 0 view .LVU945
.LBE363:
.LBE362:
	.loc 1 227 4 is_stmt 1 view .LVU946
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:226: 			int color = clamp_i((int)(brightness * 255.0f), 0, 255);
	.loc 1 226 41 is_stmt 0 view .LVU947
	vmul.f32	s16, s16, s19	@ _477, brightness, tmp1001
.LVL250:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:227: 			draw_tri_bluenoise(bitmap, rowstride, p1, p2, p3, color);
	.loc 1 227 4 view .LVU948
	ldr	r3, [sp, #24]	@, %sfp
	mov	r2, r6	@, _798
	str	r5, [sp]	@ _800,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:226: 			int color = clamp_i((int)(brightness * 255.0f), 0, 255);
	.loc 1 226 16 view .LVU949
	vcvt.s32.f32	s15, s16	@ _478, _477
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:227: 			draw_tri_bluenoise(bitmap, rowstride, p1, p2, p3, color);
	.loc 1 227 4 view .LVU950
	ldrd	r0, r1, [sp, #36]	@,,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:226: 			int color = clamp_i((int)(brightness * 255.0f), 0, 255);
	.loc 1 226 16 view .LVU951
	vmov	ip, s15	@ int	@ _478, _478
.LBB365:
.LBB364:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:178: 	if (v > b) v = b;
	.loc 2 178 5 view .LVU952
	usat	ip, #8, ip	@ _478,, _478
.LBE364:
.LBE365:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:227: 			draw_tri_bluenoise(bitmap, rowstride, p1, p2, p3, color);
	.loc 1 227 4 view .LVU953
	uxtb	ip, ip	@ _478, _478
	str	ip, [sp, #4]	@ _478,
	bl	draw_tri_bluenoise		@
.LVL251:
	b	.L132		@
.LVL252:
.L219:
	.loc 1 227 4 view .LVU954
	ldr	r7, [sp, #48]	@ i, %sfp
.LVL253:
.L91:
	.loc 1 227 4 view .LVU955
.LBE372:
.LBE375:
.LBE395:
.LBE404:
.LBE461:
.LBE471:
.LBE477:
.LBE481:
	.loc 1 499 40 is_stmt 1 discriminator 3 view .LVU956
	adds	r7, r7, #1	@ i, i,
.LVL254:
	.loc 1 499 20 discriminator 1 view .LVU957
	ldr	r3, [sp, #52]	@ valid_inst_count, %sfp
	cmp	r3, r7	@ valid_inst_count, i
	bne	.L89		@,
.LVL255:
.L88:
	.loc 1 499 20 is_stmt 0 discriminator 1 view .LVU958
.LBE347:
	.loc 1 507 2 is_stmt 1 view .LVU959
	.loc 1 508 2 view .LVU960
	.loc 1 509 2 view .LVU961
	.loc 1 510 2 view .LVU962
.LBB485:
	.loc 1 510 7 view .LVU963
	.loc 1 510 20 discriminator 1 view .LVU964
	ldr	r3, [fp, #172]	@ scene_68(D)->line_count, scene_68(D)->line_count
	cmp	r3, #0	@ scene_68(D)->line_count,
	ble	.L143		@,
.LBE485:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:507: 	const float scene_scale = scene->scale;
	.loc 1 507 14 is_stmt 0 view .LVU965
	vldr.32	s18, [fp, #116]	@ scene_scale, scene_68(D)->scale
.LBB487:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:510: 	for (int i = 0; i < scene->line_count; i += 2)
	.loc 1 510 11 view .LVU966
	movs	r4, #0	@ i,
.LBE487:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:508: 	const float proj_add_x = 1.6666666f * scene->centerx * scene_scale;
	.loc 1 508 55 view .LVU967
	vldr.32	s19, [fp, #108]	@ scene_68(D)->centerx, scene_68(D)->centerx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:508: 	const float proj_add_x = 1.6666666f * scene->centerx * scene_scale;
	.loc 1 508 14 view .LVU968
	vldr.32	s15, .L226	@ tmp933,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:508: 	const float proj_add_x = 1.6666666f * scene->centerx * scene_scale;
	.loc 1 508 55 view .LVU969
	vmul.f32	s19, s18, s19	@ _26, scene_scale, scene_68(D)->centerx
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:509: 	const float proj_add_y = scene->centery * scene_scale;
	.loc 1 509 14 view .LVU970
	vldr.32	s20, [fp, #112]	@ scene_68(D)->centery, scene_68(D)->centery
	vmul.f32	s20, s18, s20	@ proj_add_y, scene_scale, scene_68(D)->centery
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:508: 	const float proj_add_x = 1.6666666f * scene->centerx * scene_scale;
	.loc 1 508 14 view .LVU971
	vmul.f32	s19, s19, s15	@ proj_add_x, _26, tmp933
.LBB488:
.LBB486:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:520: 			draw_black_line(buffer, rowstride, &view_a, &view_b);
	.loc 1 520 4 view .LVU972
	ldrd	r6, r7, [sp, #36]	@ buffer, rowstride,,
.LVL256:
.L142:
	.loc 1 512 3 is_stmt 1 view .LVU973
	add	r8, r4, r4, lsl #1	@ _249, i, i,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:512: 		float3 view_a = xform_transform_pt(&scene->view_xform, scene->line_buf[i + 0]);
	.loc 1 512 19 is_stmt 0 view .LVU974
	ldr	r3, [fp, #180]	@ scene_68(D)->line_buf, scene_68(D)->line_buf
	add	r0, fp, #48	@, scene,
	add	r3, r3, r8, lsl #2	@ tmp941, scene_68(D)->line_buf, _249,
	vldr.32	s0, [r3]	@, *_32
	vldr.32	s1, [r3, #4]	@, *_32
	vldr.32	s2, [r3, #8]	@, *_32
	bl	xform_transform_pt		@
.LVL257:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:513: 		float3 view_b = xform_transform_pt(&scene->view_xform, scene->line_buf[i + 1]);
	.loc 1 513 19 view .LVU975
	ldr	r3, [fp, #180]	@ scene_68(D)->line_buf, scene_68(D)->line_buf
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:512: 		float3 view_a = xform_transform_pt(&scene->view_xform, scene->line_buf[i + 0]);
	.loc 1 512 19 view .LVU976
	vstr.32	s0, [sp, #60]	@ tmp1040, view_a
	vmov.f32	s17, s0	@ tmp1040,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:513: 		float3 view_b = xform_transform_pt(&scene->view_xform, scene->line_buf[i + 1]);
	.loc 1 513 19 view .LVU977
	add	r3, r3, r8, lsl #2	@ tmp952, scene_68(D)->line_buf, _249,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:512: 		float3 view_a = xform_transform_pt(&scene->view_xform, scene->line_buf[i + 0]);
	.loc 1 512 19 view .LVU978
	vstr.32	s1, [sp, #64]	@ tmp1041, view_a
	vstr.32	s2, [sp, #68]	@ tmp1042, view_a
.LVL258:
	.loc 1 512 19 view .LVU979
	vmov.f32	s16, s1	@ tmp1041,
.LVL259:
	.loc 1 513 3 is_stmt 1 view .LVU980
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:513: 		float3 view_b = xform_transform_pt(&scene->view_xform, scene->line_buf[i + 1]);
	.loc 1 513 19 is_stmt 0 view .LVU981
	vldr.32	s0, [r3, #12]	@, *_36
.LVL260:
	.loc 1 513 19 view .LVU982
	add	r0, fp, #48	@, scene,
	vldr.32	s1, [r3, #16]	@, *_36
.LVL261:
	.loc 1 513 19 view .LVU983
	vldr.32	s2, [r3, #20]	@, *_36
	bl	xform_transform_pt		@
.LVL262:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:514: 		if (view_a.z > 0 && view_b.z > 0)
	.loc 1 514 13 view .LVU984
	vldr.32	s15, [sp, #68]	@ _37, view_a.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:513: 		float3 view_b = xform_transform_pt(&scene->view_xform, scene->line_buf[i + 1]);
	.loc 1 513 19 view .LVU985
	vstr.32	s0, [sp, #84]	@ tmp1043, MEM[(struct float3 *)_381]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:514: 		if (view_a.z > 0 && view_b.z > 0)
	.loc 1 514 6 view .LVU986
	vcmp.f32	s15, #0	@ _37
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:513: 		float3 view_b = xform_transform_pt(&scene->view_xform, scene->line_buf[i + 1]);
	.loc 1 513 19 view .LVU987
	vstr.32	s1, [sp, #88]	@ tmp1044, MEM[(struct float3 *)_381]
	vstr.32	s2, [sp, #92]	@ tmp1045, MEM[(struct float3 *)_381]
.LVL263:
	.loc 1 514 3 is_stmt 1 view .LVU988
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:514: 		if (view_a.z > 0 && view_b.z > 0)
	.loc 1 514 6 is_stmt 0 view .LVU989
	vmrs	APSR_nzcv, FPSCR
	ble	.L139		@,
	.loc 1 516 4 is_stmt 1 view .LVU990
.LVL264:
	.loc 1 517 4 view .LVU991
	.loc 1 518 4 view .LVU992
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:514: 		if (view_a.z > 0 && view_b.z > 0)
	.loc 1 514 20 is_stmt 0 discriminator 1 view .LVU993
	vcmp.f32	s2, #0	@ tmp1045
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:520: 			draw_black_line(buffer, rowstride, &view_a, &view_b);
	.loc 1 520 4 view .LVU994
	add	r3, sp, #84	@ tmp1165,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:518: 			view_b.x = view_b.x * scene_scale / view_b.z + proj_add_x;
	.loc 1 518 24 view .LVU995
	vmul.f32	s0, s18, s0	@ _48, scene_scale, tmp1043
.LVL265:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:520: 			draw_black_line(buffer, rowstride, &view_a, &view_b);
	.loc 1 520 4 view .LVU996
	add	r2, sp, #60	@ tmp1166,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:519: 			view_b.y = view_b.y * scene_scale / view_b.z + proj_add_y;
	.loc 1 519 24 view .LVU997
	vmul.f32	s1, s18, s1	@ _52, scene_scale, tmp1044
.LVL266:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:520: 			draw_black_line(buffer, rowstride, &view_a, &view_b);
	.loc 1 520 4 view .LVU998
	mov	r1, r7	@, rowstride
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:514: 		if (view_a.z > 0 && view_b.z > 0)
	.loc 1 514 20 discriminator 1 view .LVU999
	vmrs	APSR_nzcv, FPSCR
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:520: 			draw_black_line(buffer, rowstride, &view_a, &view_b);
	.loc 1 520 4 view .LVU1000
	mov	r0, r6	@, buffer
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:516: 			view_a.x = view_a.x * scene_scale / view_a.z + proj_add_x;
	.loc 1 516 24 view .LVU1001
	vmul.f32	s17, s17, s18	@ _40, tmp1040, scene_scale
.LVL267:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:517: 			view_a.y = view_a.y * scene_scale / view_a.z + proj_add_y;
	.loc 1 517 24 view .LVU1002
	vmul.f32	s16, s16, s18	@ _44, tmp1041, scene_scale
.LVL268:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:514: 		if (view_a.z > 0 && view_b.z > 0)
	.loc 1 514 20 discriminator 1 view .LVU1003
	ble	.L139		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:516: 			view_a.x = view_a.x * scene_scale / view_a.z + proj_add_x;
	.loc 1 516 38 view .LVU1004
	vdiv.f32	s13, s17, s15	@ _41, _40, _37
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:518: 			view_b.x = view_b.x * scene_scale / view_b.z + proj_add_x;
	.loc 1 518 38 view .LVU1005
	vdiv.f32	s11, s0, s2	@ _49, _48, tmp1045
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:519: 			view_b.y = view_b.y * scene_scale / view_b.z + proj_add_y;
	.loc 1 519 38 view .LVU1006
	vdiv.f32	s12, s1, s2	@ _53, _52, tmp1045
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:517: 			view_a.y = view_a.y * scene_scale / view_a.z + proj_add_y;
	.loc 1 517 38 view .LVU1007
	vdiv.f32	s14, s16, s15	@ _45, _44, _37
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:516: 			view_a.x = view_a.x * scene_scale / view_a.z + proj_add_x;
	.loc 1 516 49 view .LVU1008
	vadd.f32	s13, s13, s19	@ _42, _41, proj_add_x
.LVL269:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:518: 			view_b.x = view_b.x * scene_scale / view_b.z + proj_add_x;
	.loc 1 518 49 view .LVU1009
	vadd.f32	s11, s11, s19	@ _50, _49, proj_add_x
.LVL270:
	.loc 1 519 4 is_stmt 1 view .LVU1010
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:520: 			draw_black_line(buffer, rowstride, &view_a, &view_b);
	.loc 1 520 4 is_stmt 0 view .LVU1011
	vstr.32	s13, [sp, #60]	@ _42, MEM <float> [(void *)&view_a]
	vstr.32	s11, [sp, #84]	@ _50, MEM <float> [(void *)_381]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:519: 			view_b.y = view_b.y * scene_scale / view_b.z + proj_add_y;
	.loc 1 519 49 view .LVU1012
	vadd.f32	s12, s12, s20	@ _54, _53, proj_add_y
.LVL271:
	.loc 1 520 4 is_stmt 1 view .LVU1013
	vstr.32	s12, [sp, #88]	@ _54, MEM <float> [(void *)_381 + 4B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:517: 			view_a.y = view_a.y * scene_scale / view_a.z + proj_add_y;
	.loc 1 517 49 is_stmt 0 view .LVU1014
	vadd.f32	s15, s14, s20	@ _46, _45, proj_add_y
.LVL272:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:520: 			draw_black_line(buffer, rowstride, &view_a, &view_b);
	.loc 1 520 4 view .LVU1015
	vstr.32	s15, [sp, #64]	@ _46, MEM <float> [(void *)&view_a + 4B]
	bl	draw_black_line		@
.LVL273:
.L139:
	.loc 1 520 4 view .LVU1016
.LBE486:
	.loc 1 510 43 is_stmt 1 discriminator 2 view .LVU1017
	adds	r4, r4, #2	@ i, i,
.LVL274:
	.loc 1 510 20 discriminator 1 view .LVU1018
	ldr	r3, [fp, #172]	@ scene_68(D)->line_count, scene_68(D)->line_count
	cmp	r3, r4	@ scene_68(D)->line_count, i
	bgt	.L142		@,
.LVL275:
.L143:
	.loc 1 510 20 is_stmt 0 discriminator 1 view .LVU1019
.LBE488:
	.loc 1 523 2 is_stmt 1 view .LVU1020
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:523: 	scene->line_count = 0; // clear lines each frame
	.loc 1 523 20 is_stmt 0 view .LVU1021
	movs	r3, #0	@ tmp930,
	str	r3, [fp, #172]	@ tmp930, scene_68(D)->line_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:524: }
	.loc 1 524 1 view .LVU1022
	add	sp, sp, #124	@,,
.LCFI28:
	.cfi_remember_state
	.cfi_def_cfa_offset 76
	@ sp needed	@
	vldm	sp!, {d8-d12}	@,
.LCFI29:
	.cfi_restore 88
	.cfi_restore 89
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL276:
.L222:
.LCFI30:
	.cfi_restore_state
.LBB489:
.LBB482:
.LBB478:
.LBB472:
.LBB462:
.LBB405:
	.loc 1 446 4 is_stmt 1 view .LVU1023
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:446: 			if (mesh->wire_flags)
	.loc 1 446 12 is_stmt 0 view .LVU1024
	ldr	r3, [r10, #28]	@ _414, mesh_114->wire_flags
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:446: 			if (mesh->wire_flags)
	.loc 1 446 7 view .LVU1025
	cmp	r3, #0	@ _414
	beq	.L129	@
	.loc 1 447 5 is_stmt 1 view .LVU1026
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:447: 				wire_flag = mesh->wire_flags[fi];
	.loc 1 447 15 is_stmt 0 view .LVU1027
	ldrb	r7, [r3, r7]	@ zero_extendqisi2	@ wire_flag, *_415
.LVL277:
	.loc 1 449 3 is_stmt 1 view .LVU1028
.LBB396:
	.loc 1 212 13 view .LVU1029
.LBB376:
	.loc 1 214 2 view .LVU1030
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:214: 	if (draw_flags & MeshDrawFlag_Solid)
	.loc 1 214 5 is_stmt 0 view .LVU1031
	cmp	ip, #0	@ _799
	bne	.L126	@
.LVL278:
.L130:
	.loc 1 234 3 is_stmt 1 view .LVU1032
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:234: 		if (wire_flags & 1) draw_black_line(bitmap, rowstride, p1, p2);
	.loc 1 234 6 is_stmt 0 view .LVU1033
	lsls	r1, r7, #31	@, wire_flag,
	bmi	.L145		@,
.L127:
	.loc 1 235 3 is_stmt 1 view .LVU1034
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:235: 		if (wire_flags & 2) draw_black_line(bitmap, rowstride, p2, p3);
	.loc 1 235 6 is_stmt 0 view .LVU1035
	lsls	r2, r7, #30	@, wire_flag,
	bmi	.L144		@,
.L134:
	.loc 1 236 3 is_stmt 1 view .LVU1036
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:236: 		if (wire_flags & 4) draw_black_line(bitmap, rowstride, p3, p1);
	.loc 1 236 6 is_stmt 0 view .LVU1037
	lsls	r3, r7, #29	@, wire_flag,
	bpl	.L133		@,
	.loc 1 236 23 is_stmt 1 discriminator 1 view .LVU1038
	mov	r3, r6	@, _798
	mov	r2, r5	@, _800
	ldrd	r0, r1, [sp, #36]	@,,,
	bl	draw_black_line		@
.LVL279:
	b	.L133		@
.LVL280:
.L125:
	.loc 1 236 23 is_stmt 0 discriminator 1 view .LVU1039
.LBE376:
.LBE396:
	.loc 1 449 3 is_stmt 1 view .LVU1040
.LBB397:
	.loc 1 212 13 view .LVU1041
.LBB377:
	.loc 1 214 2 view .LVU1042
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:214: 	if (draw_flags & MeshDrawFlag_Solid)
	.loc 1 214 5 is_stmt 0 view .LVU1043
	cmp	ip, #0	@ _799
	bne	.L126	@
.LVL281:
.L145:
	.loc 1 234 23 is_stmt 1 discriminator 1 view .LVU1044
	mov	r2, r6	@, _798
	ldr	r3, [sp, #24]	@, %sfp
	ldrd	r0, r1, [sp, #36]	@,,,
	bl	draw_black_line		@
.LVL282:
	.loc 1 235 3 view .LVU1045
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:235: 		if (wire_flags & 2) draw_black_line(bitmap, rowstride, p2, p3);
	.loc 1 235 6 is_stmt 0 view .LVU1046
	lsls	r2, r7, #30	@, wire_flag,
	bpl	.L134		@,
.L144:
	.loc 1 235 23 is_stmt 1 discriminator 1 view .LVU1047
	ldr	r2, [sp, #24]	@, %sfp
	mov	r3, r5	@, _800
	ldrd	r0, r1, [sp, #36]	@,,,
	bl	draw_black_line		@
.LVL283:
	b	.L134		@
.LVL284:
.L220:
	.loc 1 235 23 is_stmt 0 discriminator 1 view .LVU1048
.LBE377:
.LBE397:
.LBB398:
	.loc 1 418 4 is_stmt 1 view .LVU1049
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 40 is_stmt 0 view .LVU1050
	ldr	r0, [fp, #124]	@ _365, scene_68(D)->tmp_view_points
	str	r3, [sp, #24]	@ _358, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 20 view .LVU1051
	adds	r2, r0, r5	@, _365, tmp846
	adds	r1, r0, r4	@, _365, tmp841
	add	r0, r0, r6	@, tmp836
	bl	v3_tri_normal		@
.LVL285:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:420: 			float diff = v3_dot(normal, scene->light) * 0.5f + 0.5f;
	.loc 1 420 10 discriminator 1 view .LVU1052
	vmov.f32	s15, #1.0e+0	@ tmp858,
	vldr.32	s11, [fp, #96]	@ scene_68(D)->light.x, scene_68(D)->light.x
	vmov.f32	s14, #5.0e-1	@ tmp860,
	vldr.32	s12, [fp, #100]	@ b$y, scene_68(D)->light.y
	vfma.f32	s15, s0, s11	@ tmp855, tmp1037, scene_68(D)->light.x
	vldr.32	s13, [fp, #104]	@ b$z, scene_68(D)->light.z
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:421: 			brightness *= diff;
	.loc 1 421 15 view .LVU1053
	ldr	r3, [sp, #24]	@ _358, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:418: 			float3 normal = v3_tri_normal(&scene->tmp_view_points[idx0], &scene->tmp_view_points[idx2], &scene->tmp_view_points[idx1]);
	.loc 1 418 20 view .LVU1054
	vstr.32	s0, [sp, #84]	@ tmp1037, MEM[(struct float3 *)_381]
	vstr.32	s1, [sp, #88]	@ tmp1038, MEM[(struct float3 *)_381]
	vstr.32	s2, [sp, #92]	@ tmp1039, MEM[(struct float3 *)_381]
	.loc 1 420 4 is_stmt 1 view .LVU1055
.LVL286:
.LBB390:
.LBI390:
	.loc 2 274 21 view .LVU1056
	.loc 2 276 2 view .LVU1057
	.loc 2 276 2 is_stmt 0 view .LVU1058
.LBE390:
	.loc 1 421 4 is_stmt 1 view .LVU1059
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:420: 			float diff = v3_dot(normal, scene->light) * 0.5f + 0.5f;
	.loc 1 420 10 is_stmt 0 discriminator 1 view .LVU1060
	vfma.f32	s15, s1, s12	@ tmp854, tmp1038, b$y
	vfma.f32	s15, s2, s13	@ tmp853, tmp1039, b$z
	vmul.f32	s15, s15, s14	@ diff_387, tmp853, tmp860
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:421: 			brightness *= diff;
	.loc 1 421 15 view .LVU1061
	vmul.f32	s16, s16, s15	@ brightness, brightness, diff_387
.LVL287:
	.loc 1 421 15 view .LVU1062
	b	.L119		@
.LVL288:
.L147:
	.loc 1 421 15 view .LVU1063
.LBE398:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:431: 		uint8_t wire_flag = 0xFF;
	.loc 1 431 11 view .LVU1064
	movs	r7, #255	@ wire_flag,
	b	.L122		@
.LVL289:
.L129:
	.loc 1 449 3 is_stmt 1 view .LVU1065
.LBB399:
	.loc 1 212 13 view .LVU1066
.LBB378:
	.loc 1 214 2 view .LVU1067
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:214: 	if (draw_flags & MeshDrawFlag_Solid)
	.loc 1 214 5 is_stmt 0 view .LVU1068
	cmp	ip, #0	@ _799
	bne	.L150	@
	.loc 1 234 3 is_stmt 1 view .LVU1069
	.loc 1 234 23 discriminator 1 view .LVU1070
	ldr	r3, [sp, #24]	@, %sfp
	mov	r2, r6	@, _798
.LBE378:
.LBE399:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:431: 		uint8_t wire_flag = 0xFF;
	.loc 1 431 11 is_stmt 0 view .LVU1071
	movs	r7, #255	@ wire_flag,
.LBB400:
.LBB379:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:234: 		if (wire_flags & 1) draw_black_line(bitmap, rowstride, p1, p2);
	.loc 1 234 23 discriminator 1 view .LVU1072
	ldrd	r0, r1, [sp, #36]	@,,,
	bl	draw_black_line		@
.LVL290:
	.loc 1 235 3 is_stmt 1 view .LVU1073
	.loc 1 235 23 discriminator 1 view .LVU1074
	ldr	r2, [sp, #24]	@, %sfp
	mov	r3, r5	@, _800
	ldrd	r0, r1, [sp, #36]	@,,,
	bl	draw_black_line		@
.LVL291:
	b	.L134		@
.LVL292:
.L98:
	.loc 1 235 23 is_stmt 0 discriminator 1 view .LVU1075
.LBE379:
.LBE400:
.LBE405:
.LBE462:
.LBB463:
	.loc 1 325 3 is_stmt 1 view .LVU1076
	.loc 1 326 3 view .LVU1077
.LBB464:
	.loc 1 326 8 view .LVU1078
	.loc 1 326 21 discriminator 1 view .LVU1079
	cmp	r2, #0	@ pretmp_810,
	ble	.L104		@,
.LBE464:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:325: 		const float3* src_vtx = (const float3*)mesh->vertices + frame * mesh->vertex_count;
	.loc 1 325 57 is_stmt 0 view .LVU1080
	add	r8, r8, r8, lsl #1	@ _219, _812, _812,
.LVL293:
	.loc 1 325 57 view .LVU1081
	ldr	r9, [sp, #24]	@ mesh, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:325: 		const float3* src_vtx = (const float3*)mesh->vertices + frame * mesh->vertex_count;
	.loc 1 325 17 view .LVU1082
	add	r6, r1, r8, lsl #2	@ src_vtx, pretmp_809, _219,
.LBB465:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:326: 		for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 326 12 view .LVU1083
	mov	r8, #0	@ i,
.LVL294:
.L105:
	.loc 1 328 4 is_stmt 1 view .LVU1084
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:328: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, *src_vtx));
	.loc 1 328 32 is_stmt 0 view .LVU1085
	vldr.32	s0, [r6]	@, *src_vtx_583
	mov	r0, r4	@, matrix
	vldr.32	s1, [r6, #4]	@, *src_vtx_583
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:329: 			++src_vtx;
	.loc 1 329 4 view .LVU1086
	adds	r6, r6, #12	@ src_vtx, src_vtx,
.LVL295:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:328: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, *src_vtx));
	.loc 1 328 32 view .LVU1087
	vldr.32	s2, [r6, #-4]	@, *src_vtx_583
	bl	xform_transform_pt		@
.LVL296:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:328: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, *src_vtx));
	.loc 1 328 32 discriminator 1 view .LVU1088
	add	r0, fp, #48	@, scene,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:328: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, *src_vtx));
	.loc 1 328 32 view .LVU1089
	vstr.32	s0, [sp, #96]	@ tmp1031, MEM[(struct float3 *)_382]
	vstr.32	s1, [sp, #100]	@ tmp1032, MEM[(struct float3 *)_382]
	vstr.32	s2, [sp, #104]	@ tmp1033, MEM[(struct float3 *)_382]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:328: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, *src_vtx));
	.loc 1 328 32 discriminator 1 view .LVU1090
	bl	xform_transform_pt		@
.LVL297:
	ldr	r3, [fp, #124]	@ ivtmp.278, scene_68(D)->tmp_view_points
	add	r2, r8, r8, lsl #1	@ tmp696, i, i,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:326: 		for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 326 27 discriminator 1 view .LVU1091
	ldr	r1, [r9]	@ _214, mesh_114->vertex_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:326: 		for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 326 43 discriminator 3 view .LVU1092
	add	r8, r8, #1	@ i, i,
.LVL298:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:328: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, *src_vtx));
	.loc 1 328 32 discriminator 1 view .LVU1093
	add	r2, r3, r2, lsl #2	@ tmp698, ivtmp.278, tmp696,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:326: 		for (int i = 0; i < mesh->vertex_count; ++i)
	.loc 1 326 21 discriminator 1 view .LVU1094
	cmp	r8, r1	@ i, _214
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:328: 			scene->tmp_view_points[i] = xform_transform_pt(&scene->view_xform, xform_transform_pt(matrix, *src_vtx));
	.loc 1 328 32 discriminator 1 view .LVU1095
	vstr.32	s0, [r2]	@ tmp1034, *_227
	vstr.32	s1, [r2, #4]	@ tmp1035, *_227
	vstr.32	s2, [r2, #8]	@ tmp1036, *_227
	.loc 1 329 4 is_stmt 1 view .LVU1096
.LVL299:
	.loc 1 326 43 discriminator 3 view .LVU1097
	.loc 1 326 21 discriminator 1 view .LVU1098
	blt	.L105		@,
	b	.L103		@
.LVL300:
.L212:
	.loc 1 326 21 is_stmt 0 discriminator 1 view .LVU1099
.LBE465:
.LBE463:
	.loc 1 273 3 is_stmt 1 view .LVU1100
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:273: 		scene->tmp_points_cap = mesh->vertex_count;
	.loc 1 273 25 is_stmt 0 view .LVU1101
	str	r1, [fp, #120]	@ _119, scene_68(D)->tmp_points_cap
	.loc 1 274 3 is_stmt 1 view .LVU1102
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:274: 		scene->tmp_view_points = plat_realloc(scene->tmp_view_points, scene->tmp_points_cap * sizeof(scene->tmp_view_points[0]));
	.loc 1 274 87 is_stmt 0 view .LVU1103
	add	r1, r1, r1, lsl #1	@ _122, _119, _119,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:274: 		scene->tmp_view_points = plat_realloc(scene->tmp_view_points, scene->tmp_points_cap * sizeof(scene->tmp_view_points[0]));
	.loc 1 274 28 view .LVU1104
	ldr	r0, [fp, #124]	@, scene_68(D)->tmp_view_points
.LVL301:
	.loc 1 274 28 view .LVU1105
	lsls	r1, r1, #2	@, _122,
	bl	plat_realloc		@
.LVL302:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:275: 		scene->tmp_proj_points = plat_realloc(scene->tmp_proj_points, scene->tmp_points_cap * sizeof(scene->tmp_proj_points[0]));
	.loc 1 275 87 view .LVU1106
	ldr	r1, [fp, #120]	@ scene_68(D)->tmp_points_cap, scene_68(D)->tmp_points_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:274: 		scene->tmp_view_points = plat_realloc(scene->tmp_view_points, scene->tmp_points_cap * sizeof(scene->tmp_view_points[0]));
	.loc 1 274 26 discriminator 1 view .LVU1107
	str	r0, [fp, #124]	@ _123, scene_68(D)->tmp_view_points
	.loc 1 275 3 is_stmt 1 view .LVU1108
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:275: 		scene->tmp_proj_points = plat_realloc(scene->tmp_proj_points, scene->tmp_points_cap * sizeof(scene->tmp_proj_points[0]));
	.loc 1 275 87 is_stmt 0 view .LVU1109
	add	r1, r1, r1, lsl #1	@ _127, scene_68(D)->tmp_points_cap, scene_68(D)->tmp_points_cap,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:275: 		scene->tmp_proj_points = plat_realloc(scene->tmp_proj_points, scene->tmp_points_cap * sizeof(scene->tmp_proj_points[0]));
	.loc 1 275 28 view .LVU1110
	ldr	r0, [fp, #128]	@, scene_68(D)->tmp_proj_points
	lsls	r1, r1, #2	@, _127,
	bl	plat_realloc		@
.LVL303:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:275: 		scene->tmp_proj_points = plat_realloc(scene->tmp_proj_points, scene->tmp_points_cap * sizeof(scene->tmp_proj_points[0]));
	.loc 1 275 26 discriminator 1 view .LVU1111
	str	r0, [fp, #128]	@ _128, scene_68(D)->tmp_proj_points
	b	.L92		@
.LVL304:
.L214:
.LBB466:
	.loc 1 288 4 is_stmt 1 view .LVU1112
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:288: 			scene->vis_tris_mask_cap = mesh_tri_mask_count;
	.loc 1 288 29 is_stmt 0 view .LVU1113
	str	r5, [fp, #144]	@ mesh_tri_mask_count, scene_68(D)->vis_tris_mask_cap
	.loc 1 289 4 is_stmt 1 view .LVU1114
	bl	plat_free		@
.LVL305:
	.loc 1 290 4 view .LVU1115
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:290: 			scene->tmp_vis_tris_mask = plat_malloc(scene->vis_tris_mask_cap * sizeof(scene->tmp_vis_tris_mask[0]));
	.loc 1 290 68 is_stmt 0 view .LVU1116
	ldr	r0, [fp, #144]	@ scene_68(D)->vis_tris_mask_cap, scene_68(D)->vis_tris_mask_cap
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:290: 			scene->tmp_vis_tris_mask = plat_malloc(scene->vis_tris_mask_cap * sizeof(scene->tmp_vis_tris_mask[0]));
	.loc 1 290 31 view .LVU1117
	lsls	r0, r0, #2	@, scene_68(D)->vis_tris_mask_cap,
	bl	plat_malloc		@
.LVL306:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:290: 			scene->tmp_vis_tris_mask = plat_malloc(scene->vis_tris_mask_cap * sizeof(scene->tmp_vis_tris_mask[0]));
	.loc 1 290 29 discriminator 1 view .LVU1118
	str	r0, [fp, #148]	@ prephitmp_770, scene_68(D)->tmp_vis_tris_mask
	b	.L96		@
.LVL307:
.L216:
	.loc 1 290 29 discriminator 1 view .LVU1119
.LBE466:
	.loc 1 400 2 is_stmt 1 view .LVU1120
	.loc 1 403 2 view .LVU1121
	movs	r2, #0	@,
.LBE472:
.LBE478:
.LBE482:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:499: 	for (int i = 0; i < valid_inst_count; ++i)
	.loc 1 499 40 is_stmt 0 discriminator 3 view .LVU1122
	adds	r7, r7, #1	@ i, i,
.LVL308:
.LBB483:
.LBB479:
.LBB473:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:403: 	radixsort_upper16keys(scene->tmp_order_table1, scene->tmp_order_table2, vis_tri_count);
	.loc 1 403 2 view .LVU1123
	ldrd	r0, r1, [fp, #136]	@,, scene,
	bl	radixsort_upper16keys		@
.LVL309:
	.loc 1 404 2 is_stmt 1 view .LVU1124
	.loc 1 407 2 view .LVU1125
	.loc 1 408 2 view .LVU1126
.LBB467:
	.loc 1 408 7 view .LVU1127
	.loc 1 408 20 discriminator 1 view .LVU1128
	.loc 1 408 20 is_stmt 0 discriminator 1 view .LVU1129
.LBE467:
.LBE473:
.LBE479:
.LBE483:
	.loc 1 499 40 is_stmt 1 discriminator 3 view .LVU1130
	.loc 1 499 20 discriminator 1 view .LVU1131
	ldr	r3, [sp, #52]	@ valid_inst_count, %sfp
	cmp	r3, r7	@ valid_inst_count, i
	bne	.L89		@,
	b	.L88		@
.LVL310:
.L215:
.LBB484:
.LBB480:
.LBB474:
.LBB468:
	.loc 1 297 4 view .LVU1132
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:297: 			mesh->adjacency = plat_malloc(mesh->tri_count * 3 * sizeof(uint16_t));
	.loc 1 297 54 is_stmt 0 view .LVU1133
	ldr	r5, [sp, #24]	@ mesh, %sfp
.LVL311:
	.loc 1 297 54 view .LVU1134
	ldr	r0, [r5, #12]	@ mesh_114->tri_count, mesh_114->tri_count
	add	r0, r0, r0, lsl #1	@ _157, mesh_114->tri_count, mesh_114->tri_count,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:297: 			mesh->adjacency = plat_malloc(mesh->tri_count * 3 * sizeof(uint16_t));
	.loc 1 297 22 view .LVU1135
	lsls	r0, r0, #1	@, _157,
	bl	plat_malloc		@
.LVL312:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:298: 			generate_adjacency_buffer(mesh->adjacency, mesh->tris, mesh->tri_count * 3);
	.loc 1 298 75 view .LVU1136
	ldr	r2, [r5, #12]	@ mesh_114->tri_count, mesh_114->tri_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:298: 			generate_adjacency_buffer(mesh->adjacency, mesh->tris, mesh->tri_count * 3);
	.loc 1 298 4 view .LVU1137
	ldr	r1, [r5, #16]	@, mesh_114->tris
	add	r2, r2, r2, lsl #1	@, mesh_114->tri_count, mesh_114->tri_count,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:297: 			mesh->adjacency = plat_malloc(mesh->tri_count * 3 * sizeof(uint16_t));
	.loc 1 297 20 discriminator 1 view .LVU1138
	str	r0, [r5, #32]	@ _158, mesh_114->adjacency
	.loc 1 298 4 is_stmt 1 view .LVU1139
	bl	generate_adjacency_buffer		@
.LVL313:
	b	.L95		@
.LVL314:
.L84:
	.loc 1 298 4 is_stmt 0 view .LVU1140
.LBE468:
.LBE474:
.LBE480:
.LBE484:
.LBE489:
	.loc 1 496 2 is_stmt 1 view .LVU1141
	mov	r2, r5	@, tmp538
.LVL315:
	.loc 1 496 2 is_stmt 0 view .LVU1142
	ldrd	r0, r1, [r0, #164]	@,, scene,
.LVL316:
	.loc 1 496 2 view .LVU1143
	bl	radixsort_upper16keys		@
.LVL317:
	.loc 1 499 2 is_stmt 1 view .LVU1144
.LBB490:
	.loc 1 499 7 view .LVU1145
	.loc 1 499 20 discriminator 1 view .LVU1146
	b	.L88		@
.L227:
	.align	2
.L226:
	.word	1070945621
	.word	patterns
.LBE490:
	.cfi_endproc
.LFE57:
	.size	scene_draw, .-scene_draw
	.section	.text.mesh_load_from_file,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	mesh_load_from_file
	.syntax unified
	.thumb
	.thumb_func
	.type	mesh_load_from_file, %function
mesh_load_from_file:
.LVL318:
.LFB58:
	.loc 1 529 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 530 2 view .LVU1148
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:529: {
	.loc 1 529 1 is_stmt 0 view .LVU1149
	push	{r4, r5, r6, lr}	@
.LCFI31:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48	@,,
.LCFI32:
	.cfi_def_cfa_offset 64
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:530: 	PlatFile* f = plat_file_open_read(path);
	.loc 1 530 16 view .LVU1150
	bl	plat_file_open_read		@
.LVL319:
	.loc 1 531 2 is_stmt 1 view .LVU1151
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:531: 	if (!f)
	.loc 1 531 5 is_stmt 0 view .LVU1152
	cmp	r0, #0	@ f
	beq	.L229	@
	.loc 1 533 2 is_stmt 1 view .LVU1153
	.loc 1 542 2 view .LVU1154
	.loc 1 543 2 view .LVU1155
	movs	r2, #44	@,
	add	r1, sp, #4	@,,
	mov	r6, r0	@ f,
	bl	plat_file_read		@
.LVL320:
	.loc 1 544 2 view .LVU1156
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:544: 	if (header.magic != 0x314d4450) // PDM1
	.loc 1 544 5 is_stmt 0 view .LVU1157
	ldr	r3, .L245	@ tmp161,
	ldr	r2, [sp, #4]	@ header.magic, header.magic
	cmp	r2, r3	@ header.magic, tmp161
	bne	.L242		@,
	.loc 1 549 2 is_stmt 1 view .LVU1158
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:549: 	if (header.num_frames == 0)
	.loc 1 549 5 is_stmt 0 view .LVU1159
	ldr	r3, [sp, #20]	@ header.num_frames, header.num_frames
	cbnz	r3, .L232	@ header.num_frames,
	.loc 1 550 3 is_stmt 1 view .LVU1160
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:550: 		header.num_frames = 1;
	.loc 1 550 21 is_stmt 0 view .LVU1161
	movs	r3, #1	@ tmp164,
	str	r3, [sp, #20]	@ tmp164, header.num_frames
.L232:
	.loc 1 551 2 is_stmt 1 view .LVU1162
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:551: 	Mesh* mesh = plat_calloc(sizeof(Mesh));
	.loc 1 551 15 is_stmt 0 view .LVU1163
	movs	r0, #76	@,
	bl	plat_calloc		@
.LVL321:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:553: 	mesh->vertex_frame_count = header.num_frames;
	.loc 1 553 27 view .LVU1164
	ldr	r3, [sp, #20]	@ header.num_frames, header.num_frames
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:552: 	mesh->vertex_count = header.num_verts;
	.loc 1 552 21 view .LVU1165
	ldr	r1, [sp, #12]	@ header.num_verts, header.num_verts
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:555: 	mesh->bbox_min = header.bbox_min;
	.loc 1 555 17 view .LVU1166
	add	r2, sp, #24	@ tmp168,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:554: 	mesh->tri_count = header.num_tris;
	.loc 1 554 26 view .LVU1167
	ldr	r5, [sp, #16]	@ _7, header.num_tris
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:551: 	Mesh* mesh = plat_calloc(sizeof(Mesh));
	.loc 1 551 15 view .LVU1168
	mov	r4, r0	@ <retval>, <retval>
.LVL322:
	.loc 1 552 2 is_stmt 1 view .LVU1169
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:553: 	mesh->vertex_frame_count = header.num_frames;
	.loc 1 553 27 is_stmt 0 view .LVU1170
	str	r3, [r0, #4]	@ header.num_frames, mesh_42->vertex_frame_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:555: 	mesh->bbox_min = header.bbox_min;
	.loc 1 555 17 view .LVU1171
	add	ip, r0, #36	@ tmp167, <retval>,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:554: 	mesh->tri_count = header.num_tris;
	.loc 1 554 18 view .LVU1172
	str	r5, [r0, #12]	@ _7, mesh_42->tri_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:556: 	mesh->bbox_max = header.bbox_max;
	.loc 1 556 17 view .LVU1173
	add	r3, r0, #48	@ tmp169, <retval>,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:552: 	mesh->vertex_count = header.num_verts;
	.loc 1 552 21 view .LVU1174
	str	r1, [r0]	@ header.num_verts, mesh_42->vertex_count
	.loc 1 553 2 is_stmt 1 view .LVU1175
	.loc 1 554 2 view .LVU1176
	.loc 1 555 2 view .LVU1177
.LBB491:
.LBB492:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:320: 	return f3(v.x*s, v.y*s, v.z*s);
	.loc 2 320 9 is_stmt 0 view .LVU1178
	vmov.f32	s12, #5.0e-1	@ tmp174,
.LBE492:
.LBE491:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:559: 	const size_t tri_size = header.num_tris * 3 * sizeof(uint16_t);
	.loc 1 559 15 view .LVU1179
	add	r5, r5, r5, lsl #1	@ tri_size_48, _7, _7,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:555: 	mesh->bbox_min = header.bbox_min;
	.loc 1 555 17 view .LVU1180
	ldm	r2, {r0, r1, r2}	@ tmp168,,,
.LVL323:
	.loc 1 555 17 view .LVU1181
	stm	ip, {r0, r1, r2}	@ tmp167,,,
	.loc 1 556 2 is_stmt 1 view .LVU1182
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:556: 	mesh->bbox_max = header.bbox_max;
	.loc 1 556 17 is_stmt 0 view .LVU1183
	add	r2, sp, #48	@ tmp214,,
.LBB495:
.LBB496:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:304: 	return f3(a.x + v.x, a.y + v.y, a.z + v.z);
	.loc 2 304 9 view .LVU1184
	vldr.32	s10, [r4, #44]	@ mesh_42->bbox_min.z, mesh_42->bbox_min.z
	vldr.32	s13, [r4, #40]	@ mesh_42->bbox_min.y, mesh_42->bbox_min.y
	vldr.32	s14, [r4, #36]	@ mesh_42->bbox_min.x, mesh_42->bbox_min.x
.LBE496:
.LBE495:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:556: 	mesh->bbox_max = header.bbox_max;
	.loc 1 556 17 view .LVU1185
	ldmdb	r2, {r0, r1, r2}	@ tmp214,,,
	stm	r3, {r0, r1, r2}	@ tmp169,,,
	.loc 1 557 2 is_stmt 1 view .LVU1186
.LVL324:
.LBB500:
.LBI495:
	.loc 2 302 22 view .LVU1187
.LBB497:
	.loc 2 304 2 view .LVU1188
	.loc 2 304 2 is_stmt 0 view .LVU1189
.LBE497:
.LBE500:
.LBB501:
.LBI491:
	.loc 2 318 22 is_stmt 1 view .LVU1190
.LBB493:
	.loc 2 320 2 view .LVU1191
.LBE493:
.LBE501:
.LBB502:
.LBB498:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:304: 	return f3(a.x + v.x, a.y + v.y, a.z + v.z);
	.loc 2 304 9 is_stmt 0 view .LVU1192
	vldr.32	s9, [r4, #52]	@ mesh_42->bbox_max.y, mesh_42->bbox_max.y
.LBE498:
.LBE502:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:560: 	mesh->tris = plat_malloc(tri_size);
	.loc 1 560 15 view .LVU1193
	lsls	r0, r5, #1	@, tri_size_48,
.LBB503:
.LBB499:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:304: 	return f3(a.x + v.x, a.y + v.y, a.z + v.z);
	.loc 2 304 9 view .LVU1194
	vldr.32	s11, [r4, #48]	@ mesh_42->bbox_max.x, mesh_42->bbox_max.x
	vldr.32	s15, [r4, #56]	@ mesh_42->bbox_max.z, mesh_42->bbox_max.z
	vadd.f32	s13, s13, s9	@ _80, mesh_42->bbox_min.y, mesh_42->bbox_max.y
	vadd.f32	s14, s14, s11	@ _79, mesh_42->bbox_min.x, mesh_42->bbox_max.x
	vadd.f32	s15, s15, s10	@ _81, mesh_42->bbox_max.z, mesh_42->bbox_min.z
.LBE499:
.LBE503:
.LBB504:
.LBB494:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:320: 	return f3(v.x*s, v.y*s, v.z*s);
	.loc 2 320 9 view .LVU1195
	vmul.f32	s13, s13, s12	@ _76, _80, tmp174
	vmul.f32	s14, s14, s12	@ _75, _79, tmp174
	vmul.f32	s15, s15, s12	@ _77, _81, tmp174
.LVL325:
	.loc 2 320 9 view .LVU1196
.LBE494:
.LBE504:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:557: 	mesh->center = v3_mulfl(v3_add(mesh->bbox_min, mesh->bbox_max), 0.5f);
	.loc 1 557 17 discriminator 1 view .LVU1197
	vstr.32	s13, [r4, #64]	@ _76, MEM <float> [(struct Mesh *)mesh_42 + 64B]
	vstr.32	s14, [r4, #60]	@ _75, MEM <float> [(struct Mesh *)mesh_42 + 60B]
	vstr.32	s15, [r4, #68]	@ _77, MEM <float> [(struct Mesh *)mesh_42 + 68B]
	.loc 1 559 2 is_stmt 1 view .LVU1198
	.loc 1 560 2 view .LVU1199
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:560: 	mesh->tris = plat_malloc(tri_size);
	.loc 1 560 15 is_stmt 0 view .LVU1200
	bl	plat_malloc		@
.LVL326:
	mov	r1, r0	@ _9,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:560: 	mesh->tris = plat_malloc(tri_size);
	.loc 1 560 13 discriminator 1 view .LVU1201
	str	r0, [r4, #16]	@ _9, mesh_42->tris
	.loc 1 561 2 is_stmt 1 view .LVU1202
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:561: 	if (plat_file_read(f, mesh->tris, tri_size) != tri_size)
	.loc 1 561 6 is_stmt 0 view .LVU1203
	lsls	r2, r5, #1	@, tri_size_48,
	mov	r0, r6	@, f
	bl	plat_file_read		@
.LVL327:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:561: 	if (plat_file_read(f, mesh->tris, tri_size) != tri_size)
	.loc 1 561 5 discriminator 1 view .LVU1204
	cmp	r0, r5, lsl #1	@ _10, tri_size_48,
	bne	.L233		@,
	.loc 1 564 2 is_stmt 1 view .LVU1205
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:564: 	if (header.flags & 1)
	.loc 1 564 12 is_stmt 0 view .LVU1206
	ldr	r3, [sp, #8]	@ _12, header.flags
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:564: 	if (header.flags & 1)
	.loc 1 564 5 view .LVU1207
	ands	r2, r3, #1	@ _13, _12,
	bne	.L243		@,
	.loc 1 573 3 is_stmt 1 view .LVU1208
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:573: 		mesh->uvs = NULL;
	.loc 1 573 13 is_stmt 0 view .LVU1209
	str	r2, [r4, #20]	@ _13, mesh_42->uvs
.L235:
	.loc 1 576 2 is_stmt 1 view .LVU1210
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:576: 	if (header.flags & 2)
	.loc 1 576 5 is_stmt 0 view .LVU1211
	ands	r3, r3, #2	@ _19, _12,
	bne	.L244		@,
	.loc 1 585 3 is_stmt 1 view .LVU1212
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:585: 		mesh->colors = NULL;
	.loc 1 585 16 is_stmt 0 view .LVU1213
	str	r3, [r4, #24]	@ _19, mesh_42->colors
.L237:
	.loc 1 588 2 is_stmt 1 view .LVU1214
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:588: 	const size_t vtx_size = header.num_verts * header.num_frames * sizeof(uint32_t);
	.loc 1 588 43 is_stmt 0 view .LVU1215
	ldr	r3, [sp, #20]	@ header.num_frames, header.num_frames
	ldr	r5, [sp, #12]	@ header.num_verts, header.num_verts
	mul	r5, r3, r5	@ _25, header.num_frames, header.num_verts
	.loc 1 589 2 is_stmt 1 view .LVU1216
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:589: 	mesh->vertices = plat_malloc(vtx_size);
	.loc 1 589 19 is_stmt 0 view .LVU1217
	lsls	r0, r5, #2	@, _25,
	bl	plat_malloc		@
.LVL328:
	mov	r1, r0	@ _26,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:589: 	mesh->vertices = plat_malloc(vtx_size);
	.loc 1 589 17 discriminator 1 view .LVU1218
	str	r0, [r4, #8]	@ _26, mesh_42->vertices
	.loc 1 590 2 is_stmt 1 view .LVU1219
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:590: 	if (plat_file_read(f, mesh->vertices, vtx_size) != vtx_size)
	.loc 1 590 6 is_stmt 0 view .LVU1220
	lsls	r2, r5, #2	@, _25,
	mov	r0, r6	@, f
	bl	plat_file_read		@
.LVL329:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:590: 	if (plat_file_read(f, mesh->vertices, vtx_size) != vtx_size)
	.loc 1 590 5 discriminator 1 view .LVU1221
	cmp	r0, r5, lsl #2	@ _27, _25,
	bne	.L233		@,
	.loc 1 593 2 is_stmt 1 view .LVU1222
	mov	r0, r6	@, f
	bl	plat_file_close		@
.LVL330:
	.loc 1 594 2 view .LVU1223
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:600: }
	.loc 1 600 1 is_stmt 0 view .LVU1224
	mov	r0, r4	@, <retval>
	add	sp, sp, #48	@,,
.LCFI33:
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed	@
	pop	{r4, r5, r6, pc}	@
.LVL331:
.L244:
.LCFI34:
	.cfi_restore_state
.LBB505:
	.loc 1 578 3 is_stmt 1 view .LVU1225
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:578: 		const size_t col_size = header.num_tris * sizeof(uint8_t);
	.loc 1 578 16 is_stmt 0 view .LVU1226
	ldr	r5, [sp, #16]	@ col_size, header.num_tris
.LVL332:
	.loc 1 579 3 is_stmt 1 view .LVU1227
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:579: 		mesh->colors = plat_malloc(col_size);
	.loc 1 579 18 is_stmt 0 view .LVU1228
	mov	r0, r5	@, col_size
	bl	plat_malloc		@
.LVL333:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:580: 		if (plat_file_read(f, mesh->colors, col_size) != col_size)
	.loc 1 580 7 view .LVU1229
	mov	r2, r5	@, col_size
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:579: 		mesh->colors = plat_malloc(col_size);
	.loc 1 579 18 view .LVU1230
	mov	r1, r0	@ _20,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:579: 		mesh->colors = plat_malloc(col_size);
	.loc 1 579 16 discriminator 1 view .LVU1231
	str	r0, [r4, #24]	@ _20, mesh_42->colors
	.loc 1 580 3 is_stmt 1 view .LVU1232
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:580: 		if (plat_file_read(f, mesh->colors, col_size) != col_size)
	.loc 1 580 7 is_stmt 0 view .LVU1233
	mov	r0, r6	@, f
	bl	plat_file_read		@
.LVL334:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:580: 		if (plat_file_read(f, mesh->colors, col_size) != col_size)
	.loc 1 580 6 discriminator 1 view .LVU1234
	cmp	r0, r5	@ _21, col_size
	beq	.L237		@,
.LVL335:
.L233:
	.loc 1 580 6 discriminator 1 view .LVU1235
.LBE505:
.LBB506:
.LBB507:
	mov	r0, r4	@, <retval>
	bl	mesh_free.part.0		@
.LVL336:
.LBE507:
.LBE506:
	.loc 1 598 2 is_stmt 1 view .LVU1236
	mov	r0, r6	@, f
	bl	plat_file_close		@
.LVL337:
	.loc 1 599 2 view .LVU1237
.L229:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:532: 		return NULL;
	.loc 1 532 9 is_stmt 0 view .LVU1238
	movs	r4, #0	@ <retval>,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:600: }
	.loc 1 600 1 view .LVU1239
	mov	r0, r4	@, <retval>
	add	sp, sp, #48	@,,
.LCFI35:
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed	@
	pop	{r4, r5, r6, pc}	@
.LVL338:
.L243:
.LCFI36:
	.cfi_restore_state
.LBB508:
	.loc 1 566 3 is_stmt 1 view .LVU1240
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:566: 		const size_t uv_size = header.num_tris * 3 * sizeof(float2);
	.loc 1 566 16 is_stmt 0 view .LVU1241
	ldr	r5, [sp, #16]	@ header.num_tris, header.num_tris
	add	r5, r5, r5, lsl #1	@ uv_size_53, header.num_tris, header.num_tris,
	.loc 1 567 3 is_stmt 1 view .LVU1242
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:567: 		mesh->uvs = plat_malloc(uv_size);
	.loc 1 567 15 is_stmt 0 view .LVU1243
	lsls	r0, r5, #3	@, uv_size_53,
	bl	plat_malloc		@
.LVL339:
	mov	r1, r0	@ _15,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:567: 		mesh->uvs = plat_malloc(uv_size);
	.loc 1 567 13 discriminator 1 view .LVU1244
	str	r0, [r4, #20]	@ _15, mesh_42->uvs
	.loc 1 568 3 is_stmt 1 view .LVU1245
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:568: 		if (plat_file_read(f, mesh->uvs, uv_size) != uv_size)
	.loc 1 568 7 is_stmt 0 view .LVU1246
	lsls	r2, r5, #3	@, uv_size_53,
	mov	r0, r6	@, f
	bl	plat_file_read		@
.LVL340:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:568: 		if (plat_file_read(f, mesh->uvs, uv_size) != uv_size)
	.loc 1 568 6 discriminator 1 view .LVU1247
	cmp	r0, r5, lsl #3	@ _16, uv_size_53,
	bne	.L233		@,
.LBE508:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:576: 	if (header.flags & 2)
	.loc 1 576 12 view .LVU1248
	ldr	r3, [sp, #8]	@ _12, header.flags
	b	.L235		@
.LVL341:
.L242:
	.loc 1 546 3 is_stmt 1 view .LVU1249
	mov	r0, r6	@, f
	bl	plat_file_close		@
.LVL342:
	.loc 1 547 3 view .LVU1250
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:547: 		return NULL;
	.loc 1 547 9 is_stmt 0 view .LVU1251
	b	.L229		@
.L246:
	.align	2
.L245:
	.word	827147344
	.cfi_endproc
.LFE58:
	.size	mesh_load_from_file, .-mesh_load_from_file
	.section	.text.mesh_create,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	mesh_create
	.syntax unified
	.thumb
	.thumb_func
	.type	mesh_create, %function
mesh_create:
.LVL343:
.LFB59:
	.loc 1 603 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 604 2 view .LVU1253
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:603: {
	.loc 1 603 1 is_stmt 0 view .LVU1254
	push	{r4, r5, r6, r7, lr}	@
.LCFI37:
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20	@,,
.LCFI38:
	.cfi_def_cfa_offset 40
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:603: {
	.loc 1 603 1 view .LVU1255
	mov	r7, r0	@ vertex_count, vertex_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:606: 	Mesh* mesh = plat_calloc(sizeof(Mesh));
	.loc 1 606 15 view .LVU1256
	movs	r0, #76	@,
.LVL344:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:603: {
	.loc 1 603 1 view .LVU1257
	str	r3, [sp, #4]	@ uvs, %sfp
	ldrb	r6, [sp, #40]	@ zero_extendqisi2	@ colors, colors
	ldrb	r5, [sp, #44]	@ zero_extendqisi2	@ wire_flags, wire_flags
	strd	r2, r1, [sp, #8]	@ tri_count, frame_count,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:606: 	Mesh* mesh = plat_calloc(sizeof(Mesh));
	.loc 1 606 15 view .LVU1258
	bl	plat_calloc		@
.LVL345:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:604: 	if (frame_count < 1)
	.loc 1 604 5 view .LVU1259
	ldr	r1, [sp, #12]	@ frame_count, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:609: 	mesh->tri_count = tri_count;
	.loc 1 609 18 view .LVU1260
	ldr	r2, [sp, #8]	@ tri_count, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:606: 	Mesh* mesh = plat_calloc(sizeof(Mesh));
	.loc 1 606 15 view .LVU1261
	mov	r4, r0	@ <retval>,
.LVL346:
	.loc 1 607 2 is_stmt 1 view .LVU1262
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:604: 	if (frame_count < 1)
	.loc 1 604 5 is_stmt 0 view .LVU1263
	cmp	r1, #1	@ frame_count,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:607: 	mesh->vertex_count = vertex_count;
	.loc 1 607 21 view .LVU1264
	str	r7, [r0]	@ vertex_count, mesh_27->vertex_count
	.loc 1 608 2 is_stmt 1 view .LVU1265
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:609: 	mesh->tri_count = tri_count;
	.loc 1 609 18 is_stmt 0 view .LVU1266
	str	r2, [r0, #12]	@ tri_count, mesh_27->tri_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:612: 	mesh->tris = plat_calloc(mesh->tri_count * 3 * sizeof(uint16_t));
	.loc 1 612 47 view .LVU1267
	add	r2, r2, r2, lsl #1	@ _3, tri_count, tri_count,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:604: 	if (frame_count < 1)
	.loc 1 604 5 view .LVU1268
	it	lt
	movlt	r1, #1	@ _1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:608: 	mesh->vertex_frame_count = frame_count;
	.loc 1 608 27 view .LVU1269
	str	r1, [r0, #4]	@ _1, mesh_27->vertex_frame_count
	.loc 1 609 2 is_stmt 1 view .LVU1270
	.loc 1 610 2 view .LVU1271
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:612: 	mesh->tris = plat_calloc(mesh->tri_count * 3 * sizeof(uint16_t));
	.loc 1 612 15 is_stmt 0 view .LVU1272
	lsls	r0, r2, #1	@, _3,
.LVL347:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:610: 	mesh->flags = MeshFlag_FloatVertices;
	.loc 1 610 14 view .LVU1273
	movs	r2, #1	@ tmp142,
	strb	r2, [r4, #72]	@ tmp142, mesh_27->flags
	.loc 1 612 2 is_stmt 1 view .LVU1274
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:612: 	mesh->tris = plat_calloc(mesh->tri_count * 3 * sizeof(uint16_t));
	.loc 1 612 15 is_stmt 0 view .LVU1275
	bl	plat_calloc		@
.LVL348:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:613: 	if (uvs)
	.loc 1 613 5 view .LVU1276
	ldr	r3, [sp, #4]	@ uvs, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:612: 	mesh->tris = plat_calloc(mesh->tri_count * 3 * sizeof(uint16_t));
	.loc 1 612 13 discriminator 1 view .LVU1277
	str	r0, [r4, #16]	@ _4, mesh_27->tris
	.loc 1 613 2 is_stmt 1 view .LVU1278
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:613: 	if (uvs)
	.loc 1 613 5 is_stmt 0 view .LVU1279
	cbnz	r3, .L261	@ uvs,
	.loc 1 616 2 is_stmt 1 view .LVU1280
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:616: 	if (colors)
	.loc 1 616 5 is_stmt 0 view .LVU1281
	cbnz	r6, .L262	@ colors,
.L249:
	.loc 1 619 2 is_stmt 1 view .LVU1282
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:619: 	if (wire_flags)
	.loc 1 619 5 is_stmt 0 view .LVU1283
	cbnz	r5, .L263	@ wire_flags,
.L250:
	.loc 1 622 2 is_stmt 1 view .LVU1284
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:622: 	mesh->vertices = plat_calloc(mesh->vertex_count * mesh->vertex_frame_count * sizeof(float3));
	.loc 1 622 50 is_stmt 0 view .LVU1285
	ldrd	r0, r3, [r4]	@ mesh_27->vertex_count, mesh_27->vertex_frame_count, <retval>
	mul	r0, r3, r0	@ _17, mesh_27->vertex_frame_count, mesh_27->vertex_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:622: 	mesh->vertices = plat_calloc(mesh->vertex_count * mesh->vertex_frame_count * sizeof(float3));
	.loc 1 622 77 view .LVU1286
	add	r0, r0, r0, lsl #1	@ _19, _17, _17,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:622: 	mesh->vertices = plat_calloc(mesh->vertex_count * mesh->vertex_frame_count * sizeof(float3));
	.loc 1 622 19 view .LVU1287
	lsls	r0, r0, #2	@, _19,
	bl	plat_calloc		@
.LVL349:
	mov	r3, r0	@ _20,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:624: }
	.loc 1 624 1 view .LVU1288
	mov	r0, r4	@, <retval>
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:622: 	mesh->vertices = plat_calloc(mesh->vertex_count * mesh->vertex_frame_count * sizeof(float3));
	.loc 1 622 17 discriminator 1 view .LVU1289
	str	r3, [r4, #8]	@ _20, mesh_27->vertices
	.loc 1 623 2 is_stmt 1 view .LVU1290
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:624: }
	.loc 1 624 1 is_stmt 0 view .LVU1291
	add	sp, sp, #20	@,,
.LCFI39:
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed	@
	pop	{r4, r5, r6, r7, pc}	@
.LVL350:
.L262:
.LCFI40:
	.cfi_restore_state
	.loc 1 617 3 is_stmt 1 view .LVU1292
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:617: 		mesh->colors = plat_calloc(mesh->tri_count * sizeof(uint8_t));
	.loc 1 617 18 is_stmt 0 view .LVU1293
	ldr	r0, [r4, #12]	@, mesh_27->tri_count
	bl	plat_calloc		@
.LVL351:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:617: 		mesh->colors = plat_calloc(mesh->tri_count * sizeof(uint8_t));
	.loc 1 617 16 discriminator 1 view .LVU1294
	str	r0, [r4, #24]	@ _11, mesh_27->colors
	.loc 1 619 2 is_stmt 1 view .LVU1295
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:619: 	if (wire_flags)
	.loc 1 619 5 is_stmt 0 view .LVU1296
	cmp	r5, #0	@ wire_flags
	beq	.L250	@
.L263:
	.loc 1 620 3 is_stmt 1 view .LVU1297
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:620: 		mesh->wire_flags = plat_calloc(mesh->tri_count * sizeof(uint8_t));
	.loc 1 620 22 is_stmt 0 view .LVU1298
	ldr	r0, [r4, #12]	@, mesh_27->tri_count
	bl	plat_calloc		@
.LVL352:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:620: 		mesh->wire_flags = plat_calloc(mesh->tri_count * sizeof(uint8_t));
	.loc 1 620 20 discriminator 1 view .LVU1299
	str	r0, [r4, #28]	@ _14, mesh_27->wire_flags
	b	.L250		@
.L261:
	.loc 1 614 3 is_stmt 1 view .LVU1300
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:614: 		mesh->uvs = plat_calloc(mesh->tri_count * 3 * sizeof(float2));
	.loc 1 614 47 is_stmt 0 view .LVU1301
	ldr	r0, [r4, #12]	@ mesh_27->tri_count, mesh_27->tri_count
	add	r0, r0, r0, lsl #1	@ _7, mesh_27->tri_count, mesh_27->tri_count,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:614: 		mesh->uvs = plat_calloc(mesh->tri_count * 3 * sizeof(float2));
	.loc 1 614 15 view .LVU1302
	lsls	r0, r0, #3	@, _7,
	bl	plat_calloc		@
.LVL353:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:614: 		mesh->uvs = plat_calloc(mesh->tri_count * 3 * sizeof(float2));
	.loc 1 614 13 discriminator 1 view .LVU1303
	str	r0, [r4, #20]	@ _8, mesh_27->uvs
	.loc 1 616 2 is_stmt 1 view .LVU1304
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:616: 	if (colors)
	.loc 1 616 5 is_stmt 0 view .LVU1305
	cmp	r6, #0	@ colors
	beq	.L249	@
	b	.L262		@
	.cfi_endproc
.LFE59:
	.size	mesh_create, .-mesh_create
	.section	.text.mesh_free,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	mesh_free
	.syntax unified
	.thumb
	.thumb_func
	.type	mesh_free, %function
mesh_free:
.LVL354:
.LFB60:
	.loc 1 627 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 628 2 view .LVU1307
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:628: 	if (!mesh)
	.loc 1 628 5 is_stmt 0 view .LVU1308
	cbz	r0, .L264	@ mesh,
	b	mesh_free.part.0		@
.LVL355:
.L264:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:637: }
	.loc 1 637 1 view .LVU1309
	bx	lr	@
	.cfi_endproc
.LFE60:
	.size	mesh_free, .-mesh_free
	.section	.text.mesh_instance_init,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	mesh_instance_init
	.syntax unified
	.thumb
	.thumb_func
	.type	mesh_instance_init, %function
mesh_instance_init:
.LVL356:
.LFB61:
	.loc 1 640 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 641 2 view .LVU1311
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:640: {
	.loc 1 640 1 is_stmt 0 view .LVU1312
	push	{r3, r4, r5, lr}	@
.LCFI41:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:641: 	memset(inst, 0, sizeof(*inst));
	.loc 1 641 2 view .LVU1313
	movs	r2, #68	@,
	movs	r1, #0	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:640: {
	.loc 1 640 1 view .LVU1314
	mov	r4, r0	@ inst, inst
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:641: 	memset(inst, 0, sizeof(*inst));
	.loc 1 641 2 view .LVU1315
	bl	memset		@
.LVL357:
	.loc 1 642 2 is_stmt 1 view .LVU1316
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:642: 	inst->tr = xform_identity;
	.loc 1 642 11 is_stmt 0 view .LVU1317
	ldr	lr, .L268	@ tmp120,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:643: 	inst->color = 1.0f;
	.loc 1 643 14 view .LVU1318
	vmov.f32	s15, #1.0e+0	@ tmp121,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:642: 	inst->tr = xform_identity;
	.loc 1 642 11 view .LVU1319
	add	ip, r4, #4	@ tmp119, inst,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:644: 	inst->flags = MeshDrawFlag_Solid | MeshDrawFlag_Lighting;
	.loc 1 644 14 view .LVU1320
	movs	r5, #3	@ tmp122,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:642: 	inst->tr = xform_identity;
	.loc 1 642 11 view .LVU1321
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp120,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp119,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp120,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp119,,,,
	ldm	lr, {r0, r1, r2, r3}	@ tmp120,,,,
	stm	ip, {r0, r1, r2, r3}	@ tmp119,,,,
	.loc 1 643 2 is_stmt 1 view .LVU1322
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:643: 	inst->color = 1.0f;
	.loc 1 643 14 is_stmt 0 view .LVU1323
	vstr.32	s15, [r4, #60]	@ tmp121, inst_2(D)->color
	.loc 1 644 2 is_stmt 1 view .LVU1324
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:644: 	inst->flags = MeshDrawFlag_Solid | MeshDrawFlag_Lighting;
	.loc 1 644 14 is_stmt 0 view .LVU1325
	strb	r5, [r4, #56]	@ tmp122, inst_2(D)->flags
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\render.c:645: }
	.loc 1 645 1 view .LVU1326
	pop	{r3, r4, r5, pc}	@
.LVL358:
.L269:
	.loc 1 645 1 view .LVU1327
	.align	2
.L268:
	.word	xform_identity
	.cfi_endproc
.LFE61:
	.size	mesh_instance_init, .-mesh_instance_init
	.section	.data.patterns,"aw"
	.align	2
	.type	patterns, %object
	.size	patterns, 264
patterns:
	.ascii	"\000\000\000\000\000\000\000\000"
	.ascii	"\200\000\000\000\010\000\000\000"
	.ascii	"\210\000\000\000\210\000\000\000"
	.ascii	"\210\000 \000\210\000\002\000"
	.ascii	"\210\000\"\000\210\000\"\000"
	.ascii	"\250\000\"\000\212\000\"\000"
	.ascii	"\252\000\"\000\252\000\"\000"
	.ascii	"\252\000\242\000\252\000*\000"
	.ascii	"\252\000\252\000\252\000\252\000"
	.ascii	"\252@\252\000\252\004\252\000"
	.ascii	"\252D\252\000\252D\252\000"
	.ascii	"\252D\252\020\252D\252\001"
	.ascii	"\252D\252\021\252D\252\021"
	.ascii	"\252T\252\021\252E\252\021"
	.ascii	"\252U\252\021\252U\252\021"
	.ascii	"\252U\252Q\252U\252\025"
	.ascii	"\252U\252U\252U\252U"
	.ascii	"\272U\252U\253U\252U"
	.ascii	"\273U\252U\273U\252U"
	.ascii	"\273U\352U\273U\256U"
	.ascii	"\273U\356U\273U\356U"
	.ascii	"\373U\356U\277U\356U"
	.ascii	"\377U\356U\377U\356U"
	.ascii	"\377U\376U\377U\357U"
	.ascii	"\377U\377U\377U\377U"
	.ascii	"\377U\377\325\377U\377]"
	.ascii	"\377U\377\335\377U\377\335"
	.ascii	"\377u\377\335\377W\377\335"
	.ascii	"\377w\377\335\377w\377\335"
	.ascii	"\377w\377\375\377w\377\337"
	.ascii	"\377w\377\377\377w\377\377"
	.ascii	"\377\367\377\377\377\177\377\377"
	.ascii	"\377\377\377\377\377\377\377\377"
	.text
.Letext0:
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "D:/Playdate/arm-gnu-toolchain/lib/gcc/arm-none-eabi/15.3.1/include/stddef.h"
	.file 6 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\render.h"
	.file 7 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\platform.h"
	.file 8 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\draw_style.h"
	.file 9 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util/adjacency_generator.h"
	.file 10 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util/radixsort.h"
	.file 11 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/string.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2b50
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xc
	.4byte	.LASF112
	.4byte	.LASF113
	.4byte	.Ldebug_ranges0+0x680
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
	.4byte	.LASF6
	.byte	0x3
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
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x72
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x85
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x98
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x66
	.uleb128 0x5
	.4byte	0xbc
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x79
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0xd9
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0xe5
	.byte	0x16
	.4byte	0x37
	.uleb128 0x5
	.4byte	0xea
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x5
	.4byte	0x104
	.uleb128 0x7
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0xc
	.byte	0x2
	.2byte	0x101
	.byte	0x10
	.4byte	0x15b
	.uleb128 0x9
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x103
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x105
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x106
	.byte	0x3
	.4byte	0x122
	.uleb128 0x5
	.4byte	0x15b
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x30
	.byte	0x2
	.2byte	0x15c
	.byte	0x10
	.4byte	0x1b9
	.uleb128 0x9
	.ascii	"pos\000"
	.byte	0x2
	.2byte	0x15e
	.byte	0x9
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"ax\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0x9
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.ascii	"ay\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0xd
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.ascii	"az\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0x11
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x2
	.2byte	0x160
	.byte	0x3
	.4byte	0x16d
	.uleb128 0x5
	.4byte	0x1b9
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x161
	.byte	0xe
	.4byte	0x1b9
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x6
	.byte	0x5
	.byte	0x6
	.4byte	0x1f3
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x6
	.byte	0x9
	.byte	0x6
	.4byte	0x21e
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x1
	.4byte	0x58
	.byte	0x6
	.byte	0x20
	.byte	0x6
	.4byte	0x237
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x4c
	.byte	0x6
	.byte	0x26
	.byte	0x10
	.4byte	0x308
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x6
	.byte	0x27
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x28
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.4byte	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0x2a
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x6
	.byte	0x2b
	.byte	0xc
	.4byte	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.ascii	"uvs\000"
	.byte	0x6
	.byte	0x2c
	.byte	0x9
	.4byte	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x6
	.byte	0x2d
	.byte	0xb
	.4byte	0x314
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x6
	.byte	0x2e
	.byte	0xb
	.4byte	0x314
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x6
	.byte	0x2f
	.byte	0xc
	.4byte	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x6
	.byte	0x30
	.byte	0x9
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x6
	.byte	0x31
	.byte	0x9
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x6
	.byte	0x32
	.byte	0x9
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x6
	.byte	0x33
	.byte	0x11
	.4byte	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.byte	0x4
	.4byte	0x29
	.uleb128 0x7
	.byte	0x4
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0x34
	.byte	0x3
	.4byte	0x237
	.uleb128 0x5
	.4byte	0x31a
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x44
	.byte	0x6
	.byte	0x3a
	.byte	0x10
	.4byte	0x392
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x6
	.byte	0x3b
	.byte	0x8
	.4byte	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.ascii	"tr\000"
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0x3d
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x6
	.byte	0x3e
	.byte	0x15
	.4byte	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x6
	.byte	0x3f
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x6
	.byte	0x40
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x31a
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x6
	.byte	0x41
	.byte	0x3
	.4byte	0x32b
	.uleb128 0x5
	.4byte	0x398
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0xbc
	.byte	0x6
	.byte	0x45
	.byte	0x10
	.4byte	0x51f
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x6
	.byte	0x47
	.byte	0x8
	.4byte	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x6
	.byte	0x48
	.byte	0x8
	.4byte	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x6
	.byte	0x49
	.byte	0x9
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x6
	.byte	0x4c
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x6
	.byte	0x4d
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0x50
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x6
	.byte	0x52
	.byte	0x6
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x6
	.byte	0x54
	.byte	0xa
	.4byte	0x51f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x6
	.byte	0x56
	.byte	0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x6
	.byte	0x57
	.byte	0xc
	.4byte	0x525
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x6
	.byte	0x58
	.byte	0xc
	.4byte	0x525
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x6
	.byte	0x5a
	.byte	0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x6
	.byte	0x5b
	.byte	0xc
	.4byte	0x525
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x6
	.byte	0x5d
	.byte	0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x6
	.byte	0x5e
	.byte	0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x6
	.byte	0x5f
	.byte	0x17
	.4byte	0x52b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x6
	.byte	0x60
	.byte	0xc
	.4byte	0x525
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x6
	.byte	0x61
	.byte	0xc
	.4byte	0x525
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x6
	.byte	0x63
	.byte	0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x6
	.byte	0x65
	.byte	0xa
	.4byte	0x51f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x6
	.byte	0x67
	.byte	0x6
	.4byte	0x3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x15b
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x7
	.byte	0x4
	.4byte	0x531
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3a4
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x6
	.byte	0x68
	.byte	0x3
	.4byte	0x3a9
	.uleb128 0x5
	.4byte	0x537
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x7
	.byte	0x1d
	.byte	0x19
	.4byte	0x554
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x12
	.4byte	0xab
	.4byte	0x570
	.uleb128 0x13
	.4byte	0x37
	.byte	0x20
	.uleb128 0x13
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x1
	.byte	0xaf
	.byte	0x10
	.4byte	0x55a
	.byte	0x5
	.byte	0x3
	.4byte	patterns
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF76
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.byte	0x1
	.4byte	0x102
	.byte	0x1
	.4byte	0x59b
	.uleb128 0x16
	.4byte	0xea
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF79
	.byte	0x7
	.byte	0x31
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x5b0
	.uleb128 0x16
	.4byte	0x5b0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x548
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF77
	.byte	0x7
	.byte	0x2d
	.byte	0x5
	.byte	0x1
	.4byte	0x3e
	.byte	0x1
	.4byte	0x5d9
	.uleb128 0x16
	.4byte	0x5b0
	.uleb128 0x16
	.4byte	0x102
	.uleb128 0x16
	.4byte	0xea
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF78
	.byte	0x7
	.byte	0x2b
	.byte	0xb
	.byte	0x1
	.4byte	0x5b0
	.byte	0x1
	.4byte	0x5f2
	.uleb128 0x16
	.4byte	0x110
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF80
	.byte	0x8
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x620
	.uleb128 0x16
	.4byte	0x314
	.uleb128 0x16
	.4byte	0x3e
	.uleb128 0x16
	.4byte	0x620
	.uleb128 0x16
	.4byte	0x620
	.uleb128 0x16
	.4byte	0x620
	.uleb128 0x16
	.4byte	0xb7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x168
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF81
	.byte	0x8
	.byte	0x5
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x654
	.uleb128 0x16
	.4byte	0x314
	.uleb128 0x16
	.4byte	0x3e
	.uleb128 0x16
	.4byte	0x620
	.uleb128 0x16
	.4byte	0x620
	.uleb128 0x16
	.4byte	0x620
	.uleb128 0x16
	.4byte	0x654
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x15a
	.byte	0x8
	.byte	0x1
	.4byte	0x15b
	.byte	0x1
	.4byte	0x67e
	.uleb128 0x16
	.4byte	0x620
	.uleb128 0x16
	.4byte	0x620
	.uleb128 0x16
	.4byte	0x620
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF83
	.byte	0x9
	.byte	0x7
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x69d
	.uleb128 0x16
	.4byte	0x308
	.uleb128 0x16
	.4byte	0x69d
	.uleb128 0x16
	.4byte	0xd9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF84
	.byte	0xa
	.byte	0x2d
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x6c2
	.uleb128 0x16
	.4byte	0x525
	.uleb128 0x16
	.4byte	0x525
	.uleb128 0x16
	.4byte	0xd9
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x168
	.byte	0x8
	.byte	0x1
	.4byte	0x15b
	.byte	0x1
	.4byte	0x6e1
	.uleb128 0x16
	.4byte	0x6e1
	.uleb128 0x16
	.4byte	0x15b
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1c6
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF86
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.byte	0x1
	.4byte	0x102
	.byte	0x1
	.4byte	0x700
	.uleb128 0x16
	.4byte	0xea
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF87
	.byte	0x7
	.byte	0x4a
	.byte	0x7
	.byte	0x1
	.4byte	0x102
	.byte	0x1
	.4byte	0x71e
	.uleb128 0x16
	.4byte	0x102
	.uleb128 0x16
	.4byte	0xea
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x16b
	.byte	0x7
	.byte	0x1
	.4byte	0x1b9
	.byte	0x1
	.4byte	0x738
	.uleb128 0x16
	.4byte	0x6e1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x16a
	.byte	0x7
	.byte	0x1
	.4byte	0x1b9
	.byte	0x1
	.4byte	0x75c
	.uleb128 0x16
	.4byte	0x15b
	.uleb128 0x16
	.4byte	0x15b
	.uleb128 0x16
	.4byte	0x15b
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF90
	.byte	0x7
	.byte	0x4b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x771
	.uleb128 0x16
	.4byte	0x102
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF91
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x1
	.4byte	0x102
	.byte	0x1
	.4byte	0x794
	.uleb128 0x16
	.4byte	0x102
	.uleb128 0x16
	.4byte	0x3e
	.uleb128 0x16
	.4byte	0x37
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x27f
	.byte	0x6
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST204
	.byte	0x1
	.4byte	0x7e1
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x27f
	.byte	0x27
	.4byte	0x7e1
	.4byte	.LLST205
	.4byte	.LVUS205
	.uleb128 0x1b
	.4byte	.LVL357
	.4byte	0x2b46
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x398
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x272
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x805
	.uleb128 0x1e
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x272
	.byte	0x16
	.4byte	0x392
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x25a
	.byte	0x7
	.byte	0x1
	.4byte	0x392
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST195
	.byte	0x1
	.4byte	0x90a
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x25a
	.byte	0x17
	.4byte	0x3e
	.4byte	.LLST196
	.4byte	.LVUS196
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x25a
	.byte	0x29
	.4byte	0x3e
	.4byte	.LLST197
	.4byte	.LVUS197
	.uleb128 0x1a
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x25a
	.byte	0x3a
	.4byte	0x3e
	.4byte	.LLST198
	.4byte	.LVUS198
	.uleb128 0x20
	.ascii	"uvs\000"
	.byte	0x1
	.2byte	0x25a
	.byte	0x49
	.4byte	0x90a
	.4byte	.LLST199
	.4byte	.LVUS199
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x25a
	.byte	0x53
	.4byte	0x90a
	.4byte	.LLST200
	.4byte	.LVUS200
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x25a
	.byte	0x60
	.4byte	0x90a
	.4byte	.LLST201
	.4byte	.LVUS201
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x25e
	.byte	0x8
	.4byte	0x392
	.4byte	.LLST202
	.4byte	.LVUS202
	.uleb128 0x22
	.4byte	.LVL345
	.4byte	0x582
	.4byte	0x8cc
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.uleb128 0x22
	.4byte	.LVL348
	.4byte	0x582
	.4byte	0x8e5
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x7
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x33
	.byte	0x1e
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x23
	.4byte	.LVL349
	.4byte	0x582
	.uleb128 0x23
	.4byte	.LVL351
	.4byte	0x582
	.uleb128 0x23
	.4byte	.LVL352
	.4byte	0x582
	.uleb128 0x23
	.4byte	.LVL353
	.4byte	0x582
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF96
	.uleb128 0x5
	.4byte	0x90a
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x210
	.byte	0x7
	.byte	0x1
	.4byte	0x392
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST186
	.byte	0x1
	.4byte	0xc45
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x210
	.byte	0x27
	.4byte	0x110
	.4byte	.LLST187
	.4byte	.LVUS187
	.uleb128 0x24
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x212
	.byte	0xc
	.4byte	0x5b0
	.4byte	.LLST188
	.4byte	.LVUS188
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x2c
	.byte	0x1
	.2byte	0x215
	.byte	0x11
	.4byte	0x9dd
	.uleb128 0x25
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x216
	.byte	0xc
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x25
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x217
	.byte	0xc
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x25
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x218
	.byte	0xc
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x25
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x219
	.byte	0xc
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x25
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x21a
	.byte	0xc
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x25
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x21b
	.byte	0xa
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x25
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x21c
	.byte	0xa
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x21d
	.byte	0x4
	.4byte	0x95e
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x21e
	.byte	0x9
	.4byte	0x9dd
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x227
	.byte	0x8
	.4byte	0x392
	.4byte	.LLST189
	.4byte	.LVUS189
	.uleb128 0x27
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x22f
	.byte	0xf
	.4byte	0xf6
	.uleb128 0x28
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x254
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x24c
	.byte	0xf
	.4byte	0xf6
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.4byte	.LBB508
	.4byte	.LBE508
	.4byte	0xa7d
	.uleb128 0x27
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x236
	.byte	0x10
	.4byte	0xf6
	.uleb128 0x22
	.4byte	.LVL339
	.4byte	0x6e7
	.4byte	0xa64
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL340
	.4byte	0x5b6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB505
	.4byte	.LBE505
	.4byte	0xaca
	.uleb128 0x21
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x242
	.byte	0x10
	.4byte	0xf6
	.4byte	.LLST194
	.4byte	.LVUS194
	.uleb128 0x22
	.4byte	.LVL333
	.4byte	0x6e7
	.4byte	0xab3
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL334
	.4byte	0x5b6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x259b
	.4byte	.LBI491
	.2byte	.LVU1190
	.4byte	.Ldebug_ranges0+0x638
	.byte	0x1
	.2byte	0x22d
	.byte	0x11
	.4byte	0xafc
	.uleb128 0x2b
	.4byte	0x25ae
	.4byte	.LLST190
	.4byte	.LVUS190
	.uleb128 0x2b
	.4byte	0x25b9
	.4byte	.LLST191
	.4byte	.LVUS191
	.byte	0
	.uleb128 0x2a
	.4byte	0x2619
	.4byte	.LBI495
	.2byte	.LVU1187
	.4byte	.Ldebug_ranges0+0x658
	.byte	0x1
	.2byte	0x22d
	.byte	0x11
	.4byte	0xb2e
	.uleb128 0x2b
	.4byte	0x262c
	.4byte	.LLST192
	.4byte	.LVUS192
	.uleb128 0x2b
	.4byte	0x2637
	.4byte	.LLST193
	.4byte	.LVUS193
	.byte	0
	.uleb128 0x2c
	.4byte	0x7e7
	.4byte	.LBB506
	.4byte	.LBE506
	.byte	0x1
	.2byte	0x255
	.byte	0x2
	.4byte	0xb59
	.uleb128 0x2d
	.4byte	0x7f7
	.uleb128 0x1b
	.4byte	.LVL336
	.4byte	0x29e5
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL319
	.4byte	0x5d9
	.4byte	0xb74
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL320
	.4byte	0x5b6
	.4byte	0xb94
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.uleb128 0x22
	.4byte	.LVL321
	.4byte	0x582
	.4byte	0xba8
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.uleb128 0x22
	.4byte	.LVL326
	.4byte	0x6e7
	.4byte	0xbbe
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x22
	.4byte	.LVL327
	.4byte	0x5b6
	.4byte	0xbda
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x22
	.4byte	.LVL328
	.4byte	0x6e7
	.4byte	0xbf0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x22
	.4byte	.LVL329
	.4byte	0x5b6
	.4byte	0xc0c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x22
	.4byte	.LVL330
	.4byte	0x59b
	.4byte	0xc20
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL337
	.4byte	0x59b
	.4byte	0xc34
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL342
	.4byte	0x59b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1df
	.byte	0x6
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST74
	.byte	0x1
	.4byte	0x18e0
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1df
	.byte	0x18
	.4byte	0x18e0
	.4byte	.LLST75
	.4byte	.LVUS75
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1df
	.byte	0x28
	.4byte	0x314
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1df
	.byte	0x34
	.4byte	0x3e
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x1a
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1df
	.byte	0x53
	.4byte	0x21e
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x21
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1e4
	.byte	0x17
	.4byte	0x52b
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0x21
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1e5
	.byte	0x6
	.4byte	0x3e
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x21
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1fb
	.byte	0xe
	.4byte	0x116
	.4byte	.LLST81
	.4byte	.LVUS81
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1fc
	.byte	0xe
	.4byte	0x116
	.4byte	.LLST82
	.4byte	.LVUS82
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1fd
	.byte	0xe
	.4byte	0x116
	.4byte	.LLST83
	.4byte	.LVUS83
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x1c8
	.4byte	0xe3d
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1e6
	.byte	0xb
	.4byte	0x3e
	.4byte	.LLST84
	.4byte	.LVUS84
	.uleb128 0x2f
	.4byte	.LBB329
	.4byte	.LBE329
	.uleb128 0x21
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1e8
	.byte	0xf
	.4byte	0x18e6
	.4byte	.LLST85
	.4byte	.LVUS85
	.uleb128 0x26
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1eb
	.byte	0xa
	.4byte	0x15b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1ec
	.byte	0xa
	.4byte	0x15b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.ascii	"z\000"
	.byte	0x1
	.2byte	0x1ed
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST86
	.4byte	.LVUS86
	.uleb128 0x2a
	.4byte	0x1d74
	.4byte	.LBI330
	.2byte	.LVU462
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.2byte	0x1ee
	.byte	0x36
	.4byte	0xe22
	.uleb128 0x2b
	.4byte	0x1d86
	.4byte	.LLST87
	.4byte	.LVUS87
	.uleb128 0x2b
	.4byte	0x1d90
	.4byte	.LLST88
	.4byte	.LVUS88
	.uleb128 0x30
	.4byte	0x1dba
	.uleb128 0x31
	.4byte	0x2780
	.4byte	.LBI332
	.2byte	.LVU466
	.4byte	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0xfb
	.byte	0xb
	.4byte	0xdf4
	.uleb128 0x2b
	.4byte	0x2792
	.4byte	.LLST89
	.4byte	.LVUS89
	.uleb128 0x32
	.4byte	0x27ba
	.4byte	.LLST90
	.4byte	.LVUS90
	.byte	0
	.uleb128 0x33
	.4byte	0x1dc7
	.4byte	.LBI336
	.2byte	.LVU474
	.4byte	.Ldebug_ranges0+0x228
	.byte	0x1
	.byte	0xfc
	.byte	0xb
	.uleb128 0x2b
	.4byte	0x1dd9
	.4byte	.LLST91
	.4byte	.LVUS91
	.uleb128 0x32
	.4byte	0x1de3
	.4byte	.LLST92
	.4byte	.LVUS92
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL136
	.4byte	0x6c2
	.uleb128 0x1b
	.4byte	.LVL137
	.4byte	0x6c2
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x240
	.4byte	0x181e
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1f3
	.byte	0xb
	.4byte	0x3e
	.4byte	.LLST93
	.4byte	.LVUS93
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x260
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x1f5
	.byte	0xc
	.4byte	0xbc
	.4byte	.LLST94
	.4byte	.LVUS94
	.uleb128 0x21
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1f6
	.byte	0x17
	.4byte	0x531
	.4byte	.LLST95
	.4byte	.LVUS95
	.uleb128 0x35
	.4byte	0x19b7
	.4byte	.LBI349
	.2byte	.LVU510
	.4byte	.Ldebug_ranges0+0x290
	.byte	0x1
	.2byte	0x1f7
	.byte	0x3
	.uleb128 0x2b
	.4byte	0x19c6
	.4byte	.LLST96
	.4byte	.LVUS96
	.uleb128 0x2b
	.4byte	0x19d3
	.4byte	.LLST97
	.4byte	.LVUS97
	.uleb128 0x2b
	.4byte	0x19e0
	.4byte	.LLST98
	.4byte	.LVUS98
	.uleb128 0x2b
	.4byte	0x19ed
	.4byte	.LLST99
	.4byte	.LVUS99
	.uleb128 0x2b
	.4byte	0x19fa
	.4byte	.LLST100
	.4byte	.LVUS100
	.uleb128 0x32
	.4byte	0x1a07
	.4byte	.LLST101
	.4byte	.LVUS101
	.uleb128 0x32
	.4byte	0x1a14
	.4byte	.LLST102
	.4byte	.LVUS102
	.uleb128 0x32
	.4byte	0x1a21
	.4byte	.LLST103
	.4byte	.LVUS103
	.uleb128 0x32
	.4byte	0x1a2e
	.4byte	.LLST104
	.4byte	.LVUS104
	.uleb128 0x32
	.4byte	0x1a3b
	.4byte	.LLST105
	.4byte	.LVUS105
	.uleb128 0x32
	.4byte	0x1a48
	.4byte	.LLST106
	.4byte	.LVUS106
	.uleb128 0x32
	.4byte	0x1a55
	.4byte	.LLST107
	.4byte	.LVUS107
	.uleb128 0x32
	.4byte	0x1a62
	.4byte	.LLST108
	.4byte	.LVUS108
	.uleb128 0x32
	.4byte	0x1a6f
	.4byte	.LLST109
	.4byte	.LVUS109
	.uleb128 0x32
	.4byte	0x1a7c
	.4byte	.LLST110
	.4byte	.LVUS110
	.uleb128 0x32
	.4byte	0x1a89
	.4byte	.LLST111
	.4byte	.LVUS111
	.uleb128 0x32
	.4byte	0x1a96
	.4byte	.LLST112
	.4byte	.LVUS112
	.uleb128 0x36
	.4byte	0x1b53
	.4byte	.Ldebug_ranges0+0x2d0
	.4byte	0xfd6
	.uleb128 0x32
	.4byte	0x1b58
	.4byte	.LLST113
	.4byte	.LVUS113
	.uleb128 0x37
	.4byte	0x1b63
	.4byte	.Ldebug_ranges0+0x2f0
	.uleb128 0x32
	.4byte	0x1b64
	.4byte	.LLST114
	.4byte	.LVUS114
	.uleb128 0x32
	.4byte	0x1b6f
	.4byte	.LLST115
	.4byte	.LVUS115
	.uleb128 0x32
	.4byte	0x1b7b
	.4byte	.LLST116
	.4byte	.LVUS116
	.uleb128 0x37
	.4byte	0x1b87
	.4byte	.Ldebug_ranges0+0x310
	.uleb128 0x38
	.4byte	0x1b88
	.byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x1c95
	.4byte	.Ldebug_ranges0+0x328
	.4byte	0x1405
	.uleb128 0x32
	.4byte	0x1c96
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x37
	.4byte	0x1ca1
	.4byte	.Ldebug_ranges0+0x350
	.uleb128 0x32
	.4byte	0x1ca2
	.4byte	.LLST118
	.4byte	.LVUS118
	.uleb128 0x32
	.4byte	0x1cae
	.4byte	.LLST119
	.4byte	.LVUS119
	.uleb128 0x32
	.4byte	0x1cbb
	.4byte	.LLST120
	.4byte	.LVUS120
	.uleb128 0x32
	.4byte	0x1cc8
	.4byte	.LLST121
	.4byte	.LVUS121
	.uleb128 0x32
	.4byte	0x1cd5
	.4byte	.LLST122
	.4byte	.LVUS122
	.uleb128 0x32
	.4byte	0x1ce2
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x2a
	.4byte	0x1df0
	.4byte	.LBI359
	.2byte	.LVU858
	.4byte	.Ldebug_ranges0+0x388
	.byte	0x1
	.2byte	0x1c1
	.byte	0x3
	.4byte	0x12f1
	.uleb128 0x2d
	.4byte	0x1dfe
	.uleb128 0x2d
	.4byte	0x1e0a
	.uleb128 0x2d
	.4byte	0x1e16
	.uleb128 0x2d
	.4byte	0x1e21
	.uleb128 0x2d
	.4byte	0x1e2c
	.uleb128 0x2b
	.4byte	0x1e37
	.4byte	.LLST124
	.4byte	.LVUS124
	.uleb128 0x2b
	.4byte	0x1e43
	.4byte	.LLST125
	.4byte	.LVUS125
	.uleb128 0x2b
	.4byte	0x1e4f
	.4byte	.LLST126
	.4byte	.LVUS126
	.uleb128 0x2d
	.4byte	0x1e5b
	.uleb128 0x36
	.4byte	0x1e85
	.4byte	.Ldebug_ranges0+0x3d0
	.4byte	0x114c
	.uleb128 0x32
	.4byte	0x1e86
	.4byte	.LLST127
	.4byte	.LVUS127
	.uleb128 0x31
	.4byte	0x2701
	.4byte	.LBI362
	.2byte	.LVU941
	.4byte	.Ldebug_ranges0+0x3e8
	.byte	0x1
	.byte	0xe2
	.byte	0x10
	.4byte	0x10fb
	.uleb128 0x2b
	.4byte	0x2713
	.4byte	.LLST128
	.4byte	.LVUS128
	.uleb128 0x2b
	.4byte	0x271d
	.4byte	.LLST129
	.4byte	.LVUS129
	.uleb128 0x2b
	.4byte	0x2727
	.4byte	.LLST130
	.4byte	.LVUS130
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL251
	.4byte	0x5f2
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.uleb128 0x1c
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
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
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x1e67
	.4byte	.Ldebug_ranges0+0x400
	.4byte	0x121a
	.uleb128 0x32
	.4byte	0x1e6c
	.4byte	.LLST131
	.4byte	.LVUS131
	.uleb128 0x32
	.4byte	0x1e78
	.4byte	.LLST132
	.4byte	.LVUS132
	.uleb128 0x31
	.4byte	0x2701
	.4byte	.LBI367
	.2byte	.LVU864
	.4byte	.Ldebug_ranges0+0x418
	.byte	0x1
	.byte	0xdb
	.byte	0x12
	.4byte	0x11b1
	.uleb128 0x2b
	.4byte	0x2713
	.4byte	.LLST133
	.4byte	.LVUS133
	.uleb128 0x2b
	.4byte	0x271d
	.4byte	.LLST134
	.4byte	.LVUS134
	.uleb128 0x2b
	.4byte	0x2727
	.4byte	.LLST135
	.4byte	.LVUS135
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL236
	.4byte	0x626
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.uleb128 0x1c
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x34
	.byte	0x8
	.byte	0x20
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	patterns
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL279
	.4byte	0x2230
	.4byte	0x1244
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL282
	.4byte	0x2230
	.4byte	0x1270
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL283
	.4byte	0x2230
	.4byte	0x129c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL290
	.4byte	0x2230
	.4byte	0x12c8
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL291
	.4byte	0x2230
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x1d0f
	.4byte	.Ldebug_ranges0+0x430
	.4byte	0x13ac
	.uleb128 0x32
	.4byte	0x1d10
	.4byte	.LLST136
	.4byte	.LVUS136
	.uleb128 0x32
	.4byte	0x1d1d
	.4byte	.LLST137
	.4byte	.LVUS137
	.uleb128 0x32
	.4byte	0x1d2a
	.4byte	.LLST138
	.4byte	.LVUS138
	.uleb128 0x39
	.4byte	0x1d41
	.4byte	.LBI381
	.2byte	.LVU824
	.4byte	.LBB381
	.4byte	.LBE381
	.byte	0x1
	.2byte	0x1b5
	.byte	0x8
	.4byte	0x1353
	.uleb128 0x2d
	.4byte	0x1d54
	.uleb128 0x2b
	.4byte	0x1d61
	.4byte	.LLST139
	.4byte	.LVUS139
	.byte	0
	.uleb128 0x39
	.4byte	0x1d41
	.4byte	.LBI383
	.2byte	.LVU834
	.4byte	.LBB383
	.4byte	.LBE383
	.byte	0x1
	.2byte	0x1b7
	.byte	0x8
	.4byte	0x1381
	.uleb128 0x2d
	.4byte	0x1d54
	.uleb128 0x2b
	.4byte	0x1d61
	.4byte	.LLST140
	.4byte	.LVUS140
	.byte	0
	.uleb128 0x3a
	.4byte	0x1d41
	.4byte	.LBI385
	.2byte	.LVU844
	.4byte	.LBB385
	.4byte	.LBE385
	.byte	0x1
	.2byte	0x1b9
	.byte	0x8
	.uleb128 0x2d
	.4byte	0x1d54
	.uleb128 0x2b
	.4byte	0x1d61
	.4byte	.LLST141
	.4byte	.LVUS141
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x1cef
	.4byte	.Ldebug_ranges0+0x448
	.uleb128 0x38
	.4byte	0x1cf4
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.4byte	0x1d01
	.uleb128 0x39
	.4byte	0x26a3
	.4byte	.LBI390
	.2byte	.LVU1056
	.4byte	.LBB390
	.4byte	.LBE390
	.byte	0x1
	.2byte	0x1a4
	.byte	0x11
	.4byte	0x13f9
	.uleb128 0x2b
	.4byte	0x26b6
	.4byte	.LLST142
	.4byte	.LVUS142
	.uleb128 0x2b
	.4byte	0x26c1
	.4byte	.LLST143
	.4byte	.LVUS143
	.byte	0
	.uleb128 0x23
	.4byte	.LVL285
	.4byte	0x65a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x1aa3
	.4byte	.Ldebug_ranges0+0x478
	.4byte	0x145f
	.uleb128 0x32
	.4byte	0x1aa8
	.4byte	.LLST144
	.4byte	.LVUS144
	.uleb128 0x22
	.4byte	.LVL155
	.4byte	0x2b46
	.4byte	0x143a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x23
	.4byte	.LVL305
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL306
	.4byte	0x6e7
	.uleb128 0x23
	.4byte	.LVL312
	.4byte	0x6e7
	.uleb128 0x23
	.4byte	.LVL313
	.4byte	0x67e
	.byte	0
	.uleb128 0x2a
	.4byte	0x2701
	.4byte	.LBI407
	.2byte	.LVU543
	.4byte	.Ldebug_ranges0+0x498
	.byte	0x1
	.2byte	0x12f
	.byte	0xe
	.4byte	0x149e
	.uleb128 0x2b
	.4byte	0x2713
	.4byte	.LLST145
	.4byte	.LVUS145
	.uleb128 0x2b
	.4byte	0x271d
	.4byte	.LLST146
	.4byte	.LVUS146
	.uleb128 0x2b
	.4byte	0x2727
	.4byte	.LLST147
	.4byte	.LVUS147
	.byte	0
	.uleb128 0x36
	.4byte	0x1ab6
	.4byte	.Ldebug_ranges0+0x4b8
	.4byte	0x15bb
	.uleb128 0x32
	.4byte	0x1abb
	.4byte	.LLST148
	.4byte	.LVUS148
	.uleb128 0x30
	.4byte	0x1ac8
	.uleb128 0x30
	.4byte	0x1ad5
	.uleb128 0x2a
	.4byte	0x25ef
	.4byte	.LBI412
	.2byte	.LVU565
	.4byte	.Ldebug_ranges0+0x4e0
	.byte	0x1
	.2byte	0x135
	.byte	0x1d
	.4byte	0x14f4
	.uleb128 0x2b
	.4byte	0x2602
	.4byte	.LLST149
	.4byte	.LVUS149
	.uleb128 0x2b
	.4byte	0x260d
	.4byte	.LLST150
	.4byte	.LVUS150
	.byte	0
	.uleb128 0x2a
	.4byte	0x25c5
	.4byte	.LBI416
	.2byte	.LVU568
	.4byte	.Ldebug_ranges0+0x500
	.byte	0x1
	.2byte	0x135
	.byte	0x1d
	.4byte	0x1516
	.uleb128 0x2d
	.4byte	0x25d8
	.uleb128 0x2d
	.4byte	0x25e3
	.byte	0
	.uleb128 0x37
	.4byte	0x1ae2
	.4byte	.Ldebug_ranges0+0x528
	.uleb128 0x32
	.4byte	0x1ae3
	.4byte	.LLST151
	.4byte	.LVUS151
	.uleb128 0x37
	.4byte	0x1aee
	.4byte	.Ldebug_ranges0+0x540
	.uleb128 0x32
	.4byte	0x1aef
	.4byte	.LLST152
	.4byte	.LVUS152
	.uleb128 0x32
	.4byte	0x1afc
	.4byte	.LLST153
	.4byte	.LVUS153
	.uleb128 0x32
	.4byte	0x1b09
	.4byte	.LLST154
	.4byte	.LVUS154
	.uleb128 0x32
	.4byte	0x1b16
	.4byte	.LLST155
	.4byte	.LVUS155
	.uleb128 0x38
	.4byte	0x1b23
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.4byte	0x2619
	.4byte	.LBI423
	.2byte	.LVU588
	.4byte	.Ldebug_ranges0+0x560
	.byte	0x1
	.2byte	0x13d
	.byte	0xc
	.4byte	0x1594
	.uleb128 0x2d
	.4byte	0x262c
	.uleb128 0x2d
	.4byte	0x2637
	.byte	0
	.uleb128 0x22
	.4byte	.LVL164
	.4byte	0x6c2
	.4byte	0x15a8
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL165
	.4byte	0x6c2
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	0x1b98
	.4byte	.Ldebug_ranges0+0x580
	.4byte	0x1760
	.uleb128 0x32
	.4byte	0x1b9d
	.4byte	.LLST156
	.4byte	.LVUS156
	.uleb128 0x37
	.4byte	0x1ba8
	.4byte	.Ldebug_ranges0+0x598
	.uleb128 0x32
	.4byte	0x1ba9
	.4byte	.LLST157
	.4byte	.LVUS157
	.uleb128 0x32
	.4byte	0x1bb6
	.4byte	.LLST158
	.4byte	.LVUS158
	.uleb128 0x32
	.4byte	0x1bc3
	.4byte	.LLST159
	.4byte	.LVUS159
	.uleb128 0x32
	.4byte	0x1bd0
	.4byte	.LLST160
	.4byte	.LVUS160
	.uleb128 0x32
	.4byte	0x1bdc
	.4byte	.LLST161
	.4byte	.LVUS161
	.uleb128 0x32
	.4byte	0x1be8
	.4byte	.LLST162
	.4byte	.LVUS162
	.uleb128 0x32
	.4byte	0x1bf4
	.4byte	.LLST163
	.4byte	.LVUS163
	.uleb128 0x32
	.4byte	0x1c01
	.4byte	.LLST164
	.4byte	.LVUS164
	.uleb128 0x32
	.4byte	0x1c0d
	.4byte	.LLST165
	.4byte	.LVUS165
	.uleb128 0x32
	.4byte	0x1c19
	.4byte	.LLST166
	.4byte	.LVUS166
	.uleb128 0x32
	.4byte	0x1c25
	.4byte	.LLST167
	.4byte	.LVUS167
	.uleb128 0x32
	.4byte	0x1c31
	.4byte	.LLST168
	.4byte	.LVUS168
	.uleb128 0x32
	.4byte	0x1c3d
	.4byte	.LLST169
	.4byte	.LVUS169
	.uleb128 0x32
	.4byte	0x1c49
	.4byte	.LLST170
	.4byte	.LVUS170
	.uleb128 0x32
	.4byte	0x1c56
	.4byte	.LLST171
	.4byte	.LVUS171
	.uleb128 0x32
	.4byte	0x1c63
	.4byte	.LLST172
	.4byte	.LVUS172
	.uleb128 0x32
	.4byte	0x1c70
	.4byte	.LLST173
	.4byte	.LVUS173
	.uleb128 0x30
	.4byte	0x1c7d
	.uleb128 0x32
	.4byte	0x1c88
	.4byte	.LLST174
	.4byte	.LVUS174
	.uleb128 0x35
	.4byte	0x1d74
	.4byte	.LBI446
	.2byte	.LVU685
	.4byte	.Ldebug_ranges0+0x5b8
	.byte	0x1
	.2byte	0x189
	.byte	0x2c
	.uleb128 0x2b
	.4byte	0x1d86
	.4byte	.LLST175
	.4byte	.LVUS175
	.uleb128 0x2b
	.4byte	0x1d90
	.4byte	.LLST176
	.4byte	.LVUS176
	.uleb128 0x30
	.4byte	0x1dba
	.uleb128 0x31
	.4byte	0x2780
	.4byte	.LBI448
	.2byte	.LVU689
	.4byte	.Ldebug_ranges0+0x5d0
	.byte	0x1
	.byte	0xfb
	.byte	0xb
	.4byte	0x1730
	.uleb128 0x2b
	.4byte	0x2792
	.4byte	.LLST177
	.4byte	.LVUS177
	.uleb128 0x32
	.4byte	0x27ba
	.4byte	.LLST178
	.4byte	.LVUS178
	.byte	0
	.uleb128 0x33
	.4byte	0x1dc7
	.4byte	.LBI452
	.2byte	.LVU705
	.4byte	.Ldebug_ranges0+0x5e8
	.byte	0x1
	.byte	0xfc
	.byte	0xb
	.uleb128 0x2b
	.4byte	0x1dd9
	.4byte	.LLST179
	.4byte	.LVUS179
	.uleb128 0x32
	.4byte	0x1de3
	.4byte	.LLST180
	.4byte	.LVUS180
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x1b33
	.4byte	.LBB463
	.4byte	.LBE463
	.4byte	0x17ba
	.uleb128 0x32
	.4byte	0x1b38
	.4byte	.LLST181
	.4byte	.LVUS181
	.uleb128 0x37
	.4byte	0x1b45
	.4byte	.Ldebug_ranges0+0x600
	.uleb128 0x32
	.4byte	0x1b46
	.4byte	.LLST182
	.4byte	.LVUS182
	.uleb128 0x22
	.4byte	.LVL296
	.4byte	0x6c2
	.4byte	0x17a8
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL297
	.4byte	0x6c2
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL205
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL206
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL207
	.4byte	0x6e7
	.uleb128 0x23
	.4byte	.LVL208
	.4byte	0x6e7
	.uleb128 0x22
	.4byte	.LVL216
	.4byte	0x6a3
	.4byte	0x17fa
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.4byte	.LVL302
	.4byte	0x700
	.uleb128 0x23
	.4byte	.LVL303
	.4byte	0x700
	.uleb128 0x1b
	.4byte	.LVL309
	.4byte	0x6a3
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x618
	.4byte	0x18bb
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1fe
	.byte	0xb
	.4byte	0x3e
	.4byte	.LLST183
	.4byte	.LVUS183
	.uleb128 0x2f
	.4byte	.LBB486
	.4byte	.LBE486
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x200
	.byte	0xa
	.4byte	0x15b
	.4byte	.LLST184
	.4byte	.LVUS184
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x201
	.byte	0xa
	.4byte	0x15b
	.4byte	.LLST185
	.4byte	.LVUS185
	.uleb128 0x22
	.4byte	.LVL257
	.4byte	0x6c2
	.4byte	0x1881
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL262
	.4byte	0x6c2
	.4byte	0x1895
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL273
	.4byte	0x2230
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1c
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL145
	.4byte	0x6a3
	.4byte	0x18cf
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL317
	.4byte	0x6a3
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x537
	.uleb128 0x7
	.byte	0x4
	.4byte	0x326
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1d3
	.byte	0x6
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST72
	.byte	0x1
	.4byte	0x1943
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1d3
	.byte	0x1c
	.4byte	0x18e0
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x3c
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x1d3
	.byte	0x2a
	.4byte	0x15b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x1d3
	.byte	0x34
	.4byte	0x15b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.4byte	.LVL127
	.4byte	0x700
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1c5
	.byte	0x6
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST69
	.byte	0x1
	.4byte	0x19b7
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1c5
	.byte	0x1c
	.4byte	0x18e0
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1c5
	.byte	0x37
	.4byte	0x531
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x23
	.4byte	.LVL119
	.4byte	0x700
	.uleb128 0x23
	.4byte	.LVL120
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL121
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL122
	.4byte	0x6e7
	.uleb128 0x23
	.4byte	.LVL123
	.4byte	0x6e7
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x107
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x1d3b
	.uleb128 0x1e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x107
	.byte	0x27
	.4byte	0x18e0
	.uleb128 0x1e
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x107
	.byte	0x37
	.4byte	0x314
	.uleb128 0x1e
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x107
	.byte	0x43
	.4byte	0x3e
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x107
	.byte	0x62
	.4byte	0x531
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x107
	.byte	0x7c
	.4byte	0x21e
	.uleb128 0x27
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x109
	.byte	0x8
	.4byte	0x392
	.uleb128 0x27
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x10c
	.byte	0xf
	.4byte	0x6e1
	.uleb128 0x27
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x10d
	.byte	0xc
	.4byte	0x911
	.uleb128 0x27
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x12f
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x14e
	.byte	0xe
	.4byte	0x116
	.uleb128 0x27
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x14f
	.byte	0xe
	.4byte	0x116
	.uleb128 0x27
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x150
	.byte	0xe
	.4byte	0x116
	.uleb128 0x27
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x151
	.byte	0xe
	.4byte	0x116
	.uleb128 0x27
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x161
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x27
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x162
	.byte	0x12
	.4byte	0x69d
	.uleb128 0x27
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x194
	.byte	0x12
	.4byte	0x1d3b
	.uleb128 0x27
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x197
	.byte	0xc
	.4byte	0x911
	.uleb128 0x3e
	.4byte	0x1ab6
	.uleb128 0x27
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x11e
	.byte	0x7
	.4byte	0x3e
	.byte	0
	.uleb128 0x3e
	.4byte	0x1b33
	.uleb128 0x27
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x133
	.byte	0x13
	.4byte	0x1d3b
	.uleb128 0x27
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x134
	.byte	0x10
	.4byte	0x168
	.uleb128 0x27
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x135
	.byte	0x10
	.4byte	0x168
	.uleb128 0x3f
	.uleb128 0x40
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x136
	.byte	0xc
	.4byte	0x3e
	.uleb128 0x3f
	.uleb128 0x27
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x138
	.byte	0x13
	.4byte	0xe5
	.uleb128 0x27
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x139
	.byte	0x13
	.4byte	0xe5
	.uleb128 0x27
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x13a
	.byte	0x13
	.4byte	0xe5
	.uleb128 0x27
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x13b
	.byte	0x13
	.4byte	0xe5
	.uleb128 0x27
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x13c
	.byte	0xb
	.4byte	0x15b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x1b53
	.uleb128 0x27
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x145
	.byte	0x11
	.4byte	0x620
	.uleb128 0x3f
	.uleb128 0x40
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x146
	.byte	0xc
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x1b98
	.uleb128 0x40
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x152
	.byte	0xb
	.4byte	0x3e
	.uleb128 0x3f
	.uleb128 0x40
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x154
	.byte	0x11
	.4byte	0x620
	.uleb128 0x40
	.ascii	"pp\000"
	.byte	0x1
	.2byte	0x155
	.byte	0xb
	.4byte	0x51f
	.uleb128 0x40
	.ascii	"pz\000"
	.byte	0x1
	.2byte	0x156
	.byte	0xf
	.4byte	0x116
	.uleb128 0x3f
	.uleb128 0x27
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x159
	.byte	0x10
	.4byte	0x116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x1c95
	.uleb128 0x40
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x163
	.byte	0xb
	.4byte	0x3e
	.uleb128 0x3f
	.uleb128 0x27
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x165
	.byte	0xc
	.4byte	0xbc
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x166
	.byte	0xc
	.4byte	0xbc
	.uleb128 0x27
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x167
	.byte	0xc
	.4byte	0xbc
	.uleb128 0x40
	.ascii	"p0\000"
	.byte	0x1
	.2byte	0x168
	.byte	0x10
	.4byte	0x168
	.uleb128 0x40
	.ascii	"p1\000"
	.byte	0x1
	.2byte	0x169
	.byte	0x10
	.4byte	0x168
	.uleb128 0x40
	.ascii	"p2\000"
	.byte	0x1
	.2byte	0x16a
	.byte	0x10
	.4byte	0x168
	.uleb128 0x27
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x16d
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x40
	.ascii	"x1\000"
	.byte	0x1
	.2byte	0x172
	.byte	0x9
	.4byte	0x29
	.uleb128 0x40
	.ascii	"y1\000"
	.byte	0x1
	.2byte	0x173
	.byte	0x9
	.4byte	0x29
	.uleb128 0x40
	.ascii	"x2\000"
	.byte	0x1
	.2byte	0x174
	.byte	0x9
	.4byte	0x29
	.uleb128 0x40
	.ascii	"y2\000"
	.byte	0x1
	.2byte	0x175
	.byte	0x9
	.4byte	0x29
	.uleb128 0x40
	.ascii	"x3\000"
	.byte	0x1
	.2byte	0x176
	.byte	0x9
	.4byte	0x29
	.uleb128 0x40
	.ascii	"y3\000"
	.byte	0x1
	.2byte	0x177
	.byte	0x9
	.4byte	0x29
	.uleb128 0x27
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x17f
	.byte	0x9
	.4byte	0x29
	.uleb128 0x27
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x180
	.byte	0x9
	.4byte	0x29
	.uleb128 0x27
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x181
	.byte	0x9
	.4byte	0x29
	.uleb128 0x27
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x182
	.byte	0x9
	.4byte	0x29
	.uleb128 0x40
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x183
	.byte	0x9
	.4byte	0x29
	.uleb128 0x40
	.ascii	"z\000"
	.byte	0x1
	.2byte	0x188
	.byte	0x9
	.4byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x40
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x198
	.byte	0xb
	.4byte	0x3e
	.uleb128 0x3f
	.uleb128 0x40
	.ascii	"fi\000"
	.byte	0x1
	.2byte	0x19a
	.byte	0xc
	.4byte	0xbc
	.uleb128 0x27
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x19b
	.byte	0xc
	.4byte	0xbc
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x19c
	.byte	0xc
	.4byte	0xbc
	.uleb128 0x27
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x19d
	.byte	0xc
	.4byte	0xbc
	.uleb128 0x27
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x19f
	.byte	0x9
	.4byte	0x29
	.uleb128 0x27
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x1af
	.byte	0xb
	.4byte	0xab
	.uleb128 0x3e
	.4byte	0x1d0f
	.uleb128 0x27
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x1a2
	.byte	0xb
	.4byte	0x15b
	.uleb128 0x27
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x1a4
	.byte	0xa
	.4byte	0x29
	.byte	0
	.uleb128 0x3f
	.uleb128 0x27
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x1b2
	.byte	0x13
	.4byte	0xc8
	.uleb128 0x27
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x1b3
	.byte	0x13
	.4byte	0xc8
	.uleb128 0x27
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x1b4
	.byte	0x13
	.4byte	0xc8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x41
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x102
	.byte	0xc
	.byte	0x1
	.4byte	0x90a
	.byte	0x1
	.4byte	0x1d6e
	.uleb128 0x1e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x102
	.byte	0x29
	.4byte	0x1d6e
	.uleb128 0x42
	.ascii	"fi\000"
	.byte	0x1
	.2byte	0x102
	.byte	0x39
	.4byte	0xbc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x543
	.uleb128 0x43
	.4byte	.LASF163
	.byte	0x1
	.byte	0xf6
	.byte	0x18
	.byte	0x1
	.4byte	0xd9
	.byte	0x3
	.4byte	0x1dc7
	.uleb128 0x44
	.ascii	"z\000"
	.byte	0x1
	.byte	0xf6
	.byte	0x2f
	.4byte	0x29
	.uleb128 0x45
	.4byte	.LASF125
	.byte	0x1
	.byte	0xf6
	.byte	0x3b
	.4byte	0xd9
	.uleb128 0x46
	.byte	0x4
	.byte	0x1
	.byte	0xf8
	.byte	0x2
	.4byte	0x1dba
	.uleb128 0x47
	.ascii	"f\000"
	.byte	0x1
	.byte	0xf8
	.byte	0x10
	.4byte	0x29
	.uleb128 0x47
	.ascii	"u\000"
	.byte	0x1
	.byte	0xf8
	.byte	0x1c
	.4byte	0xd9
	.byte	0
	.uleb128 0x48
	.4byte	.LASF164
	.byte	0x1
	.byte	0xf8
	.byte	0x21
	.4byte	0x1d9c
	.byte	0
	.uleb128 0x43
	.4byte	.LASF165
	.byte	0x1
	.byte	0xf0
	.byte	0x18
	.byte	0x1
	.4byte	0xd9
	.byte	0x3
	.4byte	0x1df0
	.uleb128 0x44
	.ascii	"f\000"
	.byte	0x1
	.byte	0xf0
	.byte	0x2c
	.4byte	0xd9
	.uleb128 0x48
	.4byte	.LASF166
	.byte	0x1
	.byte	0xf2
	.byte	0xb
	.4byte	0xd9
	.byte	0
	.uleb128 0x49
	.4byte	.LASF168
	.byte	0x1
	.byte	0xd4
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x1e94
	.uleb128 0x45
	.4byte	.LASF169
	.byte	0x1
	.byte	0xd4
	.byte	0x24
	.4byte	0x314
	.uleb128 0x45
	.4byte	.LASF118
	.byte	0x1
	.byte	0xd4
	.byte	0x30
	.4byte	0x3e
	.uleb128 0x44
	.ascii	"p1\000"
	.byte	0x1
	.byte	0xd4
	.byte	0x49
	.4byte	0x620
	.uleb128 0x44
	.ascii	"p2\000"
	.byte	0x1
	.byte	0xd4
	.byte	0x5b
	.4byte	0x620
	.uleb128 0x44
	.ascii	"p3\000"
	.byte	0x1
	.byte	0xd4
	.byte	0x6d
	.4byte	0x620
	.uleb128 0x45
	.4byte	.LASF155
	.byte	0x1
	.byte	0xd4
	.byte	0x7d
	.4byte	0x116
	.uleb128 0x45
	.4byte	.LASF119
	.byte	0x1
	.byte	0xd4
	.byte	0x9c
	.4byte	0x1f3
	.uleb128 0x45
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd4
	.byte	0xb6
	.4byte	0xb7
	.uleb128 0x45
	.4byte	.LASF130
	.byte	0x1
	.byte	0xd4
	.byte	0xd6
	.4byte	0x21e
	.uleb128 0x3e
	.4byte	0x1e85
	.uleb128 0x48
	.4byte	.LASF170
	.byte	0x1
	.byte	0xdb
	.byte	0x8
	.4byte	0x3e
	.uleb128 0x48
	.4byte	.LASF171
	.byte	0x1
	.byte	0xdc
	.byte	0x13
	.4byte	0x654
	.byte	0
	.uleb128 0x3f
	.uleb128 0x48
	.4byte	.LASF49
	.byte	0x1
	.byte	0xe2
	.byte	0x8
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF172
	.byte	0x1
	.byte	0xa4
	.byte	0x6
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST47
	.byte	0x1
	.4byte	0x1f62
	.uleb128 0x4b
	.4byte	.LASF116
	.byte	0x1
	.byte	0xa4
	.byte	0x1d
	.4byte	0x18e0
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x4c
	.4byte	.LASF173
	.byte	0x1
	.byte	0xa4
	.byte	0x2b
	.4byte	0x15b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4c
	.4byte	.LASF174
	.byte	0x1
	.byte	0xa4
	.byte	0x3a
	.4byte	0x15b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4b
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa4
	.byte	0x48
	.4byte	0x29
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x4d
	.ascii	"up\000"
	.byte	0x1
	.byte	0xa4
	.byte	0x56
	.4byte	0x15b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4e
	.ascii	"m\000"
	.byte	0x1
	.byte	0xa7
	.byte	0x8
	.4byte	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.4byte	0x2643
	.4byte	.LBI228
	.2byte	.LVU305
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0xa9
	.byte	0x9
	.4byte	0x1f37
	.uleb128 0x2b
	.4byte	0x2656
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.uleb128 0x22
	.4byte	.LVL103
	.4byte	0x738
	.4byte	0x1f4b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL105
	.4byte	0x71e
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.4byte	.LASF175
	.byte	0x1
	.byte	0x9e
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x1f92
	.uleb128 0x45
	.4byte	.LASF116
	.byte	0x1
	.byte	0x9e
	.byte	0x1d
	.4byte	0x18e0
	.uleb128 0x44
	.ascii	"x\000"
	.byte	0x1
	.byte	0x9e
	.byte	0x2a
	.4byte	0x29
	.uleb128 0x44
	.ascii	"y\000"
	.byte	0x1
	.byte	0x9e
	.byte	0x33
	.4byte	0x29
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.byte	0x98
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x1fba
	.uleb128 0x45
	.4byte	.LASF116
	.byte	0x1
	.byte	0x98
	.byte	0x1c
	.4byte	0x18e0
	.uleb128 0x45
	.4byte	.LASF54
	.byte	0x1
	.byte	0x98
	.byte	0x2a
	.4byte	0x15b
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST41
	.byte	0x1
	.4byte	0x2033
	.uleb128 0x4b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x8c
	.byte	0x1c
	.4byte	0x18e0
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x23
	.4byte	.LVL85
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL86
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL87
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL88
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL89
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL90
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL91
	.4byte	0x75c
	.uleb128 0x50
	.4byte	.LVL93
	.byte	0x1
	.4byte	0x75c
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.byte	0x83
	.byte	0x6
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST51
	.byte	0x1
	.4byte	0x2230
	.uleb128 0x4b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x83
	.byte	0x18
	.4byte	0x18e0
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x51
	.4byte	0x26cd
	.4byte	.LBI244
	.2byte	.LVU323
	.4byte	.LBB244
	.4byte	.LBE244
	.byte	0x1
	.byte	0x86
	.byte	0x2
	.4byte	0x20a4
	.uleb128 0x2b
	.4byte	0x26df
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x2b
	.4byte	0x26ea
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x2b
	.4byte	0x26f5
	.4byte	.LLST53
	.4byte	.LVUS53
	.byte	0
	.uleb128 0x51
	.4byte	0x26cd
	.4byte	.LBI245
	.2byte	.LVU326
	.4byte	.LBB245
	.4byte	.LBE245
	.byte	0x1
	.byte	0x86
	.byte	0x2
	.4byte	0x20e6
	.uleb128 0x2b
	.4byte	0x26df
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x2b
	.4byte	0x26ea
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x2b
	.4byte	0x26f5
	.4byte	.LLST58
	.4byte	.LVUS58
	.byte	0
	.uleb128 0x51
	.4byte	0x26cd
	.4byte	.LBI246
	.2byte	.LVU329
	.4byte	.LBB246
	.4byte	.LBE246
	.byte	0x1
	.byte	0x86
	.byte	0x2
	.4byte	0x2128
	.uleb128 0x2b
	.4byte	0x26df
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x2b
	.4byte	0x26ea
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x2b
	.4byte	0x26f5
	.4byte	.LLST59
	.4byte	.LVUS59
	.byte	0
	.uleb128 0x31
	.4byte	0x1f92
	.4byte	.LBI247
	.2byte	.LVU334
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x1
	.byte	0x87
	.byte	0x2
	.4byte	0x21b6
	.uleb128 0x2b
	.4byte	0x1fa1
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x2d
	.4byte	0x1fad
	.uleb128 0x52
	.4byte	0x2662
	.4byte	.LBI249
	.2byte	.LVU336
	.4byte	.LBB249
	.4byte	.LBE249
	.byte	0x1
	.byte	0x9a
	.byte	0x11
	.uleb128 0x2b
	.4byte	0x2675
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x32
	.4byte	0x2680
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x30
	.4byte	0x268b
	.uleb128 0x30
	.4byte	0x2697
	.uleb128 0x3a
	.4byte	0x27f0
	.4byte	.LBI251
	.2byte	.LVU338
	.4byte	.LBB251
	.4byte	.LBE251
	.byte	0x2
	.2byte	0x119
	.byte	0xc
	.uleb128 0x2b
	.4byte	0x2802
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x30
	.4byte	0x280c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x1f62
	.4byte	.LBI256
	.2byte	.LVU356
	.4byte	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.byte	0x89
	.byte	0x2
	.4byte	0x21f4
	.uleb128 0x2b
	.4byte	0x1f71
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x2b
	.4byte	0x1f7d
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x2b
	.4byte	0x1f87
	.4byte	.LLST67
	.4byte	.LVUS67
	.byte	0
	.uleb128 0x22
	.4byte	.LVL108
	.4byte	0x2b46
	.4byte	0x2213
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0xbc
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL110
	.4byte	0x1e94
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.byte	0x2
	.byte	0x90
	.uleb128 0x46
	.byte	0x7
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f800000
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF203
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x2480
	.uleb128 0x4b
	.4byte	.LASF169
	.byte	0x1
	.byte	0x51
	.byte	0x26
	.4byte	0x314
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x4b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x51
	.byte	0x32
	.4byte	0x3e
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x54
	.ascii	"p1\000"
	.byte	0x1
	.byte	0x51
	.byte	0x4b
	.4byte	0x620
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x54
	.ascii	"p2\000"
	.byte	0x1
	.byte	0x51
	.byte	0x5d
	.4byte	0x620
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x55
	.ascii	"y\000"
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.4byte	0x3e
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x56
	.4byte	.LASF179
	.byte	0x1
	.byte	0x5b
	.byte	0x6
	.4byte	0x3e
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x55
	.ascii	"x\000"
	.byte	0x1
	.byte	0x60
	.byte	0xa
	.4byte	0xcd
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x55
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x61
	.byte	0xa
	.4byte	0xcd
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x57
	.ascii	"py\000"
	.byte	0x1
	.byte	0x62
	.byte	0x8
	.4byte	0x29
	.uleb128 0x55
	.ascii	"x1\000"
	.byte	0x1
	.byte	0x6b
	.byte	0xa
	.4byte	0xcd
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x3e
	.4byte	0x2313
	.uleb128 0x57
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x55
	.byte	0x11
	.4byte	0x620
	.byte	0
	.uleb128 0x31
	.4byte	0x2759
	.4byte	.LBI189
	.2byte	.LVU135
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x5d
	.byte	0x1e
	.4byte	0x2344
	.uleb128 0x2b
	.4byte	0x276b
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x2b
	.4byte	0x2775
	.4byte	.LLST31
	.4byte	.LVUS31
	.byte	0
	.uleb128 0x51
	.4byte	0x2732
	.4byte	.LBI193
	.2byte	.LVU141
	.4byte	.LBB193
	.4byte	.LBE193
	.byte	0x1
	.byte	0x5d
	.byte	0x3c
	.4byte	0x2379
	.uleb128 0x2b
	.4byte	0x2744
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x2b
	.4byte	0x274e
	.4byte	.LLST33
	.4byte	.LVUS33
	.byte	0
	.uleb128 0x31
	.4byte	0x2480
	.4byte	.LBI195
	.2byte	.LVU156
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x61
	.byte	0xf
	.4byte	0x23d3
	.uleb128 0x2d
	.4byte	0x2492
	.uleb128 0x2d
	.4byte	0x249d
	.uleb128 0x2b
	.4byte	0x24a8
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x2d
	.4byte	0x24b3
	.uleb128 0x2b
	.4byte	0x24be
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x32
	.4byte	0x24ca
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x32
	.4byte	0x24d5
	.4byte	.LLST37
	.4byte	.LVUS37
	.byte	0
	.uleb128 0x31
	.4byte	0x24e1
	.4byte	.LBI206
	.2byte	.LVU208
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x75
	.byte	0x4
	.4byte	0x242f
	.uleb128 0x2d
	.4byte	0x24ef
	.uleb128 0x2d
	.4byte	0x24fb
	.uleb128 0x2b
	.4byte	0x2506
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x30
	.4byte	0x2511
	.uleb128 0x30
	.4byte	0x251d
	.uleb128 0x30
	.4byte	0x2529
	.uleb128 0x30
	.4byte	0x2535
	.uleb128 0x30
	.4byte	0x2541
	.uleb128 0x30
	.4byte	0x254d
	.uleb128 0x1b
	.4byte	.LVL65
	.4byte	0x2819
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x24e1
	.4byte	.LBI211
	.2byte	.LVU205
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0x73
	.byte	0x4
	.uleb128 0x2d
	.4byte	0x24ef
	.uleb128 0x2b
	.4byte	0x24fb
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x2b
	.4byte	0x2506
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x30
	.4byte	0x2511
	.uleb128 0x30
	.4byte	0x251d
	.uleb128 0x30
	.4byte	0x2529
	.uleb128 0x30
	.4byte	0x2535
	.uleb128 0x30
	.4byte	0x2541
	.uleb128 0x30
	.4byte	0x254d
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF180
	.byte	0x1
	.byte	0x46
	.byte	0x17
	.byte	0x1
	.4byte	0xcd
	.byte	0x3
	.4byte	0x24e1
	.uleb128 0x44
	.ascii	"x1\000"
	.byte	0x1
	.byte	0x46
	.byte	0x23
	.4byte	0x29
	.uleb128 0x44
	.ascii	"y1\000"
	.byte	0x1
	.byte	0x46
	.byte	0x2d
	.4byte	0x29
	.uleb128 0x44
	.ascii	"x2\000"
	.byte	0x1
	.byte	0x46
	.byte	0x37
	.4byte	0x29
	.uleb128 0x44
	.ascii	"y2\000"
	.byte	0x1
	.byte	0x46
	.byte	0x41
	.4byte	0x29
	.uleb128 0x45
	.4byte	.LASF181
	.byte	0x1
	.byte	0x46
	.byte	0x49
	.4byte	0x3e
	.uleb128 0x57
	.ascii	"dx\000"
	.byte	0x1
	.byte	0x48
	.byte	0x8
	.4byte	0x29
	.uleb128 0x57
	.ascii	"dy\000"
	.byte	0x1
	.byte	0x49
	.byte	0x8
	.4byte	0x29
	.byte	0
	.uleb128 0x49
	.4byte	.LASF182
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x2576
	.uleb128 0x44
	.ascii	"row\000"
	.byte	0x1
	.byte	0x11
	.byte	0x2b
	.4byte	0x525
	.uleb128 0x44
	.ascii	"x1\000"
	.byte	0x1
	.byte	0x11
	.byte	0x34
	.4byte	0x3e
	.uleb128 0x44
	.ascii	"x2\000"
	.byte	0x1
	.byte	0x11
	.byte	0x3c
	.4byte	0x3e
	.uleb128 0x48
	.4byte	.LASF183
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x48
	.4byte	.LASF184
	.byte	0x1
	.byte	0x22
	.byte	0xb
	.4byte	0xd9
	.uleb128 0x48
	.4byte	.LASF185
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x48
	.4byte	.LASF186
	.byte	0x1
	.byte	0x24
	.byte	0xb
	.4byte	0xd9
	.uleb128 0x57
	.ascii	"col\000"
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	0x3e
	.uleb128 0x57
	.ascii	"p\000"
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.4byte	0x525
	.uleb128 0x3e
	.4byte	0x2569
	.uleb128 0x48
	.4byte	.LASF166
	.byte	0x1
	.byte	0x2b
	.byte	0xc
	.4byte	0xd9
	.byte	0
	.uleb128 0x3f
	.uleb128 0x57
	.ascii	"x\000"
	.byte	0x1
	.byte	0x36
	.byte	0x7
	.4byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF187
	.byte	0x1
	.byte	0xc
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.4byte	0x259b
	.uleb128 0x44
	.ascii	"p\000"
	.byte	0x1
	.byte	0xc
	.byte	0x6c
	.4byte	0x525
	.uleb128 0x45
	.4byte	.LASF166
	.byte	0x1
	.byte	0xc
	.byte	0x78
	.4byte	0xd9
	.byte	0
	.uleb128 0x41
	.4byte	.LASF188
	.byte	0x2
	.2byte	0x13e
	.byte	0x16
	.byte	0x1
	.4byte	0x15b
	.byte	0x3
	.4byte	0x25c5
	.uleb128 0x42
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x13e
	.byte	0x26
	.4byte	0x15b
	.uleb128 0x42
	.ascii	"s\000"
	.byte	0x2
	.2byte	0x13e
	.byte	0x2f
	.4byte	0x29
	.byte	0
	.uleb128 0x41
	.4byte	.LASF189
	.byte	0x2
	.2byte	0x13a
	.byte	0x16
	.byte	0x1
	.4byte	0x15b
	.byte	0x3
	.4byte	0x25ef
	.uleb128 0x42
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x13a
	.byte	0x24
	.4byte	0x15b
	.uleb128 0x42
	.ascii	"b\000"
	.byte	0x2
	.2byte	0x13a
	.byte	0x2e
	.4byte	0x15b
	.byte	0
	.uleb128 0x41
	.4byte	.LASF190
	.byte	0x2
	.2byte	0x132
	.byte	0x16
	.byte	0x1
	.4byte	0x15b
	.byte	0x3
	.4byte	0x2619
	.uleb128 0x42
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x132
	.byte	0x24
	.4byte	0x15b
	.uleb128 0x42
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x132
	.byte	0x2e
	.4byte	0x15b
	.byte	0
	.uleb128 0x41
	.4byte	.LASF191
	.byte	0x2
	.2byte	0x12e
	.byte	0x16
	.byte	0x1
	.4byte	0x15b
	.byte	0x3
	.4byte	0x2643
	.uleb128 0x42
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x12e
	.byte	0x24
	.4byte	0x15b
	.uleb128 0x42
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x12e
	.byte	0x2e
	.4byte	0x15b
	.byte	0
	.uleb128 0x41
	.4byte	.LASF192
	.byte	0x2
	.2byte	0x11f
	.byte	0x16
	.byte	0x1
	.4byte	0x15b
	.byte	0x3
	.4byte	0x2662
	.uleb128 0x42
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x11f
	.byte	0x24
	.4byte	0x15b
	.byte	0
	.uleb128 0x41
	.4byte	.LASF193
	.byte	0x2
	.2byte	0x117
	.byte	0x16
	.byte	0x1
	.4byte	0x15b
	.byte	0x3
	.4byte	0x26a3
	.uleb128 0x42
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x117
	.byte	0x2a
	.4byte	0x15b
	.uleb128 0x40
	.ascii	"d\000"
	.byte	0x2
	.2byte	0x119
	.byte	0x8
	.4byte	0x29
	.uleb128 0x40
	.ascii	"id\000"
	.byte	0x2
	.2byte	0x11a
	.byte	0x8
	.4byte	0x29
	.uleb128 0x40
	.ascii	"r\000"
	.byte	0x2
	.2byte	0x11b
	.byte	0x9
	.4byte	0x15b
	.byte	0
	.uleb128 0x41
	.4byte	.LASF194
	.byte	0x2
	.2byte	0x112
	.byte	0x15
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0x26cd
	.uleb128 0x42
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x112
	.byte	0x23
	.4byte	0x15b
	.uleb128 0x42
	.ascii	"b\000"
	.byte	0x2
	.2byte	0x112
	.byte	0x2d
	.4byte	0x15b
	.byte	0
	.uleb128 0x58
	.ascii	"f3\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x16
	.byte	0x1
	.4byte	0x15b
	.byte	0x3
	.4byte	0x2701
	.uleb128 0x42
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x1f
	.4byte	0x29
	.uleb128 0x42
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x28
	.4byte	0x29
	.uleb128 0x42
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x31
	.4byte	0x29
	.byte	0
	.uleb128 0x43
	.4byte	.LASF195
	.byte	0x2
	.byte	0xaf
	.byte	0x13
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.4byte	0x2732
	.uleb128 0x44
	.ascii	"v\000"
	.byte	0x2
	.byte	0xaf
	.byte	0x1f
	.4byte	0x3e
	.uleb128 0x44
	.ascii	"a\000"
	.byte	0x2
	.byte	0xaf
	.byte	0x26
	.4byte	0x3e
	.uleb128 0x44
	.ascii	"b\000"
	.byte	0x2
	.byte	0xaf
	.byte	0x2d
	.4byte	0x3e
	.byte	0
	.uleb128 0x43
	.4byte	.LASF196
	.byte	0x2
	.byte	0xa0
	.byte	0x15
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0x2759
	.uleb128 0x44
	.ascii	"a\000"
	.byte	0x2
	.byte	0xa0
	.byte	0x21
	.4byte	0x29
	.uleb128 0x44
	.ascii	"b\000"
	.byte	0x2
	.byte	0xa0
	.byte	0x2a
	.4byte	0x29
	.byte	0
	.uleb128 0x43
	.4byte	.LASF197
	.byte	0x2
	.byte	0x9b
	.byte	0x15
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0x2780
	.uleb128 0x44
	.ascii	"a\000"
	.byte	0x2
	.byte	0x9b
	.byte	0x21
	.4byte	0x29
	.uleb128 0x44
	.ascii	"b\000"
	.byte	0x2
	.byte	0x9b
	.byte	0x2a
	.4byte	0x29
	.byte	0
	.uleb128 0x43
	.4byte	.LASF198
	.byte	0x2
	.byte	0x76
	.byte	0x18
	.byte	0x1
	.4byte	0xd9
	.byte	0x3
	.4byte	0x27c7
	.uleb128 0x44
	.ascii	"x\000"
	.byte	0x2
	.byte	0x76
	.byte	0x34
	.4byte	0x29
	.uleb128 0x46
	.byte	0x4
	.byte	0x2
	.byte	0x79
	.byte	0x2
	.4byte	0x27ba
	.uleb128 0x47
	.ascii	"f\000"
	.byte	0x2
	.byte	0x79
	.byte	0x10
	.4byte	0x29
	.uleb128 0x47
	.ascii	"u\000"
	.byte	0x2
	.byte	0x79
	.byte	0x1c
	.4byte	0xd9
	.byte	0
	.uleb128 0x48
	.4byte	.LASF164
	.byte	0x2
	.byte	0x79
	.byte	0x21
	.4byte	0x279c
	.byte	0
	.uleb128 0x43
	.4byte	.LASF199
	.byte	0x2
	.byte	0x1d
	.byte	0x18
	.byte	0x1
	.4byte	0xd9
	.byte	0x3
	.4byte	0x27f0
	.uleb128 0x44
	.ascii	"n\000"
	.byte	0x2
	.byte	0x1d
	.byte	0x26
	.4byte	0xd9
	.uleb128 0x48
	.4byte	.LASF200
	.byte	0x2
	.byte	0x21
	.byte	0xb
	.4byte	0xd9
	.byte	0
	.uleb128 0x43
	.4byte	.LASF201
	.byte	0x2
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.4byte	0x2819
	.uleb128 0x44
	.ascii	"x\000"
	.byte	0x2
	.byte	0x14
	.byte	0x28
	.4byte	0x29
	.uleb128 0x48
	.4byte	.LASF200
	.byte	0x2
	.byte	0x16
	.byte	0x8
	.4byte	0x29
	.byte	0
	.uleb128 0x59
	.4byte	0x24e1
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x29e5
	.uleb128 0x2b
	.4byte	0x24ef
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2b
	.4byte	0x24fb
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2b
	.4byte	0x2506
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x32
	.4byte	0x2511
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x32
	.4byte	0x251d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x32
	.4byte	0x2529
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x32
	.4byte	0x2535
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x32
	.4byte	0x2541
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x32
	.4byte	0x254d
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x31
	.4byte	0x27c7
	.4byte	.LBI147
	.2byte	.LVU17
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x22
	.byte	0x17
	.4byte	0x28cd
	.uleb128 0x2b
	.4byte	0x27d9
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x30
	.4byte	0x27e3
	.byte	0
	.uleb128 0x31
	.4byte	0x27c7
	.4byte	.LBI151
	.2byte	.LVU27
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x24
	.byte	0x15
	.4byte	0x28f8
	.uleb128 0x2b
	.4byte	0x27d9
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x38
	.4byte	0x27e3
	.byte	0x1
	.byte	0x57
	.byte	0
	.uleb128 0x36
	.4byte	0x2569
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x29a8
	.uleb128 0x32
	.4byte	0x256a
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x31
	.4byte	0x2576
	.4byte	.LBI156
	.2byte	.LVU48
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x39
	.byte	0x4
	.4byte	0x2943
	.uleb128 0x2b
	.4byte	0x2584
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x2b
	.4byte	0x258e
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x5a
	.4byte	0x2576
	.4byte	.LBB163
	.4byte	.LBE163
	.byte	0x1
	.byte	0x3e
	.byte	0x4
	.4byte	0x2982
	.uleb128 0x2d
	.4byte	0x2584
	.uleb128 0x2d
	.4byte	0x258e
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0x2b46
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 -4
	.uleb128 0x1c
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x52
	.byte	0x7
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0x2576
	.4byte	.LBI165
	.2byte	.LVU67
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x42
	.byte	0x4
	.uleb128 0x2d
	.4byte	0x2584
	.uleb128 0x2b
	.4byte	0x258e
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x2557
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x32
	.4byte	0x255c
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x33
	.4byte	0x2576
	.4byte	.LBI171
	.2byte	.LVU81
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x32
	.byte	0x3
	.uleb128 0x2b
	.4byte	0x2584
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x2d
	.4byte	0x258e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x59
	.4byte	0x7e7
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x2a57
	.uleb128 0x2b
	.4byte	0x7f7
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL41
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL42
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL43
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL44
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0x75c
	.uleb128 0x5b
	.4byte	.LVL47
	.byte	0x1
	.4byte	0x75c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x59
	.4byte	0x1f92
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST43
	.byte	0x1
	.4byte	0x2ade
	.uleb128 0x5c
	.4byte	0x1fa1
	.byte	0x1
	.byte	0x50
	.uleb128 0x5c
	.4byte	0x1fad
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x33
	.4byte	0x2662
	.4byte	.LBI221
	.2byte	.LVU262
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x1
	.byte	0x9a
	.byte	0x11
	.uleb128 0x2b
	.4byte	0x2675
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x32
	.4byte	0x2680
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x32
	.4byte	0x268b
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x30
	.4byte	0x2697
	.uleb128 0x3a
	.4byte	0x27f0
	.4byte	.LBI223
	.2byte	.LVU264
	.4byte	.LBB223
	.4byte	.LBE223
	.byte	0x2
	.2byte	0x119
	.byte	0xc
	.uleb128 0x2d
	.4byte	0x2802
	.uleb128 0x30
	.4byte	0x280c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5d
	.4byte	0x1f62
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x2b0b
	.uleb128 0x5c
	.4byte	0x1f71
	.byte	0x1
	.byte	0x50
	.uleb128 0x5c
	.4byte	0x1f7d
	.byte	0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x5c
	.4byte	0x1f87
	.byte	0x2
	.byte	0x90
	.uleb128 0x41
	.byte	0
	.uleb128 0x5d
	.4byte	0x7e7
	.4byte	.LFB60
	.4byte	.LFE60
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x2b46
	.uleb128 0x2b
	.4byte	0x7f7
	.4byte	.LLST203
	.4byte	.LVUS203
	.uleb128 0x5b
	.4byte	.LVL355
	.byte	0x1
	.4byte	0x29e5
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.byte	0x1
	.4byte	.LASF91
	.4byte	.LASF204
	.byte	0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x47
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
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x5a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x5e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST204:
	.4byte	.LFB61
	.4byte	.LCFI41
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI41
	.4byte	.LFE61
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS205:
	.uleb128 0
	.uleb128 .LVU1316
	.uleb128 .LVU1316
	.uleb128 .LVU1327
	.uleb128 .LVU1327
	.uleb128 0
.LLST205:
	.4byte	.LVL356
	.4byte	.LVL357-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL357-1
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL358
	.4byte	.LFE61
	.2byte	0x3
	.byte	0x7c
	.sleb128 -36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LFB59
	.4byte	.LCFI37
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI37
	.4byte	.LCFI38
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI38
	.4byte	.LCFI39
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI39
	.4byte	.LCFI40
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI40
	.4byte	.LFE59
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0
	.4byte	0
.LVUS196:
	.uleb128 0
	.uleb128 .LVU1257
	.uleb128 .LVU1257
	.uleb128 0
.LLST196:
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL344
	.4byte	.LFE59
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS197:
	.uleb128 0
	.uleb128 .LVU1259
	.uleb128 .LVU1259
	.uleb128 0
.LLST197:
	.4byte	.LVL343
	.4byte	.LVL345-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL345-1
	.4byte	.LFE59
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LVUS198:
	.uleb128 0
	.uleb128 .LVU1259
	.uleb128 .LVU1259
	.uleb128 0
.LLST198:
	.4byte	.LVL343
	.4byte	.LVL345-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL345-1
	.4byte	.LFE59
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LVUS199:
	.uleb128 0
	.uleb128 .LVU1259
	.uleb128 .LVU1259
	.uleb128 0
.LLST199:
	.4byte	.LVL343
	.4byte	.LVL345-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL345-1
	.4byte	.LFE59
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LVUS200:
	.uleb128 0
	.uleb128 .LVU1292
	.uleb128 .LVU1292
	.uleb128 0
.LLST200:
	.4byte	.LVL343
	.4byte	.LVL350
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL350
	.4byte	.LFE59
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS201:
	.uleb128 0
	.uleb128 .LVU1292
	.uleb128 .LVU1292
	.uleb128 0
.LLST201:
	.4byte	.LVL343
	.4byte	.LVL350
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL350
	.4byte	.LFE59
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS202:
	.uleb128 .LVU1262
	.uleb128 .LVU1273
	.uleb128 .LVU1273
	.uleb128 0
.LLST202:
	.4byte	.LVL346
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL347
	.4byte	.LFE59
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LFB58
	.4byte	.LCFI31
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI31
	.4byte	.LCFI32
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI32
	.4byte	.LCFI33
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	.LCFI33
	.4byte	.LCFI34
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI34
	.4byte	.LCFI35
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	.LCFI35
	.4byte	.LCFI36
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI36
	.4byte	.LFE58
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0
	.4byte	0
.LVUS187:
	.uleb128 0
	.uleb128 .LVU1151
	.uleb128 .LVU1151
	.uleb128 0
.LLST187:
	.4byte	.LVL318
	.4byte	.LVL319-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL319-1
	.4byte	.LFE58
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
	.4byte	0
	.4byte	0
.LVUS188:
	.uleb128 .LVU1151
	.uleb128 .LVU1156
	.uleb128 .LVU1156
	.uleb128 .LVU1238
	.uleb128 .LVU1240
	.uleb128 0
.LLST188:
	.4byte	.LVL319
	.4byte	.LVL320-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL320-1
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL338
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS189:
	.uleb128 .LVU1169
	.uleb128 .LVU1181
	.uleb128 .LVU1181
	.uleb128 .LVU1238
	.uleb128 .LVU1240
	.uleb128 .LVU1249
.LLST189:
	.4byte	.LVL322
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL323
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL338
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS194:
	.uleb128 .LVU1227
	.uleb128 .LVU1235
.LLST194:
	.4byte	.LVL332
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS190:
	.uleb128 .LVU1189
	.uleb128 .LVU1196
.LLST190:
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x2a
	.byte	0x7c
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x73
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x74
	.sleb128 52
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 56
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x74
	.sleb128 44
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS191:
	.uleb128 .LVU1189
	.uleb128 .LVU1196
.LLST191:
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f000000
	.4byte	0
	.4byte	0
.LVUS192:
	.uleb128 .LVU1187
	.uleb128 .LVU1189
.LLST192:
	.4byte	.LVL324
	.4byte	.LVL324
	.2byte	0xc
	.byte	0x7c
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 40
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 44
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS193:
	.uleb128 .LVU1187
	.uleb128 .LVU1189
.LLST193:
	.4byte	.LVL324
	.4byte	.LVL324
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 52
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB57
	.4byte	.LCFI25
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI25
	.4byte	.LCFI26
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI26
	.4byte	.LCFI27
	.2byte	0x3
	.byte	0x7d
	.sleb128 76
	.4byte	.LCFI27
	.4byte	.LCFI28
	.2byte	0x3
	.byte	0x7d
	.sleb128 200
	.4byte	.LCFI28
	.4byte	.LCFI29
	.2byte	0x3
	.byte	0x7d
	.sleb128 76
	.4byte	.LCFI29
	.4byte	.LCFI30
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI30
	.4byte	.LFE57
	.2byte	0x3
	.byte	0x7d
	.sleb128 200
	.4byte	0
	.4byte	0
.LVUS75:
	.uleb128 0
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU1140
	.uleb128 .LVU1140
	.uleb128 .LVU1143
	.uleb128 .LVU1143
	.uleb128 0
.LLST75:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL131
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL316
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS76:
	.uleb128 0
	.uleb128 .LVU437
	.uleb128 .LVU437
	.uleb128 0
.LLST76:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL130
	.4byte	.LFE57
	.2byte	0x3
	.byte	0x91
	.sleb128 -164
	.4byte	0
	.4byte	0
.LVUS77:
	.uleb128 0
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU1140
	.uleb128 .LVU1140
	.uleb128 .LVU1142
	.uleb128 .LVU1142
	.uleb128 0
.LLST77:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL315
	.4byte	.LFE57
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LVUS78:
	.uleb128 0
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU1140
	.uleb128 .LVU1140
	.uleb128 .LVU1144
	.uleb128 .LVU1144
	.uleb128 0
.LLST78:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL314
	.4byte	.LVL317-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL317-1
	.4byte	.LFE57
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0
	.4byte	0
.LVUS79:
	.uleb128 .LVU434
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU443
	.uleb128 .LVU443
	.uleb128 .LVU489
	.uleb128 .LVU489
	.uleb128 .LVU498
	.uleb128 .LVU1140
	.uleb128 .LVU1143
	.uleb128 .LVU1143
	.uleb128 .LVU1144
.LLST79:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x3
	.byte	0x70
	.sleb128 160
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x3
	.byte	0x70
	.sleb128 160
	.4byte	.LVL316
	.4byte	.LVL317-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 160
	.4byte	0
	.4byte	0
.LVUS80:
	.uleb128 .LVU434
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU451
	.uleb128 .LVU451
	.uleb128 .LVU462
	.uleb128 .LVU462
	.uleb128 .LVU501
	.uleb128 .LVU501
	.uleb128 .LVU958
	.uleb128 .LVU1023
	.uleb128 .LVU1140
	.uleb128 .LVU1140
	.uleb128 0
.LLST80:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL138
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL147
	.4byte	.LVL255
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL276
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL314
	.4byte	.LFE57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS81:
	.uleb128 .LVU960
	.uleb128 .LVU973
	.uleb128 .LVU973
	.uleb128 .LVU1019
.LLST81:
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x3
	.byte	0x7b
	.sleb128 116
	.4byte	.LVL256
	.4byte	.LVL275
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS82:
	.uleb128 .LVU961
	.uleb128 .LVU973
.LLST82:
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x16
	.byte	0x7b
	.sleb128 108
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x7b
	.sleb128 116
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3fd55555
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS83:
	.uleb128 .LVU962
	.uleb128 .LVU973
.LLST83:
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0xe
	.byte	0x7b
	.sleb128 112
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x7b
	.sleb128 116
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS84:
	.uleb128 .LVU434
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU501
	.uleb128 .LVU1140
	.uleb128 0
.LLST84:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL314
	.4byte	.LFE57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS85:
	.uleb128 .LVU447
	.uleb128 .LVU452
.LLST85:
	.4byte	.LVL134
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS86:
	.uleb128 .LVU461
	.uleb128 .LVU470
	.uleb128 .LVU470
	.uleb128 .LVU481
	.uleb128 .LVU481
	.uleb128 .LVU486
.LLST86:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0xb
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0xd
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x40
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS87:
	.uleb128 .LVU462
	.uleb128 .LVU480
.LLST87:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0xc
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS88:
	.uleb128 .LVU462
	.uleb128 .LVU480
.LLST88:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS89:
	.uleb128 .LVU466
	.uleb128 .LVU472
.LLST89:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0xc
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS90:
	.uleb128 .LVU440
	.uleb128 .LVU446
	.uleb128 .LVU471
	.uleb128 .LVU480
	.uleb128 .LVU480
	.uleb128 .LVU486
.LLST90:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x50
	.byte	0xf0
	.4byte	.LVL140
	.4byte	.LVL140
	.2byte	0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x50
	.byte	0xf0
	.4byte	0
	.4byte	0
.LVUS91:
	.uleb128 .LVU474
	.uleb128 .LVU477
.LLST91:
	.4byte	.LVL140
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS92:
	.uleb128 .LVU476
	.uleb128 .LVU477
.LLST92:
	.4byte	.LVL140
	.4byte	.LVL140
	.2byte	0xb
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS93:
	.uleb128 .LVU495
	.uleb128 .LVU501
	.uleb128 .LVU501
	.uleb128 .LVU662
	.uleb128 .LVU662
	.uleb128 .LVU771
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU784
	.uleb128 .LVU815
	.uleb128 .LVU957
	.uleb128 .LVU958
	.uleb128 .LVU1075
	.uleb128 .LVU1123
	.uleb128 .LVU1123
	.uleb128 .LVU1131
	.uleb128 .LVU1131
	.uleb128 .LVU1140
	.uleb128 .LVU1146
	.uleb128 0
.LLST93:
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL176
	.4byte	.LVL204
	.2byte	0x3
	.byte	0x91
	.sleb128 -180
	.4byte	.LVL204
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL209
	.4byte	.LVL221
	.2byte	0x3
	.byte	0x91
	.sleb128 -180
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL292
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL309
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL317
	.4byte	.LFE57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS94:
	.uleb128 .LVU503
	.uleb128 .LVU523
	.uleb128 .LVU1099
	.uleb128 .LVU1106
.LLST94:
	.4byte	.LVL147
	.4byte	.LVL153
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 164
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL302-1
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 164
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS95:
	.uleb128 .LVU509
	.uleb128 .LVU523
	.uleb128 .LVU523
	.uleb128 .LVU958
	.uleb128 .LVU1023
	.uleb128 .LVU1099
	.uleb128 .LVU1099
	.uleb128 .LVU1105
	.uleb128 .LVU1105
	.uleb128 .LVU1106
	.uleb128 .LVU1106
	.uleb128 .LVU1140
.LLST95:
	.4byte	.LVL148
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL153
	.4byte	.LVL255
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL276
	.4byte	.LVL300
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL301
	.4byte	.LVL302-1
	.2byte	0x16
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 164
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 160
	.byte	0x6
	.byte	0x22
	.4byte	.LVL302-1
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	0
	.4byte	0
.LVUS96:
	.uleb128 .LVU510
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1129
	.uleb128 .LVU1132
	.uleb128 .LVU1140
.LLST96:
	.4byte	.LVL148
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL276
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS97:
	.uleb128 .LVU510
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1129
	.uleb128 .LVU1132
	.uleb128 .LVU1140
.LLST97:
	.4byte	.LVL148
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x91
	.sleb128 -164
	.4byte	.LVL276
	.4byte	.LVL309
	.2byte	0x3
	.byte	0x91
	.sleb128 -164
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -164
	.4byte	0
	.4byte	0
.LVUS98:
	.uleb128 .LVU510
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1129
	.uleb128 .LVU1132
	.uleb128 .LVU1140
.LLST98:
	.4byte	.LVL148
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	.LVL276
	.4byte	.LVL309
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LVUS99:
	.uleb128 .LVU510
	.uleb128 .LVU523
	.uleb128 .LVU523
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1099
	.uleb128 .LVU1099
	.uleb128 .LVU1105
	.uleb128 .LVU1105
	.uleb128 .LVU1106
	.uleb128 .LVU1106
	.uleb128 .LVU1129
	.uleb128 .LVU1132
	.uleb128 .LVU1140
.LLST99:
	.4byte	.LVL148
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL153
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL276
	.4byte	.LVL300
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL301
	.4byte	.LVL302-1
	.2byte	0x16
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 164
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 160
	.byte	0x6
	.byte	0x22
	.4byte	.LVL302-1
	.4byte	.LVL309
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	0
	.4byte	0
.LVUS100:
	.uleb128 .LVU510
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1129
	.uleb128 .LVU1132
	.uleb128 .LVU1140
.LLST100:
	.4byte	.LVL148
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL276
	.4byte	.LVL309
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0
	.4byte	0
.LVUS101:
	.uleb128 .LVU513
	.uleb128 .LVU520
	.uleb128 .LVU520
	.uleb128 .LVU523
	.uleb128 .LVU523
	.uleb128 .LVU816
	.uleb128 .LVU1075
	.uleb128 .LVU1099
	.uleb128 .LVU1099
	.uleb128 .LVU1105
	.uleb128 .LVU1105
	.uleb128 .LVU1106
	.uleb128 .LVU1106
	.uleb128 .LVU1129
	.uleb128 .LVU1132
	.uleb128 .LVU1140
.LLST101:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL153
	.4byte	.LVL222
	.2byte	0x3
	.byte	0x91
	.sleb128 -176
	.4byte	.LVL292
	.4byte	.LVL300
	.2byte	0x3
	.byte	0x91
	.sleb128 -176
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL301
	.4byte	.LVL302-1
	.2byte	0x17
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 164
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 160
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.4byte	.LVL302-1
	.4byte	.LVL309
	.2byte	0x3
	.byte	0x91
	.sleb128 -176
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x3
	.byte	0x91
	.sleb128 -176
	.4byte	0
	.4byte	0
.LVUS102:
	.uleb128 .LVU518
	.uleb128 .LVU662
	.uleb128 .LVU662
	.uleb128 .LVU771
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU784
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1075
	.uleb128 .LVU1075
	.uleb128 .LVU1129
	.uleb128 .LVU1132
	.uleb128 .LVU1140
.LLST102:
	.4byte	.LVL150
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL176
	.4byte	.LVL204
	.2byte	0x7
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL209
	.4byte	.LVL253
	.2byte	0x7
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL292
	.2byte	0x7
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL292
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS103:
	.uleb128 .LVU521
	.uleb128 .LVU661
	.uleb128 .LVU661
	.uleb128 .LVU771
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU784
	.uleb128 .LVU811
	.uleb128 .LVU1075
	.uleb128 .LVU1140
.LLST103:
	.4byte	.LVL152
	.4byte	.LVL175
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL204
	.2byte	0x8
	.byte	0x91
	.sleb128 -184
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL209
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL220
	.2byte	0x8
	.byte	0x91
	.sleb128 -184
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL292
	.4byte	.LVL314
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS104:
	.uleb128 .LVU547
	.uleb128 .LVU580
	.uleb128 .LVU1075
	.uleb128 .LVU1084
.LLST104:
	.4byte	.LVL156
	.4byte	.LVL159
	.2byte	0x24
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x12
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.byte	0x23
	.uleb128 0x34
	.byte	0x6
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL292
	.4byte	.LVL294
	.2byte	0x20
	.byte	0x75
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x12
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.byte	0x23
	.uleb128 0x34
	.byte	0x6
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
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
.LVUS105:
	.uleb128 .LVU620
	.uleb128 .LVU651
.LLST105:
	.4byte	.LVL168
	.4byte	.LVL174
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3c75c28f
	.4byte	0
	.4byte	0
.LVUS106:
	.uleb128 .LVU622
	.uleb128 .LVU651
.LLST106:
	.4byte	.LVL169
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.4byte	0
	.4byte	0
.LVUS107:
	.uleb128 .LVU629
	.uleb128 .LVU651
.LLST107:
	.4byte	.LVL170
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS108:
	.uleb128 .LVU630
	.uleb128 .LVU651
.LLST108:
	.4byte	.LVL170
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x90
	.uleb128 0x49
	.4byte	0
	.4byte	0
.LVUS109:
	.uleb128 .LVU656
	.uleb128 .LVU662
	.uleb128 .LVU662
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU810
	.uleb128 .LVU810
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1075
	.uleb128 .LVU1119
	.uleb128 .LVU1129
.LLST109:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL209
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL219
	.4byte	.LVL253
	.2byte	0x3
	.byte	0x91
	.sleb128 -168
	.4byte	.LVL276
	.4byte	.LVL292
	.2byte	0x3
	.byte	0x91
	.sleb128 -168
	.4byte	.LVL307
	.4byte	.LVL309
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS110:
	.uleb128 .LVU656
	.uleb128 .LVU662
	.uleb128 .LVU662
	.uleb128 .LVU729
	.uleb128 .LVU729
	.uleb128 .LVU730
	.uleb128 .LVU730
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU792
	.uleb128 .LVU792
	.uleb128 .LVU793
	.uleb128 .LVU793
	.uleb128 .LVU794
	.uleb128 .LVU1119
	.uleb128 .LVU1124
.LLST110:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x6
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL176
	.4byte	.LVL196
	.2byte	0x3
	.byte	0x71
	.sleb128 -6
	.byte	0x9f
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL197
	.4byte	.LVL204
	.2byte	0x3
	.byte	0x71
	.sleb128 -6
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x3
	.byte	0x71
	.sleb128 -6
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x3
	.byte	0x71
	.sleb128 -6
	.byte	0x9f
	.4byte	.LVL307
	.4byte	.LVL309-1
	.2byte	0x2
	.byte	0x73
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS111:
	.uleb128 .LVU804
	.uleb128 .LVU816
	.uleb128 .LVU1125
	.uleb128 .LVU1129
.LLST111:
	.4byte	.LVL217
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL309
	.4byte	.LVL309
	.2byte	0x3
	.byte	0x7b
	.sleb128 136
	.4byte	0
	.4byte	0
.LVUS112:
	.uleb128 .LVU805
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1075
	.uleb128 .LVU1126
	.uleb128 .LVU1132
.LLST112:
	.4byte	.LVL218
	.4byte	.LVL253
	.2byte	0x8
	.byte	0x91
	.sleb128 -172
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL292
	.2byte	0x8
	.byte	0x91
	.sleb128 -172
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x10
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x94
	.byte	0x1
	.byte	0x20
	.byte	0x33
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS113:
	.uleb128 .LVU632
	.uleb128 .LVU633
.LLST113:
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS114:
	.uleb128 .LVU634
	.uleb128 .LVU648
	.uleb128 .LVU648
	.uleb128 .LVU651
.LLST114:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS115:
	.uleb128 .LVU635
	.uleb128 .LVU648
	.uleb128 .LVU648
	.uleb128 .LVU651
.LLST115:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0xd
	.byte	0x7b
	.sleb128 128
	.byte	0x6
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0xf
	.byte	0x7b
	.sleb128 128
	.byte	0x6
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x3c
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS116:
	.uleb128 .LVU639
	.uleb128 .LVU651
.LLST116:
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS117:
	.uleb128 .LVU807
	.uleb128 .LVU816
	.uleb128 .LVU816
	.uleb128 .LVU890
	.uleb128 .LVU890
	.uleb128 .LVU891
	.uleb128 .LVU891
	.uleb128 .LVU954
	.uleb128 .LVU954
	.uleb128 .LVU955
	.uleb128 .LVU1023
	.uleb128 .LVU1075
	.uleb128 .LVU1128
	.uleb128 .LVU1129
.LLST117:
	.4byte	.LVL218
	.4byte	.LVL222
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LVL238
	.2byte	0x3
	.byte	0x91
	.sleb128 -180
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239
	.4byte	.LVL252
	.2byte	0x3
	.byte	0x91
	.sleb128 -180
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL276
	.4byte	.LVL292
	.2byte	0x3
	.byte	0x91
	.sleb128 -180
	.4byte	.LVL309
	.4byte	.LVL309
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS118:
	.uleb128 .LVU892
	.uleb128 .LVU896
	.uleb128 .LVU896
	.uleb128 .LVU901
	.uleb128 .LVU901
	.uleb128 .LVU916
	.uleb128 .LVU1048
	.uleb128 .LVU1052
.LLST118:
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x6
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL242
	.4byte	.LVL245
	.2byte	0x4
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.4byte	.LVL284
	.4byte	.LVL285-1
	.2byte	0x4
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.4byte	0
	.4byte	0
.LVUS119:
	.uleb128 .LVU898
	.uleb128 .LVU910
	.uleb128 .LVU910
	.uleb128 .LVU916
	.uleb128 .LVU1048
	.uleb128 .LVU1052
.LLST119:
	.4byte	.LVL241
	.4byte	.LVL244
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.4byte	.LVL284
	.4byte	.LVL285-1
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS120:
	.uleb128 .LVU901
	.uleb128 .LVU910
	.uleb128 .LVU910
	.uleb128 .LVU916
	.uleb128 .LVU1048
	.uleb128 .LVU1052
.LLST120:
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x6
	.byte	0x7a
	.sleb128 16
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL284
	.4byte	.LVL285-1
	.2byte	0x6
	.byte	0x7a
	.sleb128 16
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS121:
	.uleb128 .LVU903
	.uleb128 .LVU910
	.uleb128 .LVU910
	.uleb128 .LVU916
	.uleb128 .LVU1048
	.uleb128 .LVU1052
.LLST121:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x6
	.byte	0x7a
	.sleb128 16
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL284
	.4byte	.LVL285-1
	.2byte	0x6
	.byte	0x7a
	.sleb128 16
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS122:
	.uleb128 .LVU816
	.uleb128 .LVU872
	.uleb128 .LVU904
	.uleb128 .LVU948
	.uleb128 .LVU1023
	.uleb128 .LVU1032
	.uleb128 .LVU1039
	.uleb128 .LVU1044
	.uleb128 .LVU1048
	.uleb128 .LVU1062
	.uleb128 .LVU1063
	.uleb128 .LVU1075
.LLST122:
	.4byte	.LVL222
	.4byte	.LVL235
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL243
	.4byte	.LVL250
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL276
	.4byte	.LVL278
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL284
	.4byte	.LVL287
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL288
	.4byte	.LVL292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS123:
	.uleb128 .LVU816
	.uleb128 .LVU833
	.uleb128 .LVU833
	.uleb128 .LVU863
	.uleb128 .LVU923
	.uleb128 .LVU940
	.uleb128 .LVU1023
	.uleb128 .LVU1028
	.uleb128 .LVU1028
	.uleb128 .LVU1032
	.uleb128 .LVU1039
	.uleb128 .LVU1044
	.uleb128 .LVU1063
	.uleb128 .LVU1075
.LLST123:
	.4byte	.LVL222
	.4byte	.LVL227
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL246
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL288
	.4byte	.LVL292
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS124:
	.uleb128 .LVU858
	.uleb128 .LVU872
	.uleb128 .LVU933
	.uleb128 .LVU948
	.uleb128 .LVU1029
	.uleb128 .LVU1032
	.uleb128 .LVU1041
	.uleb128 .LVU1044
	.uleb128 .LVU1066
	.uleb128 .LVU1075
.LLST124:
	.4byte	.LVL232
	.4byte	.LVL235
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL247
	.4byte	.LVL250
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL289
	.4byte	.LVL292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS125:
	.uleb128 .LVU858
	.uleb128 .LVU884
	.uleb128 .LVU933
	.uleb128 .LVU954
	.uleb128 .LVU1029
	.uleb128 .LVU1039
	.uleb128 .LVU1041
	.uleb128 .LVU1048
	.uleb128 .LVU1066
	.uleb128 .LVU1075
.LLST125:
	.4byte	.LVL232
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL247
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL277
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL280
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL289
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS126:
	.uleb128 .LVU858
	.uleb128 .LVU863
	.uleb128 .LVU933
	.uleb128 .LVU940
	.uleb128 .LVU1029
	.uleb128 .LVU1032
	.uleb128 .LVU1041
	.uleb128 .LVU1044
	.uleb128 .LVU1066
	.uleb128 .LVU1075
.LLST126:
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL289
	.4byte	.LVL292
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS127:
	.uleb128 .LVU945
	.uleb128 .LVU948
.LLST127:
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x25
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x437f0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
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
	.byte	0xff
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
.LVUS128:
	.uleb128 .LVU941
	.uleb128 .LVU943
	.uleb128 .LVU943
	.uleb128 .LVU945
.LLST128:
	.4byte	.LVL249
	.4byte	.LVL249
	.2byte	0x10
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x437f0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL249
	.2byte	0x1a
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x437f0000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
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
.LVUS129:
	.uleb128 .LVU941
	.uleb128 .LVU945
.LLST129:
	.4byte	.LVL249
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS130:
	.uleb128 .LVU941
	.uleb128 .LVU945
.LLST130:
	.4byte	.LVL249
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS131:
	.uleb128 .LVU868
	.uleb128 .LVU872
.LLST131:
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x25
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x4203f5c3
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
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
	.byte	0x20
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
.LVUS132:
	.uleb128 .LVU870
	.uleb128 .LVU872
.LLST132:
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x2d
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x4203f5c3
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
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
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	patterns
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS133:
	.uleb128 .LVU864
	.uleb128 .LVU866
	.uleb128 .LVU866
	.uleb128 .LVU868
.LLST133:
	.4byte	.LVL234
	.4byte	.LVL234
	.2byte	0x10
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x4203f5c3
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL234
	.2byte	0x1a
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x4203f5c3
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
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
.LVUS134:
	.uleb128 .LVU864
	.uleb128 .LVU868
.LLST134:
	.4byte	.LVL234
	.4byte	.LVL234
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS135:
	.uleb128 .LVU864
	.uleb128 .LVU868
.LLST135:
	.4byte	.LVL234
	.4byte	.LVL234
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS136:
	.uleb128 .LVU819
	.uleb128 .LVU830
	.uleb128 .LVU830
	.uleb128 .LVU861
	.uleb128 .LVU1039
	.uleb128 .LVU1044
	.uleb128 .LVU1063
	.uleb128 .LVU1065
.LLST136:
	.4byte	.LVL223
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL226
	.4byte	.LVL233
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS137:
	.uleb128 .LVU821
	.uleb128 .LVU840
	.uleb128 .LVU1063
	.uleb128 .LVU1065
.LLST137:
	.4byte	.LVL224
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS138:
	.uleb128 .LVU823
	.uleb128 .LVU850
	.uleb128 .LVU850
	.uleb128 .LVU861
	.uleb128 .LVU1039
	.uleb128 .LVU1044
	.uleb128 .LVU1063
	.uleb128 .LVU1065
.LLST138:
	.4byte	.LVL225
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x6
	.byte	0x7a
	.sleb128 32
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x6
	.byte	0x7a
	.sleb128 32
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS139:
	.uleb128 .LVU824
	.uleb128 .LVU830
	.uleb128 .LVU830
	.uleb128 .LVU833
	.uleb128 .LVU1063
	.uleb128 .LVU1065
.LLST139:
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS140:
	.uleb128 .LVU834
	.uleb128 .LVU840
.LLST140:
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS141:
	.uleb128 .LVU844
	.uleb128 .LVU850
	.uleb128 .LVU850
	.uleb128 .LVU853
.LLST141:
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x6
	.byte	0x7a
	.sleb128 32
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS142:
	.uleb128 .LVU1056
	.uleb128 .LVU1058
.LLST142:
	.4byte	.LVL286
	.4byte	.LVL286
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
.LVUS143:
	.uleb128 .LVU1056
	.uleb128 .LVU1058
.LLST143:
	.4byte	.LVL286
	.4byte	.LVL286
	.2byte	0xc
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
	.4byte	0
	.4byte	0
.LVUS144:
	.uleb128 .LVU536
	.uleb128 .LVU541
	.uleb128 .LVU1112
	.uleb128 .LVU1119
	.uleb128 .LVU1132
	.uleb128 .LVU1134
.LLST144:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL304
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS145:
	.uleb128 .LVU543
	.uleb128 .LVU545
	.uleb128 .LVU545
	.uleb128 .LVU547
.LLST145:
	.4byte	.LVL156
	.4byte	.LVL156
	.2byte	0x6
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.byte	0x23
	.uleb128 0x34
	.4byte	.LVL156
	.4byte	.LVL156
	.2byte	0x12
	.byte	0x91
	.sleb128 -188
	.byte	0x6
	.byte	0x23
	.uleb128 0x34
	.byte	0x6
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
.LVUS146:
	.uleb128 .LVU543
	.uleb128 .LVU547
.LLST146:
	.4byte	.LVL156
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS147:
	.uleb128 .LVU543
	.uleb128 .LVU547
.LLST147:
	.4byte	.LVL156
	.4byte	.LVL156
	.2byte	0xa
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS148:
	.uleb128 .LVU563
	.uleb128 .LVU575
	.uleb128 .LVU575
	.uleb128 .LVU580
	.uleb128 .LVU580
	.uleb128 .LVU583
	.uleb128 .LVU583
	.uleb128 .LVU615
	.uleb128 .LVU615
	.uleb128 .LVU618
.LLST148:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x25
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS149:
	.uleb128 .LVU565
	.uleb128 .LVU567
.LLST149:
	.4byte	.LVL157
	.4byte	.LVL157
	.2byte	0x18
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x34
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS150:
	.uleb128 .LVU565
	.uleb128 .LVU567
.LLST150:
	.4byte	.LVL157
	.4byte	.LVL157
	.2byte	0x18
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0x23
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS151:
	.uleb128 .LVU573
	.uleb128 .LVU580
	.uleb128 .LVU580
	.uleb128 .LVU611
	.uleb128 .LVU611
	.uleb128 .LVU617
	.uleb128 .LVU617
	.uleb128 .LVU618
.LLST151:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS152:
	.uleb128 .LVU583
	.uleb128 .LVU597
	.uleb128 .LVU597
	.uleb128 .LVU606
.LLST152:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161
	.4byte	.LVL164-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS153:
	.uleb128 .LVU584
	.uleb128 .LVU597
	.uleb128 .LVU597
	.uleb128 .LVU606
.LLST153:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL164-1
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS154:
	.uleb128 .LVU585
	.uleb128 .LVU597
	.uleb128 .LVU597
	.uleb128 .LVU606
.LLST154:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0xa
	.2byte	0x3ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL164-1
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x3b
	.byte	0x25
	.byte	0xa
	.2byte	0x3ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS155:
	.uleb128 .LVU586
	.uleb128 .LVU597
	.uleb128 .LVU597
	.uleb128 .LVU606
.LLST155:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x45
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL164-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS156:
	.uleb128 .LVU656
	.uleb128 .LVU662
	.uleb128 .LVU662
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU816
	.uleb128 .LVU1119
	.uleb128 .LVU1129
.LLST156:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL209
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL307
	.4byte	.LVL309
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS157:
	.uleb128 .LVU662
	.uleb128 .LVU717
	.uleb128 .LVU732
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU793
	.uleb128 .LVU793
	.uleb128 .LVU794
.LLST157:
	.4byte	.LVL176
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x71
	.sleb128 -6
	.4byte	.LVL198
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x71
	.sleb128 -6
	.4byte	.LVL209
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x71
	.sleb128 -6
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x71
	.sleb128 -12
	.4byte	0
	.4byte	0
.LVUS158:
	.uleb128 .LVU662
	.uleb128 .LVU717
	.uleb128 .LVU733
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU793
	.uleb128 .LVU793
	.uleb128 .LVU794
.LLST158:
	.4byte	.LVL176
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x71
	.sleb128 -4
	.4byte	.LVL198
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x71
	.sleb128 -4
	.4byte	.LVL209
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x71
	.sleb128 -4
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x71
	.sleb128 -10
	.4byte	0
	.4byte	0
.LVUS159:
	.uleb128 .LVU662
	.uleb128 .LVU717
	.uleb128 .LVU734
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU793
	.uleb128 .LVU793
	.uleb128 .LVU794
.LLST159:
	.4byte	.LVL176
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x71
	.sleb128 -2
	.4byte	.LVL198
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x71
	.sleb128 -2
	.4byte	.LVL209
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x71
	.sleb128 -2
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x71
	.sleb128 -8
	.4byte	0
	.4byte	0
.LVUS160:
	.uleb128 .LVU662
	.uleb128 .LVU697
	.uleb128 .LVU697
	.uleb128 .LVU726
	.uleb128 .LVU741
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU789
.LLST160:
	.4byte	.LVL176
	.4byte	.LVL188
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x77
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x77
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL188
	.4byte	.LVL195
	.2byte	0xc
	.byte	0x77
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x77
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x77
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL200
	.4byte	.LVL204
	.2byte	0xc
	.byte	0x77
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x77
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x77
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x77
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x77
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS161:
	.uleb128 .LVU662
	.uleb128 .LVU679
	.uleb128 .LVU679
	.uleb128 .LVU726
	.uleb128 .LVU743
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU789
.LLST161:
	.4byte	.LVL176
	.4byte	.LVL181
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL181
	.4byte	.LVL195
	.2byte	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL201
	.4byte	.LVL204
	.2byte	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS162:
	.uleb128 .LVU662
	.uleb128 .LVU665
	.uleb128 .LVU665
	.uleb128 .LVU677
	.uleb128 .LVU677
	.uleb128 .LVU726
	.uleb128 .LVU748
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU789
.LLST162:
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL177
	.4byte	.LVL179
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL179
	.4byte	.LVL195
	.2byte	0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0xc
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x7e
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS163:
	.uleb128 .LVU662
	.uleb128 .LVU731
	.uleb128 .LVU749
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU800
.LLST163:
	.4byte	.LVL176
	.4byte	.LVL198
	.2byte	0x2d
	.byte	0x77
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x76
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x21
	.byte	0x7e
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x2d
	.byte	0x77
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x76
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x21
	.byte	0x7e
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL215
	.2byte	0x2d
	.byte	0x77
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x76
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x21
	.byte	0x7e
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3c75c28f
	.byte	0x2d
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS164:
	.uleb128 .LVU662
	.uleb128 .LVU697
	.uleb128 .LVU697
	.uleb128 .LVU726
	.uleb128 .LVU759
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU794
.LLST164:
	.4byte	.LVL176
	.4byte	.LVL188
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL188
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS165:
	.uleb128 .LVU662
	.uleb128 .LVU726
	.uleb128 .LVU760
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU794
.LLST165:
	.4byte	.LVL176
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS166:
	.uleb128 .LVU662
	.uleb128 .LVU679
	.uleb128 .LVU679
	.uleb128 .LVU726
	.uleb128 .LVU761
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU794
.LLST166:
	.4byte	.LVL176
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL181
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS167:
	.uleb128 .LVU662
	.uleb128 .LVU726
	.uleb128 .LVU762
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU794
.LLST167:
	.4byte	.LVL176
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x76
	.sleb128 4
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x76
	.sleb128 4
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x76
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS168:
	.uleb128 .LVU662
	.uleb128 .LVU677
	.uleb128 .LVU677
	.uleb128 .LVU726
	.uleb128 .LVU763
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU794
.LLST168:
	.4byte	.LVL176
	.4byte	.LVL179
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL179
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	0
	.4byte	0
.LVUS169:
	.uleb128 .LVU662
	.uleb128 .LVU726
	.uleb128 .LVU764
	.uleb128 .LVU771
	.uleb128 .LVU784
	.uleb128 .LVU794
.LLST169:
	.4byte	.LVL176
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS170:
	.uleb128 .LVU671
	.uleb128 .LVU679
	.uleb128 .LVU679
	.uleb128 .LVU698
	.uleb128 .LVU698
	.uleb128 .LVU726
.LLST170:
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4d
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL189
	.4byte	.LVL195
	.2byte	0xc
	.byte	0x76
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS171:
	.uleb128 .LVU672
	.uleb128 .LVU680
	.uleb128 .LVU680
	.uleb128 .LVU726
.LLST171:
	.4byte	.LVL178
	.4byte	.LVL182
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4a
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.4byte	0
	.4byte	0
.LVUS172:
	.uleb128 .LVU673
	.uleb128 .LVU677
	.uleb128 .LVU677
	.uleb128 .LVU726
.LLST172:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4c
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4d
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	0
	.4byte	0
.LVUS173:
	.uleb128 .LVU674
	.uleb128 .LVU678
	.uleb128 .LVU678
	.uleb128 .LVU681
	.uleb128 .LVU681
	.uleb128 .LVU726
.LLST173:
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4a
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL183
	.4byte	.LVL195
	.2byte	0xa
	.byte	0x76
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4a
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS174:
	.uleb128 .LVU684
	.uleb128 .LVU693
	.uleb128 .LVU693
	.uleb128 .LVU694
	.uleb128 .LVU694
	.uleb128 .LVU696
	.uleb128 .LVU696
	.uleb128 .LVU712
	.uleb128 .LVU712
	.uleb128 .LVU717
.LLST174:
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x28
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x30
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x29
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL191
	.2byte	0x2d
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x3e
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x71
	.sleb128 -4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS175:
	.uleb128 .LVU685
	.uleb128 .LVU693
	.uleb128 .LVU693
	.uleb128 .LVU694
	.uleb128 .LVU694
	.uleb128 .LVU696
	.uleb128 .LVU696
	.uleb128 .LVU711
.LLST175:
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x28
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x30
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x29
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL190
	.2byte	0x2d
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS176:
	.uleb128 .LVU685
	.uleb128 .LVU711
.LLST176:
	.4byte	.LVL184
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS177:
	.uleb128 .LVU689
	.uleb128 .LVU693
	.uleb128 .LVU693
	.uleb128 .LVU694
	.uleb128 .LVU694
	.uleb128 .LVU696
	.uleb128 .LVU696
	.uleb128 .LVU703
.LLST177:
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x28
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x30
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x29
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL190
	.2byte	0x2d
	.byte	0x71
	.sleb128 -6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1f
	.byte	0x73
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS178:
	.uleb128 .LVU702
	.uleb128 .LVU711
	.uleb128 .LVU711
	.uleb128 .LVU723
	.uleb128 .LVU725
	.uleb128 .LVU726
	.uleb128 .LVU794
	.uleb128 .LVU798
.LLST178:
	.4byte	.LVL190
	.4byte	.LVL190
	.2byte	0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL190
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x52
	.byte	0xf0
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x52
	.byte	0xf0
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x52
	.byte	0xf0
	.4byte	0
	.4byte	0
.LVUS179:
	.uleb128 .LVU705
	.uleb128 .LVU708
.LLST179:
	.4byte	.LVL190
	.4byte	.LVL190
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS180:
	.uleb128 .LVU707
	.uleb128 .LVU708
.LLST180:
	.4byte	.LVL190
	.4byte	.LVL190
	.2byte	0xb
	.byte	0x92
	.uleb128 0x4f
	.sleb128 0
	.byte	0x4f
	.byte	0x26
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS181:
	.uleb128 .LVU1079
	.uleb128 .LVU1081
	.uleb128 .LVU1081
	.uleb128 .LVU1084
	.uleb128 .LVU1084
	.uleb128 .LVU1087
	.uleb128 .LVU1087
	.uleb128 .LVU1097
	.uleb128 .LVU1097
	.uleb128 .LVU1099
.LLST181:
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x3c
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL295
	.4byte	.LVL299
	.2byte	0x3
	.byte	0x76
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS182:
	.uleb128 .LVU1079
	.uleb128 .LVU1084
	.uleb128 .LVU1084
	.uleb128 .LVU1093
	.uleb128 .LVU1093
	.uleb128 .LVU1098
	.uleb128 .LVU1098
	.uleb128 .LVU1099
.LLST182:
	.4byte	.LVL292
	.4byte	.LVL294
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL298
	.4byte	.LVL299
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS183:
	.uleb128 .LVU964
	.uleb128 .LVU973
	.uleb128 .LVU973
	.uleb128 .LVU1019
.LLST183:
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS184:
	.uleb128 .LVU979
	.uleb128 .LVU980
	.uleb128 .LVU980
	.uleb128 .LVU982
	.uleb128 .LVU982
	.uleb128 .LVU983
	.uleb128 .LVU983
	.uleb128 .LVU991
	.uleb128 .LVU991
	.uleb128 .LVU992
	.uleb128 .LVU992
	.uleb128 .LVU1002
	.uleb128 .LVU1002
	.uleb128 .LVU1003
	.uleb128 .LVU1009
	.uleb128 .LVU1015
	.uleb128 .LVU1015
	.uleb128 .LVU1016
.LLST184:
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x6
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL259
	.4byte	.LVL260
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
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0xa
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL261
	.4byte	.LVL264
	.2byte	0xa
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL264
	.4byte	.LVL264
	.2byte	0x18
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x53
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL264
	.4byte	.LVL267
	.2byte	0x26
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x53
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x16
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x29
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL269
	.4byte	.LVL272
	.2byte	0x6
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL272
	.4byte	.LVL273-1
	.2byte	0xa
	.byte	0x90
	.uleb128 0x4d
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
.LVUS185:
	.uleb128 .LVU988
	.uleb128 .LVU996
	.uleb128 .LVU996
	.uleb128 .LVU998
	.uleb128 .LVU998
	.uleb128 .LVU1010
	.uleb128 .LVU1010
	.uleb128 .LVU1013
	.uleb128 .LVU1013
	.uleb128 .LVU1016
.LLST185:
	.4byte	.LVL263
	.4byte	.LVL265
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
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL266
	.4byte	.LVL270
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0xb
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL271
	.4byte	.LVL273-1
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
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LFB56
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI22
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI23
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI24
	.4byte	.LFE56
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0
	.4byte	0
.LVUS73:
	.uleb128 0
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 0
.LLST73:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL125
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LFB55
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI20
	.4byte	.LFE55
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS70:
	.uleb128 0
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 0
.LLST70:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU379
	.uleb128 .LVU379
	.uleb128 0
.LLST71:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL118
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB49
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x3
	.byte	0x7d
	.sleb128 144
	.4byte	.LCFI16
	.4byte	.LFE49
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 0
	.uleb128 .LVU298
	.uleb128 .LVU298
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 0
.LLST48:
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LFE49
	.2byte	0x4
	.byte	0x7c
	.sleb128 -80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 0
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 0
.LLST49:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x90
	.uleb128 0x46
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL101
	.4byte	.LFE49
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x46
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU305
	.uleb128 .LVU307
.LLST50:
	.4byte	.LVL104
	.4byte	.LVL104
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LFB46
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI11
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 0
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 0
.LLST42:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL84
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LFE46
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
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LFB45
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI18
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	.LCFI19
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 0
.LLST52:
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL108-1
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113
	.4byte	.LFE45
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
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU323
	.uleb128 .LVU325
.LLST53:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU325
	.uleb128 .LVU328
.LLST56:
	.4byte	.LVL109
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU325
	.uleb128 .LVU328
.LLST58:
	.4byte	.LVL109
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU328
	.uleb128 .LVU331
.LLST59:
	.4byte	.LVL109
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU328
	.uleb128 .LVU331
.LLST60:
	.4byte	.LVL109
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU334
	.uleb128 .LVU354
.LLST62:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU336
	.uleb128 .LVU346
.LLST63:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x18
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xbf800000
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS64:
	.uleb128 .LVU342
	.uleb128 0
.LLST64:
	.4byte	.LVL111
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 .LVU338
	.uleb128 .LVU342
.LLST65:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 .LVU356
	.uleb128 .LVU359
.LLST66:
	.4byte	.LVL112
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS67:
	.uleb128 .LVU356
	.uleb128 .LVU359
.LLST67:
	.4byte	.LVL112
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f000000
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB44
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE44
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 0
.LLST21:
	.4byte	.LVL48
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61
	.4byte	.LVL77
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
	.4byte	.LVL77
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 0
.LLST22:
	.4byte	.LVL48
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL61
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL76
	.4byte	.LVL77
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
	.4byte	.LVL77
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU154
.LLST23:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU125
.LLST24:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU127
	.uleb128 .LVU176
	.uleb128 .LVU190
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU198
	.uleb128 .LVU215
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU233
	.uleb128 .LVU240
	.uleb128 0
.LLST25:
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL82
	.4byte	.LFE44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU131
	.uleb128 0
.LLST26:
	.4byte	.LVL53
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU188
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU198
	.uleb128 .LVU213
	.uleb128 .LVU221
	.uleb128 .LVU235
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 0
.LLST27:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x92
	.uleb128 0x4e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU165
	.uleb128 .LVU170
	.uleb128 .LVU224
	.uleb128 .LVU230
.LLST28:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4d
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4d
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU184
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU221
	.uleb128 .LVU240
	.uleb128 0
.LLST29:
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE44
	.2byte	0xf
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4b
	.uleb128 0x29
	.byte	0x22
	.byte	0xf7
	.uleb128 0x3e
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU135
	.uleb128 .LVU137
.LLST30:
	.4byte	.LVL54
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU135
	.uleb128 .LVU137
.LLST31:
	.4byte	.LVL54
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU141
	.uleb128 .LVU143
.LLST32:
	.4byte	.LVL55
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU141
	.uleb128 .LVU143
.LLST33:
	.4byte	.LVL55
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU156
	.uleb128 .LVU165
	.uleb128 .LVU222
	.uleb128 .LVU224
.LLST34:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU156
	.uleb128 .LVU165
	.uleb128 .LVU222
	.uleb128 .LVU224
.LLST35:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU158
	.uleb128 .LVU165
	.uleb128 .LVU222
	.uleb128 .LVU224
.LLST36:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU159
	.uleb128 .LVU165
	.uleb128 .LVU222
	.uleb128 .LVU224
.LLST37:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU184
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU188
	.uleb128 .LVU208
	.uleb128 .LVU213
.LLST38:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU184
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU188
	.uleb128 .LVU203
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU213
.LLST39:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU184
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU188
	.uleb128 .LVU205
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU213
.LLST40:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB62
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE62
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LVL24
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
	.4byte	.LVL24
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13
	.4byte	.LVL24
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
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
	.4byte	.LVL24
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1f
	.byte	0xa
	.2byte	0x190
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1f
	.byte	0xa
	.2byte	0x190
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU12
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL21-1
	.4byte	.LVL24
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
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
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU23
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU54
	.uleb128 .LVU73
	.uleb128 .LVU78
	.uleb128 .LVU89
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU100
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0x7c
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU26
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU36
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU39
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
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
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU42
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU57
	.uleb128 .LVU73
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU23
.LLST10:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x7
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x7
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU27
	.uleb128 .LVU36
.LLST11:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xd
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU45
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU61
.LLST12:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x14
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
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
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU48
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU55
.LLST13:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU48
	.uleb128 .LVU54
.LLST14:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU67
	.uleb128 .LVU71
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU79
	.uleb128 .LVU89
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL34
	.4byte	.LFE62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU81
	.uleb128 .LVU86
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB63
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI8
	.4byte	.LFE63
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 0
.LLST19:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-1
	.4byte	.LFE63
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
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB47
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI13
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU258
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU273
.LLST44:
	.4byte	.LVL94
	.4byte	.LVL95
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
	.4byte	.LVL95
	.4byte	.LVL97
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
.LVUS45:
	.uleb128 .LVU268
	.uleb128 0
.LLST45:
	.4byte	.LVL96
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU271
	.uleb128 .LVU273
.LLST46:
	.4byte	.LVL97
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS203:
	.uleb128 0
	.uleb128 .LVU1309
	.uleb128 .LVU1309
	.uleb128 .LVU1309
	.uleb128 .LVU1309
	.uleb128 0
.LLST203:
	.4byte	.LVL354
	.4byte	.LVL355-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL355-1
	.4byte	.LVL355
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
	.4byte	.LVL355
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	.LBB150
	.4byte	.LBE150
	.4byte	0
	.4byte	0
	.4byte	.LBB151
	.4byte	.LBE151
	.4byte	.LBB154
	.4byte	.LBE154
	.4byte	0
	.4byte	0
	.4byte	.LBB155
	.4byte	.LBE155
	.4byte	.LBB176
	.4byte	.LBE176
	.4byte	0
	.4byte	0
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	.LBB169
	.4byte	.LBE169
	.4byte	0
	.4byte	0
	.4byte	.LBB165
	.4byte	.LBE165
	.4byte	.LBB168
	.4byte	.LBE168
	.4byte	0
	.4byte	0
	.4byte	.LBB170
	.4byte	.LBE170
	.4byte	.LBB175
	.4byte	.LBE175
	.4byte	.LBB177
	.4byte	.LBE177
	.4byte	0
	.4byte	0
	.4byte	.LBB171
	.4byte	.LBE171
	.4byte	.LBB174
	.4byte	.LBE174
	.4byte	0
	.4byte	0
	.4byte	.LBB189
	.4byte	.LBE189
	.4byte	.LBB192
	.4byte	.LBE192
	.4byte	0
	.4byte	0
	.4byte	.LBB195
	.4byte	.LBE195
	.4byte	.LBB202
	.4byte	.LBE202
	.4byte	.LBB203
	.4byte	.LBE203
	.4byte	.LBB204
	.4byte	.LBE204
	.4byte	.LBB205
	.4byte	.LBE205
	.4byte	.LBB216
	.4byte	.LBE216
	.4byte	0
	.4byte	0
	.4byte	.LBB206
	.4byte	.LBE206
	.4byte	.LBB210
	.4byte	.LBE210
	.4byte	.LBB214
	.4byte	.LBE214
	.4byte	0
	.4byte	0
	.4byte	.LBB211
	.4byte	.LBE211
	.4byte	.LBB215
	.4byte	.LBE215
	.4byte	0
	.4byte	0
	.4byte	.LBB221
	.4byte	.LBE221
	.4byte	.LBB227
	.4byte	.LBE227
	.4byte	0
	.4byte	0
	.4byte	.LBB228
	.4byte	.LBE228
	.4byte	.LBB231
	.4byte	.LBE231
	.4byte	0
	.4byte	0
	.4byte	.LBB247
	.4byte	.LBE247
	.4byte	.LBB261
	.4byte	.LBE261
	.4byte	.LBB263
	.4byte	.LBE263
	.4byte	.LBB265
	.4byte	.LBE265
	.4byte	0
	.4byte	0
	.4byte	.LBB256
	.4byte	.LBE256
	.4byte	.LBB262
	.4byte	.LBE262
	.4byte	.LBB264
	.4byte	.LBE264
	.4byte	.LBB266
	.4byte	.LBE266
	.4byte	0
	.4byte	0
	.4byte	.LBB328
	.4byte	.LBE328
	.4byte	.LBB344
	.4byte	.LBE344
	.4byte	.LBB345
	.4byte	.LBE345
	.4byte	.LBB346
	.4byte	.LBE346
	.4byte	0
	.4byte	0
	.4byte	.LBB330
	.4byte	.LBE330
	.4byte	.LBB342
	.4byte	.LBE342
	.4byte	.LBB343
	.4byte	.LBE343
	.4byte	0
	.4byte	0
	.4byte	.LBB332
	.4byte	.LBE332
	.4byte	.LBB335
	.4byte	.LBE335
	.4byte	0
	.4byte	0
	.4byte	.LBB336
	.4byte	.LBE336
	.4byte	.LBB339
	.4byte	.LBE339
	.4byte	0
	.4byte	0
	.4byte	.LBB347
	.4byte	.LBE347
	.4byte	.LBB489
	.4byte	.LBE489
	.4byte	.LBB490
	.4byte	.LBE490
	.4byte	0
	.4byte	0
	.4byte	.LBB348
	.4byte	.LBE348
	.4byte	.LBB481
	.4byte	.LBE481
	.4byte	.LBB482
	.4byte	.LBE482
	.4byte	.LBB483
	.4byte	.LBE483
	.4byte	.LBB484
	.4byte	.LBE484
	.4byte	0
	.4byte	0
	.4byte	.LBB349
	.4byte	.LBE349
	.4byte	.LBB475
	.4byte	.LBE475
	.4byte	.LBB476
	.4byte	.LBE476
	.4byte	.LBB477
	.4byte	.LBE477
	.4byte	.LBB478
	.4byte	.LBE478
	.4byte	.LBB479
	.4byte	.LBE479
	.4byte	.LBB480
	.4byte	.LBE480
	.4byte	0
	.4byte	0
	.4byte	.LBB351
	.4byte	.LBE351
	.4byte	.LBB442
	.4byte	.LBE442
	.4byte	.LBB443
	.4byte	.LBE443
	.4byte	0
	.4byte	0
	.4byte	.LBB352
	.4byte	.LBE352
	.4byte	.LBB355
	.4byte	.LBE355
	.4byte	.LBB356
	.4byte	.LBE356
	.4byte	0
	.4byte	0
	.4byte	.LBB353
	.4byte	.LBE353
	.4byte	.LBB354
	.4byte	.LBE354
	.4byte	0
	.4byte	0
	.4byte	.LBB357
	.4byte	.LBE357
	.4byte	.LBB461
	.4byte	.LBE461
	.4byte	.LBB462
	.4byte	.LBE462
	.4byte	.LBB467
	.4byte	.LBE467
	.4byte	0
	.4byte	0
	.4byte	.LBB358
	.4byte	.LBE358
	.4byte	.LBB401
	.4byte	.LBE401
	.4byte	.LBB402
	.4byte	.LBE402
	.4byte	.LBB403
	.4byte	.LBE403
	.4byte	.LBB404
	.4byte	.LBE404
	.4byte	.LBB405
	.4byte	.LBE405
	.4byte	0
	.4byte	0
	.4byte	.LBB359
	.4byte	.LBE359
	.4byte	.LBB388
	.4byte	.LBE388
	.4byte	.LBB394
	.4byte	.LBE394
	.4byte	.LBB395
	.4byte	.LBE395
	.4byte	.LBB396
	.4byte	.LBE396
	.4byte	.LBB397
	.4byte	.LBE397
	.4byte	.LBB399
	.4byte	.LBE399
	.4byte	.LBB400
	.4byte	.LBE400
	.4byte	0
	.4byte	0
	.4byte	.LBB361
	.4byte	.LBE361
	.4byte	.LBB372
	.4byte	.LBE372
	.4byte	0
	.4byte	0
	.4byte	.LBB362
	.4byte	.LBE362
	.4byte	.LBB365
	.4byte	.LBE365
	.4byte	0
	.4byte	0
	.4byte	.LBB366
	.4byte	.LBE366
	.4byte	.LBB371
	.4byte	.LBE371
	.4byte	0
	.4byte	0
	.4byte	.LBB367
	.4byte	.LBE367
	.4byte	.LBB370
	.4byte	.LBE370
	.4byte	0
	.4byte	0
	.4byte	.LBB380
	.4byte	.LBE380
	.4byte	.LBB387
	.4byte	.LBE387
	.4byte	0
	.4byte	0
	.4byte	.LBB389
	.4byte	.LBE389
	.4byte	.LBB391
	.4byte	.LBE391
	.4byte	.LBB392
	.4byte	.LBE392
	.4byte	.LBB393
	.4byte	.LBE393
	.4byte	.LBB398
	.4byte	.LBE398
	.4byte	0
	.4byte	0
	.4byte	.LBB406
	.4byte	.LBE406
	.4byte	.LBB466
	.4byte	.LBE466
	.4byte	.LBB468
	.4byte	.LBE468
	.4byte	0
	.4byte	0
	.4byte	.LBB407
	.4byte	.LBE407
	.4byte	.LBB437
	.4byte	.LBE437
	.4byte	.LBB439
	.4byte	.LBE439
	.4byte	0
	.4byte	0
	.4byte	.LBB411
	.4byte	.LBE411
	.4byte	.LBB438
	.4byte	.LBE438
	.4byte	.LBB440
	.4byte	.LBE440
	.4byte	.LBB441
	.4byte	.LBE441
	.4byte	0
	.4byte	0
	.4byte	.LBB412
	.4byte	.LBE412
	.4byte	.LBB432
	.4byte	.LBE432
	.4byte	.LBB434
	.4byte	.LBE434
	.4byte	0
	.4byte	0
	.4byte	.LBB416
	.4byte	.LBE416
	.4byte	.LBB431
	.4byte	.LBE431
	.4byte	.LBB433
	.4byte	.LBE433
	.4byte	.LBB435
	.4byte	.LBE435
	.4byte	0
	.4byte	0
	.4byte	.LBB421
	.4byte	.LBE421
	.4byte	.LBB436
	.4byte	.LBE436
	.4byte	0
	.4byte	0
	.4byte	.LBB422
	.4byte	.LBE422
	.4byte	.LBB429
	.4byte	.LBE429
	.4byte	.LBB430
	.4byte	.LBE430
	.4byte	0
	.4byte	0
	.4byte	.LBB423
	.4byte	.LBE423
	.4byte	.LBB427
	.4byte	.LBE427
	.4byte	.LBB428
	.4byte	.LBE428
	.4byte	0
	.4byte	0
	.4byte	.LBB444
	.4byte	.LBE444
	.4byte	.LBB460
	.4byte	.LBE460
	.4byte	0
	.4byte	0
	.4byte	.LBB445
	.4byte	.LBE445
	.4byte	.LBB458
	.4byte	.LBE458
	.4byte	.LBB459
	.4byte	.LBE459
	.4byte	0
	.4byte	0
	.4byte	.LBB446
	.4byte	.LBE446
	.4byte	.LBB457
	.4byte	.LBE457
	.4byte	0
	.4byte	0
	.4byte	.LBB448
	.4byte	.LBE448
	.4byte	.LBB451
	.4byte	.LBE451
	.4byte	0
	.4byte	0
	.4byte	.LBB452
	.4byte	.LBE452
	.4byte	.LBB455
	.4byte	.LBE455
	.4byte	0
	.4byte	0
	.4byte	.LBB464
	.4byte	.LBE464
	.4byte	.LBB465
	.4byte	.LBE465
	.4byte	0
	.4byte	0
	.4byte	.LBB485
	.4byte	.LBE485
	.4byte	.LBB487
	.4byte	.LBE487
	.4byte	.LBB488
	.4byte	.LBE488
	.4byte	0
	.4byte	0
	.4byte	.LBB491
	.4byte	.LBE491
	.4byte	.LBB501
	.4byte	.LBE501
	.4byte	.LBB504
	.4byte	.LBE504
	.4byte	0
	.4byte	0
	.4byte	.LBB495
	.4byte	.LBE495
	.4byte	.LBB500
	.4byte	.LBE500
	.4byte	.LBB502
	.4byte	.LBE502
	.4byte	.LBB503
	.4byte	.LBE503
	.4byte	0
	.4byte	0
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF111:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF46:
	.ascii	"MeshInstance\000"
.LASF65:
	.ascii	"tmp_vis_tris_mask\000"
.LASF187:
	.ascii	"write_masked_black\000"
.LASF193:
	.ascii	"v3_normalize\000"
.LASF191:
	.ascii	"v3_add\000"
.LASF176:
	.ascii	"scene_setLight\000"
.LASF174:
	.ascii	"lookAt\000"
.LASF194:
	.ascii	"v3_dot\000"
.LASF156:
	.ascii	"wire_flag\000"
.LASF71:
	.ascii	"line_count\000"
.LASF195:
	.ascii	"clamp_i\000"
.LASF140:
	.ascii	"bbox_scale\000"
.LASF35:
	.ascii	"vertex_frame_count\000"
.LASF45:
	.ascii	"flags\000"
.LASF55:
	.ascii	"centerx\000"
.LASF56:
	.ascii	"centery\000"
.LASF117:
	.ascii	"buffer\000"
.LASF165:
	.ascii	"float_flip\000"
.LASF30:
	.ascii	"MeshDrawFlag_SilhouetteWire\000"
.LASF41:
	.ascii	"adjacency\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF136:
	.ascii	"sorted_order\000"
.LASF198:
	.ascii	"float_to_half_topbits\000"
.LASF37:
	.ascii	"tri_count\000"
.LASF9:
	.ascii	"__int32_t\000"
.LASF134:
	.ascii	"vis_tri_count\000"
.LASF77:
	.ascii	"plat_file_read\000"
.LASF138:
	.ascii	"mesh_tri_mask_count\000"
.LASF73:
	.ascii	"line_buf\000"
.LASF42:
	.ascii	"bbox_min\000"
.LASF132:
	.ascii	"use_silhouette\000"
.LASF64:
	.ascii	"vis_tris_mask_cap\000"
.LASF78:
	.ascii	"plat_file_open_read\000"
.LASF150:
	.ascii	"any_non_pos\000"
.LASF68:
	.ascii	"instances\000"
.LASF126:
	.ascii	"view_a\000"
.LASF127:
	.ascii	"view_b\000"
.LASF179:
	.ascii	"endy\000"
.LASF84:
	.ascii	"radixsort_upper16keys\000"
.LASF202:
	.ascii	"_fail\000"
.LASF47:
	.ascii	"mesh\000"
.LASF178:
	.ascii	"scene_init\000"
.LASF172:
	.ascii	"scene_setCamera\000"
.LASF109:
	.ascii	"uv_size\000"
.LASF74:
	.ascii	"stats_visible_tris\000"
.LASF24:
	.ascii	"MeshFlags\000"
.LASF151:
	.ascii	"dx21\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF158:
	.ascii	"diff\000"
.LASF100:
	.ascii	"Header\000"
.LASF72:
	.ascii	"line_cap\000"
.LASF0:
	.ascii	"float\000"
.LASF181:
	.ascii	"shift\000"
.LASF125:
	.ascii	"index\000"
.LASF135:
	.ascii	"ibPtr\000"
.LASF143:
	.ascii	"v_bits_y\000"
.LASF200:
	.ascii	"result\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF97:
	.ascii	"mesh_create\000"
.LASF153:
	.ascii	"dx31\000"
.LASF116:
	.ascii	"scene\000"
.LASF59:
	.ascii	"tmp_view_points\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF75:
	.ascii	"PlatFile\000"
.LASF133:
	.ascii	"k_min_z\000"
.LASF137:
	.ascii	"use_lighting\000"
.LASF182:
	.ascii	"draw_black_fragment\000"
.LASF119:
	.ascii	"draw_flags\000"
.LASF185:
	.ascii	"endbit\000"
.LASF18:
	.ascii	"size_t\000"
.LASF177:
	.ascii	"scene_shutdown\000"
.LASF192:
	.ascii	"v3_neg\000"
.LASF81:
	.ascii	"draw_tri_pattern\000"
.LASF69:
	.ascii	"tmp_inst_order_table1\000"
.LASF70:
	.ascii	"tmp_inst_order_table2\000"
.LASF115:
	.ascii	"scene_draw\000"
.LASF145:
	.ascii	"v_pos\000"
.LASF188:
	.ascii	"v3_mulfl\000"
.LASF167:
	.ascii	"draw_mesh_instance\000"
.LASF173:
	.ascii	"origin\000"
.LASF122:
	.ascii	"proj_add_x\000"
.LASF123:
	.ascii	"proj_add_y\000"
.LASF26:
	.ascii	"MeshFlag_FloatVertices\000"
.LASF90:
	.ascii	"plat_free\000"
.LASF163:
	.ascii	"pack_depth_index\000"
.LASF190:
	.ascii	"v3_sub\000"
.LASF104:
	.ascii	"num_frames\000"
.LASF85:
	.ascii	"xform_transform_pt\000"
.LASF99:
	.ascii	"path\000"
.LASF168:
	.ascii	"draw_triangle\000"
.LASF31:
	.ascii	"SceneDrawFlags\000"
.LASF170:
	.ascii	"pat_idx\000"
.LASF20:
	.ascii	"char\000"
.LASF93:
	.ascii	"inst\000"
.LASF44:
	.ascii	"center\000"
.LASF139:
	.ascii	"src_vtx\000"
.LASF102:
	.ascii	"num_verts\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF113:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF83:
	.ascii	"generate_adjacency_buffer\000"
.LASF164:
	.ascii	"bits\000"
.LASF23:
	.ascii	"xform\000"
.LASF199:
	.ascii	"swap\000"
.LASF13:
	.ascii	"long long int\000"
.LASF155:
	.ascii	"brightness\000"
.LASF128:
	.ascii	"scene_add_line\000"
.LASF51:
	.ascii	"Scene\000"
.LASF186:
	.ascii	"endmask\000"
.LASF79:
	.ascii	"plat_file_close\000"
.LASF57:
	.ascii	"scale\000"
.LASF91:
	.ascii	"memset\000"
.LASF180:
	.ascii	"slope\000"
.LASF197:
	.ascii	"min2f\000"
.LASF162:
	.ascii	"is_face_visible\000"
.LASF53:
	.ascii	"view_xform\000"
.LASF58:
	.ascii	"tmp_points_cap\000"
.LASF29:
	.ascii	"MeshDrawFlag_Wire\000"
.LASF80:
	.ascii	"draw_tri_bluenoise\000"
.LASF166:
	.ascii	"mask\000"
.LASF106:
	.ascii	"header\000"
.LASF154:
	.ascii	"dy21\000"
.LASF52:
	.ascii	"camera_xform\000"
.LASF96:
	.ascii	"_Bool\000"
.LASF43:
	.ascii	"bbox_max\000"
.LASF38:
	.ascii	"tris\000"
.LASF86:
	.ascii	"plat_malloc\000"
.LASF19:
	.ascii	"long double\000"
.LASF28:
	.ascii	"MeshDrawFlag_Lighting\000"
.LASF27:
	.ascii	"MeshDrawFlag_Solid\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF76:
	.ascii	"plat_calloc\000"
.LASF152:
	.ascii	"dy31\000"
.LASF89:
	.ascii	"xform_look_at\000"
.LASF67:
	.ascii	"inst_cap\000"
.LASF124:
	.ascii	"center_local\000"
.LASF107:
	.ascii	"vtx_size\000"
.LASF183:
	.ascii	"startbit\000"
.LASF103:
	.ascii	"num_tris\000"
.LASF114:
	.ascii	"mesh_instance_init\000"
.LASF5:
	.ascii	"short int\000"
.LASF39:
	.ascii	"colors\000"
.LASF54:
	.ascii	"light\000"
.LASF10:
	.ascii	"long int\000"
.LASF110:
	.ascii	"col_size\000"
.LASF118:
	.ascii	"rowstride\000"
.LASF88:
	.ascii	"xform_invert\000"
.LASF33:
	.ascii	"Mesh\000"
.LASF50:
	.ascii	"sort_bias\000"
.LASF94:
	.ascii	"frame_count\000"
.LASF49:
	.ascii	"color\000"
.LASF201:
	.ascii	"_lib3d_sqrtf\000"
.LASF147:
	.ascii	"idx0\000"
.LASF148:
	.ascii	"idx1\000"
.LASF149:
	.ascii	"idx2\000"
.LASF108:
	.ascii	"tri_size\000"
.LASF141:
	.ascii	"v_bits\000"
.LASF120:
	.ascii	"valid_inst_count\000"
.LASF36:
	.ascii	"vertices\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF130:
	.ascii	"scene_draw_flags\000"
.LASF161:
	.ascii	"opf2\000"
.LASF101:
	.ascii	"magic\000"
.LASF204:
	.ascii	"__builtin_memset\000"
.LASF34:
	.ascii	"vertex_count\000"
.LASF159:
	.ascii	"opf0\000"
.LASF160:
	.ascii	"opf1\000"
.LASF121:
	.ascii	"scene_scale\000"
.LASF22:
	.ascii	"float3\000"
.LASF82:
	.ascii	"v3_tri_normal\000"
.LASF32:
	.ascii	"SceneDrawFlag_DitherBluenoise\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF92:
	.ascii	"mesh_free\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF171:
	.ascii	"pattern\000"
.LASF157:
	.ascii	"normal\000"
.LASF112:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\render.c\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF169:
	.ascii	"bitmap\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF129:
	.ascii	"scene_add_mesh\000"
.LASF184:
	.ascii	"startmask\000"
.LASF131:
	.ascii	"matrix\000"
.LASF105:
	.ascii	"patterns\000"
.LASF40:
	.ascii	"wire_flags\000"
.LASF48:
	.ascii	"frame\000"
.LASF98:
	.ascii	"mesh_load_from_file\000"
.LASF196:
	.ascii	"max2f\000"
.LASF175:
	.ascii	"scene_setCenter\000"
.LASF95:
	.ascii	"xform_identity\000"
.LASF3:
	.ascii	"signed char\000"
.LASF60:
	.ascii	"tmp_proj_points\000"
.LASF142:
	.ascii	"v_bits_x\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF144:
	.ascii	"v_bits_z\000"
.LASF66:
	.ascii	"inst_count\000"
.LASF203:
	.ascii	"draw_black_line\000"
.LASF21:
	.ascii	"double\000"
.LASF87:
	.ascii	"plat_realloc\000"
.LASF25:
	.ascii	"MeshDrawFlags\000"
.LASF146:
	.ascii	"inv_z\000"
.LASF62:
	.ascii	"tmp_order_table1\000"
.LASF63:
	.ascii	"tmp_order_table2\000"
.LASF189:
	.ascii	"v3_mul\000"
.LASF61:
	.ascii	"order_cap\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
