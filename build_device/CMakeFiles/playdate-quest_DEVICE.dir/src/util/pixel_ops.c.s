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
	.file	"pixel_ops.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util\\pixel_ops.c"
	.section	.text.clear_screen_buffers,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	clear_screen_buffers
	.syntax unified
	.thumb
	.thumb_func
	.type	clear_screen_buffers, %function
clear_screen_buffers:
.LFB42:
	.loc 1 24 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 25 2 view .LVU1
	ldr	r2, .L4	@,
	movs	r1, #255	@,
	ldr	r0, .L4+4	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:24: {
	.loc 1 24 1 is_stmt 0 view .LVU2
	push	{r3, lr}	@
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:25: 	memset(g_screen_buffer, 0xFF, sizeof(g_screen_buffer));
	.loc 1 25 2 view .LVU3
	bl	memset		@
.LVL0:
	.loc 1 26 2 is_stmt 1 view .LVU4
	movw	r2, #24000	@,
	movs	r1, #255	@,
	ldr	r0, .L4+8	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:27: }
	.loc 1 27 1 is_stmt 0 view .LVU5
	pop	{r3, lr}	@
.LCFI1:
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:26: 	memset(g_screen_buffer_2x2sml, 0xFF, sizeof(g_screen_buffer_2x2sml));
	.loc 1 26 2 view .LVU6
	b	memset		@
.LVL1:
.L5:
	.align	2
.L4:
	.word	96000
	.word	g_screen_buffer
	.word	g_screen_buffer_2x2sml
	.cfi_endproc
.LFE42:
	.size	clear_screen_buffers, .-clear_screen_buffers
	.section	.text.get_blue_noise_buffer,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	get_blue_noise_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	get_blue_noise_buffer, %function
get_blue_noise_buffer:
.LFB43:
	.loc 1 30 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 31 2 view .LVU8
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:31: 	return s_blue_noise;
	.loc 1 31 9 is_stmt 0 view .LVU9
	ldr	r3, .L7	@ tmp116,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:32: }
	.loc 1 32 1 view .LVU10
	ldr	r0, [r3]	@, s_blue_noise
	bx	lr	@
.L8:
	.align	2
.L7:
	.word	s_blue_noise
	.cfi_endproc
.LFE43:
	.size	get_blue_noise_buffer, .-get_blue_noise_buffer
	.section	.rodata.init_pixel_ops.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"BlueNoise.tga\000"
	.section	.text.init_pixel_ops,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	init_pixel_ops
	.syntax unified
	.thumb
	.thumb_func
	.type	init_pixel_ops, %function
init_pixel_ops:
.LFB44:
	.loc 1 115 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB6:
	.loc 1 117 3 view .LVU12
	.loc 1 118 3 view .LVU13
