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
	.file	"image_loader.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util\\image_loader.c"
	.section	.text.read_tga_file_grayscale,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	read_tga_file_grayscale
	.syntax unified
	.thumb
	.thumb_func
	.type	read_tga_file_grayscale, %function
read_tga_file_grayscale:
.LVL0:
.LFB0:
	.loc 1 27 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 28 2 view .LVU1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:28: 	*out_w = *out_h = 0;
	.loc 1 28 18 is_stmt 0 view .LVU2
	movs	r3, #0	@ tmp135,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:27: {
	.loc 1 27 1 view .LVU3
	push	{r4, r5, lr}	@
.LCFI0:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36	@,,
.LCFI1:
	.cfi_def_cfa_offset 48
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:28: 	*out_w = *out_h = 0;
	.loc 1 28 18 view .LVU4
	str	r3, [r2]	@ tmp135, *out_h_17(D)
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:28: 	*out_w = *out_h = 0;
	.loc 1 28 9 view .LVU5
	str	r3, [r1]	@ tmp135, *out_w_19(D)
	.loc 1 29 2 is_stmt 1 view .LVU6
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:27: {
	.loc 1 27 1 is_stmt 0 view .LVU7
	mov	r4, r1	@ out_w, out_w
	mov	r5, r2	@ out_h, out_h
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:29: 	PlatFile* file = plat_file_open_read(path);
	.loc 1 29 19 view .LVU8
	bl	plat_file_open_read		@
.LVL1:
	.loc 1 30 2 is_stmt 1 view .LVU9
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:30: 	if (!file)
	.loc 1 30 5 is_stmt 0 view .LVU10
	cmp	r0, #0	@
	beq	.L5	@
	.loc 1 33 2 is_stmt 1 view .LVU11
.LVL2:
	.loc 1 34 2 view .LVU12
	.loc 1 35 2 view .LVU13
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:35: 	int bytes = plat_file_read(file, &header, sizeof(header));
	.loc 1 35 14 is_stmt 0 view .LVU14
	movs	r2, #18	@,
	add	r1, sp, #12	@,,
	str	r0, [sp, #4]	@, %sfp
	bl	plat_file_read		@
.LVL3:
	.loc 1 36 2 is_stmt 1 view .LVU15
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:36: 	if (bytes != sizeof(header))
	.loc 1 36 5 is_stmt 0 view .LVU16
	cmp	r0, #18	@ bytes,
	ldr	r3, [sp, #4]	@ file, %sfp
	beq	.L8		@,
.LVL4:
.L3:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:33: 	uint8_t* res = NULL;
	.loc 1 33 11 view .LVU17
	movs	r5, #0	@ <retval>,
.LVL5:
.L4:
	.loc 1 62 2 is_stmt 1 view .LVU18
	mov	r0, r3	@, file
	bl	plat_file_close		@
.LVL6:
	.loc 1 63 2 view .LVU19
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:64: }
	.loc 1 64 1 is_stmt 0 view .LVU20
	mov	r0, r5	@, <retval>
	add	sp, sp, #36	@,,
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed	@
	pop	{r4, r5, pc}	@
.LVL7:
.L8:
.LCFI3:
	.cfi_restore_state
	.loc 1 39 2 is_stmt 1 view .LVU21
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:39: 	if (header.image_type != 3) // only support grayscale images
	.loc 1 39 5 is_stmt 0 view .LVU22
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ header.image_type, header.image_type
	cmp	r2, #3	@ header.image_type,
	bne	.L3		@,
	.loc 1 41 2 is_stmt 1 view .LVU23
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:41: 	if (header.bits_per_pixel != 8) // only support 8bpp
	.loc 1 41 5 is_stmt 0 view .LVU24
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ header.bits_per_pixel, header.bits_per_pixel
	cmp	r2, #8	@ header.bits_per_pixel,
	bne	.L3		@,
	.loc 1 44 2 is_stmt 1 view .LVU25
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:44: 	if (header.width == 0 || header.width > 2048 || header.height == 0 || header.height > 2048) // out of bounds sizes
	.loc 1 44 12 is_stmt 0 view .LVU26
	ldrh	r2, [sp, #24]	@ _4, header.width
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:44: 	if (header.width == 0 || header.width > 2048 || header.height == 0 || header.height > 2048) // out of bounds sizes
	.loc 1 44 5 view .LVU27
	subs	r1, r2, #1	@ tmp143, _4,
	cmp	r1, #2048	@ tmp143,
	bcs	.L3		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:44: 	if (header.width == 0 || header.width > 2048 || header.height == 0 || header.height > 2048) // out of bounds sizes
	.loc 1 44 56 discriminator 1 view .LVU28
	ldrh	r1, [sp, #26]	@ _6, header.height
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:44: 	if (header.width == 0 || header.width > 2048 || header.height == 0 || header.height > 2048) // out of bounds sizes
	.loc 1 44 69 discriminator 2 view .LVU29
	subs	r0, r1, #1	@ tmp147, _6,
.LVL8:
	.loc 1 44 69 discriminator 2 view .LVU30
	cmp	r0, #2048	@ tmp147,
	bcs	.L3		@,
	.loc 1 47 2 is_stmt 1 view .LVU31
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:47: 	*out_w = header.width;
	.loc 1 47 9 is_stmt 0 view .LVU32
	str	r2, [r4]	@ _4, *out_w_19(D)
	.loc 1 48 2 is_stmt 1 view .LVU33
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:50: 	int image_size = header.width * header.height;
	.loc 1 50 6 is_stmt 0 view .LVU34
	smulbb	r4, r2, r1	@ image_size, _4, _6
.LVL9:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:48: 	*out_h = header.height;
	.loc 1 48 9 view .LVU35
	str	r1, [r5]	@ _6, *out_h_17(D)
	.loc 1 50 2 is_stmt 1 view .LVU36
.LVL10:
	.loc 1 51 2 view .LVU37
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:51: 	res = plat_malloc(image_size);
	.loc 1 51 8 is_stmt 0 view .LVU38
	mov	r0, r4	@, image_size
	bl	plat_malloc		@
.LVL11:
	mov	r5, r0	@ <retval>,
.LVL12:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:53: 	plat_file_seek_cur(file, header.id_size);
	.loc 1 53 2 view .LVU39
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@, header.id_size
	ldr	r0, [sp, #4]	@, %sfp
.LVL13:
	.loc 1 53 2 is_stmt 1 view .LVU40
	bl	plat_file_seek_cur		@
.LVL14:
	.loc 1 54 2 view .LVU41
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:54: 	bytes = plat_file_read(file, res, image_size);
	.loc 1 54 10 is_stmt 0 view .LVU42
	mov	r2, r4	@, image_size
	mov	r1, r5	@, <retval>
	ldr	r0, [sp, #4]	@, %sfp
	bl	plat_file_read		@
.LVL15:
	.loc 1 55 2 is_stmt 1 view .LVU43
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:55: 	if (bytes != image_size) {
	.loc 1 55 5 is_stmt 0 view .LVU44
	cmp	r4, r0	@ image_size, bytes
	ldr	r3, [sp, #4]	@ file, %sfp
	beq	.L4		@,
	.loc 1 56 3 is_stmt 1 view .LVU45
	mov	r0, r5	@, <retval>
.LVL16:
	.loc 1 56 3 is_stmt 0 view .LVU46
	bl	plat_free		@
.LVL17:
	ldr	r3, [sp, #4]	@ file, %sfp
	.loc 1 57 3 is_stmt 1 view .LVU47
.LVL18:
	.loc 1 58 3 view .LVU48
	b	.L3		@
.LVL19:
.L5:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:31: 		return NULL;
	.loc 1 31 9 is_stmt 0 view .LVU49
	mov	r5, r0	@ <retval>,
.LVL20:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\image_loader.c:64: }
	.loc 1 64 1 view .LVU50
	mov	r0, r5	@, <retval>
	.loc 1 64 1 view .LVU51
	add	sp, sp, #36	@,,
.LCFI4:
	.cfi_def_cfa_offset 12
	@ sp needed	@
	pop	{r4, r5, pc}	@
	.loc 1 64 1 view .LVU52
	.cfi_endproc
.LFE0:
	.size	read_tga_file_grayscale, .-read_tga_file_grayscale
	.text
.Letext0:
	.file 2 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "D:/Playdate/arm-gnu-toolchain/lib/gcc/arm-none-eabi/15.3.1/include/stddef.h"
	.file 5 "D:/Playdate/PlaydateSDK/Examples/playdate-quest/src/platform.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3a9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF5
	.byte	0x2
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x64
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
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
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x58
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x1d
	.byte	0x19
	.4byte	0xbe
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x12
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.4byte	0x168
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0xb
	.byte	0xa
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc
	.byte	0xa
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0xd
	.byte	0xa
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0xe
	.byte	0xa
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x10
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x11
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x13
	.byte	0xa
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x14
	.byte	0xa
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.4byte	0x87
	.4byte	0x178
	.uleb128 0x9
	.4byte	0x30
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.4byte	0xc4
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF27
	.byte	0x5
	.byte	0x31
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x199
	.uleb128 0xb
	.4byte	0x199
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xb2
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x1b4
	.uleb128 0xb
	.4byte	0x1b4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2f
	.byte	0x5
	.byte	0x1
	.4byte	0x80
	.byte	0x1
	.4byte	0x1d4
	.uleb128 0xb
	.4byte	0x199
	.uleb128 0xb
	.4byte	0x80
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF30
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.byte	0x1
	.4byte	0x1b4
	.byte	0x1
	.4byte	0x1ed
	.uleb128 0xb
	.4byte	0x9f
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0x2d
	.byte	0x5
	.byte	0x1
	.4byte	0x80
	.byte	0x1
	.4byte	0x210
	.uleb128 0xb
	.4byte	0x199
	.uleb128 0xb
	.4byte	0x1b4
	.uleb128 0xb
	.4byte	0x9f
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2b
	.byte	0xb
	.byte	0x1
	.4byte	0x199
	.byte	0x1
	.4byte	0x229
	.uleb128 0xb
	.4byte	0x229
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x236
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF33
	.uleb128 0xf
	.4byte	0x22f
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1a
	.byte	0xa
	.byte	0x1
	.4byte	0x3a0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x3a0
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1a
	.byte	0x2e
	.4byte	0x229
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1a
	.byte	0x39
	.4byte	0x3a6
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1a
	.byte	0x45
	.4byte	0x3a6
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1d
	.byte	0xc
	.4byte	0x199
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x13
	.ascii	"res\000"
	.byte	0x1
	.byte	0x21
	.byte	0xb
	.4byte	0x3a0
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0x22
	.byte	0xc
	.4byte	0x178
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	.L4
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	0x80
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x210
	.4byte	0x31c
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
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
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x1ed
	.4byte	0x33c
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0x184
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x1d4
	.4byte	0x359
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x1b6
	.4byte	0x36e
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x1ed
	.4byte	0x38f
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x19f
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x87
	.uleb128 0xc
	.byte	0x4
	.4byte	0x80
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI4
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1
	.4byte	.LFE0
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
.LVUS2:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL7
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
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL19
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
	.4byte	.LVL19
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20
	.4byte	.LFE0
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU9
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-1
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL19
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU12
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU49
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU30
	.uleb128 .LVU43
	.uleb128 .LVU46
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU37
	.uleb128 .LVU49
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF44:
	.ascii	"header\000"
.LASF28:
	.ascii	"plat_free\000"
.LASF18:
	.ascii	"image_type\000"
.LASF4:
	.ascii	"short int\000"
.LASF13:
	.ascii	"size_t\000"
.LASF45:
	.ascii	"_exit\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF37:
	.ascii	"file\000"
.LASF16:
	.ascii	"id_size\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF29:
	.ascii	"plat_file_seek_cur\000"
.LASF39:
	.ascii	"image_size\000"
.LASF22:
	.ascii	"width\000"
.LASF10:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"long int\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF42:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF20:
	.ascii	"x_origin\000"
.LASF14:
	.ascii	"long double\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF31:
	.ascii	"plat_file_read\000"
.LASF15:
	.ascii	"PlatFile\000"
.LASF2:
	.ascii	"signed char\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF23:
	.ascii	"height\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF40:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF26:
	.ascii	"TgaHeader\000"
.LASF43:
	.ascii	"read_tga_file_grayscale\000"
.LASF41:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\util\\image_loader.c\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF36:
	.ascii	"out_h\000"
.LASF33:
	.ascii	"char\000"
.LASF35:
	.ascii	"out_w\000"
.LASF27:
	.ascii	"plat_file_close\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF38:
	.ascii	"bytes\000"
.LASF24:
	.ascii	"bits_per_pixel\000"
.LASF21:
	.ascii	"y_origin\000"
.LASF34:
	.ascii	"path\000"
.LASF30:
	.ascii	"plat_malloc\000"
.LASF19:
	.ascii	"color_map_desc\000"
.LASF32:
	.ascii	"plat_file_open_read\000"
.LASF17:
	.ascii	"color_map_type\000"
.LASF25:
	.ascii	"image_desc\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
