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
	.file	"radixsort.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util\\radixsort.c"
	.section	.text.radixsort_upper16keys,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	radixsort_upper16keys
	.syntax unified
	.thumb
	.thumb_func
	.type	radixsort_upper16keys, %function
radixsort_upper16keys:
.LVL0:
.LFB3:
	.loc 1 85 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 2056
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 86 5 view .LVU1
	.loc 1 87 5 view .LVU2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:85: {
	.loc 1 85 1 is_stmt 0 view .LVU3
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
	subw	sp, sp, #2060	@,,
.LCFI1:
	.cfi_def_cfa_offset 2096
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:85: {
	.loc 1 85 1 view .LVU4
	mov	fp, r2	@ size, size
	mov	r8, r0	@ keys_in_out, keys_in_out
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:87:     memset(hist, 0, sizeof(hist));
	.loc 1 87 5 view .LVU5
	mov	r2, #2048	@,
.LVL1:
	.loc 1 87 5 view .LVU6
	add	r5, sp, #8	@ tmp220,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:85: {
	.loc 1 85 1 view .LVU7
	str	r1, [sp, #4]	@ keys_tmp, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:87:     memset(hist, 0, sizeof(hist));
	.loc 1 87 5 view .LVU8
	movs	r1, #0	@,
.LVL2:
	.loc 1 87 5 view .LVU9
	mov	r0, r5	@, tmp220
.LVL3:
	.loc 1 87 5 view .LVU10
	bl	memset		@
.LVL4:
	.loc 1 89 5 is_stmt 1 view .LVU11
.LBB21:
.LBI21:
	.loc 1 34 13 view .LVU12
	.loc 1 36 5 view .LVU13
.LBB22:
	.loc 1 36 10 view .LVU14
	.loc 1 36 28 discriminator 1 view .LVU15
	cmp	fp, #0	@ size
	beq	.L9	@
	add	r4, fp, #-1	@ _87, size,
	sub	r1, r8, #4	@ ivtmp.41, keys_in_out,
	add	r4, r8, r4, lsl #2	@ _48, keys_in_out, _87,
.LVL5:
.L3:
.LBB23:
	.loc 1 38 9 view .LVU16
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:38:         const uint32_t key = keys_in[i];
	.loc 1 38 24 is_stmt 0 view .LVU17
	ldr	r3, [r1, #4]!	@ key, MEM[(const uint32_t *)_53]
.LVL6:
	.loc 1 39 9 is_stmt 1 view .LVU18
	.loc 1 40 9 view .LVU19
	.loc 1 41 9 view .LVU20
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:39:         const uint32_t pos2 = (key >> 16) & 0xFF;
	.loc 1 39 24 is_stmt 0 view .LVU21
	ubfx	r0, r3, #16, #8	@ pos2_58, key,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:40:         const uint32_t pos3 = (key >> 24);
	.loc 1 40 24 view .LVU22
	lsrs	r3, r3, #24	@ pos3_59, key,
.LVL7:
	.loc 1 40 24 view .LVU23
.LBE23:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:36:     for (uint32_t i = 0; i < size; ++i)
	.loc 1 36 28 discriminator 1 view .LVU24
	cmp	r4, r1	@ _48, ivtmp.41
.LBB24:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:41:         hist[pos2]++;
	.loc 1 41 19 view .LVU25
	ldr	r2, [r5, r0, lsl #2]	@ *_61, *_61
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:42:         hist[pos3 + kHistSize]++;
	.loc 1 42 19 view .LVU26
	add	r3, r3, #256	@ _64, pos3_59,
.LVL8:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:41:         hist[pos2]++;
	.loc 1 41 19 view .LVU27
	add	r2, r2, #1	@ _63, *_61,
	str	r2, [r5, r0, lsl #2]	@ _63, *_61
	.loc 1 42 9 is_stmt 1 view .LVU28
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:42:         hist[pos3 + kHistSize]++;
	.loc 1 42 25 is_stmt 0 view .LVU29
	ldr	r2, [r5, r3, lsl #2]	@ *_66, *_66
	add	r2, r2, #1	@ _68, *_66,
	str	r2, [r5, r3, lsl #2]	@ _68, *_66
.LBE24:
	.loc 1 36 36 is_stmt 1 discriminator 3 view .LVU30
	.loc 1 36 28 discriminator 1 view .LVU31
	bne	.L3		@,
.LBE22:
.LBE21:
.LBB26:
.LBB27:
.LBB28:
.LBB29:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:55:         sum[bucket] = offset[0];
	.loc 1 55 29 is_stmt 0 view .LVU32
	ldr	r2, [r5]	@ tsum, MEM[(uint32_t *)&hist]
	ldr	r1, [r5, #1024]	@ sum$1, MEM[(uint32_t *)&hist + 1024B]
.LVL9:
.L2:
	.loc 1 55 29 view .LVU33
.LBE29:
	.loc 1 52 38 is_stmt 1 discriminator 1 view .LVU34
.LBB30:
	.loc 1 54 9 view .LVU35
	.loc 1 55 9 view .LVU36
	.loc 1 56 9 view .LVU37
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:56:         offset[0] = 0;
	.loc 1 56 19 is_stmt 0 view .LVU38
	movs	r3, #0	@ tmp201,
	add	r10, sp, #1032	@ tmp219,,
	addw	r9, sp, #1028	@ _80,,
	str	r3, [r5]	@ tmp201, MEM[(uint32_t *)&hist]
.LVL10:
	.loc 1 56 19 view .LVU39
.LBE30:
	.loc 1 52 43 is_stmt 1 discriminator 3 view .LVU40
	.loc 1 52 38 discriminator 1 view .LVU41
.LBB31:
	.loc 1 54 9 view .LVU42
	.loc 1 55 9 view .LVU43
	.loc 1 56 9 view .LVU44
	mov	r0, r10	@ ivtmp.35, tmp219
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:56:         offset[0] = 0;
	.loc 1 56 19 is_stmt 0 view .LVU45
	str	r3, [r5, #1024]	@ tmp201, MEM[(uint32_t *)&hist + 1024B]
.LVL11:
	.loc 1 56 19 view .LVU46
.LBE31:
	.loc 1 52 43 is_stmt 1 discriminator 3 view .LVU47
	.loc 1 52 38 discriminator 1 view .LVU48
	.loc 1 52 38 is_stmt 0 discriminator 1 view .LVU49
.LBE28:
.LBB32:
	.loc 1 60 28 is_stmt 1 discriminator 1 view .LVU50
	mov	r3, r5	@ ivtmp.32, tmp220
.LVL12:
.L4:
.LBB33:
	.loc 1 62 42 discriminator 1 view .LVU51
.LBB34:
	.loc 1 64 13 view .LVU52
	.loc 1 65 13 view .LVU53
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:65:             tsum = offset[i] + sum[bucket];
	.loc 1 65 18 is_stmt 0 view .LVU54
	ldr	r4, [r3, #4]!	@ MEM[(uint32_t *)_90], MEM[(uint32_t *)_90]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:66:             offset[i] = sum[bucket];
	.loc 1 66 23 view .LVU55
	str	r2, [r3]	@ tsum, MEM[(uint32_t *)_90]
.LBE34:
.LBE33:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:60:     for (uint32_t i = 1; i < kHistSize; ++i)
	.loc 1 60 28 discriminator 1 view .LVU56
	cmp	r9, r3	@ _80, ivtmp.32
.LBB37:
.LBB35:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:65:             tsum = offset[i] + sum[bucket];
	.loc 1 65 18 view .LVU57
	add	r2, r2, r4	@ tsum, MEM[(uint32_t *)_90]
.LVL13:
	.loc 1 66 13 is_stmt 1 view .LVU58
	.loc 1 67 13 view .LVU59
	.loc 1 67 13 is_stmt 0 view .LVU60
.LBE35:
	.loc 1 62 47 is_stmt 1 discriminator 3 view .LVU61
	.loc 1 62 42 discriminator 1 view .LVU62
.LBB36:
	.loc 1 64 13 view .LVU63
	.loc 1 65 13 view .LVU64
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:65:             tsum = offset[i] + sum[bucket];
	.loc 1 65 18 is_stmt 0 view .LVU65
	ldr	r4, [r0, #4]!	@ MEM[(uint32_t *)_79], MEM[(uint32_t *)_79]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:66:             offset[i] = sum[bucket];
	.loc 1 66 23 view .LVU66
	str	r1, [r0]	@ sum$1, MEM[(uint32_t *)_79]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:65:             tsum = offset[i] + sum[bucket];
	.loc 1 65 18 view .LVU67
	add	r1, r1, r4	@ sum$1, MEM[(uint32_t *)_79]
.LVL14:
	.loc 1 66 13 is_stmt 1 view .LVU68
	.loc 1 67 13 view .LVU69
	.loc 1 67 13 is_stmt 0 view .LVU70
.LBE36:
	.loc 1 62 47 is_stmt 1 discriminator 3 view .LVU71
	.loc 1 62 42 discriminator 1 view .LVU72
.LBE37:
	.loc 1 60 35 discriminator 2 view .LVU73
	.loc 1 60 28 discriminator 1 view .LVU74
	bne	.L4		@,
.LVL15:
	.loc 1 60 28 is_stmt 0 discriminator 1 view .LVU75
.LBE32:
.LBE27:
.LBE26:
	.loc 1 94 5 is_stmt 1 view .LVU76
.LBB38:
.LBI38:
	.loc 1 72 20 view .LVU77
	.loc 1 75 5 view .LVU78
.LBB39:
	.loc 1 75 10 view .LVU79
	.loc 1 75 28 discriminator 1 view .LVU80
	cmp	fp, #0	@ size
	beq	.L1	@
	lsl	r7, fp, #2	@ _112, size,
	sub	r3, r8, #4	@ ivtmp.22, keys_in_out,
	sub	ip, r7, #4	@ _136, _112,
	add	ip, ip, r8	@ _106, keys_in_out
.LVL16:
.L6:
.LBB40:
	.loc 1 77 9 view .LVU81
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:77:         const uint32_t key = keys_in[i];
	.loc 1 77 24 is_stmt 0 view .LVU82
	ldr	r0, [r3, #4]!	@ key, MEM[(const uint32_t *)_114]
.LVL17:
	.loc 1 78 9 is_stmt 1 view .LVU83
	.loc 1 79 9 view .LVU84
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:80:         keys_out[index] = key;
	.loc 1 80 25 is_stmt 0 view .LVU85
	ldr	r6, [sp, #4]	@ keys_tmp, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:78:         const uint32_t pos = (key >> shift) & 0xFF;
	.loc 1 78 24 view .LVU86
	ubfx	r2, r0, #16, #8	@ pos_29, key,,
.LBE40:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:75:     for (uint32_t i = 0; i < size; ++i)
	.loc 1 75 28 discriminator 1 view .LVU87
	cmp	ip, r3	@ _106, ivtmp.22
.LBB41:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:79:         const uint32_t index = hist[pos]++;
	.loc 1 79 36 view .LVU88
	ldr	r1, [r5, r2, lsl #2]	@ _32, *_31
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:79:         const uint32_t index = hist[pos]++;
	.loc 1 79 41 view .LVU89
	add	r4, r1, #1	@ _33, _32,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:80:         keys_out[index] = key;
	.loc 1 80 25 view .LVU90
	str	r0, [r6, r1, lsl #2]	@ key, *_35
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:79:         const uint32_t index = hist[pos]++;
	.loc 1 79 41 view .LVU91
	str	r4, [r5, r2, lsl #2]	@ _33, *_31
.LVL18:
	.loc 1 80 9 is_stmt 1 view .LVU92
.LBE41:
	.loc 1 75 36 discriminator 3 view .LVU93
	.loc 1 75 28 discriminator 1 view .LVU94
	bne	.L6		@,
	subs	r6, r6, #4	@ ivtmp.16, keys_tmp,
	adds	r0, r7, r6	@ _123, _112, ivtmp.16
.LVL19:
.L7:
	.loc 1 75 28 is_stmt 0 discriminator 1 view .LVU95
.LBE39:
.LBE38:
.LBB42:
.LBB43:
.LBB44:
	.loc 1 77 9 is_stmt 1 view .LVU96
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:77:         const uint32_t key = keys_in[i];
	.loc 1 77 24 is_stmt 0 view .LVU97
	ldr	r1, [r6, #4]!	@ key, MEM[(const uint32_t *)_127]
.LVL20:
	.loc 1 78 9 is_stmt 1 view .LVU98
	.loc 1 79 9 view .LVU99
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:78:         const uint32_t pos = (key >> shift) & 0xFF;
	.loc 1 78 35 is_stmt 0 view .LVU100
	lsrs	r3, r1, #24	@ _15, key,
.LVL21:
	.loc 1 78 35 view .LVU101
.LBE44:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:75:     for (uint32_t i = 0; i < size; ++i)
	.loc 1 75 28 discriminator 1 view .LVU102
	cmp	r0, r6	@ _123, ivtmp.16
.LBB45:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:79:         const uint32_t index = hist[pos]++;
	.loc 1 79 36 view .LVU103
	ldr	r2, [r10, r3, lsl #2]	@ _19, *_18
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:79:         const uint32_t index = hist[pos]++;
	.loc 1 79 41 view .LVU104
	add	r4, r2, #1	@ _20, _19,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:80:         keys_out[index] = key;
	.loc 1 80 25 view .LVU105
	str	r1, [r8, r2, lsl #2]	@ key, *_22
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:79:         const uint32_t index = hist[pos]++;
	.loc 1 79 41 view .LVU106
	str	r4, [r10, r3, lsl #2]	@ _20, *_18
.LVL22:
	.loc 1 80 9 is_stmt 1 view .LVU107
.LBE45:
	.loc 1 75 36 discriminator 3 view .LVU108
	.loc 1 75 28 discriminator 1 view .LVU109
	bne	.L7		@,
.LVL23:
.L1:
	.loc 1 75 28 is_stmt 0 discriminator 1 view .LVU110
.LBE43:
.LBE42:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:96: }
	.loc 1 96 1 view .LVU111
	addw	sp, sp, #2060	@,,
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL24:
.L9:
.LCFI3:
	.cfi_restore_state
.LBB46:
.LBB25:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\radixsort.c:36:     for (uint32_t i = 0; i < size; ++i)
	.loc 1 36 28 discriminator 1 view .LVU112
	mov	r1, fp	@ sum$1, size
	mov	r2, fp	@ tsum, size
	b	.L2		@
.LBE25:
.LBE46:
	.cfi_endproc
.LFE3:
	.size	radixsort_upper16keys, .-radixsort_upper16keys
	.text
.Letext0:
	.file 2 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/string.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x528
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_ranges0+0xb8
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x58
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF32
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.byte	0x1
	.4byte	0x93
	.byte	0x1
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0x93
	.uleb128 0x8
	.4byte	0x6d
	.uleb128 0x8
	.4byte	0x74
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x394
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x54
	.byte	0x2f
	.4byte	0x394
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x54
	.byte	0x4f
	.4byte	0x394
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x54
	.byte	0x62
	.4byte	0x7b
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x56
	.byte	0xe
	.4byte	0x39a
	.byte	0x3
	.byte	0x91
	.sleb128 -2088
	.uleb128 0xc
	.4byte	0x4b9
	.4byte	.LBI21
	.byte	.LVU12
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x1ab
	.uleb128 0xd
	.4byte	0x4c7
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xd
	.4byte	0x4d3
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xd
	.4byte	0x4df
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xe
	.4byte	0x4eb
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xf
	.4byte	0x4ec
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xe
	.4byte	0x4f6
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0xf
	.4byte	0x4f7
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xf
	.4byte	0x503
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xf
	.4byte	0x50f
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x42e
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.4byte	0x25e
	.uleb128 0x11
	.4byte	0x43c
	.uleb128 0xf
	.4byte	0x448
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xf
	.4byte	0x454
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x12
	.4byte	0x460
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0x214
	.uleb128 0xf
	.4byte	0x465
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xe
	.4byte	0x471
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0xf
	.4byte	0x472
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x480
	.4byte	.LBB32
	.4byte	.LBE32
	.uleb128 0xf
	.4byte	0x481
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xe
	.4byte	0x48b
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0xf
	.4byte	0x48c
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xe
	.4byte	0x498
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0xf
	.4byte	0x499
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x3ab
	.4byte	.LBI38
	.byte	.LVU77
	.4byte	.LBB38
	.4byte	.LBE38
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.4byte	0x305
	.uleb128 0xd
	.4byte	0x3b9
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xd
	.4byte	0x3c5
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xd
	.4byte	0x3d1
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xd
	.4byte	0x3dd
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xd
	.4byte	0x3e9
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x13
	.4byte	0x3f5
	.4byte	.LBB39
	.4byte	.LBE39
	.uleb128 0xf
	.4byte	0x3f6
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xe
	.4byte	0x400
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0xf
	.4byte	0x401
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xf
	.4byte	0x40d
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0xf
	.4byte	0x419
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x3ab
	.4byte	.LBB42
	.4byte	.LBE42
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x377
	.uleb128 0x11
	.4byte	0x3b9
	.uleb128 0x11
	.4byte	0x3c5
	.uleb128 0x11
	.4byte	0x3d1
	.uleb128 0x11
	.4byte	0x3dd
	.uleb128 0x11
	.4byte	0x3e9
	.uleb128 0x13
	.4byte	0x3f5
	.4byte	.LBB43
	.4byte	.LBE43
	.uleb128 0x15
	.4byte	0x3f6
	.uleb128 0xe
	.4byte	0x400
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0xf
	.4byte	0x401
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0xf
	.4byte	0x40d
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0xf
	.4byte	0x419
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x51e
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x7b
	.uleb128 0x19
	.4byte	0x7b
	.4byte	0x3ab
	.uleb128 0x1a
	.4byte	0x74
	.2byte	0x1ff
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF21
	.byte	0x1
	.byte	0x48
	.byte	0x14
	.byte	0x1
	.byte	0x3
	.4byte	0x428
	.uleb128 0x1c
	.4byte	.LASF16
	.byte	0x1
	.byte	0x48
	.byte	0x35
	.4byte	0x394
	.uleb128 0x1c
	.4byte	.LASF17
	.byte	0x1
	.byte	0x48
	.byte	0x44
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	.LASF18
	.byte	0x1
	.byte	0x49
	.byte	0x1e
	.4byte	0x428
	.uleb128 0x1c
	.4byte	.LASF19
	.byte	0x1
	.byte	0x49
	.byte	0x3a
	.4byte	0x394
	.uleb128 0x1c
	.4byte	.LASF15
	.byte	0x1
	.byte	0x49
	.byte	0x4d
	.4byte	0x7b
	.uleb128 0x1d
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x1d
	.uleb128 0x1e
	.ascii	"key\000"
	.byte	0x1
	.byte	0x4d
	.byte	0x18
	.4byte	0x87
	.uleb128 0x1e
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x4e
	.byte	0x18
	.4byte	0x87
	.uleb128 0x1f
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4f
	.byte	0x18
	.4byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x87
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x4a9
	.uleb128 0x1c
	.4byte	.LASF16
	.byte	0x1
	.byte	0x31
	.byte	0x2f
	.4byte	0x394
	.uleb128 0x1e
	.ascii	"sum\000"
	.byte	0x1
	.byte	0x33
	.byte	0xe
	.4byte	0x4a9
	.uleb128 0x1f
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3b
	.byte	0xe
	.4byte	0x7b
	.uleb128 0x20
	.4byte	0x480
	.uleb128 0x1f
	.4byte	.LASF24
	.byte	0x1
	.byte	0x34
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x1d
	.uleb128 0x1f
	.4byte	.LASF25
	.byte	0x1
	.byte	0x36
	.byte	0x1c
	.4byte	0x394
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x3c
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x1d
	.uleb128 0x1f
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3e
	.byte	0x17
	.4byte	0x7b
	.uleb128 0x1d
	.uleb128 0x1f
	.4byte	.LASF25
	.byte	0x1
	.byte	0x40
	.byte	0x20
	.4byte	0x394
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x7b
	.4byte	0x4b9
	.uleb128 0x21
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x51e
	.uleb128 0x1c
	.4byte	.LASF16
	.byte	0x1
	.byte	0x22
	.byte	0x34
	.4byte	0x394
	.uleb128 0x1c
	.4byte	.LASF18
	.byte	0x1
	.byte	0x22
	.byte	0x53
	.4byte	0x428
	.uleb128 0x1c
	.4byte	.LASF15
	.byte	0x1
	.byte	0x22
	.byte	0x65
	.4byte	0x7b
	.uleb128 0x1d
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x1d
	.uleb128 0x1e
	.ascii	"key\000"
	.byte	0x1
	.byte	0x26
	.byte	0x18
	.4byte	0x87
	.uleb128 0x1f
	.4byte	.LASF27
	.byte	0x1
	.byte	0x27
	.byte	0x18
	.4byte	0x87
	.uleb128 0x1f
	.4byte	.LASF28
	.byte	0x1
	.byte	0x28
	.byte	0x18
	.4byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.4byte	.LASF32
	.4byte	.LASF34
	.byte	0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
.LLST0:
	.4byte	.LFB3
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
	.sleb128 2096
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI3
	.4byte	.LFE3
	.2byte	0x3
	.byte	0x7d
	.sleb128 2096
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2
	.4byte	.LFE3
	.2byte	0x3
	.byte	0x91
	.sleb128 -2092
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU12
	.uleb128 .LVU33
	.uleb128 .LVU112
	.uleb128 0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU12
	.uleb128 .LVU33
	.uleb128 .LVU112
	.uleb128 0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU12
	.uleb128 .LVU33
	.uleb128 .LVU112
	.uleb128 0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU112
	.uleb128 0
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU18
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU33
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU19
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU33
.LLST9:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU20
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU33
.LLST10:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x73
	.sleb128 -256
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU37
	.uleb128 .LVU39
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU51
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU81
.LLST11:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x7a
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL13
	.4byte	.LVL13
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL14
	.4byte	.LVL14
	.2byte	0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU58
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU75
.LLST12:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU33
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU75
.LLST13:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU36
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU75
.LLST14:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU49
	.uleb128 .LVU51
.LLST15:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU51
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU75
.LLST16:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU53
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU112
.LLST17:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU77
	.uleb128 .LVU95
.LLST18:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU77
	.uleb128 .LVU95
.LLST19:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU77
	.uleb128 .LVU95
.LLST20:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU77
	.uleb128 .LVU95
.LLST21:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x91
	.sleb128 -2092
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU77
	.uleb128 .LVU95
.LLST22:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU80
	.uleb128 .LVU81
.LLST23:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU83
	.uleb128 .LVU95
.LLST24:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU84
	.uleb128 .LVU95
.LLST25:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU92
	.uleb128 .LVU95
.LLST26:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU98
	.uleb128 .LVU110
.LLST27:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU99
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU110
.LLST28:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU107
	.uleb128 .LVU110
.LLST29:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF6:
	.ascii	"long long int\000"
.LASF17:
	.ascii	"shift\000"
.LASF13:
	.ascii	"keys_in_out\000"
.LASF14:
	.ascii	"keys_tmp\000"
.LASF29:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF15:
	.ascii	"size\000"
.LASF34:
	.ascii	"__builtin_memset\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF23:
	.ascii	"tsum\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF32:
	.ascii	"memset\000"
.LASF30:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\util\\radixsort.c\000"
.LASF22:
	.ascii	"sum_histograms\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF31:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF16:
	.ascii	"hist\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF25:
	.ascii	"offset\000"
.LASF18:
	.ascii	"keys_in\000"
.LASF19:
	.ascii	"keys_out\000"
.LASF26:
	.ascii	"init_histograms_u32\000"
.LASF21:
	.ascii	"radixpass_u32\000"
.LASF28:
	.ascii	"pos3\000"
.LASF27:
	.ascii	"pos2\000"
.LASF2:
	.ascii	"short int\000"
.LASF33:
	.ascii	"radixsort_upper16keys\000"
.LASF20:
	.ascii	"index\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF12:
	.ascii	"char\000"
.LASF11:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF24:
	.ascii	"bucket\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