.LBE6:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:115: {
	.loc 1 115 1 is_stmt 0 view .LVU14
	push	{lr}	@
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12	@,,
.LCFI3:
	.cfi_def_cfa_offset 16
.LBB7:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:118: 		s_blue_noise = read_tga_file_grayscale("BlueNoise.tga", &ww, &hh);
	.loc 1 118 18 view .LVU15
	ldr	r0, .L16	@,
	add	r2, sp, #4	@,,
	mov	r1, sp	@,
	bl	read_tga_file_grayscale		@
.LVL2:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:119: 		if (ww != SCREEN_X || hh != SCREEN_Y) {
	.loc 1 119 6 view .LVU16
	ldr	r2, [sp]	@ ww, ww
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:118: 		s_blue_noise = read_tga_file_grayscale("BlueNoise.tga", &ww, &hh);
	.loc 1 118 16 discriminator 1 view .LVU17
	ldr	r3, .L16+4	@ tmp130,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:119: 		if (ww != SCREEN_X || hh != SCREEN_Y) {
	.loc 1 119 6 view .LVU18
	cmp	r2, #400	@ ww,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:118: 		s_blue_noise = read_tga_file_grayscale("BlueNoise.tga", &ww, &hh);
	.loc 1 118 16 discriminator 1 view .LVU19
	str	r0, [r3]	@ _1, s_blue_noise
	.loc 1 119 3 is_stmt 1 view .LVU20
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:119: 		if (ww != SCREEN_X || hh != SCREEN_Y) {
	.loc 1 119 6 is_stmt 0 view .LVU21
	bne	.L10		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:119: 		if (ww != SCREEN_X || hh != SCREEN_Y) {
	.loc 1 119 17 discriminator 1 view .LVU22
	ldr	r2, [sp, #4]	@ hh, hh
	cmp	r2, #240	@ hh,
	beq	.L11		@,
.L10:
	.loc 1 120 4 is_stmt 1 view .LVU23
	bl	plat_free		@
.LVL3:
	.loc 1 121 4 view .LVU24
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:121: 			s_blue_noise = NULL;
	.loc 1 121 17 is_stmt 0 view .LVU25
	movs	r2, #0	@ tmp124,
	ldr	r3, .L16+4	@ tmp130,
	str	r2, [r3]	@ tmp124, s_blue_noise
.L11:
.LBE7:
	.loc 1 124 2 is_stmt 1 view .LVU26
	ldr	r2, .L16+8	@,
	movs	r1, #255	@,
	ldr	r0, .L16+12	@,
	bl	memset		@
.LVL4:
	.loc 1 125 2 view .LVU27
	movw	r2, #24000	@,
	movs	r1, #255	@,
	ldr	r0, .L16+16	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:126: }
	.loc 1 126 1 is_stmt 0 view .LVU28
	add	sp, sp, #12	@,,
.LCFI4:
	.cfi_def_cfa_offset 4
	@ sp needed	@
	ldr	lr, [sp], #4	@,
.LCFI5:
	.cfi_restore 14
	.cfi_def_cfa_offset 0
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:125: 	memset(g_screen_buffer_2x2sml, 0xFF, sizeof(g_screen_buffer_2x2sml));
	.loc 1 125 2 view .LVU29
	b	memset		@
.LVL5:
.L17:
	.align	2
.L16:
	.word	.LC0
	.word	s_blue_noise
	.word	96000
	.word	g_screen_buffer
	.word	g_screen_buffer_2x2sml
	.cfi_endproc
.LFE44:
	.size	init_pixel_ops, .-init_pixel_ops
	.section	.text.draw_dithered_scanline,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	draw_dithered_scanline
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_dithered_scanline, %function
draw_dithered_scanline:
.LVL6:
.LFB45:
	.loc 1 130 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 131 2 view .LVU31
	.loc 1 132 2 view .LVU32
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:130: {
	.loc 1 130 1 is_stmt 0 view .LVU33
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI6:
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
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:132: 	uint8_t* row = framebuffer + y * SCREEN_STRIDE_BYTES;
	.loc 1 132 33 view .LVU34
	movs	r4, #52	@ tmp165,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:130: {
	.loc 1 130 1 view .LVU35
	sub	sp, sp, #12	@,,
.LCFI7:
	.cfi_def_cfa_offset 48
	add	r5, r0, #8	@ ivtmp.41, values,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:132: 	uint8_t* row = framebuffer + y * SCREEN_STRIDE_BYTES;
	.loc 1 132 11 view .LVU36
	mla	r8, r4, r1, r3	@ row, tmp165, y, framebuffer
.LVL7:
	.loc 1 133 2 is_stmt 1 view .LVU37
	.loc 1 134 2 view .LVU38
.LBB8:
	.loc 1 134 7 view .LVU39
	.loc 1 134 22 discriminator 1 view .LVU40
.LBE8:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:133: 	const uint32_t* noise_row = (const uint32_t*)(s_blue_noise + y * SCREEN_X);
	.loc 1 133 61 is_stmt 0 view .LVU41
	ldr	r3, .L29	@ tmp166,
.LVL8:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:133: 	const uint32_t* noise_row = (const uint32_t*)(s_blue_noise + y * SCREEN_X);
	.loc 1 133 18 view .LVU42
	ldr	r4, [r3]	@ s_blue_noise, s_blue_noise
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:133: 	const uint32_t* noise_row = (const uint32_t*)(s_blue_noise + y * SCREEN_X);
	.loc 1 133 65 view .LVU43
	mov	r3, #400	@ tmp168,
.LVL9:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:133: 	const uint32_t* noise_row = (const uint32_t*)(s_blue_noise + y * SCREEN_X);
	.loc 1 133 18 view .LVU44
	mla	r4, r3, r1, r4	@ noise_row_49, tmp168, y, s_blue_noise
.LVL10:
	.loc 1 133 18 view .LVU45
	add	r3, r8, #50	@ _51, row,
	adds	r4, r4, #8	@ ivtmp.43, noise_row_49,
.LVL11:
	.loc 1 133 18 view .LVU46
	str	r3, [sp, #4]	@ _51, %sfp
.LVL12:
.L26:
.LBB12:
.LBB9:
	.loc 1 135 3 is_stmt 1 view .LVU47
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:135: 		uint32_t noise03 = *noise_row++;
	.loc 1 135 12 is_stmt 0 view .LVU48
	ldr	r0, [r4, #-8]	@ noise03, MEM[(const uint32_t *)_74 + 4294967288B]
.LVL13:
	.loc 1 136 3 is_stmt 1 view .LVU49
	.loc 1 136 3 is_stmt 0 view .LVU50
.LBE9:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:134: 	for (int bx = 0; bx < SCREEN_X / 8; ++bx) {
	.loc 1 134 22 discriminator 1 view .LVU51
	adds	r5, r5, #8	@ ivtmp.41, ivtmp.41,
.LBB10:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:137: 		uint32_t values03 = *values32++;
	.loc 1 137 12 view .LVU52
	ldr	r7, [r5, #-16]	@ values03, MEM[(const uint32_t *)_50 + 4294967288B]
.LBE10:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:134: 	for (int bx = 0; bx < SCREEN_X / 8; ++bx) {
	.loc 1 134 22 discriminator 1 view .LVU53
	adds	r4, r4, #8	@ ivtmp.43, ivtmp.43,
.LVL14:
.LBB11:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:140: 		if ((values03 & 0xFF) > (noise03 & 0xFF) + bias) pixbyte |= 128;
	.loc 1 140 44 view .LVU54
	uxtab	r3, r2, r0	@ _71, bias, noise03
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:141: 		if ((values03 & 0xFF00) > (noise03 & 0xFF00) + bias) pixbyte |= 64;
	.loc 1 141 38 view .LVU55
	and	lr, r0, #65280	@ _33, noise03,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:140: 		if ((values03 & 0xFF) > (noise03 & 0xFF) + bias) pixbyte |= 128;
	.loc 1 140 17 view .LVU56
	uxtb	ip, r7	@ _73, values03
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:141: 		if ((values03 & 0xFF00) > (noise03 & 0xFF00) + bias) pixbyte |= 64;
	.loc 1 141 17 view .LVU57
	and	r9, r7, #65280	@ _34, values03,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:141: 		if ((values03 & 0xFF00) > (noise03 & 0xFF00) + bias) pixbyte |= 64;
	.loc 1 141 48 view .LVU58
	add	lr, lr, r2	@ _32, bias
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:136: 		uint32_t noise47 = *noise_row++;
	.loc 1 136 12 view .LVU59
	ldr	r1, [r4, #-12]	@ noise47, MEM[(const uint32_t *)_74 + 4294967292B]
.LVL15:
	.loc 1 137 3 is_stmt 1 view .LVU60
	.loc 1 138 3 view .LVU61
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:140: 		if ((values03 & 0xFF) > (noise03 & 0xFF) + bias) pixbyte |= 128;
	.loc 1 140 6 is_stmt 0 view .LVU62
	cmp	r3, ip	@ _71, _73
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:142: 		if ((values03 & 0xFF0000) > (noise03 & 0xFF0000) + bias) pixbyte |= 32;
	.loc 1 142 40 view .LVU63
	and	ip, r0, #16711680	@ _111, noise03,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:143: 		if ((values03 & 0xFF000000) > (noise03 & 0xFF000000) + bias) pixbyte |= 16;
	.loc 1 143 42 view .LVU64
	and	r0, r0, #-16777216	@ _116, noise03,
.LVL16:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:138: 		uint32_t values47 = *values32++;
	.loc 1 138 12 view .LVU65
	ldr	r6, [r5, #-12]	@ values47, MEM[(const uint32_t *)_50 + 4294967292B]
.LVL17:
	.loc 1 139 3 is_stmt 1 view .LVU66
	.loc 1 140 3 view .LVU67
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:140: 		if ((values03 & 0xFF) > (noise03 & 0xFF) + bias) pixbyte |= 128;
	.loc 1 140 6 is_stmt 0 view .LVU68
	ite	cs
	movcs	r3, #0	@ tmp175,
	movcc	r3, #1	@ tmp175,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:142: 		if ((values03 & 0xFF0000) > (noise03 & 0xFF0000) + bias) pixbyte |= 32;
	.loc 1 142 52 view .LVU69
	add	ip, ip, r2	@ _112, bias
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:143: 		if ((values03 & 0xFF000000) > (noise03 & 0xFF000000) + bias) pixbyte |= 16;
	.loc 1 143 56 view .LVU70
	add	r0, r0, r2	@ _117, bias
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:140: 		if ((values03 & 0xFF) > (noise03 & 0xFF) + bias) pixbyte |= 128;
	.loc 1 140 6 view .LVU71
	lsls	r3, r3, #7	@ pixbyte, tmp175,
.LVL18:
	.loc 1 141 3 is_stmt 1 view .LVU72
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:144: 		if ((values47 & 0xFF) > (noise47 & 0xFF) + bias) pixbyte |= 8;
	.loc 1 144 17 is_stmt 0 view .LVU73
	uxtb	fp, r6	@ _120, values47
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:141: 		if ((values03 & 0xFF00) > (noise03 & 0xFF00) + bias) pixbyte |= 64;
	.loc 1 141 64 discriminator 1 view .LVU74
	orr	r10, r3, #64	@ tmp209, pixbyte,
	cmp	lr, r9	@ _32, _34
	it	cc		@
	movcc	r3, r10	@, pixbyte, tmp209
.LVL19:
	.loc 1 142 3 is_stmt 1 view .LVU75
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:142: 		if ((values03 & 0xFF0000) > (noise03 & 0xFF0000) + bias) pixbyte |= 32;
	.loc 1 142 17 is_stmt 0 view .LVU76
	and	lr, r7, #16711680	@ _110, values03,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:143: 		if ((values03 & 0xFF000000) > (noise03 & 0xFF000000) + bias) pixbyte |= 16;
	.loc 1 143 17 view .LVU77
	and	r7, r7, #-16777216	@ _115, values03,
.LVL20:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:144: 		if ((values47 & 0xFF) > (noise47 & 0xFF) + bias) pixbyte |= 8;
	.loc 1 144 44 view .LVU78
	uxtab	r10, r2, r1	@ _122, bias, noise47
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:142: 		if ((values03 & 0xFF0000) > (noise03 & 0xFF0000) + bias) pixbyte |= 32;
	.loc 1 142 68 discriminator 1 view .LVU79
	orr	r9, r3, #32	@ tmp233, pixbyte,
	cmp	lr, ip	@ _110, _112
	it	hi		@
	movhi	r3, r9	@, pixbyte, tmp233
.LVL21:
	.loc 1 143 3 is_stmt 1 view .LVU80
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:145: 		if ((values47 & 0xFF00) > (noise47 & 0xFF00) + bias) pixbyte |= 4;
	.loc 1 145 38 is_stmt 0 view .LVU81
	and	ip, r1, #65280	@ _126, noise47,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:145: 		if ((values47 & 0xFF00) > (noise47 & 0xFF00) + bias) pixbyte |= 4;
	.loc 1 145 17 view .LVU82
	and	r9, r6, #65280	@ _125, values47,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:143: 		if ((values03 & 0xFF000000) > (noise03 & 0xFF000000) + bias) pixbyte |= 16;
	.loc 1 143 72 discriminator 1 view .LVU83
	orr	lr, r3, #16	@ tmp188, pixbyte,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:145: 		if ((values47 & 0xFF00) > (noise47 & 0xFF00) + bias) pixbyte |= 4;
	.loc 1 145 48 view .LVU84
	add	ip, ip, r2	@ _127, bias
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:143: 		if ((values03 & 0xFF000000) > (noise03 & 0xFF000000) + bias) pixbyte |= 16;
	.loc 1 143 72 discriminator 1 view .LVU85
	uxtb	lr, lr	@ tmp215, tmp188
	cmp	r7, r0	@ _115, _117
	it	hi		@
	movhi	r3, lr	@, pixbyte, tmp215
.LVL22:
	.loc 1 144 3 is_stmt 1 view .LVU86
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:146: 		if ((values47 & 0xFF0000) > (noise47 & 0xFF0000) + bias) pixbyte |= 2;
	.loc 1 146 40 is_stmt 0 view .LVU87
	and	lr, r1, #16711680	@ _131, noise47,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:146: 		if ((values47 & 0xFF0000) > (noise47 & 0xFF0000) + bias) pixbyte |= 2;
	.loc 1 146 17 view .LVU88
	and	r7, r6, #16711680	@ _130, values47,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:147: 		if ((values47 & 0xFF000000) > (noise47 & 0xFF000000) + bias) pixbyte |= 1;
	.loc 1 147 42 view .LVU89
	and	r1, r1, #-16777216	@ _136, noise47,
.LVL23:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:144: 		if ((values47 & 0xFF) > (noise47 & 0xFF) + bias) pixbyte |= 8;
	.loc 1 144 60 discriminator 1 view .LVU90
	orr	r0, r3, #8	@ tmp192, pixbyte,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:146: 		if ((values47 & 0xFF0000) > (noise47 & 0xFF0000) + bias) pixbyte |= 2;
	.loc 1 146 52 view .LVU91
	add	lr, lr, r2	@ _132, bias
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:147: 		if ((values47 & 0xFF000000) > (noise47 & 0xFF000000) + bias) pixbyte |= 1;
	.loc 1 147 17 view .LVU92
	and	r6, r6, #-16777216	@ _135, values47,
.LVL24:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:147: 		if ((values47 & 0xFF000000) > (noise47 & 0xFF000000) + bias) pixbyte |= 1;
	.loc 1 147 56 view .LVU93
	add	r1, r1, r2	@ _137, bias
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:144: 		if ((values47 & 0xFF) > (noise47 & 0xFF) + bias) pixbyte |= 8;
	.loc 1 144 60 discriminator 1 view .LVU94
	uxtb	r0, r0	@ tmp245, tmp192
	cmp	fp, r10	@ _120, _122
	it	hi		@
	movhi	r3, r0	@, pixbyte, tmp245
.LVL25:
	.loc 1 145 3 is_stmt 1 view .LVU95
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:145: 		if ((values47 & 0xFF00) > (noise47 & 0xFF00) + bias) pixbyte |= 4;
	.loc 1 145 64 is_stmt 0 discriminator 1 view .LVU96
	orr	r0, r3, #4	@ tmp196, pixbyte,
	uxtb	r0, r0	@ tmp221, tmp196
	cmp	r9, ip	@ _125, _127
	it	hi		@
	movhi	r3, r0	@, pixbyte, tmp221
.LVL26:
	.loc 1 146 3 is_stmt 1 view .LVU97
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:146: 		if ((values47 & 0xFF0000) > (noise47 & 0xFF0000) + bias) pixbyte |= 2;
	.loc 1 146 68 is_stmt 0 discriminator 1 view .LVU98
	orr	r0, r3, #2	@ tmp200, pixbyte,
	uxtb	r0, r0	@ tmp239, tmp200
	cmp	r7, lr	@ _130, _132
	it	hi		@
	movhi	r3, r0	@, pixbyte, tmp239
.LVL27:
	.loc 1 147 3 is_stmt 1 view .LVU99
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:147: 		if ((values47 & 0xFF000000) > (noise47 & 0xFF000000) + bias) pixbyte |= 1;
	.loc 1 147 72 is_stmt 0 discriminator 1 view .LVU100
	orr	r0, r3, #1	@ tmp204, pixbyte,
	uxtb	r0, r0	@ tmp227, tmp204
	cmp	r6, r1	@ _135, _137
	it	hi		@
	movhi	r3, r0	@, pixbyte, tmp227
.LVL28:
	.loc 1 148 3 is_stmt 1 view .LVU101
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:148: 		*row++ = pixbyte;
	.loc 1 148 10 is_stmt 0 view .LVU102
	strb	r3, [r8], #1	@ pixbyte, MEM[(uint8_t *)row_140 + 4294967295B]
.LVL29:
	.loc 1 148 10 view .LVU103
.LBE11:
	.loc 1 134 33 is_stmt 1 discriminator 2 view .LVU104
	.loc 1 134 22 discriminator 1 view .LVU105
	ldr	r3, [sp, #4]	@ _51, %sfp
.LVL30:
	.loc 1 134 22 is_stmt 0 discriminator 1 view .LVU106
	cmp	r3, r8	@ _51, row
	bne	.L26		@,
.LBE12:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:150: }
	.loc 1 150 1 view .LVU107
	add	sp, sp, #12	@,,
.LCFI8:
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL31:
.L30:
	.loc 1 150 1 view .LVU108
	.align	2
.L29:
	.word	s_blue_noise
	.cfi_endproc
.LFE45:
	.size	draw_dithered_scanline, .-draw_dithered_scanline
	.section	.text.draw_dithered_screen,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	draw_dithered_screen
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_dithered_screen, %function
draw_dithered_screen:
.LVL32:
.LFB46:
	.loc 1 153 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 154 2 view .LVU110
	.loc 1 155 2 view .LVU111
.LBB13:
	.loc 1 155 7 view .LVU112
	.loc 1 155 20 discriminator 1 view .LVU113
.LBE13:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:153: {
	.loc 1 153 1 is_stmt 0 view .LVU114
	push	{r3, r4, r5, r6, r7, lr}	@
.LCFI9:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:153: {
	.loc 1 153 1 view .LVU115
	mov	r2, r1	@ bias, bias
	mov	r7, r0	@ framebuffer, framebuffer
.LBB14:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:155: 	for (int y = 0; y < SCREEN_Y; ++y)
	.loc 1 155 11 view .LVU116
	movs	r5, #0	@ y,
.LBE14:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:154: 	const uint8_t* src = g_screen_buffer;
	.loc 1 154 17 view .LVU117
	ldr	r4, .L35	@ src,
	ldr	r6, .L35+4	@ tmp119,
.LVL33:
.L32:
.LBB15:
	.loc 1 157 3 is_stmt 1 view .LVU118
	mov	r0, r4	@, src
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:158: 		src += SCREEN_X;
	.loc 1 158 7 is_stmt 0 view .LVU119
	add	r4, r4, #400	@ src, src,
.LVL34:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:157: 		draw_dithered_scanline(src, y, bias, framebuffer);
	.loc 1 157 3 view .LVU120
	mov	r1, r5	@, y
	mov	r3, r7	@, framebuffer
	bl	draw_dithered_scanline		@
.LVL35:
	.loc 1 158 3 is_stmt 1 view .LVU121
	.loc 1 155 27 discriminator 3 view .LVU122
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:155: 	for (int y = 0; y < SCREEN_Y; ++y)
	.loc 1 155 20 is_stmt 0 discriminator 1 view .LVU123
	cmp	r4, r6	@ src, tmp119
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:155: 	for (int y = 0; y < SCREEN_Y; ++y)
	.loc 1 155 27 discriminator 3 view .LVU124
	add	r5, r5, #1	@ y, y,
.LVL36:
	.loc 1 155 20 is_stmt 1 discriminator 1 view .LVU125
	bne	.L32		@,
.LBE15:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:160: }
	.loc 1 160 1 is_stmt 0 view .LVU126
	pop	{r3, r4, r5, r6, r7, pc}	@
.LVL37:
.L36:
	.loc 1 160 1 view .LVU127
	.align	2
.L35:
	.word	g_screen_buffer
	.word	g_screen_buffer+96000
	.cfi_endproc
.LFE46:
	.size	draw_dithered_screen, .-draw_dithered_screen
	.section	.text.draw_dithered_screen_2x2,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	draw_dithered_screen_2x2
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_dithered_screen_2x2, %function
draw_dithered_screen_2x2:
.LVL38:
.LFB47:
	.loc 1 163 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 400
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 164 2 view .LVU129
	.loc 1 165 2 view .LVU130
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:163: {
	.loc 1 163 1 is_stmt 0 view .LVU131
	push	{r4, r5, r6, r7, r8, r9, r10, lr}	@
.LCFI10:
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	mov	r4, r0	@ framebuffer, framebuffer
	sub	sp, sp, #400	@,,
.LCFI11:
	.cfi_def_cfa_offset 432
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:165: 	if (filter == 0)
	.loc 1 165 5 view .LVU132
	mov	r5, r1	@ filter, filter
	cbnz	r1, .L54	@ filter,
	mov	r6, r1	@ ivtmp.100, filter
	ldr	r8, .L56+4	@ _163,
.LBB16:
.LBB17:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:169: 		for (int y = 0; y < SCREEN_Y / 2; ++y) {
	.loc 1 169 21 discriminator 1 view .LVU133
	movw	r7, #24000	@ tmp175,
.LVL39:
.L38:
.LBB18:
	.loc 1 170 22 is_stmt 1 discriminator 1 view .LVU134
	add	r0, r8, r5	@ ivtmp.88, _163, filter
	mov	r2, sp	@ ivtmp.92,
.LVL40:
.L40:
.LBB19:
	.loc 1 171 5 view .LVU135
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:171: 				uint8_t val = g_screen_buffer[src_idx];
	.loc 1 171 13 is_stmt 0 view .LVU136
	ldrb	r1, [r0, #1]!	@ zero_extendqisi2	@ val, MEM[(unsigned char *)_160]
.LVL41:
	.loc 1 172 5 is_stmt 1 view .LVU137
	.loc 1 173 5 view .LVU138
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:172: 				rowvalues[x * 2 + 0] = val;
	.loc 1 172 26 is_stmt 0 view .LVU139
	mov	r3, #0	@ movhi	@ _158,
	bfi	r3, r1, #0, #8	@ _158, val,,
	bfi	r3, r1, #8, #8	@ _158, val,,
	strh	r3, [r2], #2	@ movhi	@ _158, MEM <vector(2) unsigned char> [(unsigned char *)_170]
.LBE19:
	.loc 1 170 36 is_stmt 1 discriminator 3 view .LVU140
.LVL42:
	.loc 1 170 22 discriminator 1 view .LVU141
	add	r3, sp, #400	@ tmp213,,
	cmp	r3, r2	@ tmp213, ivtmp.92
	bne	.L40		@,
.LBE18:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:175: 			draw_dithered_scanline(rowvalues, y * 2 + 0, 0, framebuffer);
	.loc 1 175 4 is_stmt 0 view .LVU142
	mov	r1, r6	@, ivtmp.100
.LVL43:
	.loc 1 175 4 view .LVU143
	mov	r3, r4	@, framebuffer
	movs	r2, #0	@,
	mov	r0, sp	@,
.LVL44:
	.loc 1 175 4 view .LVU144
	adds	r5, r5, #200	@ filter, filter,
	.loc 1 175 4 is_stmt 1 view .LVU145
	bl	draw_dithered_scanline		@
.LVL45:
	.loc 1 176 4 view .LVU146
	adds	r1, r6, #1	@, ivtmp.100,
	mov	r3, r4	@, framebuffer
	mov	r0, sp	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:169: 		for (int y = 0; y < SCREEN_Y / 2; ++y) {
	.loc 1 169 21 is_stmt 0 discriminator 1 view .LVU147
	adds	r6, r6, #2	@ ivtmp.100, ivtmp.100,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:176: 			draw_dithered_scanline(rowvalues, y * 2 + 1, 0, framebuffer);
	.loc 1 176 4 view .LVU148
	bl	draw_dithered_scanline		@
.LVL46:
	.loc 1 169 32 is_stmt 1 discriminator 2 view .LVU149
	.loc 1 169 21 discriminator 1 view .LVU150
	cmp	r5, r7	@ filter, tmp175
	bne	.L38		@,
.LVL47:
.L37:
	.loc 1 169 21 is_stmt 0 discriminator 1 view .LVU151
.LBE17:
.LBE16:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:216: }
	.loc 1 216 1 view .LVU152
	add	sp, sp, #400	@,,
.LCFI12:
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}	@
.LVL48:
.L54:
.LCFI13:
	.cfi_restore_state
	.loc 1 179 7 is_stmt 1 view .LVU153
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:179: 	else if (filter == 1)
	.loc 1 179 10 is_stmt 0 view .LVU154
	cmp	r1, #1	@ filter,
	bne	.L37		@,
	ldr	r9, .L56+8	@ tmp201,
	movw	r8, #23800	@ ivtmp.148,
	ldr	r6, .L56	@ ivtmp.152,
	mov	r5, r9	@ ivtmp.123, tmp201
	add	r10, r9, #200	@ _144, tmp201,
	add	lr, r6, #1	@ ivtmp.154,,
	mov	ip, r6	@ ivtmp.152, ivtmp.152
.LVL49:
.L43:
.LBB20:
.LBB21:
	.loc 1 184 4 is_stmt 1 view .LVU155
	.loc 1 185 4 view .LVU156
	.loc 1 186 4 view .LVU157
.LBB22:
	.loc 1 186 9 view .LVU158
	.loc 1 186 32 discriminator 1 view .LVU159
	add	r0, r10, r8	@ ivtmp.135, _144, ivtmp.148
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:186: 			for (int x = SCREEN_X / 2 - 1; x >= 0; --x) {
	.loc 1 186 13 is_stmt 0 view .LVU160
	movs	r3, #199	@ x,
.LBB23:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:187: 				int val_prev = g_screen_buffer[src_idx + (x > 0 ? x - 1 : 0)];
	.loc 1 187 35 view .LVU161
	add	r7, r9, r8	@ tmp183, tmp201, ivtmp.148
.LVL50:
.L42:
	.loc 1 187 5 is_stmt 1 view .LVU162
	.loc 1 188 5 view .LVU163
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:187: 				int val_prev = g_screen_buffer[src_idx + (x > 0 ? x - 1 : 0)];
	.loc 1 187 35 is_stmt 0 view .LVU164
	cmp	r3, #1	@ x,
	ite	ge		@
	addge	r2, r7, r3	@,, tmp184, tmp183, x
	addlt	r2, r7, #1	@,, tmp184, tmp183,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:188: 				int val_curr = g_screen_buffer[src_idx + x];
	.loc 1 188 35 view .LVU165
	ldrb	r1, [r0, #-1]!	@ zero_extendqisi2	@ _10, MEM[(unsigned char *)_143]
.LVL51:
	.loc 1 189 5 is_stmt 1 view .LVU166
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:187: 				int val_prev = g_screen_buffer[src_idx + (x > 0 ? x - 1 : 0)];
	.loc 1 187 9 is_stmt 0 view .LVU167
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2	@ val_prev_61, g_screen_buffer[_7]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:189: 				g_screen_buffer[dst_idx + x * 2 + 0] = (val_prev + val_curr) >> 1;
	.loc 1 189 54 view .LVU168
	add	r2, r2, r1	@ _11, _10
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:189: 				g_screen_buffer[dst_idx + x * 2 + 0] = (val_prev + val_curr) >> 1;
	.loc 1 189 66 view .LVU169
	asrs	r2, r2, #1	@ _12, _11,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:189: 				g_screen_buffer[dst_idx + x * 2 + 0] = (val_prev + val_curr) >> 1;
	.loc 1 189 42 view .LVU170
	strb	r2, [ip, r3, lsl #1]	@ _12, MEM[(unsigned char *)_140 + _135 * 2]
	.loc 1 190 5 is_stmt 1 view .LVU171
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:190: 				g_screen_buffer[dst_idx + x * 2 + 1] = val_curr;
	.loc 1 190 42 is_stmt 0 view .LVU172
	strb	r1, [lr, r3, lsl #1]	@ _10, MEM[(unsigned char *)_32 + _135 * 2]
.LBE23:
	.loc 1 186 38 is_stmt 1 discriminator 3 view .LVU173
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:186: 			for (int x = SCREEN_X / 2 - 1; x >= 0; --x) {
	.loc 1 186 32 is_stmt 0 discriminator 1 view .LVU174
	subs	r3, r3, #1	@ x, x,
.LVL52:
	.loc 1 186 32 discriminator 1 view .LVU175
	bcs	.L42		@,
.LBE22:
.LBE21:
	.loc 1 183 35 is_stmt 1 discriminator 2 view .LVU176
	.loc 1 183 29 discriminator 1 view .LVU177
	sub	r8, r8, #200	@ ivtmp.148, ivtmp.148,
.LVL53:
	.loc 1 183 29 is_stmt 0 discriminator 1 view .LVU178
	sub	ip, ip, #400	@ ivtmp.152, ivtmp.152,
	sub	lr, lr, #400	@ ivtmp.154, ivtmp.154,
	cmn	r8, #200	@ ivtmp.148,
	bne	.L43		@,
	movs	r7, #0	@ ivtmp.124,
.LVL54:
.L46:
	.loc 1 183 29 discriminator 1 view .LVU179
.LBE20:
.LBB24:
.LBB25:
	.loc 1 196 4 is_stmt 1 view .LVU180
	.loc 1 198 4 view .LVU181
	mov	r3, r4	@, framebuffer
	movs	r2, #0	@,
	mov	r1, r7	@, ivtmp.124
	mov	r0, r5	@, ivtmp.123
	bl	draw_dithered_scanline		@
.LVL55:
	.loc 1 199 4 view .LVU182
	.loc 1 200 4 view .LVU183
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:200: 			if (next_y >= SCREEN_Y)
	.loc 1 200 7 is_stmt 0 view .LVU184
	cmp	r6, r5	@ ivtmp.152, ivtmp.123
	beq	.L55		@,
	subs	r1, r5, #1	@ ivtmp.110, ivtmp.123,
	mov	r2, sp	@ ivtmp.114,
.L45:
.LVL56:
.LBB26:
	.loc 1 210 6 is_stmt 1 view .LVU185
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:210: 					rowvalues[x] = ((int)row[x] + (int)row[x + SCREEN_X]) >> 1;
	.loc 1 210 22 is_stmt 0 view .LVU186
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2	@ _23, MEM[(const uint8_t *)_186]
.LVL57:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:210: 					rowvalues[x] = ((int)row[x] + (int)row[x + SCREEN_X]) >> 1;
	.loc 1 210 36 view .LVU187
	ldrb	r0, [r1, #400]	@ zero_extendqisi2	@ _27, MEM[(const uint8_t *)_186 + 400B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:210: 					rowvalues[x] = ((int)row[x] + (int)row[x + SCREEN_X]) >> 1;
	.loc 1 210 34 view .LVU188
	add	r3, r3, r0	@ _28, _27
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:210: 					rowvalues[x] = ((int)row[x] + (int)row[x + SCREEN_X]) >> 1;
	.loc 1 210 55 view .LVU189
	asrs	r3, r3, #1	@ _29, _28,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:210: 					rowvalues[x] = ((int)row[x] + (int)row[x + SCREEN_X]) >> 1;
	.loc 1 210 19 view .LVU190
	strb	r3, [r2], #1	@ _29, MEM[(unsigned char *)_187]
	.loc 1 208 30 is_stmt 1 discriminator 3 view .LVU191
.LVL58:
	.loc 1 208 23 discriminator 1 view .LVU192
	add	r3, sp, #400	@ tmp214,,
	cmp	r3, r2	@ tmp214, ivtmp.114
	bne	.L45		@,
.LBE26:
	.loc 1 212 5 view .LVU193
	adds	r1, r7, #1	@, ivtmp.124,
.LVL59:
	.loc 1 212 5 is_stmt 0 view .LVU194
	mov	r3, r4	@, framebuffer
	movs	r2, #0	@,
	mov	r0, sp	@,
	add	r5, r5, #400	@ ivtmp.123, ivtmp.123,
.LVL60:
	.loc 1 212 5 view .LVU195
	adds	r7, r7, #2	@ ivtmp.124, ivtmp.124,
	bl	draw_dithered_scanline		@
.LVL61:
	.loc 1 212 5 view .LVU196
.LBE25:
	.loc 1 194 21 is_stmt 1 discriminator 1 view .LVU197
	b	.L46		@
.LVL62:
.L55:
.LBB27:
	.loc 1 203 5 view .LVU198
	mov	r3, r4	@, framebuffer
	movs	r1, #239	@,
	ldr	r0, .L56	@,
.LBE27:
.LBE24:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:216: }
	.loc 1 216 1 is_stmt 0 view .LVU199
	add	sp, sp, #400	@,,
.LCFI14:
	.cfi_def_cfa_offset 32
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}	@
.LCFI15:
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL63:
.LBB29:
.LBB28:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:203: 				draw_dithered_scanline(row, y * 2 + 1, 0, framebuffer);
	.loc 1 203 5 view .LVU200
	b	draw_dithered_scanline		@
.LVL64:
.L57:
	.loc 1 203 5 view .LVU201
	.align	2
.L56:
	.word	g_screen_buffer+47600
	.word	g_screen_buffer-1
	.word	g_screen_buffer
.LBE28:
.LBE29:
	.cfi_endproc
.LFE47:
	.size	draw_dithered_screen_2x2, .-draw_dithered_screen_2x2
	.section	.text.draw_line,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	draw_line
	.syntax unified
	.thumb
	.thumb_func
	.type	draw_line, %function
draw_line:
.LVL65:
.LFB48:
	.loc 1 220 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 221 2 view .LVU203
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:220: {
	.loc 1 220 1 is_stmt 0 view .LVU204
	push	{r4, r5, r6, r7, r8, r9, r10, lr}	@
.LCFI16:
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:220: {
	.loc 1 220 1 view .LVU205
	ldr	r4, [sp, #32]	@ y1, y1
	mov	r6, r1	@ width, width
	mov	r7, r2	@ height, height
	ldr	r1, [sp, #36]	@ x2, x2
.LVL66:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:222: 	int dy = y2 - y1;
	.loc 1 222 6 view .LVU206
	ldr	r2, [sp, #40]	@ tmp181, y2
.LVL67:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:221: 	int dx = x2 - x1;
	.loc 1 221 6 view .LVU207
	subs	r1, r1, r3	@ dx, x2, x1
.LVL68:
	.loc 1 222 2 is_stmt 1 view .LVU208
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:220: {
	.loc 1 220 1 is_stmt 0 view .LVU209
	ldrb	r8, [sp, #44]	@ zero_extendqisi2	@ color, color
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:222: 	int dy = y2 - y1;
	.loc 1 222 6 view .LVU210
	sub	lr, r2, r4	@ dy, tmp181, y1
.LVL69:
	.loc 1 223 2 is_stmt 1 view .LVU211
	.loc 1 224 2 view .LVU212
	.loc 1 225 2 view .LVU213
.LBB30:
.LBI30:
	.file 2 "D:/Playdate/PlaydateSDK/Examples/playdate-quest/src/mathlib.h"
	.loc 2 150 19 view .LVU214
.LBB31:
	.loc 2 152 2 view .LVU215
.LBE31:
.LBE30:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:223: 	int abs_dx = abs(dx);
	.loc 1 223 6 is_stmt 0 view .LVU216
	eor	r9, r1, r1, asr #31	@ abs_dx_25, dx, dx,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:224: 	int abs_dy = abs(dy);
	.loc 1 224 6 view .LVU217
	eor	r2, lr, lr, asr #31	@ abs_dy_26, dy, dy,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:223: 	int abs_dx = abs(dx);
	.loc 1 223 6 view .LVU218
	sub	r9, r9, r1, asr #31	@ abs_dx_25, abs_dx_25, dx,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:224: 	int abs_dy = abs(dy);
	.loc 1 224 6 view .LVU219
	sub	r2, r2, lr, asr #31	@ abs_dy_26, abs_dy_26, dy,
.LBB33:
.LBB32:
@ D:/Playdate/PlaydateSDK/Examples/playdate-quest/src/mathlib.h:152: 	return a > b ? a : b;
	.loc 2 152 19 view .LVU220
	cmp	r9, r2	@ abs_dx_25, abs_dy_26
	it	lt
	movlt	r9, r2	@ _28, abs_dy_26
.LVL70:
	.loc 2 152 19 view .LVU221
.LBE32:
.LBE33:
	.loc 1 226 2 is_stmt 1 view .LVU222
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:226: 	if (steps == 0)
	.loc 1 226 5 is_stmt 0 view .LVU223
	cmp	r9, #0	@ _28
	beq	.L58	@
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:230: 	int ystep_fx = (dy << 16) / steps;
	.loc 1 230 21 view .LVU224
	lsl	lr, lr, #16	@ _2, dy,
.LVL71:
	.loc 1 230 21 view .LVU225
	mov	r5, r0	@ framebuffer, framebuffer
	.loc 1 229 2 is_stmt 1 view .LVU226
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:229: 	int xstep_fx = (dx << 16) / steps;
	.loc 1 229 21 is_stmt 0 view .LVU227
	lsls	r1, r1, #16	@ _1, dx,
.LVL72:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:232: 	int x_fx = x1 << 16;
	.loc 1 232 6 view .LVU228
	lsls	r3, r3, #16	@ x_fx, x1,
.LVL73:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:233: 	int y_fx = y1 << 16;
	.loc 1 233 6 view .LVU229
	lsl	ip, r4, #16	@ y_fx, y1,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:230: 	int ystep_fx = (dy << 16) / steps;
	.loc 1 230 6 view .LVU230
	sdiv	r2, lr, r9	@ ystep_fx, _2, _28
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:229: 	int xstep_fx = (dx << 16) / steps;
	.loc 1 229 6 view .LVU231
	sdiv	r1, r1, r9	@ xstep_fx, _1, _28
.LVL74:
	.loc 1 230 2 is_stmt 1 view .LVU232
	.loc 1 232 2 view .LVU233
	.loc 1 233 2 view .LVU234
	.loc 1 235 2 view .LVU235
.LBB34:
	.loc 1 235 7 view .LVU236
	.loc 1 235 20 discriminator 1 view .LVU237
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:235: 	for (int i = 0; i <= steps; ++i)
	.loc 1 235 11 is_stmt 0 view .LVU238
	mov	lr, #0	@ i,
	add	r9, r9, #1	@ _14, _28,
.LVL75:
.L61:
.LBB35:
	.loc 1 237 3 is_stmt 1 view .LVU239
	.loc 1 241 3 view .LVU240
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:239: 		if (ix >= 0 && ix < width && iy >= 0 && iy < height)
	.loc 1 239 6 is_stmt 0 view .LVU241
	cmp	r3, #0	@ x_fx,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:237: 		int ix = x_fx >> 16;
	.loc 1 237 7 view .LVU242
	asr	r0, r3, #16	@ ix, x_fx,
.LVL76:
	.loc 1 238 3 is_stmt 1 view .LVU243
	.loc 1 239 3 view .LVU244
.LBE35:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:235: 	for (int i = 0; i <= steps; ++i)
	.loc 1 235 30 is_stmt 0 discriminator 2 view .LVU245
	add	lr, lr, #1	@ i, i,
.LVL77:
.LBB36:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:241: 		x_fx += xstep_fx;
	.loc 1 241 8 view .LVU246
	add	r3, r3, r1	@ x_fx, xstep_fx
.LVL78:
	.loc 1 242 3 is_stmt 1 view .LVU247
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:238: 		int iy = y_fx >> 16;
	.loc 1 238 7 is_stmt 0 view .LVU248
	asr	r4, ip, #16	@ iy, y_fx,
.LVL79:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:239: 		if (ix >= 0 && ix < width && iy >= 0 && iy < height)
	.loc 1 239 6 view .LVU249
	blt	.L60		@,
	.loc 1 239 6 view .LVU250
	cmp	r0, r6	@ ix, width
	bge	.L60		@,
	.loc 1 240 4 is_stmt 1 view .LVU251
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:239: 		if (ix >= 0 && ix < width && iy >= 0 && iy < height)
	.loc 1 239 40 is_stmt 0 discriminator 1 view .LVU252
	cmp	ip, #0	@ y_fx,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:240: 			framebuffer[iy * width + ix] = color;
	.loc 1 240 33 view .LVU253
	mla	r10, r6, r4, r5	@ tmp170, width, iy, framebuffer
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:239: 		if (ix >= 0 && ix < width && iy >= 0 && iy < height)
	.loc 1 239 40 discriminator 1 view .LVU254
	blt	.L60		@,
	cmp	r4, r7	@ iy, height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:240: 			framebuffer[iy * width + ix] = color;
	.loc 1 240 33 view .LVU255
	it	lt
	strblt	r8, [r10, r0]	@ color, *_12
.L60:
	.loc 1 240 33 view .LVU256
.LBE36:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:235: 	for (int i = 0; i <= steps; ++i)
	.loc 1 235 20 discriminator 1 view .LVU257
	cmp	r9, lr	@ _14, i
.LBB37:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:242: 		y_fx += ystep_fx;
	.loc 1 242 8 view .LVU258
	add	ip, ip, r2	@ y_fx, ystep_fx
.LVL80:
	.loc 1 242 8 view .LVU259
.LBE37:
	.loc 1 235 30 is_stmt 1 discriminator 2 view .LVU260
	.loc 1 235 20 discriminator 1 view .LVU261
	bne	.L61		@,
.LVL81:
.L58:
	.loc 1 235 20 is_stmt 0 discriminator 1 view .LVU262
.LBE34:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\pixel_ops.c:244: }
	.loc 1 244 1 view .LVU263
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}	@
	.loc 1 244 1 view .LVU264
	.cfi_endproc
.LFE48:
	.size	draw_line, .-draw_line
	.global	g_order_pattern_4x4
	.section	.data.g_order_pattern_4x4,"aw"
	.align	2
	.type	g_order_pattern_4x4, %object
	.size	g_order_pattern_4x4, 256
g_order_pattern_4x4:
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	3
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.global	g_order_pattern_4x3
	.section	.data.g_order_pattern_4x3,"aw"
	.align	2
	.type	g_order_pattern_4x3, %object
	.size	g_order_pattern_4x3, 144
g_order_pattern_4x3:
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	0
	.word	0
	.word	1
	.word	4
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	4
	.word	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	3
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	4
	.word	0
	.global	g_order_pattern_4x2
	.section	.data.g_order_pattern_4x2,"aw"
	.align	2
	.type	g_order_pattern_4x2, %object
	.size	g_order_pattern_4x2, 64
g_order_pattern_4x2:
	.word	1
	.word	0
	.word	0
	.word	3
	.word	3
	.word	0
	.word	0
	.word	1
	.word	2
	.word	0
	.word	0
	.word	4
	.word	4
	.word	0
	.word	0
	.word	2
	.global	g_order_pattern_3x2
	.section	.data.g_order_pattern_3x2,"aw"
	.align	2
	.type	g_order_pattern_3x2, %object
	.size	g_order_pattern_3x2, 48
g_order_pattern_3x2:
	.word	1
	.word	0
	.word	0
	.word	3
	.word	2
	.word	0
	.word	0
	.word	1
	.word	3
	.word	0
	.word	0
	.word	2
	.global	g_order_pattern_2x2
	.section	.data.g_order_pattern_2x2,"aw"
	.align	2
	.type	g_order_pattern_2x2, %object
	.size	g_order_pattern_2x2, 32
g_order_pattern_2x2:
	.word	1
	.word	0
	.word	0
	.word	2
	.word	2
	.word	0
	.word	0
	.word	1
	.global	g_screen_buffer_2x2sml
	.section	.bss.g_screen_buffer_2x2sml,"aw",%nobits
	.align	2
	.type	g_screen_buffer_2x2sml, %object
	.size	g_screen_buffer_2x2sml, 24000
g_screen_buffer_2x2sml:
	.space	24000
	.global	g_screen_buffer
	.section	.bss.g_screen_buffer,"aw",%nobits
	.align	2
	.type	g_screen_buffer, %object
	.size	g_screen_buffer, 96000
g_screen_buffer:
	.space	96000
	.global	s_dither4x4_g
	.section	.bss.s_dither4x4_g,"aw",%nobits
	.align	2
	.type	s_dither4x4_g, %object
	.size	s_dither4x4_g, 4
s_dither4x4_g:
	.space	4
	.global	s_dither4x4_r
	.section	.bss.s_dither4x4_r,"aw",%nobits
	.align	2
	.type	s_dither4x4_r, %object
	.size	s_dither4x4_r, 4
s_dither4x4_r:
	.space	4
	.global	s_dither2x2_g
	.section	.bss.s_dither2x2_g,"aw",%nobits
	.align	2
	.type	s_dither2x2_g, %object
	.size	s_dither2x2_g, 4
s_dither2x2_g:
	.space	4
	.global	s_dither2x2_r
	.section	.bss.s_dither2x2_r,"aw",%nobits
	.align	2
	.type	s_dither2x2_r, %object
	.size	s_dither2x2_r, 4
s_dither2x2_r:
	.space	4
	.section	.bss.s_blue_noise,"aw",%nobits
	.align	2
	.type	s_blue_noise, %object
	.size	s_blue_noise, 4
s_blue_noise:
	.space	4
	.text
.Letext0:
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util\\pixel_ops.h"
	.file 6 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util\\image_loader.h"
	.file 7 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/string.h"
	.file 8 "D:/Playdate/PlaydateSDK/Examples/playdate-quest/src/platform.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa53
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x72
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x3e
	.uleb128 0x5
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x66
	.uleb128 0x5
	.4byte	0x98
	.uleb128 0x6
	.4byte	0x87
	.4byte	0xb4
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x5
	.byte	0x7
	.byte	0x10
	.4byte	0xa9
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x8
	.byte	0x10
	.4byte	0xa9
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x80
	.4byte	0xe6
	.uleb128 0x9
	.4byte	0x30
	.byte	0x3
	.uleb128 0x9
	.4byte	0x30
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x19
	.byte	0xc
	.4byte	0xd0
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x80
	.4byte	0x10a
	.uleb128 0x9
	.4byte	0x30
	.byte	0x5
	.uleb128 0x9
	.4byte	0x30
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1a
	.byte	0xc
	.4byte	0xf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x80
	.4byte	0x12e
	.uleb128 0x9
	.4byte	0x30
	.byte	0x7
	.uleb128 0x9
	.4byte	0x30
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1b
	.byte	0xc
	.4byte	0x118
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x80
	.4byte	0x152
	.uleb128 0x9
	.4byte	0x30
	.byte	0xb
	.uleb128 0x9
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1c
	.byte	0xc
	.4byte	0x13c
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x80
	.4byte	0x176
	.uleb128 0x9
	.4byte	0x30
	.byte	0xf
	.uleb128 0x9
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1d
	.byte	0xc
	.4byte	0x160
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF20
	.uleb128 0xa
	.byte	0x4
	.4byte	0x87
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x5
	.4byte	0x19a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1a1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF23
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe
	.byte	0x11
	.4byte	0x18b
	.byte	0x5
	.byte	0x3
	.4byte	s_blue_noise
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf
	.byte	0xa
	.4byte	0x18b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	s_dither2x2_r
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x10
	.byte	0xa
	.4byte	0x18b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	s_dither2x2_g
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x11
	.byte	0xa
	.4byte	0x18b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	s_dither4x4_r
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x12
	.byte	0xa
	.4byte	0x18b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	s_dither4x4_g
	.uleb128 0x6
	.4byte	0x87
	.4byte	0x224
	.uleb128 0xe
	.4byte	0x30
	.4byte	0x176ff
	.byte	0
	.uleb128 0xf
	.4byte	0xb4
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.4byte	0x211
	.byte	0x5
	.byte	0x3
	.4byte	g_screen_buffer
	.uleb128 0x6
	.4byte	0x87
	.4byte	0x247
	.uleb128 0x10
	.4byte	0x30
	.2byte	0x5dbf
	.byte	0
	.uleb128 0xf
	.4byte	0xc2
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.4byte	0x236
	.byte	0x5
	.byte	0x3
	.4byte	g_screen_buffer_2x2sml
	.uleb128 0x11
	.4byte	0xe6
	.byte	0x1
	.byte	0x26
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	g_order_pattern_2x2
	.uleb128 0x11
	.4byte	0x10a
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	g_order_pattern_3x2
	.uleb128 0x11
	.4byte	0x12e
	.byte	0x1
	.byte	0x3c
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	g_order_pattern_4x2
	.uleb128 0x11
	.4byte	0x152
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	g_order_pattern_4x3
	.uleb128 0x11
	.4byte	0x176
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	g_order_pattern_4x4
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF67
	.byte	0x8
	.byte	0x4b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x2b4
	.uleb128 0x13
	.4byte	0x198
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF28
	.byte	0x6
	.byte	0x7
	.byte	0xa
	.byte	0x1
	.4byte	0x18b
	.byte	0x1
	.4byte	0x2d7
	.uleb128 0x13
	.4byte	0x1a6
	.uleb128 0x13
	.4byte	0x2d7
	.uleb128 0x13
	.4byte	0x2d7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x80
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF29
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.byte	0x1
	.4byte	0x198
	.byte	0x1
	.4byte	0x300
	.uleb128 0x13
	.4byte	0x198
	.uleb128 0x13
	.4byte	0x80
	.uleb128 0x13
	.4byte	0x30
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0xdb
	.byte	0x6
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST32
	.byte	0x1
	.4byte	0x4ce
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0xdb
	.byte	0x19
	.4byte	0x18b
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0xdb
	.byte	0x2a
	.4byte	0x80
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0xdb
	.byte	0x35
	.4byte	0x80
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x17
	.ascii	"x1\000"
	.byte	0x1
	.byte	0xdb
	.byte	0x41
	.4byte	0x80
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x18
	.ascii	"y1\000"
	.byte	0x1
	.byte	0xdb
	.byte	0x49
	.4byte	0x80
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii	"x2\000"
	.byte	0x1
	.byte	0xdb
	.byte	0x51
	.4byte	0x80
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii	"y2\000"
	.byte	0x1
	.byte	0xdb
	.byte	0x59
	.4byte	0x80
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0xdb
	.byte	0x65
	.4byte	0x87
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.ascii	"dx\000"
	.byte	0x1
	.byte	0xdd
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x1a
	.ascii	"dy\000"
	.byte	0x1
	.byte	0xde
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0x1
	.byte	0xdf
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe0
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.byte	0xe1
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe5
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x1b
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe6
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe8
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe9
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x1c
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0x4a1
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0xeb
	.byte	0xb
	.4byte	0x80
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.ascii	"ix\000"
	.byte	0x1
	.byte	0xed
	.byte	0x7
	.4byte	0x80
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x1a
	.ascii	"iy\000"
	.byte	0x1
	.byte	0xee
	.byte	0x7
	.4byte	0x80
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xa33
	.4byte	.LBI30
	.byte	.LVU214
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xe1
	.byte	0xe
	.uleb128 0x1f
	.4byte	0xa41
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x1f
	.4byte	0xa4b
	.4byte	.LLST47
	.4byte	.LVUS47
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa2
	.byte	0x6
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x737
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0xa2
	.byte	0x28
	.4byte	0x18b
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa2
	.byte	0x39
	.4byte	0x80
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa4
	.byte	0xa
	.4byte	0x737
	.byte	0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1c
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0x5dd
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa8
	.byte	0x7
	.4byte	0x80
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x20
	.4byte	.LBB17
	.4byte	.LBE17
	.uleb128 0x21
	.ascii	"y\000"
	.byte	0x1
	.byte	0xa9
	.byte	0xc
	.4byte	0x80
	.uleb128 0x1c
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0x593
	.uleb128 0x1a
	.ascii	"x\000"
	.byte	0x1
	.byte	0xaa
	.byte	0xd
	.4byte	0x80
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x20
	.4byte	.LBB19
	.4byte	.LBE19
	.uleb128 0x1a
	.ascii	"val\000"
	.byte	0x1
	.byte	0xab
	.byte	0xd
	.4byte	0x87
	.4byte	.LLST25
	.4byte	.LVUS25
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL45
	.4byte	0x7db
	.4byte	0x5b9
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL46
	.4byte	0x7db
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x76
	.sleb128 -1
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0x66d
	.uleb128 0x21
	.ascii	"y\000"
	.byte	0x1
	.byte	0xb7
	.byte	0xc
	.4byte	0x80
	.uleb128 0x20
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb8
	.byte	0x8
	.4byte	0x80
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x1b
	.4byte	.LASF47
	.byte	0x1
	.byte	0xb9
	.byte	0x8
	.4byte	0x80
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x20
	.4byte	.LBB22
	.4byte	.LBE22
	.uleb128 0x1a
	.ascii	"x\000"
	.byte	0x1
	.byte	0xba
	.byte	0xd
	.4byte	0x80
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x20
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x25
	.4byte	.LASF48
	.byte	0x1
	.byte	0xbb
	.byte	0x9
	.4byte	0x80
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0xbc
	.byte	0x9
	.4byte	0x80
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x21
	.ascii	"y\000"
	.byte	0x1
	.byte	0xc2
	.byte	0xc
	.4byte	0x80
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x1a
	.ascii	"row\000"
	.byte	0x1
	.byte	0xc4
	.byte	0x13
	.4byte	0x748
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x25
	.4byte	.LASF50
	.byte	0x1
	.byte	0xc7
	.byte	0x8
	.4byte	0x80
	.uleb128 0x1c
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0x6c1
	.uleb128 0x1a
	.ascii	"x\000"
	.byte	0x1
	.byte	0xd0
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST31
	.4byte	.LVUS31
	.byte	0
	.uleb128 0x22
	.4byte	.LVL55
	.4byte	0x7db
	.4byte	0x6e7
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL61
	.4byte	0x7db
	.4byte	0x70d
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x77
	.sleb128 -1
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL64
	.byte	0x1
	.4byte	0x7db
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	g_screen_buffer+47600
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xef
	.uleb128 0x23
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x87
	.4byte	0x748
	.uleb128 0x10
	.4byte	0x30
	.2byte	0x18f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x93
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x98
	.byte	0x6
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x7db
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x98
	.byte	0x24
	.4byte	0x18b
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x1
	.byte	0x98
	.byte	0x35
	.4byte	0x80
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x1a
	.ascii	"src\000"
	.byte	0x1
	.byte	0x9a
	.byte	0x11
	.4byte	0x748
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x1a
	.ascii	"y\000"
	.byte	0x1
	.byte	0x9b
	.byte	0xb
	.4byte	0x80
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x24
	.4byte	.LVL35
	.4byte	0x7db
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x74
	.sleb128 -400
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x81
	.byte	0x6
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x8fe
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0x81
	.byte	0x2c
	.4byte	0x748
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x17
	.ascii	"y\000"
	.byte	0x1
	.byte	0x81
	.byte	0x38
	.4byte	0x80
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.byte	0x81
	.byte	0x3f
	.4byte	0x80
	.byte	0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x81
	.byte	0x4e
	.4byte	0x18b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0x83
	.byte	0x12
	.4byte	0x8fe
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1a
	.ascii	"row\000"
	.byte	0x1
	.byte	0x84
	.byte	0xb
	.4byte	0x18b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0x85
	.byte	0x12
	.4byte	0x8fe
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.ascii	"bx\000"
	.byte	0x1
	.byte	0x86
	.byte	0xb
	.4byte	0x80
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x1b
	.4byte	.LASF60
	.byte	0x1
	.byte	0x87
	.byte	0xc
	.4byte	0x98
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x1b
	.4byte	.LASF61
	.byte	0x1
	.byte	0x88
	.byte	0xc
	.4byte	0x98
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1b
	.4byte	.LASF62
	.byte	0x1
	.byte	0x89
	.byte	0xc
	.4byte	0x98
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0x8a
	.byte	0xc
	.4byte	0x98
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x1
	.byte	0x8b
	.byte	0xb
	.4byte	0x87
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.byte	0x72
	.byte	0x6
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x9b8
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.4byte	0x970
	.uleb128 0x29
	.ascii	"ww\000"
	.byte	0x1
	.byte	0x75
	.byte	0x7
	.4byte	0x80
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x29
	.ascii	"hh\000"
	.byte	0x1
	.byte	0x75
	.byte	0xb
	.4byte	0x80
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LVL2
	.4byte	0x2b4
	.4byte	0x966
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL3
	.4byte	0x29f
	.byte	0
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0x2dd
	.4byte	0x996
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	g_screen_buffer
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0xc
	.4byte	0x17700
	.byte	0
	.uleb128 0x26
	.4byte	.LVL5
	.byte	0x1
	.4byte	0x2dd
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	g_screen_buffer_2x2sml
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xa
	.2byte	0x5dc0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.byte	0x1d
	.byte	0x10
	.4byte	0x748
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xa33
	.uleb128 0x22
	.4byte	.LVL0
	.4byte	0x2dd
	.4byte	0xa11
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	g_screen_buffer
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0xc
	.4byte	0x17700
	.byte	0
	.uleb128 0x26
	.4byte	.LVL1
	.byte	0x1
	.4byte	0x2dd
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	g_screen_buffer_2x2sml
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xa
	.2byte	0x5dc0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF69
	.byte	0x2
	.byte	0x96
	.byte	0x13
	.byte	0x1
	.4byte	0x80
	.byte	0x3
	.uleb128 0x2d
	.ascii	"a\000"
	.byte	0x2
	.byte	0x96
	.byte	0x1c
	.4byte	0x80
	.uleb128 0x2d
	.ascii	"b\000"
	.byte	0x2
	.byte	0x96
	.byte	0x23
	.4byte	0x80
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST32:
	.4byte	.LFB48
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI16
	.4byte	.LFE48
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 0
.LLST33:
	.4byte	.LVL65
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81
	.4byte	.LFE48
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 0
.LLST34:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL66
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 0
.LLST35:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST36:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LFE48
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU208
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST37:
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE48
	.2byte	0xe
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU211
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 0
.LLST38:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE48
	.2byte	0x8
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU212
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST39:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x8
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE48
	.2byte	0xf
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU213
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 0
.LLST40:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x4
	.byte	0x7e
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x8
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x19
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE48
	.2byte	0x9
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU221
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 0
.LLST41:
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE48
	.2byte	0x97
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x27
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x27
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x27
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x27
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU232
	.uleb128 .LVU262
.LLST42:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU233
	.uleb128 .LVU262
.LLST43:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU234
	.uleb128 .LVU262
.LLST44:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU237
	.uleb128 .LVU262
.LLST45:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU237
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU262
.LLST48:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU243
	.uleb128 .LVU262
.LLST49:
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU244
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU262
.LLST50:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU214
	.uleb128 .LVU221
.LLST46:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU214
	.uleb128 .LVU221
.LLST47:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0x7e
	.sleb128 0
	.byte	0x19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB47
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x3
	.byte	0x7d
	.sleb128 432
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x3
	.byte	0x7d
	.sleb128 432
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI15
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-1
	.4byte	.LFE47
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 0
.LLST22:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL49
	.4byte	.LFE47
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU134
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU144
	.uleb128 .LVU150
	.uleb128 .LVU151
.LLST23:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.4byte	g_screen_buffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.4byte	g_screen_buffer
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.4byte	g_screen_buffer-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU134
	.uleb128 .LVU135
.LLST24:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU137
	.uleb128 .LVU143
.LLST25:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU156
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU200
.LLST26:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL63
	.2byte	0x4
	.byte	0x78
	.sleb128 200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU157
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU200
.LLST27:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x78
	.sleb128 200
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU159
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU179
.LLST28:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x8
	.byte	0xc7
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU166
	.uleb128 .LVU179
.LLST29:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU181
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU200
.LLST30:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x4
	.byte	0x75
	.sleb128 -400
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU185
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU194
.LLST31:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB46
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL37
	.4byte	.LFE46
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL33
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU113
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU127
.LLST18:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x3
	.4byte	g_screen_buffer
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0x74
	.sleb128 -400
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU113
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU127
.LLST19:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB45
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI8
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LFE45
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12
	.4byte	.LFE45
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE45
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU32
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	s_blue_noise
	.byte	0x6
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	s_blue_noise
	.byte	0x6
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL15
	.2byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	s_blue_noise
	.byte	0x6
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x3c
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU37
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU108
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS8:
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
	.uleb128 .LVU48
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU108
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xe
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x3
	.4byte	s_blue_noise
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xe
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x3
	.4byte	s_blue_noise
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0x190
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x74
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU40
	.uleb128 .LVU47
.LLST9:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU49
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU103
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x74
	.sleb128 -16
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU60
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU103
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x74
	.sleb128 -12
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU61
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU103
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL20
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x75
	.sleb128 -16
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU66
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU103
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x75
	.sleb128 -12
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU67
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU108
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x78
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB44
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5
	.4byte	.LFE44
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB42
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF30:
	.ascii	"framebuffer\000"
.LASF39:
	.ascii	"x_fx\000"
.LASF7:
	.ascii	"__uint8_t\000"
.LASF54:
	.ascii	"draw_dithered_screen\000"
.LASF46:
	.ascii	"src_idx\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF57:
	.ascii	"values\000"
.LASF13:
	.ascii	"g_screen_buffer\000"
.LASF34:
	.ascii	"abs_dx\000"
.LASF10:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF60:
	.ascii	"noise03\000"
.LASF14:
	.ascii	"g_screen_buffer_2x2sml\000"
.LASF50:
	.ascii	"next_y\000"
.LASF6:
	.ascii	"long int\000"
.LASF66:
	.ascii	"clear_screen_buffers\000"
.LASF58:
	.ascii	"values32\000"
.LASF23:
	.ascii	"double\000"
.LASF17:
	.ascii	"g_order_pattern_4x2\000"
.LASF18:
	.ascii	"g_order_pattern_4x3\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF67:
	.ascii	"plat_free\000"
.LASF65:
	.ascii	"init_pixel_ops\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF63:
	.ascii	"values47\000"
.LASF49:
	.ascii	"val_curr\000"
.LASF31:
	.ascii	"width\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF35:
	.ascii	"abs_dy\000"
.LASF27:
	.ascii	"s_dither4x4_g\000"
.LASF26:
	.ascii	"s_dither4x4_r\000"
.LASF16:
	.ascii	"g_order_pattern_3x2\000"
.LASF25:
	.ascii	"s_dither2x2_g\000"
.LASF19:
	.ascii	"g_order_pattern_4x4\000"
.LASF20:
	.ascii	"long double\000"
.LASF24:
	.ascii	"s_dither2x2_r\000"
.LASF56:
	.ascii	"draw_dithered_scanline\000"
.LASF68:
	.ascii	"get_blue_noise_buffer\000"
.LASF64:
	.ascii	"pixbyte\000"
.LASF21:
	.ascii	"float\000"
.LASF28:
	.ascii	"read_tga_file_grayscale\000"
.LASF15:
	.ascii	"g_order_pattern_2x2\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF38:
	.ascii	"ystep_fx\000"
.LASF4:
	.ascii	"short int\000"
.LASF61:
	.ascii	"noise47\000"
.LASF42:
	.ascii	"draw_dithered_screen_2x2\000"
.LASF55:
	.ascii	"bias\000"
.LASF41:
	.ascii	"draw_line\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF53:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF33:
	.ascii	"color\000"
.LASF22:
	.ascii	"char\000"
.LASF52:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\util\\pixel_ops.c\000"
.LASF48:
	.ascii	"val_prev\000"
.LASF69:
	.ascii	"max2\000"
.LASF62:
	.ascii	"values03\000"
.LASF43:
	.ascii	"filter\000"
.LASF47:
	.ascii	"dst_idx\000"
.LASF29:
	.ascii	"memset\000"
.LASF51:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF40:
	.ascii	"y_fx\000"
.LASF45:
	.ascii	"rowvalues\000"
.LASF32:
	.ascii	"height\000"
.LASF37:
	.ascii	"xstep_fx\000"
.LASF36:
	.ascii	"steps\000"
.LASF44:
	.ascii	"s_blue_noise\000"
.LASF59:
	.ascii	"noise_row\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
