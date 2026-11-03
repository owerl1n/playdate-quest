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
	.file	"wav_ima_adpcm.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util\\wav_ima_adpcm.c"
	.section	.text.wav_decode_state_init,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	wav_decode_state_init
	.syntax unified
	.thumb
	.thumb_func
	.type	wav_decode_state_init, %function
wav_decode_state_init:
.LVL0:
.LFB0:
	.loc 1 31 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 32 2 view .LVU1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:31: {
	.loc 1 31 1 is_stmt 0 view .LVU2
	push	{r4, r5, lr}	@
.LCFI0:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:32: 	state->block = (float*)malloc(desc->samples_per_block * sizeof(float));
	.loc 1 32 36 view .LVU3
	ldr	r4, [r0, #28]	@ _1, desc_7(D)->samples_per_block
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:31: {
	.loc 1 31 1 view .LVU4
	sub	sp, sp, #12	@,,
.LCFI1:
	.cfi_def_cfa_offset 24
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:31: {
	.loc 1 31 1 view .LVU5
	mov	r5, r0	@ desc, desc
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:32: 	state->block = (float*)malloc(desc->samples_per_block * sizeof(float));
	.loc 1 32 25 view .LVU6
	lsls	r0, r4, #2	@, _1,
.LVL1:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:31: {
	.loc 1 31 1 view .LVU7
	str	r1, [sp, #4]	@ state, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:32: 	state->block = (float*)malloc(desc->samples_per_block * sizeof(float));
	.loc 1 32 25 view .LVU8
	bl	malloc		@
.LVL2:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:33: 	state->block_index = -1;
	.loc 1 33 21 view .LVU9
	mov	r2, #-1	@ tmp123,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:35: 	state->block_size_bytes = desc->block_size;
	.loc 1 35 26 view .LVU10
	ldr	r3, [r5, #24]	@ desc_7(D)->block_size, desc_7(D)->block_size
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:32: 	state->block = (float*)malloc(desc->samples_per_block * sizeof(float));
	.loc 1 32 15 discriminator 1 view .LVU11
	ldr	r1, [sp, #4]	@ state, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:35: 	state->block_size_bytes = desc->block_size;
	.loc 1 35 26 view .LVU12
	stm	r1, {r0, r2, r3, r4}	@ state,,,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:36: }
	.loc 1 36 1 view .LVU13
	add	sp, sp, #12	@,,
.LCFI2:
	.cfi_def_cfa_offset 12
	@ sp needed	@
	pop	{r4, r5, pc}	@
	.loc 1 36 1 view .LVU14
	.cfi_endproc
.LFE0:
	.size	wav_decode_state_init, .-wav_decode_state_init
	.section	.text.wav_ima_adpcm_decode,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	wav_ima_adpcm_decode
	.syntax unified
	.thumb
	.thumb_func
	.type	wav_ima_adpcm_decode, %function
wav_ima_adpcm_decode:
.LVL3:
.LFB6:
	.loc 1 113 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 114 2 view .LVU16
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:113: {
	.loc 1 113 1 is_stmt 0 view .LVU17
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI3:
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
	sub	sp, sp, #60	@,,
.LCFI4:
	.cfi_def_cfa_offset 96
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:113: {
	.loc 1 113 1 view .LVU18
	str	r3, [sp, #44]	@ data, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:114: 	while (sample_count > 0)
	.loc 1 114 22 view .LVU19
	subs	r3, r2, #0	@ sample_count, sample_count
.LVL4:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:113: {
	.loc 1 113 1 view .LVU20
	str	r0, [sp, #16]	@ output, %sfp
	str	r1, [sp, #8]	@ sample_pos, %sfp
	.loc 1 114 22 is_stmt 1 view .LVU21
	str	r3, [sp, #12]	@ sample_count, %sfp
	ble	.L4		@,
.LBB47:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:117: 		int block_index = sample_pos / state->samples_per_block;
	.loc 1 117 39 is_stmt 0 view .LVU22
	ldr	r3, [sp, #96]	@ tmp446, state
.LBB48:
.LBB49:
.LBB50:
.LBB51:
.LBB52:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU23
	vldr.32	s13, .L67	@ tmp401,
.LBE52:
.LBE51:
.LBE50:
.LBE49:
.LBE48:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:117: 		int block_index = sample_pos / state->samples_per_block;
	.loc 1 117 39 view .LVU24
	ldr	fp, [r3, #12]	@ _1, *state_35(D).samples_per_block
	ldr	r3, [r3]	@ *state_35(D).block, *state_35(D).block
.LBB206:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:121: 			wav_ima_adpcm_decode_block(state->block, block_ptr, state->samples_per_block);
	.loc 1 121 4 view .LVU25
	asr	r2, fp, #31	@ tmp242, _1,
.LVL5:
.LBB200:
.LBB194:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 31 discriminator 1 view .LVU26
	subs	r1, fp, #2	@ _114, _1,
.LVL6:
	.loc 1 99 31 discriminator 1 view .LVU27
	str	r3, [sp, #20]	@ *state_35(D).block, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:96: 	output++;
	.loc 1 96 8 view .LVU28
	add	r3, r3, #4	@ output, *state_35(D).block,
.LBB57:
.LBB58:
.LBB59:
.LBB60:
.LBB61:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:62: 	if (v < -32768) v = -32768;
	.loc 1 62 5 view .LVU29
	ldr	r10, .L67+12	@ tmp404,
.LBE61:
.LBE60:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 61 view .LVU30
	mov	r0, fp	@ _1, _1
.LVL7:
	.loc 1 81 61 view .LVU31
.LBE59:
.LBE58:
.LBE57:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:96: 	output++;
	.loc 1 96 8 view .LVU32
	str	r3, [sp, #28]	@ output, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 31 discriminator 1 view .LVU33
	sbc	r3, r2, #0	@ _114, tmp242
.LBE194:
.LBE200:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:121: 			wav_ima_adpcm_decode_block(state->block, block_ptr, state->samples_per_block);
	.loc 1 121 4 view .LVU34
	str	r2, [sp, #24]	@ tmp242, %sfp
.LBB201:
.LBB195:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 31 discriminator 1 view .LVU35
	str	r1, [sp]	@ _114, %sfp
	str	r3, [sp, #4]	@ _114, %sfp
.LVL8:
.L29:
	.loc 1 99 31 discriminator 1 view .LVU36
.LBE195:
.LBE201:
.LBE206:
	.loc 1 117 3 is_stmt 1 view .LVU37
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:117: 		int block_index = sample_pos / state->samples_per_block;
	.loc 1 117 7 is_stmt 0 view .LVU38
	ldr	r3, [sp, #8]	@ sample_pos, %sfp
	sdiv	lr, r3, r0	@ tmp356, sample_pos, _1
.LVL9:
	.loc 1 118 3 is_stmt 1 view .LVU39
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:118: 		if (block_index != state->block_index)
	.loc 1 118 6 is_stmt 0 view .LVU40
	ldr	r3, [sp, #96]	@ tmp456, state
	ldr	r3, [r3, #4]	@ *state_35(D).block_index, *state_35(D).block_index
	cmp	r3, lr	@ *state_35(D).block_index, tmp356
	beq	.L6		@,
.LBB207:
	.loc 1 120 4 is_stmt 1 view .LVU41
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:120: 			const uint8_t* block_ptr = (const uint8_t*)data + block_index * state->block_size_bytes;
	.loc 1 120 66 is_stmt 0 view .LVU42
	ldr	r3, [sp, #96]	@ tmp457, state
.LBB202:
.LBB196:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:95: 	output[0] = short_to_float(predict);
	.loc 1 95 12 discriminator 1 view .LVU43
	ldr	r4, [sp, #20]	@ *state_35(D).block, %sfp
.LBE196:
.LBE202:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:120: 			const uint8_t* block_ptr = (const uint8_t*)data + block_index * state->block_size_bytes;
	.loc 1 120 66 view .LVU44
	ldr	r7, [r3, #8]	@ *state_35(D).block_size_bytes, *state_35(D).block_size_bytes
	ldr	r3, [sp, #44]	@ data, %sfp
	mul	r7, r7, lr	@ _4, *state_35(D).block_size_bytes, tmp356
.LBB203:
.LBB197:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:96: 	output++;
	.loc 1 96 8 view .LVU45
	ldr	r5, [sp, #28]	@ output, %sfp
	ldrh	r2, [r3, r7]	@ unaligned	@ predict, MEM <short unsigned int> [(const uint8_t *)block_ptr_38]
.LBE197:
.LBE203:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:120: 			const uint8_t* block_ptr = (const uint8_t*)data + block_index * state->block_size_bytes;
	.loc 1 120 19 view .LVU46
	add	r7, r7, r3	@ block_ptr, data
.LVL10:
	.loc 1 121 4 is_stmt 1 view .LVU47
.LBB204:
.LBI49:
	.loc 1 85 13 view .LVU48
.LBB198:
	.loc 1 87 2 view .LVU49
	.loc 1 89 2 view .LVU50
	.loc 1 90 2 view .LVU51
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:90: 	if (predict & 0x8000)
	.loc 1 90 5 is_stmt 0 view .LVU52
	lsls	r3, r2, #16	@, predict,
.LVL11:
	.loc 1 91 3 is_stmt 1 view .LVU53
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:92: 	int step_index = clamp_step_index(data[2]);
	.loc 1 92 19 is_stmt 0 view .LVU54
	ldrb	r1, [r7, #2]	@ zero_extendqisi2	@ step_index, MEM[(const uint8_t *)block_ptr_38 + 2B]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 16 discriminator 1 view .LVU55
	ldr	r3, [sp]	@ _114, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:97: 	data += 4;
	.loc 1 97 7 view .LVU56
	add	r9, r7, #4	@ data, block_ptr,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:91: 		predict -= 0x10000;
	.loc 1 91 11 view .LVU57
	it	mi
	submi	r2, r2, #65536	@ predict, predict,
.LVL12:
	.loc 1 92 2 is_stmt 1 view .LVU58
.LBB98:
.LBI98:
	.loc 1 55 19 view .LVU59
.LBB99:
	.loc 1 56 2 view .LVU60
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:57: 	else if (v > 88) v = 88;
	.loc 1 57 10 is_stmt 0 view .LVU61
	cmp	r1, #88	@ step_index,
.LBE99:
.LBE98:
.LBB101:
.LBB53:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU62
	vmov	s15, r2	@ int	@ predict, predict
.LBE53:
.LBE101:
.LBB102:
.LBB100:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:57: 	else if (v > 88) v = 88;
	.loc 1 57 10 view .LVU63
	it	ge
	movge	r1, #88	@ step_index,
.LVL13:
	.loc 1 58 2 is_stmt 1 view .LVU64
	.loc 1 58 2 is_stmt 0 view .LVU65
.LBE100:
.LBE102:
	.loc 1 93 1 is_stmt 1 view .LVU66
	.loc 1 95 2 view .LVU67
.LBB103:
.LBI51:
	.loc 1 67 21 view .LVU68
.LBB54:
	.loc 1 69 2 view .LVU69
	.loc 1 69 2 is_stmt 0 view .LVU70
.LBE54:
.LBE103:
	.loc 1 96 2 is_stmt 1 view .LVU71
	.loc 1 97 2 view .LVU72
	.loc 1 99 2 view .LVU73
	.loc 1 99 16 discriminator 1 view .LVU74
	cmp	r3, #2	@ _114,
	ldr	r3, [sp, #4]	@ _114, %sfp
.LBB104:
.LBB55:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 is_stmt 0 view .LVU75
	vcvt.f32.s32	s15, s15	@ _62, predict
.LBE55:
.LBE104:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 16 discriminator 1 view .LVU76
	sbcs	r3, r3, #0	@ tmp416, _114
.LBB105:
.LBB56:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU77
	vmul.f32	s15, s15, s13	@ _63, _62, tmp401
.LBE56:
.LBE105:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:95: 	output[0] = short_to_float(predict);
	.loc 1 95 12 discriminator 1 view .LVU78
	vstr.32	s15, [r4]	@ _63, *_6
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 16 discriminator 1 view .LVU79
	bcc	.L30		@,
	add	r6, r4, #12	@ ivtmp.49, *state_35(D).block,
	adds	r7, r7, #3	@ ivtmp.58, block_ptr,
.LVL14:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 9 view .LVU80
	movs	r4, #1	@ i,
	mov	ip, #0	@ i,
.LBB106:
.LBB107:
.LBB108:
.LBB109:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:63: 	else if (v > 32767) v = 32767;
	.loc 1 63 10 view .LVU81
	movw	r8, #32767	@ tmp270,
	str	lr, [sp, #40]	@ tmp356, %sfp
	strd	r0, r9, [sp, #32]	@ _1, data,,
.LVL15:
.L17:
	.loc 1 63 10 view .LVU82
.LBE109:
.LBE108:
.LBE107:
.LBE106:
	.loc 1 101 3 is_stmt 1 view .LVU83
.LBB142:
.LBB132:
	.loc 1 78 18 discriminator 1 view .LVU84
	.loc 1 79 18 discriminator 1 view .LVU85
.LBE132:
.LBE142:
.LBB143:
.LBB144:
	.loc 1 78 18 discriminator 1 view .LVU86
	.loc 1 79 18 discriminator 1 view .LVU87
.LBE144:
.LBE143:
.LBB173:
.LBB133:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:74: 	int step = kImaStepTable[*step_index];
	.loc 1 74 6 is_stmt 0 view .LVU88
	ldr	r3, .L67+4	@ tmp465,
.LBE133:
.LBE173:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 16 discriminator 1 view .LVU89
	adds	r6, r6, #8	@ ivtmp.49, ivtmp.49,
.LVL16:
.LBB174:
.LBB134:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:74: 	int step = kImaStepTable[*step_index];
	.loc 1 74 6 view .LVU90
	ldr	r5, [r3, r1, lsl #2]	@ step, kImaStepTable[step_index_243]
.LBE134:
.LBE174:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:101: 		*output++ = decode_sample(data[0] & 0xf, &step_index, &predict);
	.loc 1 101 33 view .LVU91
	ldrb	r3, [r7, #1]!	@ zero_extendqisi2	@ _242, MEM[(const uint8_t *)_254]
.LVL17:
.LBB175:
.LBB135:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 discriminator 1 view .LVU92
	asr	r9, r5, #2	@ _236, step,
	tst	r3, #1	@ _242,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:75: 	int diff = step >> 3;
	.loc 1 75 6 view .LVU93
	asr	r0, r5, #3	@ diff, step,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 discriminator 1 view .LVU94
	add	r9, r9, r5, asr #3	@ tmp363, _236, step,
.LBE135:
.LBE175:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:102: 		*output++ = decode_sample(data[0] >> 4, &step_index, &predict);
	.loc 1 102 15 view .LVU95
	lsr	lr, r3, #4	@ _207, _242,
.LBB176:
.LBB136:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 discriminator 1 view .LVU96
	it	ne
	movne	r0, r9	@ diff, tmp363
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:77: 	if (nibble & 2) diff += step >> 1;
	.loc 1 77 23 discriminator 1 view .LVU97
	tst	r3, #2	@ _242,
.LBE136:
.LBE176:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:101: 		*output++ = decode_sample(data[0] & 0xf, &step_index, &predict);
	.loc 1 101 15 view .LVU98
	and	r9, r3, #15	@ _240, _242,
.LVL18:
.LBB177:
.LBI106:
	.loc 1 72 21 is_stmt 1 view .LVU99
.LBB137:
	.loc 1 74 2 view .LVU100
	.loc 1 75 2 view .LVU101
	.loc 1 76 2 view .LVU102
	.loc 1 77 2 view .LVU103
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:77: 	if (nibble & 2) diff += step >> 1;
	.loc 1 77 23 is_stmt 0 discriminator 1 view .LVU104
	add	fp, r0, r5, asr #1	@ tmp381, diff, step,
	it	ne
	movne	r0, fp	@ diff, tmp381
.LVL19:
	.loc 1 78 2 is_stmt 1 view .LVU105
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:78: 	if (nibble & 4) diff += step;
	.loc 1 78 5 is_stmt 0 view .LVU106
	tst	r3, #4	@ _242,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:78: 	if (nibble & 4) diff += step;
	.loc 1 78 23 discriminator 1 view .LVU107
	it	ne
	addne	r0, r0, r5	@ diff, step
.LVL20:
	.loc 1 79 2 is_stmt 1 view .LVU108
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:79: 	if (nibble & 8) diff = -diff;
	.loc 1 79 5 is_stmt 0 view .LVU109
	lsls	r5, r3, #28	@, _242,
.LVL21:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 view .LVU110
	ldr	r5, .L67+8	@ tmp466,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:79: 	if (nibble & 8) diff = -diff;
	.loc 1 79 23 discriminator 1 view .LVU111
	it	mi
	rsbmi	r0, r0, #0	@ diff, diff
.LVL22:
	.loc 1 80 2 is_stmt 1 view .LVU112
.LBB114:
.LBI108:
	.loc 1 61 19 view .LVU113
.LBB110:
	.loc 1 62 2 view .LVU114
.LBE110:
.LBE114:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 is_stmt 0 view .LVU115
	ldr	r5, [r5, r9, lsl #2]	@ kImaIndexTable[_240], kImaIndexTable[_240]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:80: 	*predict = clamp_predict(*predict + diff);
	.loc 1 80 13 view .LVU116
	add	r2, r2, r0	@ _221, diff
.LVL23:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 view .LVU117
	adds	r0, r1, r5	@ _212, step_index, kImaIndexTable[_240]
.LVL24:
	.loc 1 81 16 view .LVU118
.LBE137:
.LBE177:
.LBB178:
.LBB163:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:74: 	int step = kImaStepTable[*step_index];
	.loc 1 74 6 view .LVU119
	ldr	r1, .L67+4	@ tmp468,
.LVL25:
	.loc 1 74 6 view .LVU120
.LBE163:
.LBE178:
.LBB179:
.LBB138:
.LBB115:
.LBB111:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:63: 	else if (v > 32767) v = 32767;
	.loc 1 63 10 view .LVU121
	cmp	r2, r8	@ _221, tmp270
	.loc 1 63 10 view .LVU122
	it	ge
	movge	r2, r8	@ _221, tmp270
.LVL26:
	.loc 1 63 10 view .LVU123
.LBE111:
.LBE115:
.LBB116:
.LBB117:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:57: 	else if (v > 88) v = 88;
	.loc 1 57 10 view .LVU124
	cmp	r0, #88	@ _212,
	it	ge
	movge	r0, #88	@ _212,
.LBE117:
.LBE116:
.LBB120:
.LBB112:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:62: 	if (v < -32768) v = -32768;
	.loc 1 62 5 view .LVU125
	cmp	r2, r10	@ _221, tmp404
.LBE112:
.LBE120:
.LBB121:
.LBB118:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:56: 	if (v < 0) v = 0;
	.loc 1 56 5 view .LVU126
	bic	r0, r0, r0, asr #31	@ _212, _212
.LBE118:
.LBE121:
.LBB122:
.LBB113:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:62: 	if (v < -32768) v = -32768;
	.loc 1 62 5 view .LVU127
	it	lt
	movlt	r2, r10	@ _221, tmp404
	.loc 1 64 2 is_stmt 1 view .LVU128
.LVL27:
	.loc 1 64 2 is_stmt 0 view .LVU129
.LBE113:
.LBE122:
	.loc 1 81 2 is_stmt 1 view .LVU130
.LBB123:
.LBI116:
	.loc 1 55 19 view .LVU131
.LBB119:
	.loc 1 56 2 view .LVU132
	.loc 1 58 2 view .LVU133
	.loc 1 58 2 is_stmt 0 view .LVU134
.LBE119:
.LBE123:
	.loc 1 82 2 is_stmt 1 view .LVU135
.LBB124:
.LBI124:
	.loc 1 67 21 view .LVU136
.LBB125:
	.loc 1 69 2 view .LVU137
	.loc 1 69 2 is_stmt 0 view .LVU138
.LBE125:
.LBE124:
.LBE138:
.LBE179:
.LBB180:
.LBB164:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 discriminator 1 view .LVU139
	tst	r3, #16	@ _242,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:74: 	int step = kImaStepTable[*step_index];
	.loc 1 74 6 view .LVU140
	ldr	r1, [r1, r0, lsl #2]	@ step, kImaStepTable[_212]
.LBE164:
.LBE180:
.LBB181:
.LBB139:
.LBB129:
.LBB126:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU141
	vmov	s15, r2	@ int	@ _221, _221
.LBE126:
.LBE129:
.LBE139:
.LBE181:
.LBB182:
.LBB165:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 discriminator 1 view .LVU142
	asr	r9, r1, #2	@ _172, step,
.LBE165:
.LBE182:
.LBB183:
.LBB140:
.LBB130:
.LBB127:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU143
	vcvt.f32.s32	s15, s15	@ _210, _221
.LBE127:
.LBE130:
.LBE140:
.LBE183:
.LBB184:
.LBB166:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:75: 	int diff = step >> 3;
	.loc 1 75 6 view .LVU144
	asr	r5, r1, #3	@ diff, step,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 discriminator 1 view .LVU145
	add	r9, r9, r1, asr #3	@ tmp369, _172, step,
.LBE166:
.LBE184:
.LBB185:
.LBB141:
.LBB131:
.LBB128:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU146
	vmul.f32	s15, s15, s13	@ _209, _210, tmp401
.LBE128:
.LBE131:
.LBE141:
.LBE185:
.LBB186:
.LBB167:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 discriminator 1 view .LVU147
	it	ne
	movne	r5, r9	@ diff, tmp369
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:77: 	if (nibble & 2) diff += step >> 1;
	.loc 1 77 23 discriminator 1 view .LVU148
	tst	r3, #32	@ _242,
	add	r9, r5, r1, asr #1	@ tmp387, diff, step,
.LBE167:
.LBE186:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:101: 		*output++ = decode_sample(data[0] & 0xf, &step_index, &predict);
	.loc 1 101 13 discriminator 1 view .LVU149
	vstr.32	s15, [r6, #-16]	@ _209, MEM[(float *)_139 + 4294967288B]
	.loc 1 102 3 is_stmt 1 view .LVU150
.LVL28:
.LBB187:
.LBI143:
	.loc 1 72 21 view .LVU151
.LBB168:
	.loc 1 74 2 view .LVU152
	.loc 1 75 2 view .LVU153
	.loc 1 76 2 view .LVU154
	.loc 1 77 2 view .LVU155
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:77: 	if (nibble & 2) diff += step >> 1;
	.loc 1 77 23 is_stmt 0 discriminator 1 view .LVU156
	it	ne
	movne	r5, r9	@ diff, tmp387
.LVL29:
	.loc 1 78 2 is_stmt 1 view .LVU157
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:78: 	if (nibble & 4) diff += step;
	.loc 1 78 5 is_stmt 0 view .LVU158
	lsls	r3, r3, #25	@, _242,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 view .LVU159
	ldr	r3, .L67+8	@ tmp469,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:78: 	if (nibble & 4) diff += step;
	.loc 1 78 23 discriminator 1 view .LVU160
	it	mi
	addmi	r5, r5, r1	@ diff, step
.LVL30:
	.loc 1 79 2 is_stmt 1 view .LVU161
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:79: 	if (nibble & 8) diff = -diff;
	.loc 1 79 5 is_stmt 0 view .LVU162
	tst	lr, #8	@ _207,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 view .LVU163
	ldr	r1, [r3, lr, lsl #2]	@ kImaIndexTable[_206], kImaIndexTable[_206]
.LVL31:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:79: 	if (nibble & 8) diff = -diff;
	.loc 1 79 23 discriminator 1 view .LVU164
	it	ne
	rsbne	r5, r5, #0	@ diff, diff
.LVL32:
	.loc 1 80 2 is_stmt 1 view .LVU165
.LBB145:
.LBI145:
	.loc 1 61 19 view .LVU166
.LBB146:
	.loc 1 62 2 view .LVU167
.LBE146:
.LBE145:
.LBE168:
.LBE187:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 16 is_stmt 0 discriminator 1 view .LVU168
	ldr	r3, [sp]	@ _114, %sfp
.LBB188:
.LBB169:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 view .LVU169
	add	r1, r1, r0	@ step_index, _212
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:80: 	*predict = clamp_predict(*predict + diff);
	.loc 1 80 13 view .LVU170
	add	r2, r2, r5	@ predict, diff
.LVL33:
.LBB149:
.LBB147:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:63: 	else if (v > 32767) v = 32767;
	.loc 1 63 10 view .LVU171
	cmp	r2, r8	@ predict, tmp270
	it	ge
	movge	r2, r8	@ predict, tmp270
.LVL34:
	.loc 1 63 10 view .LVU172
.LBE147:
.LBE149:
.LBB150:
.LBB151:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:57: 	else if (v > 88) v = 88;
	.loc 1 57 10 view .LVU173
	cmp	r1, #88	@ step_index,
	it	ge
	movge	r1, #88	@ step_index,
.LBE151:
.LBE150:
.LBB154:
.LBB148:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:62: 	if (v < -32768) v = -32768;
	.loc 1 62 5 view .LVU174
	cmp	r2, r10	@ predict, tmp404
	it	lt
	movlt	r2, r10	@ predict, tmp404
	.loc 1 64 2 is_stmt 1 view .LVU175
.LVL35:
	.loc 1 64 2 is_stmt 0 view .LVU176
.LBE148:
.LBE154:
	.loc 1 81 2 is_stmt 1 view .LVU177
.LBB155:
.LBI150:
	.loc 1 55 19 view .LVU178
.LBB152:
	.loc 1 56 2 view .LVU179
.LBE152:
.LBE155:
.LBE169:
.LBE188:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 38 is_stmt 0 discriminator 3 view .LVU180
	adds	r4, r4, #2	@ i_283, i,
.LVL36:
.LBB189:
.LBB170:
.LBB156:
.LBB153:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:56: 	if (v < 0) v = 0;
	.loc 1 56 5 view .LVU181
	bic	r1, r1, r1, asr #31	@ step_index, step_index
	.loc 1 58 2 is_stmt 1 view .LVU182
.LVL37:
	.loc 1 58 2 is_stmt 0 view .LVU183
.LBE153:
.LBE156:
	.loc 1 82 2 is_stmt 1 view .LVU184
.LBB157:
.LBI157:
	.loc 1 67 21 view .LVU185
.LBB158:
	.loc 1 69 2 view .LVU186
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 is_stmt 0 view .LVU187
	vmov	s15, r2	@ int	@ predict, predict
.LBE158:
.LBE157:
.LBE170:
.LBE189:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 38 discriminator 3 view .LVU188
	adc	ip, ip, #0	@ i, i
.LVL38:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 16 discriminator 1 view .LVU189
	cmp	r4, r3	@ i, _114
	ldr	r3, [sp, #4]	@ _114, %sfp
.LBB190:
.LBB171:
.LBB161:
.LBB159:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU190
	vcvt.f32.s32	s15, s15	@ _24, predict
.LBE159:
.LBE161:
.LBE171:
.LBE190:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 16 discriminator 1 view .LVU191
	sbcs	r3, ip, r3	@ tmp417, i, _114
.LBB191:
.LBB172:
.LBB162:
.LBB160:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU192
	vmul.f32	s15, s15, s13	@ _280, _24, tmp401
.LBE160:
.LBE162:
.LBE172:
.LBE191:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:102: 		*output++ = decode_sample(data[0] >> 4, &step_index, &predict);
	.loc 1 102 13 discriminator 1 view .LVU193
	vstr.32	s15, [r6, #-12]	@ _280, MEM[(float *)_139 + 4294967292B]
	.loc 1 103 3 is_stmt 1 view .LVU194
.LVL39:
	.loc 1 99 38 discriminator 3 view .LVU195
	.loc 1 99 16 discriminator 1 view .LVU196
	bcc	.L17		@,
	ldr	r4, [sp, #28]	@ output, %sfp
.LVL40:
	.loc 1 99 16 is_stmt 0 discriminator 1 view .LVU197
	ldr	lr, [sp, #40]	@ tmp356, %sfp
	add	r5, r4, #8	@ _51, output,
	ldr	r4, [sp, #24]	@ tmp242, %sfp
	ldrd	r0, r9, [sp, #32]	@ _1, data,,
	subs	r3, r0, #4	@ _261, _1,
	sbc	ip, r4, #0	@ _261, tmp242
	lsrs	r4, r3, #1	@ _268, _261,
	bic	r3, r3, #1	@ _260, _261,
	orr	r4, r4, ip, lsl #31	@ _268, _268, _261,
	adds	r3, r3, #3	@ ivtmp.43, _260,
	add	r5, r5, r4, lsl #3	@ output, _51, _268,
	add	r4, r4, #1	@ _52, _268,
	adc	ip, ip, #0	@ ivtmp.43, _261
	add	r9, r9, r4	@ data, _52
.LVL41:
.L8:
	.loc 1 106 2 is_stmt 1 view .LVU198
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:106: 	int nib[2] = { data[0] & 0xf, data[0] >> 4 };
	.loc 1 106 21 is_stmt 0 view .LVU199
	ldrb	r4, [r9]	@ zero_extendqisi2	@ _80, *data_89
	add	r8, sp, #48	@ ivtmp.47,,
	str	lr, [sp, #32]	@ tmp356, %sfp
.LBB192:
.LBB92:
.LBB86:
.LBB67:
.LBB62:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:63: 	else if (v > 32767) v = 32767;
	.loc 1 63 10 view .LVU200
	movw	fp, #32767	@ tmp397,
.LBE62:
.LBE67:
.LBE86:
.LBE92:
.LBE192:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:106: 	int nib[2] = { data[0] & 0xf, data[0] >> 4 };
	.loc 1 106 25 view .LVU201
	and	r6, r4, #15	@ tmp309, _80,
	add	lr, r5, #8	@ _294, ivtmp.44,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:106: 	int nib[2] = { data[0] & 0xf, data[0] >> 4 };
	.loc 1 106 40 view .LVU202
	lsrs	r4, r4, #4	@ tmp311, _80,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:106: 	int nib[2] = { data[0] & 0xf, data[0] >> 4 };
	.loc 1 106 25 view .LVU203
	str	r6, [sp, #48]	@ tmp309, nib[0]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:106: 	int nib[2] = { data[0] & 0xf, data[0] >> 4 };
	.loc 1 106 40 view .LVU204
	str	r4, [sp, #52]	@ tmp311, nib[1]
	.loc 1 107 2 is_stmt 1 view .LVU205
.LBB193:
	.loc 1 107 7 view .LVU206
.LVL42:
	.loc 1 107 26 discriminator 1 view .LVU207
.L18:
	.loc 1 108 3 view .LVU208
.LBB93:
.LBB87:
	.loc 1 78 18 discriminator 1 view .LVU209
	.loc 1 79 18 discriminator 1 view .LVU210
	.loc 1 79 18 is_stmt 0 discriminator 1 view .LVU211
.LBE87:
.LBE93:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:107: 	for (int j = 0; (j < 2) && ((i + j) < sample_count); ++j) {
	.loc 1 107 26 discriminator 3 view .LVU212
	cmp	r3, r0	@ ivtmp.43, _1
	ldr	r4, [sp, #24]	@ tmp242, %sfp
	sbcs	r4, ip, r4	@ tmp418, ivtmp.43, tmp242
	bcs	.L66		@,
.LBB94:
.LBB88:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:74: 	int step = kImaStepTable[*step_index];
	.loc 1 74 6 view .LVU213
	ldr	r4, .L67+4	@ tmp475,
.LBE88:
.LBE94:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:108: 		*output++ = decode_sample(nib[j], &step_index, &predict);
	.loc 1 108 15 view .LVU214
	ldr	r6, [r8], #4	@ _86, MEM[(int *)_295]
.LVL43:
.LBB95:
.LBI58:
	.loc 1 72 21 is_stmt 1 view .LVU215
.LBB89:
	.loc 1 74 2 view .LVU216
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:74: 	int step = kImaStepTable[*step_index];
	.loc 1 74 6 is_stmt 0 view .LVU217
	ldr	r7, [r4, r1, lsl #2]	@ step, kImaStepTable[step_index_220]
.LVL44:
	.loc 1 75 2 is_stmt 1 view .LVU218
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 is_stmt 0 discriminator 1 view .LVU219
	tst	r6, #1	@ _86,
	asr	r9, r7, #2	@ _155, step,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:75: 	int diff = step >> 3;
	.loc 1 75 6 view .LVU220
	asr	r4, r7, #3	@ diff, step,
.LVL45:
	.loc 1 76 2 is_stmt 1 view .LVU221
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:76: 	if (nibble & 1) diff += step >> 2;
	.loc 1 76 23 is_stmt 0 discriminator 1 view .LVU222
	add	r9, r9, r7, asr #3	@ tmp375, _155, step,
	it	ne
	movne	r4, r9	@ diff, tmp375
.LVL46:
	.loc 1 77 2 is_stmt 1 view .LVU223
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:77: 	if (nibble & 2) diff += step >> 1;
	.loc 1 77 23 is_stmt 0 discriminator 1 view .LVU224
	tst	r6, #2	@ _86,
	add	r9, r4, r7, asr #1	@ tmp393, diff, step,
	it	ne
	movne	r4, r9	@ diff, tmp393
.LVL47:
	.loc 1 78 2 is_stmt 1 view .LVU225
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:78: 	if (nibble & 4) diff += step;
	.loc 1 78 5 is_stmt 0 view .LVU226
	tst	r6, #4	@ _86,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:78: 	if (nibble & 4) diff += step;
	.loc 1 78 23 discriminator 1 view .LVU227
	it	ne
	addne	r4, r4, r7	@ diff, step
.LVL48:
	.loc 1 79 2 is_stmt 1 view .LVU228
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:79: 	if (nibble & 8) diff = -diff;
	.loc 1 79 5 is_stmt 0 view .LVU229
	lsls	r7, r6, #28	@, _86,
.LVL49:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:79: 	if (nibble & 8) diff = -diff;
	.loc 1 79 23 discriminator 1 view .LVU230
	it	mi
	rsbmi	r4, r4, #0	@ diff, diff
.LVL50:
	.loc 1 80 2 is_stmt 1 view .LVU231
.LBB68:
.LBI60:
	.loc 1 61 19 view .LVU232
.LBB63:
	.loc 1 62 2 view .LVU233
.LBE63:
.LBE68:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:80: 	*predict = clamp_predict(*predict + diff);
	.loc 1 80 13 is_stmt 0 view .LVU234
	add	r2, r2, r4	@ predict, diff
.LVL51:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 view .LVU235
	ldr	r4, .L67+8	@ tmp476,
.LVL52:
.LBB69:
.LBB64:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:63: 	else if (v > 32767) v = 32767;
	.loc 1 63 10 view .LVU236
	cmp	r2, fp	@ predict, tmp397
.LVL53:
	.loc 1 63 10 view .LVU237
.LBE64:
.LBE69:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 view .LVU238
	ldr	r4, [r4, r6, lsl #2]	@ kImaIndexTable[_86], kImaIndexTable[_86]
.LBB70:
.LBB65:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:63: 	else if (v > 32767) v = 32767;
	.loc 1 63 10 view .LVU239
	it	ge
	movge	r2, fp	@ predict, tmp397
.LVL54:
	.loc 1 63 10 view .LVU240
.LBE65:
.LBE70:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:81: 	*step_index = clamp_step_index(*step_index + kImaIndexTable[nibble]);
	.loc 1 81 16 view .LVU241
	add	r1, r1, r4	@ step_index, kImaIndexTable[_86]
.LVL55:
.LBB71:
.LBB66:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:62: 	if (v < -32768) v = -32768;
	.loc 1 62 5 view .LVU242
	cmp	r2, r10	@ predict, tmp404
	it	lt
	movlt	r2, r10	@ predict, tmp404
	.loc 1 64 2 is_stmt 1 view .LVU243
.LVL56:
	.loc 1 64 2 is_stmt 0 view .LVU244
.LBE66:
.LBE71:
	.loc 1 81 2 is_stmt 1 view .LVU245
.LBB72:
.LBI72:
	.loc 1 55 19 view .LVU246
.LBB73:
	.loc 1 56 2 view .LVU247
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:57: 	else if (v > 88) v = 88;
	.loc 1 57 10 is_stmt 0 view .LVU248
	cmp	r1, #88	@ step_index,
.LBE73:
.LBE72:
.LBB76:
.LBB77:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU249
	vmov	s15, r2	@ int	@ predict, predict
.LBE77:
.LBE76:
.LBB81:
.LBB74:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:57: 	else if (v > 88) v = 88;
	.loc 1 57 10 view .LVU250
	it	ge
	movge	r1, #88	@ step_index,
.LBE74:
.LBE81:
.LBE89:
.LBE95:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:107: 	for (int j = 0; (j < 2) && ((i + j) < sample_count); ++j) {
	.loc 1 107 26 discriminator 1 view .LVU251
	adds	r3, r3, #1	@ ivtmp.43_211, ivtmp.43,
.LBB96:
.LBB90:
.LBB82:
.LBB78:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU252
	vcvt.f32.s32	s15, s15	@ _178, predict
.LBE78:
.LBE82:
.LBB83:
.LBB75:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:56: 	if (v < 0) v = 0;
	.loc 1 56 5 view .LVU253
	bic	r1, r1, r1, asr #31	@ step_index, step_index
	.loc 1 58 2 is_stmt 1 view .LVU254
.LVL57:
	.loc 1 58 2 is_stmt 0 view .LVU255
.LBE75:
.LBE83:
	.loc 1 82 2 is_stmt 1 view .LVU256
.LBB84:
.LBI76:
	.loc 1 67 21 view .LVU257
.LBB79:
	.loc 1 69 2 view .LVU258
	.loc 1 69 2 is_stmt 0 view .LVU259
.LBE79:
.LBE84:
.LBE90:
.LBE96:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:107: 	for (int j = 0; (j < 2) && ((i + j) < sample_count); ++j) {
	.loc 1 107 26 discriminator 1 view .LVU260
	adc	ip, ip, #0	@ ivtmp.43, ivtmp.43
.LBB97:
.LBB91:
.LBB85:
.LBB80:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:69: 	return v * (1.0f / 32767.0f);
	.loc 1 69 11 view .LVU261
	vmul.f32	s15, s15, s13	@ _179, _178, tmp401
.LBE80:
.LBE85:
.LBE91:
.LBE97:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:108: 		*output++ = decode_sample(nib[j], &step_index, &predict);
	.loc 1 108 13 discriminator 1 view .LVU262
	vstmia.32	r5!, {s15}	@ ivtmp.44, _179
.LVL58:
	.loc 1 107 55 is_stmt 1 discriminator 4 view .LVU263
	.loc 1 107 26 discriminator 1 view .LVU264
	cmp	r5, lr	@ ivtmp.44, _294
	bne	.L18		@,
.LVL59:
.L66:
	.loc 1 107 26 is_stmt 0 discriminator 1 view .LVU265
	ldr	lr, [sp, #32]	@ tmp356, %sfp
.LVL60:
	.loc 1 107 26 discriminator 1 view .LVU266
.LBE193:
.LBE198:
.LBE204:
	.loc 1 122 4 is_stmt 1 view .LVU267
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:122: 			state->block_index = block_index;
	.loc 1 122 23 is_stmt 0 view .LVU268
	ldr	r3, [sp, #96]	@ tmp478, state
	str	lr, [r3, #4]	@ tmp356, *state_35(D).block_index
.LVL61:
.L6:
	.loc 1 122 23 view .LVU269
.LBE207:
	.loc 1 126 3 is_stmt 1 view .LVU270
	ldr	r3, [sp, #8]	@ sample_pos, %sfp
	mls	lr, r0, lr, r3	@ _215, _1, tmp356, sample_pos
.LVL62:
	.loc 1 127 3 view .LVU271
	.loc 1 128 3 view .LVU272
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:128: 		if (samples_to_write > sample_count)
	.loc 1 128 6 is_stmt 0 view .LVU273
	ldr	r3, [sp, #12]	@ sample_count, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:127: 		int samples_to_write = state->samples_per_block - pos_in_block;
	.loc 1 127 7 view .LVU274
	sub	r2, r0, lr	@ samples_to_write_42, _1, _215
.LVL63:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:128: 		if (samples_to_write > sample_count)
	.loc 1 128 6 view .LVU275
	cmp	r2, r3	@ samples_to_write_42, sample_count
	it	ge
	movge	r2, r3	@ _7, sample_count
.LVL64:
	.loc 1 131 3 is_stmt 1 view .LVU276
.LBB208:
	.loc 1 131 8 view .LVU277
	.loc 1 131 21 discriminator 1 view .LVU278
	cmp	r2, #0	@ _7,
	ble	.L25		@,
	ldrd	r3, r1, [sp, #16]	@ ivtmp.30, *state_35(D).block,,
	add	lr, r1, lr, lsl #2	@ ivtmp.32, *state_35(D).block, _215,
.LVL65:
	.loc 1 131 21 is_stmt 0 discriminator 1 view .LVU279
	add	r1, r3, r2, lsl #2	@ output, ivtmp.30, _7,
.LVL66:
.L26:
	.loc 1 133 4 is_stmt 1 view .LVU280
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:133: 			output[i] += state->block[pos_in_block + i] * volume;
	.loc 1 133 10 is_stmt 0 view .LVU281
	vldr.32	s15, [r3]	@ _13, MEM[(float *)_69]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:133: 			output[i] += state->block[pos_in_block + i] * volume;
	.loc 1 133 29 view .LVU282
	vldmia.32	lr!, {s14}	@ ivtmp.32, _19
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:133: 			output[i] += state->block[pos_in_block + i] * volume;
	.loc 1 133 14 view .LVU283
	vfma.f32	s15, s14, s0	@ tmp335, _19, volume
	vstmia.32	r3!, {s15}	@ ivtmp.30, tmp335
	.loc 1 131 41 is_stmt 1 discriminator 3 view .LVU284
	.loc 1 131 21 discriminator 1 view .LVU285
	cmp	r3, r1	@ ivtmp.30, output
	bne	.L26		@,
.LBE208:
	.loc 1 137 3 view .LVU286
.LVL67:
	.loc 1 138 3 view .LVU287
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:138: 		sample_count -= samples_to_write;
	.loc 1 138 16 is_stmt 0 view .LVU288
	ldr	r1, [sp, #12]	@ sample_count, %sfp
	subs	r1, r1, r2	@ sample_count, sample_count, _7
.LBE47:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:114: 	while (sample_count > 0)
	.loc 1 114 22 view .LVU289
	cmp	r1, #0	@ sample_count,
.LBB210:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:138: 		sample_count -= samples_to_write;
	.loc 1 138 16 view .LVU290
	str	r1, [sp, #12]	@ sample_count, %sfp
.LVL68:
	.loc 1 139 3 is_stmt 1 view .LVU291
	.loc 1 139 3 is_stmt 0 view .LVU292
.LBE210:
	.loc 1 114 22 is_stmt 1 view .LVU293
	ble	.L4		@,
.LBB211:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:137: 		sample_pos += samples_to_write;
	.loc 1 137 14 is_stmt 0 view .LVU294
	ldr	r1, [sp, #8]	@ sample_pos, %sfp
.LVL69:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:139: 		output += samples_to_write;
	.loc 1 139 10 view .LVU295
	str	r3, [sp, #16]	@ ivtmp.30, %sfp
.LVL70:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:137: 		sample_pos += samples_to_write;
	.loc 1 137 14 view .LVU296
	add	r1, r1, r2	@ sample_pos, _7
.LVL71:
	.loc 1 137 14 view .LVU297
	str	r1, [sp, #8]	@ sample_pos, %sfp
.LVL72:
	.loc 1 137 14 view .LVU298
	b	.L29		@
.LVL73:
.L4:
	.loc 1 137 14 view .LVU299
.LBE211:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:141: }
	.loc 1 141 1 view .LVU300
	add	sp, sp, #60	@,,
.LCFI5:
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL74:
.L25:
.LCFI6:
	.cfi_restore_state
.LBB212:
	.loc 1 137 3 is_stmt 1 view .LVU301
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:137: 		sample_pos += samples_to_write;
	.loc 1 137 14 is_stmt 0 view .LVU302
	ldr	r3, [sp, #8]	@ sample_pos, %sfp
	add	r3, r3, r2	@ sample_pos, _7
	str	r3, [sp, #8]	@ sample_pos, %sfp
.LVL75:
	.loc 1 138 3 is_stmt 1 view .LVU303
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:138: 		sample_count -= samples_to_write;
	.loc 1 138 16 is_stmt 0 view .LVU304
	ldr	r3, [sp, #12]	@ sample_count, %sfp
.LVL76:
	.loc 1 138 16 view .LVU305
	subs	r3, r3, r2	@ sample_count, sample_count, _7
	str	r3, [sp, #12]	@ sample_count, %sfp
.LVL77:
	.loc 1 139 3 is_stmt 1 view .LVU306
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:139: 		output += samples_to_write;
	.loc 1 139 10 is_stmt 0 view .LVU307
	ldr	r3, [sp, #16]	@ output, %sfp
.LVL78:
	.loc 1 139 10 view .LVU308
	add	r3, r3, r2, lsl #2	@ output, output, _7,
.LVL79:
	.loc 1 139 10 view .LVU309
	str	r3, [sp, #16]	@ output, %sfp
	.loc 1 139 10 view .LVU310
.LBE212:
	.loc 1 114 22 is_stmt 1 view .LVU311
	b	.L29		@
.LVL80:
.L30:
.LBB213:
.LBB209:
.LBB205:
.LBB199:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:99: 	for (i = 1; i < sample_count - 2; i += 2)
	.loc 1 99 9 is_stmt 0 view .LVU312
	movs	r3, #1	@ ivtmp.43,
	mov	ip, #0	@ ivtmp.43,
	b	.L8		@
.L68:
	.align	2
.L67:
	.word	939524352
	.word	kImaStepTable
	.word	kImaIndexTable
	.word	-32768
.LBE199:
.LBE205:
.LBE209:
.LBE213:
	.cfi_endproc
.LFE6:
	.size	wav_ima_adpcm_decode, .-wav_ima_adpcm_decode
	.section	.text.wav_parse_header,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	wav_parse_header
	.syntax unified
	.thumb
	.thumb_func
	.type	wav_parse_header, %function
wav_parse_header:
.LVL81:
.LFB7:
	.loc 1 144 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 145 2 view .LVU314
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:145: 	if (data == NULL || res == NULL || data_size < 44)
	.loc 1 145 33 is_stmt 0 discriminator 1 view .LVU315
	cmp	r2, #0	@ res,
	it	ne		@
	cmpne	r1, #43	@, data_size,
	bls	.L94		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:144: {
	.loc 1 144 1 view .LVU316
	push	{r3, r4, r5, lr}	@
.LCFI7:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:145: 	if (data == NULL || res == NULL || data_size < 44)
	.loc 1 145 33 discriminator 1 view .LVU317
	clz	r3, r0	@ _1, data
	lsrs	r3, r3, #5	@ _1, _1,
	cbz	r0, .L73	@ data,
	.loc 1 148 2 is_stmt 1 view .LVU318
.LVL82:
	.loc 1 149 2 view .LVU319
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:149: 	if (chunk->id != WAV_FOURCC('R', 'I', 'F', 'F'))
	.loc 1 149 5 is_stmt 0 view .LVU320
	ldr	r1, .L99	@ tmp169,
.LVL83:
	.loc 1 149 5 view .LVU321
	ldr	r4, [r0]	@ tmp223, MEM[(const struct wav_chunk *)data_52(D)].id
	cmp	r4, r1	@ tmp223, tmp169
	bne	.L73		@,
	.loc 1 152 2 is_stmt 1 view .LVU322
.LVL84:
	.loc 1 153 2 view .LVU323
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:153: 	if (riff->format != WAV_FOURCC('W', 'A', 'V', 'E'))
	.loc 1 153 5 is_stmt 0 view .LVU324
	sub	r1, r1, #15728640	@ tmp171, tmp171,
	ldr	r4, [r0, #8]	@ tmp224, MEM[(const struct wav_riff *)data_52(D) + 8B].format
	subw	r1, r1, #2043	@ tmp171, tmp171,
	cmp	r4, r1	@ tmp224, tmp171
	bne	.L73		@,
	.loc 1 156 2 is_stmt 1 view .LVU325
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:162: 	chunk = (const wav_chunk*)&riff[1];
	.loc 1 162 8 is_stmt 0 view .LVU326
	adds	r0, r0, #12	@ chunk, data,
.LVL85:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:160: 	const wav_format* format = NULL;
	.loc 1 160 20 view .LVU327
	mov	r5, r3	@ format, _1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:166: 		if (chunk->id == WAV_FOURCC('f', 'm', 't', ' '))
	.loc 1 166 6 view .LVU328
	ldr	ip, .L99+8	@ tmp176,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:174: 		else if (chunk->id == WAV_FOURCC('f', 'a', 'c', 't'))
	.loc 1 174 11 view .LVU329
	ldr	lr, .L99+12	@ tmp215,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:156: 	res->sample_count = 0;
	.loc 1 156 20 view .LVU330
	str	r3, [r2, #8]	@ _1, res_53(D)->sample_count
	.loc 1 157 2 is_stmt 1 view .LVU331
	.loc 1 158 2 view .LVU332
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:158: 	res->block_size = 0;
	.loc 1 158 18 is_stmt 0 view .LVU333
	strd	r3, r3, [r2, #24]	@ _1, _1, res,
	.loc 1 160 2 is_stmt 1 view .LVU334
.LVL86:
	.loc 1 162 2 view .LVU335
	.loc 1 162 2 is_stmt 0 view .LVU336
	b	.L79		@
.LVL87:
.L74:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:174: 		else if (chunk->id == WAV_FOURCC('f', 'a', 'c', 't'))
	.loc 1 174 11 view .LVU337
	cmp	r1, lr	@ _6, tmp215
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:176: 			if (chunk->size != 4)
	.loc 1 176 13 view .LVU338
	ldr	r3, [r0, #4]	@ prephitmp_81, chunk_44->size
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:174: 		else if (chunk->id == WAV_FOURCC('f', 'a', 'c', 't'))
	.loc 1 174 11 view .LVU339
	beq	.L97		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:180: 		else if (chunk->id == WAV_FOURCC('d', 'a', 't', 'a'))
	.loc 1 180 11 view .LVU340
	ldr	r4, .L99+4	@ tmp226,
	cmp	r1, r4	@ _6, tmp226
	beq	.L98		@,
.L77:
	.loc 1 186 3 is_stmt 1 view .LVU341
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:186: 		chunk = (const wav_chunk*)((const uint8_t*)&chunk[1] + chunk->size);
	.loc 1 186 56 is_stmt 0 view .LVU342
	adds	r3, r3, #8	@ _17, prephitmp_81,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:186: 		chunk = (const wav_chunk*)((const uint8_t*)&chunk[1] + chunk->size);
	.loc 1 186 9 view .LVU343
	add	r0, r0, r3	@ chunk, _17
.LVL88:
	.loc 1 164 8 is_stmt 1 view .LVU344
.L79:
	.loc 1 164 2 view .LVU345
	.loc 1 166 3 view .LVU346
	.loc 1 174 8 view .LVU347
	.loc 1 180 8 view .LVU348
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:166: 		if (chunk->id == WAV_FOURCC('f', 'm', 't', ' '))
	.loc 1 166 12 is_stmt 0 view .LVU349
	ldr	r1, [r0]	@ _6, chunk_44->id
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:166: 		if (chunk->id == WAV_FOURCC('f', 'm', 't', ' '))
	.loc 1 166 6 view .LVU350
	cmp	r1, ip	@ _6, tmp176
	bne	.L74		@,
	.loc 1 168 4 is_stmt 1 view .LVU351
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:169: 			if (format->format == 0x11 && chunk->size == 20) // IMA ADPCM
	.loc 1 169 7 is_stmt 0 view .LVU352
	ldrh	r1, [r0, #8]	@ MEM[(const struct wav_format *)chunk_44 + 8B].format, MEM[(const struct wav_format *)chunk_44 + 8B].format
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:168: 			format = (const wav_format*)&chunk[1];
	.loc 1 168 11 view .LVU353
	add	r5, r0, #8	@ format, chunk,
.LVL89:
	.loc 1 169 4 is_stmt 1 view .LVU354
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:169: 			if (format->format == 0x11 && chunk->size == 20) // IMA ADPCM
	.loc 1 169 39 is_stmt 0 discriminator 1 view .LVU355
	ldr	r3, [r0, #4]	@ prephitmp_81, chunk_44->size
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:169: 			if (format->format == 0x11 && chunk->size == 20) // IMA ADPCM
	.loc 1 169 7 view .LVU356
	cmp	r1, #17	@ MEM[(const struct wav_format *)chunk_44 + 8B].format,
	bne	.L77		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:169: 			if (format->format == 0x11 && chunk->size == 20) // IMA ADPCM
	.loc 1 169 31 discriminator 1 view .LVU357
	cmp	r3, #20	@ prephitmp_81,
	bne	.L77		@,
	.loc 1 171 5 is_stmt 1 view .LVU358
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:171: 				res->samples_per_block = ((const uint16_t*)&format[1])[1];
	.loc 1 171 59 is_stmt 0 view .LVU359
	ldrh	r1, [r0, #26]	@ MEM[(const uint16_t *)chunk_44 + 26B], MEM[(const uint16_t *)chunk_44 + 26B]
	str	r1, [r2, #28]	@ MEM[(const uint16_t *)chunk_44 + 26B], res_53(D)->samples_per_block
	b	.L77		@
.LVL90:
.L73:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:146: 		return false;
	.loc 1 146 9 view .LVU360
	movs	r0, #0	@ <retval>,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:211: }
	.loc 1 211 1 view .LVU361
	pop	{r3, r4, r5, pc}	@
.LVL91:
.L94:
.LCFI8:
	.cfi_def_cfa_offset 0
	.cfi_restore 3
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:146: 		return false;
	.loc 1 146 9 view .LVU362
	movs	r0, #0	@ <retval>,
.LVL92:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:211: }
	.loc 1 211 1 view .LVU363
	bx	lr	@
.LVL93:
.L97:
.LCFI9:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 176 4 is_stmt 1 view .LVU364
	.loc 1 178 4 view .LVU365
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:176: 			if (chunk->size != 4)
	.loc 1 176 7 is_stmt 0 view .LVU366
	cmp	r3, #4	@ prephitmp_81,
	bne	.L73		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:178: 			res->sample_count = *(const uint32_t*)&chunk[1];
	.loc 1 178 22 view .LVU367
	ldr	r1, [r0, #8]	@ MEM[(const uint32_t *)chunk_44 + 8B], MEM[(const uint32_t *)chunk_44 + 8B]
	str	r1, [r2, #8]	@ MEM[(const uint32_t *)chunk_44 + 8B], res_53(D)->sample_count
	b	.L77		@
.L98:
	.loc 1 182 4 is_stmt 1 view .LVU368
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:182: 			res->sample_data_size = chunk->size;
	.loc 1 182 26 is_stmt 0 view .LVU369
	str	r3, [r2, #4]	@ prephitmp_81, res_53(D)->sample_data_size
	.loc 1 183 4 is_stmt 1 view .LVU370
	.loc 1 188 2 view .LVU371
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:188: 	if (format == NULL)
	.loc 1 188 5 is_stmt 0 view .LVU372
	cmp	r5, #0	@ format
	beq	.L73	@
	.loc 1 191 2 is_stmt 1 view .LVU373
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:192: 	res->sample_rate = format->sample_rate;
	.loc 1 192 19 is_stmt 0 view .LVU374
	ldr	r1, [r5, #4]	@ format_45->sample_rate, format_45->sample_rate
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:191: 	res->sample_data = &chunk[1];
	.loc 1 191 21 view .LVU375
	adds	r0, r0, #8	@ _18, chunk,
.LVL94:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:193: 	res->channel_count = format->channel_count;
	.loc 1 193 29 view .LVU376
	ldrh	ip, [r5, #2]	@ _22, format_45->channel_count
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:192: 	res->sample_rate = format->sample_rate;
	.loc 1 192 19 view .LVU377
	str	r1, [r2, #12]	@ format_45->sample_rate, res_53(D)->sample_rate
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:194: 	res->sample_format = format->format;
	.loc 1 194 29 view .LVU378
	ldrh	r1, [r5]	@ format_45->format, format_45->format
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:191: 	res->sample_data = &chunk[1];
	.loc 1 191 19 view .LVU379
	str	r0, [r2]	@ _18, res_53(D)->sample_data
	.loc 1 192 2 is_stmt 1 view .LVU380
	.loc 1 193 2 view .LVU381
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:194: 	res->sample_format = format->format;
	.loc 1 194 29 is_stmt 0 view .LVU382
	str	r1, [r2, #20]	@ format_45->format, res_53(D)->sample_format
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:197: 	if (res->sample_count == 0) {
	.loc 1 197 5 view .LVU383
	ldr	r0, [r2, #8]	@ res_53(D)->sample_count, res_53(D)->sample_count
.LVL95:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:195: 	res->block_size = format->block_size;
	.loc 1 195 26 view .LVU384
	ldrh	r1, [r5, #12]	@ _26, format_45->block_size
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:193: 	res->channel_count = format->channel_count;
	.loc 1 193 21 view .LVU385
	str	ip, [r2, #16]	@ _22, res_53(D)->channel_count
	.loc 1 194 2 is_stmt 1 view .LVU386
	.loc 1 195 2 view .LVU387
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:195: 	res->block_size = format->block_size;
	.loc 1 195 18 is_stmt 0 view .LVU388
	str	r1, [r2, #24]	@ _26, res_53(D)->block_size
	.loc 1 197 2 is_stmt 1 view .LVU389
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:197: 	if (res->sample_count == 0) {
	.loc 1 197 5 is_stmt 0 view .LVU390
	cbnz	r0, .L82	@ res_53(D)->sample_count,
	.loc 1 199 3 is_stmt 1 view .LVU391
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:199: 		if (res->block_size != 0 && res->samples_per_block != 0)
	.loc 1 199 6 is_stmt 0 view .LVU392
	cbz	r1, .L81	@ _26,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:199: 		if (res->block_size != 0 && res->samples_per_block != 0)
	.loc 1 199 34 discriminator 1 view .LVU393
	ldr	r0, [r2, #28]	@ _28, res_53(D)->samples_per_block
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:199: 		if (res->block_size != 0 && res->samples_per_block != 0)
	.loc 1 199 28 discriminator 1 view .LVU394
	cbz	r0, .L81	@ _28,
.LBB214:
	.loc 1 201 4 is_stmt 1 view .LVU395
.LVL96:
	.loc 1 202 4 view .LVU396
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:201: 			uint32_t num_blocks = res->sample_data_size / res->block_size + 1;
	.loc 1 201 48 is_stmt 0 view .LVU397
	sdiv	r1, r3, r1	@ _30, prephitmp_81, _26
.LVL97:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:202: 			res->sample_count = res->samples_per_block * num_blocks;
	.loc 1 202 47 view .LVU398
	mla	r0, r1, r0, r0	@ _34, _30, _28, _28
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:202: 			res->sample_count = res->samples_per_block * num_blocks;
	.loc 1 202 22 view .LVU399
	str	r0, [r2, #8]	@ _34, res_53(D)->sample_count
.LVL98:
.L82:
	.loc 1 202 22 view .LVU400
.LBE214:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:210: 	return true;
	.loc 1 210 8 view .LVU401
	movs	r0, #1	@ <retval>,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:211: }
	.loc 1 211 1 view .LVU402
	pop	{r3, r4, r5, pc}	@
.LVL99:
.L81:
	.loc 1 206 4 is_stmt 1 view .LVU403
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:206: 			res->sample_count = (int)((uint64_t)(res->sample_data_size / res->channel_count) * 8 / format->bits_per_sample);
	.loc 1 206 63 is_stmt 0 view .LVU404
	sdiv	r0, r3, ip	@ _37, prephitmp_81, _22
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:206: 			res->sample_count = (int)((uint64_t)(res->sample_data_size / res->channel_count) * 8 / format->bits_per_sample);
	.loc 1 206 85 view .LVU405
	asrs	r1, r0, #31	@ tmp194, _37,
	mov	r4, r2	@ res, res
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:206: 			res->sample_count = (int)((uint64_t)(res->sample_data_size / res->channel_count) * 8 / format->bits_per_sample);
	.loc 1 206 89 view .LVU406
	movs	r3, #0	@,
	ldrh	r2, [r5, #14]	@, format_45->bits_per_sample
.LVL100:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:206: 			res->sample_count = (int)((uint64_t)(res->sample_data_size / res->channel_count) * 8 / format->bits_per_sample);
	.loc 1 206 85 view .LVU407
	lsls	r1, r1, #3	@ _39, tmp194,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:206: 			res->sample_count = (int)((uint64_t)(res->sample_data_size / res->channel_count) * 8 / format->bits_per_sample);
	.loc 1 206 89 view .LVU408
	orr	r1, r1, r0, lsr #29	@, _39, _37,
	lsls	r0, r0, #3	@, _37,
	bl	__aeabi_uldivmod		@
.LVL101:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\wav_ima_adpcm.c:206: 			res->sample_count = (int)((uint64_t)(res->sample_data_size / res->channel_count) * 8 / format->bits_per_sample);
	.loc 1 206 24 view .LVU409
	str	r0, [r4, #8]	@ _42, res_53(D)->sample_count
	b	.L82		@
.L100:
	.align	2
.L99:
	.word	1179011410
	.word	1635017060
	.word	544501094
	.word	1952670054
	.cfi_endproc
.LFE7:
	.size	wav_parse_header, .-wav_parse_header
	.section	.rodata.kImaStepTable,"a"
	.align	2
	.type	kImaStepTable, %object
	.size	kImaStepTable, 356
kImaStepTable:
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	16
	.word	17
	.word	19
	.word	21
	.word	23
	.word	25
	.word	28
	.word	31
	.word	34
	.word	37
	.word	41
	.word	45
	.word	50
	.word	55
	.word	60
	.word	66
	.word	73
	.word	80
	.word	88
	.word	97
	.word	107
	.word	118
	.word	130
	.word	143
	.word	157
	.word	173
	.word	190
	.word	209
	.word	230
	.word	253
	.word	279
	.word	307
	.word	337
	.word	371
	.word	408
	.word	449
	.word	494
	.word	544
	.word	598
	.word	658
	.word	724
	.word	796
	.word	876
	.word	963
	.word	1060
	.word	1166
	.word	1282
	.word	1411
	.word	1552
	.word	1707
	.word	1878
	.word	2066
	.word	2272
	.word	2499
	.word	2749
	.word	3024
	.word	3327
	.word	3660
	.word	4026
	.word	4428
	.word	4871
	.word	5358
	.word	5894
	.word	6484
	.word	7132
	.word	7845
	.word	8630
	.word	9493
	.word	10442
	.word	11487
	.word	12635
	.word	13899
	.word	15289
	.word	16818
	.word	18500
	.word	20350
	.word	22385
	.word	24623
	.word	27086
	.word	29794
	.word	32767
	.section	.rodata.kImaIndexTable,"a"
	.align	2
	.type	kImaIndexTable, %object
	.size	kImaIndexTable, 64
kImaIndexTable:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	2
	.word	4
	.word	6
	.word	8
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	2
	.word	4
	.word	6
	.word	8
	.text
.Letext0:
	.file 2 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "D:/Playdate/arm-gnu-toolchain/lib/gcc/arm-none-eabi/15.3.1/include/stddef.h"
	.file 5 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util\\wav_ima_adpcm.h"
	.file 6 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/stdlib.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9b2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.Ldebug_ranges0+0x358
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x51
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x85
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x29
	.uleb128 0x5
	.4byte	0x37
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x45
	.uleb128 0x5
	.4byte	0xa4
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x5f
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x79
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x93
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x7
	.byte	0x4
	.4byte	0xfb
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x20
	.byte	0x5
	.byte	0x7
	.byte	0x10
	.4byte	0x182
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x8
	.byte	0xe
	.4byte	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x9
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0xb
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0xc
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0xd
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0xf
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x10
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x11
	.byte	0x3
	.4byte	0xfc
	.uleb128 0x5
	.4byte	0x182
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x10
	.byte	0x5
	.byte	0x13
	.byte	0x10
	.4byte	0x1dd
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x14
	.byte	0x9
	.4byte	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x5
	.byte	0x15
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x16
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x17
	.byte	0x6
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF33
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0x18
	.byte	0x3
	.4byte	0x193
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x8
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.4byte	0x221
	.uleb128 0xb
	.ascii	"id\000"
	.byte	0x1
	.byte	0xd
	.byte	0xb
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe
	.byte	0xb
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.4byte	0x1f6
	.uleb128 0x5
	.4byte	0x221
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.4byte	0x24f
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.4byte	0x232
	.uleb128 0x5
	.4byte	0x24f
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x10
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.4byte	0x2c8
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x16
	.byte	0xb
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x17
	.byte	0xb
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x19
	.byte	0xb
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1a
	.byte	0xb
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1b
	.byte	0xb
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.4byte	0x260
	.uleb128 0x5
	.4byte	0x2c8
	.uleb128 0xc
	.4byte	0x9f
	.4byte	0x2e9
	.uleb128 0xd
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x2d9
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x26
	.byte	0x12
	.4byte	0x2e9
	.byte	0x5
	.byte	0x3
	.4byte	kImaIndexTable
	.uleb128 0xc
	.4byte	0x9f
	.4byte	0x310
	.uleb128 0xd
	.4byte	0x30
	.byte	0x58
	.byte	0
	.uleb128 0x5
	.4byte	0x300
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.byte	0x12
	.4byte	0x310
	.byte	0x5
	.byte	0x3
	.4byte	kImaStepTable
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF70
	.byte	0x6
	.byte	0x6c
	.byte	0x7
	.byte	0x1
	.4byte	0xec
	.byte	0x1
	.4byte	0x340
	.uleb128 0x10
	.4byte	0x30
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x8f
	.byte	0x5
	.byte	0x1
	.4byte	0x403
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST44
	.byte	0x1
	.4byte	0x403
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x8f
	.byte	0x22
	.4byte	0xf5
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x8f
	.byte	0x2f
	.4byte	0xd9
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x13
	.ascii	"res\000"
	.byte	0x1
	.byte	0x8f
	.byte	0x49
	.4byte	0x40a
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x94
	.byte	0x13
	.4byte	0x410
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x98
	.byte	0x12
	.4byte	0x416
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa0
	.byte	0x14
	.4byte	0x41c
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x15
	.4byte	.LBB214
	.4byte	.LBE214
	.4byte	0x3f9
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc9
	.byte	0xd
	.4byte	0xc1
	.4byte	.LLST51
	.4byte	.LVUS51
	.byte	0
	.uleb128 0x16
	.4byte	.LVL101
	.4byte	0x9aa
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF48
	.uleb128 0x7
	.byte	0x4
	.4byte	0x182
	.uleb128 0x7
	.byte	0x4
	.4byte	0x22d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25b
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.byte	0x70
	.byte	0x6
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x819
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x70
	.byte	0x2c
	.4byte	0x1dd
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0x70
	.byte	0x38
	.4byte	0x37
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x70
	.byte	0x48
	.4byte	0x37
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x70
	.byte	0x62
	.4byte	0xf5
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x70
	.byte	0x7a
	.4byte	0x819
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.byte	0x70
	.byte	0x87
	.4byte	0x1e3
	.byte	0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0x75
	.byte	0x7
	.4byte	0x37
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x7e
	.byte	0x7
	.4byte	0x37
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x7f
	.byte	0x7
	.4byte	0x37
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x7fb
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x78
	.byte	0x13
	.4byte	0x81f
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1b
	.4byte	0x825
	.4byte	.LBI49
	.2byte	.LVU48
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x79
	.byte	0x4
	.uleb128 0x1c
	.4byte	0x833
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1c
	.4byte	0x83f
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1c
	.4byte	0x84b
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1d
	.4byte	0x857
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x1d
	.4byte	0x861
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x1d
	.4byte	0x86d
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x1e
	.4byte	0x879
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	0x8f7
	.4byte	.LBI51
	.2byte	.LVU68
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x5f
	.byte	0xe
	.4byte	0x59a
	.uleb128 0x1c
	.4byte	0x909
	.4byte	.LLST19
	.4byte	.LVUS19
	.byte	0
	.uleb128 0x20
	.4byte	0x885
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0x669
	.uleb128 0x1d
	.4byte	0x886
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x1b
	.4byte	0x8a2
	.4byte	.LBI58
	.2byte	.LVU215
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0x6c
	.byte	0xf
	.uleb128 0x1c
	.4byte	0x8b4
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x1c
	.4byte	0x8c0
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x1c
	.4byte	0x8cc
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x1d
	.4byte	0x8d8
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x1d
	.4byte	0x8e4
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x1f
	.4byte	0x914
	.4byte	.LBI60
	.2byte	.LVU232
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x62b
	.uleb128 0x1c
	.4byte	0x926
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.uleb128 0x1f
	.4byte	0x931
	.4byte	.LBI72
	.2byte	.LVU246
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0x51
	.byte	0x10
	.4byte	0x647
	.uleb128 0x21
	.4byte	0x943
	.byte	0
	.uleb128 0x1b
	.4byte	0x8f7
	.4byte	.LBI76
	.2byte	.LVU257
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.uleb128 0x1c
	.4byte	0x909
	.4byte	.LLST27
	.4byte	.LVUS27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x931
	.4byte	.LBI98
	.2byte	.LVU59
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.byte	0x5c
	.byte	0x13
	.4byte	0x68d
	.uleb128 0x1c
	.4byte	0x943
	.4byte	.LLST28
	.4byte	.LVUS28
	.byte	0
	.uleb128 0x1f
	.4byte	0x8a2
	.4byte	.LBI106
	.2byte	.LVU99
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0x65
	.byte	0xf
	.4byte	0x745
	.uleb128 0x1c
	.4byte	0x8b4
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x1c
	.4byte	0x8c0
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x1c
	.4byte	0x8cc
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x1d
	.4byte	0x8d8
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x1d
	.4byte	0x8e4
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x1f
	.4byte	0x914
	.4byte	.LBI108
	.2byte	.LVU113
	.4byte	.Ldebug_ranges0+0x220
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x708
	.uleb128 0x1c
	.4byte	0x926
	.4byte	.LLST34
	.4byte	.LVUS34
	.byte	0
	.uleb128 0x1f
	.4byte	0x931
	.4byte	.LBI116
	.2byte	.LVU131
	.4byte	.Ldebug_ranges0+0x250
	.byte	0x1
	.byte	0x51
	.byte	0x10
	.4byte	0x724
	.uleb128 0x21
	.4byte	0x943
	.byte	0
	.uleb128 0x1b
	.4byte	0x8f7
	.4byte	.LBI124
	.2byte	.LVU136
	.4byte	.Ldebug_ranges0+0x270
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.uleb128 0x1c
	.4byte	0x909
	.4byte	.LLST35
	.4byte	.LVUS35
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x8a2
	.4byte	.LBI143
	.2byte	.LVU151
	.4byte	.Ldebug_ranges0+0x298
	.byte	0x1
	.byte	0x66
	.byte	0xf
	.uleb128 0x1c
	.4byte	0x8b4
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x1c
	.4byte	0x8c0
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x1c
	.4byte	0x8cc
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x1d
	.4byte	0x8d8
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x1d
	.4byte	0x8e4
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x1f
	.4byte	0x914
	.4byte	.LBI145
	.2byte	.LVU166
	.4byte	.Ldebug_ranges0+0x2f8
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x7bc
	.uleb128 0x1c
	.4byte	0x926
	.4byte	.LLST41
	.4byte	.LVUS41
	.byte	0
	.uleb128 0x1f
	.4byte	0x931
	.4byte	.LBI150
	.2byte	.LVU178
	.4byte	.Ldebug_ranges0+0x318
	.byte	0x1
	.byte	0x51
	.byte	0x10
	.4byte	0x7d8
	.uleb128 0x21
	.4byte	0x943
	.byte	0
	.uleb128 0x1b
	.4byte	0x8f7
	.4byte	.LBI157
	.2byte	.LVU185
	.4byte	.Ldebug_ranges0+0x338
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.uleb128 0x1c
	.4byte	0x909
	.4byte	.LLST42
	.4byte	.LVUS42
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LBB208
	.4byte	.LBE208
	.uleb128 0x23
	.ascii	"i\000"
	.byte	0x1
	.byte	0x83
	.byte	0xc
	.4byte	0x37
	.4byte	.LLST43
	.4byte	.LVUS43
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x24
	.4byte	.LASF73
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x892
	.uleb128 0x25
	.4byte	.LASF49
	.byte	0x1
	.byte	0x55
	.byte	0x3a
	.4byte	0x1dd
	.uleb128 0x25
	.4byte	.LASF43
	.byte	0x1
	.byte	0x55
	.byte	0x51
	.4byte	0x81f
	.uleb128 0x25
	.4byte	.LASF22
	.byte	0x1
	.byte	0x55
	.byte	0x60
	.4byte	0xcd
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.byte	0x57
	.byte	0xb
	.4byte	0xcd
	.uleb128 0x27
	.4byte	.LASF55
	.byte	0x1
	.byte	0x59
	.byte	0x6
	.4byte	0x37
	.uleb128 0x27
	.4byte	.LASF56
	.byte	0x1
	.byte	0x5c
	.byte	0x6
	.4byte	0x37
	.uleb128 0x26
	.ascii	"nib\000"
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	0x892
	.uleb128 0x28
	.uleb128 0x26
	.ascii	"j\000"
	.byte	0x1
	.byte	0x6b
	.byte	0xb
	.4byte	0x37
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x37
	.4byte	0x8a2
	.uleb128 0xd
	.4byte	0x30
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x1
	.byte	0x48
	.byte	0x15
	.byte	0x1
	.4byte	0x1e3
	.byte	0x3
	.4byte	0x8f1
	.uleb128 0x25
	.4byte	.LASF57
	.byte	0x1
	.byte	0x48
	.byte	0x27
	.4byte	0x37
	.uleb128 0x25
	.4byte	.LASF56
	.byte	0x1
	.byte	0x48
	.byte	0x34
	.4byte	0x8f1
	.uleb128 0x25
	.4byte	.LASF55
	.byte	0x1
	.byte	0x48
	.byte	0x45
	.4byte	0x8f1
	.uleb128 0x27
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	0x37
	.uleb128 0x27
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	0x37
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
	.uleb128 0x29
	.4byte	.LASF61
	.byte	0x1
	.byte	0x43
	.byte	0x15
	.byte	0x1
	.4byte	0x1e3
	.byte	0x3
	.4byte	0x914
	.uleb128 0x2a
	.ascii	"v\000"
	.byte	0x1
	.byte	0x43
	.byte	0x28
	.4byte	0x37
	.byte	0
	.uleb128 0x29
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3d
	.byte	0x13
	.byte	0x1
	.4byte	0x37
	.byte	0x3
	.4byte	0x931
	.uleb128 0x2a
	.ascii	"v\000"
	.byte	0x1
	.byte	0x3d
	.byte	0x25
	.4byte	0x37
	.byte	0
	.uleb128 0x29
	.4byte	.LASF63
	.byte	0x1
	.byte	0x37
	.byte	0x13
	.byte	0x1
	.4byte	0x37
	.byte	0x3
	.4byte	0x94e
	.uleb128 0x2a
	.ascii	"v\000"
	.byte	0x1
	.byte	0x37
	.byte	0x28
	.4byte	0x37
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x9a4
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1e
	.byte	0x31
	.4byte	0x9a4
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x1e
	.byte	0x49
	.4byte	0x819
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2b
	.4byte	.LVL2
	.4byte	0x327
	.uleb128 0x2c
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x18e
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.4byte	.LASF74
	.4byte	.LASF74
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST44:
	.4byte	.LFB7
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 0
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU362
	.uleb128 .LVU362
	.uleb128 .LVU363
	.uleb128 .LVU363
	.uleb128 0
.LLST45:
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL91
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
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92
	.4byte	.LFE7
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
.LVUS46:
	.uleb128 0
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU362
	.uleb128 .LVU362
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 0
.LLST46:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL83
	.4byte	.LVL91
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
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL93
	.4byte	.LFE7
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
.LVUS47:
	.uleb128 0
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 .LVU403
	.uleb128 .LVU403
	.uleb128 .LVU407
	.uleb128 .LVU407
	.uleb128 0
.LLST47:
	.4byte	.LVL81
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
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
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU319
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 .LVU360
	.uleb128 .LVU364
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 .LVU400
	.uleb128 .LVU403
	.uleb128 .LVU407
	.uleb128 .LVU407
	.uleb128 .LVU409
.LLST48:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU323
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU360
	.uleb128 .LVU364
	.uleb128 0
.LLST49:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE7
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU335
	.uleb128 .LVU337
	.uleb128 .LVU354
	.uleb128 .LVU360
.LLST50:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 .LVU396
	.uleb128 .LVU398
	.uleb128 .LVU398
	.uleb128 .LVU400
.LLST51:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1b
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x1b
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB6
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI6
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU296
	.uleb128 .LVU298
	.uleb128 .LVU299
	.uleb128 .LVU301
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU299
	.uleb128 .LVU301
	.uleb128 .LVU303
	.uleb128 .LVU303
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU291
	.uleb128 .LVU292
	.uleb128 .LVU295
	.uleb128 .LVU295
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL69
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 0
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL74
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU39
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU198
	.uleb128 .LVU312
	.uleb128 0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL15
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU271
	.uleb128 .LVU279
	.uleb128 .LVU301
	.uleb128 .LVU312
.LLST10:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU272
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU299
	.uleb128 .LVU301
	.uleb128 .LVU312
.LLST11:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU47
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU198
	.uleb128 .LVU312
	.uleb128 0
.LLST12:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x77
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU48
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU151
	.uleb128 .LVU207
	.uleb128 .LVU208
	.uleb128 .LVU211
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU265
	.uleb128 .LVU312
	.uleb128 0
.LLST13:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x76
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x76
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU48
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU198
	.uleb128 .LVU312
	.uleb128 0
.LLST14:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU48
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU198
	.uleb128 .LVU312
	.uleb128 0
.LLST15:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL41
	.2byte	0x8
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU74
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU181
	.uleb128 .LVU196
	.uleb128 .LVU197
	.uleb128 .LVU312
	.uleb128 0
.LLST16:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x1
	.4byte	.LVL15
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x1
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU51
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU117
	.uleb128 .LVU129
	.uleb128 .LVU171
	.uleb128 .LVU176
	.uleb128 .LVU235
	.uleb128 .LVU244
	.uleb128 .LVU266
	.uleb128 .LVU312
	.uleb128 0
.LLST17:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1c
	.byte	0x77
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1d
	.byte	0x77
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU65
	.uleb128 .LVU120
	.uleb128 .LVU134
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU242
	.uleb128 .LVU255
	.uleb128 .LVU266
	.uleb128 .LVU312
	.uleb128 0
.LLST18:
	.4byte	.LVL13
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL80
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU68
	.uleb128 .LVU70
.LLST19:
	.4byte	.LVL13
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU207
	.uleb128 .LVU208
	.uleb128 .LVU211
	.uleb128 .LVU264
	.uleb128 .LVU264
	.uleb128 .LVU265
.LLST20:
	.4byte	.LVL42
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU215
	.uleb128 .LVU259
.LLST21:
	.4byte	.LVL43
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU215
	.uleb128 .LVU259
.LLST22:
	.4byte	.LVL43
	.4byte	.LVL57
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1377
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU215
	.uleb128 .LVU259
.LLST23:
	.4byte	.LVL43
	.4byte	.LVL57
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1364
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU218
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU242
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU221
	.uleb128 .LVU236
	.uleb128 .LVU237
	.uleb128 .LVU242
.LLST25:
	.4byte	.LVL45
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x14f
	.byte	0x79
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x1f
	.byte	0x79
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x26
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x76
	.sleb128 0
	.byte	0x4c
	.byte	0x24
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU232
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU240
.LLST26:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU257
	.uleb128 .LVU259
.LLST27:
	.4byte	.LVL57
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU59
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU65
.LLST28:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x77
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU99
	.uleb128 .LVU138
.LLST29:
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU99
	.uleb128 .LVU138
.LLST30:
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1377
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU99
	.uleb128 .LVU138
.LLST31:
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1364
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU101
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU120
.LLST32:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU103
	.uleb128 .LVU118
.LLST33:
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU113
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU123
.LLST34:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU136
	.uleb128 .LVU138
.LLST35:
	.4byte	.LVL27
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU151
	.uleb128 .LVU187
.LLST36:
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU151
	.uleb128 .LVU187
.LLST37:
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1377
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU151
	.uleb128 .LVU187
.LLST38:
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1364
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU153
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU187
.LLST39:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	kImaStepTable
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU155
	.uleb128 .LVU187
.LLST40:
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU166
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU172
.LLST41:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU185
	.uleb128 .LVU187
.LLST42:
	.4byte	.LVL37
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU278
	.uleb128 .LVU280
	.uleb128 .LVU301
	.uleb128 .LVU312
.LLST43:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.sleb128 24
	.4byte	.LCFI2
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-1
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB210
	.4byte	.LBE210
	.4byte	.LBB211
	.4byte	.LBE211
	.4byte	.LBB212
	.4byte	.LBE212
	.4byte	.LBB213
	.4byte	.LBE213
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB206
	.4byte	.LBE206
	.4byte	.LBB207
	.4byte	.LBE207
	.4byte	.LBB209
	.4byte	.LBE209
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB200
	.4byte	.LBE200
	.4byte	.LBB201
	.4byte	.LBE201
	.4byte	.LBB202
	.4byte	.LBE202
	.4byte	.LBB203
	.4byte	.LBE203
	.4byte	.LBB204
	.4byte	.LBE204
	.4byte	.LBB205
	.4byte	.LBE205
	.4byte	0
	.4byte	0
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB192
	.4byte	.LBE192
	.4byte	.LBB193
	.4byte	.LBE193
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	0
	.4byte	0
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	.LBB142
	.4byte	.LBE142
	.4byte	.LBB173
	.4byte	.LBE173
	.4byte	.LBB174
	.4byte	.LBE174
	.4byte	.LBB175
	.4byte	.LBE175
	.4byte	.LBB176
	.4byte	.LBE176
	.4byte	.LBB177
	.4byte	.LBE177
	.4byte	.LBB179
	.4byte	.LBE179
	.4byte	.LBB181
	.4byte	.LBE181
	.4byte	.LBB183
	.4byte	.LBE183
	.4byte	.LBB185
	.4byte	.LBE185
	.4byte	0
	.4byte	0
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	0
	.4byte	0
	.4byte	.LBB116
	.4byte	.LBE116
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	.LBB123
	.4byte	.LBE123
	.4byte	0
	.4byte	0
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB129
	.4byte	.LBE129
	.4byte	.LBB130
	.4byte	.LBE130
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	0
	.4byte	0
	.4byte	.LBB143
	.4byte	.LBE143
	.4byte	.LBB178
	.4byte	.LBE178
	.4byte	.LBB180
	.4byte	.LBE180
	.4byte	.LBB182
	.4byte	.LBE182
	.4byte	.LBB184
	.4byte	.LBE184
	.4byte	.LBB186
	.4byte	.LBE186
	.4byte	.LBB187
	.4byte	.LBE187
	.4byte	.LBB188
	.4byte	.LBE188
	.4byte	.LBB189
	.4byte	.LBE189
	.4byte	.LBB190
	.4byte	.LBE190
	.4byte	.LBB191
	.4byte	.LBE191
	.4byte	0
	.4byte	0
	.4byte	.LBB145
	.4byte	.LBE145
	.4byte	.LBB149
	.4byte	.LBE149
	.4byte	.LBB154
	.4byte	.LBE154
	.4byte	0
	.4byte	0
	.4byte	.LBB150
	.4byte	.LBE150
	.4byte	.LBB155
	.4byte	.LBE155
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	0
	.4byte	0
	.4byte	.LBB157
	.4byte	.LBE157
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF70:
	.ascii	"malloc\000"
.LASF71:
	.ascii	"wav_parse_header\000"
.LASF17:
	.ascii	"size_t\000"
.LASF16:
	.ascii	"uint64_t\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF32:
	.ascii	"block_size_bytes\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF55:
	.ascii	"predict\000"
.LASF59:
	.ascii	"diff\000"
.LASF11:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF50:
	.ascii	"sample_pos\000"
.LASF25:
	.ascii	"sample_format\000"
.LASF51:
	.ascii	"state\000"
.LASF8:
	.ascii	"long int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF38:
	.ascii	"wav_format\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF30:
	.ascii	"block\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF26:
	.ascii	"block_size\000"
.LASF73:
	.ascii	"wav_ima_adpcm_decode_block\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF63:
	.ascii	"clamp_step_index\000"
.LASF31:
	.ascii	"block_index\000"
.LASF43:
	.ascii	"data\000"
.LASF35:
	.ascii	"size\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF47:
	.ascii	"num_blocks\000"
.LASF36:
	.ascii	"wav_riff\000"
.LASF21:
	.ascii	"sample_data_size\000"
.LASF42:
	.ascii	"kImaStepTable\000"
.LASF23:
	.ascii	"sample_rate\000"
.LASF44:
	.ascii	"data_size\000"
.LASF45:
	.ascii	"chunk\000"
.LASF49:
	.ascii	"output\000"
.LASF54:
	.ascii	"block_ptr\000"
.LASF18:
	.ascii	"long double\000"
.LASF66:
	.ascii	"desc\000"
.LASF52:
	.ascii	"pos_in_block\000"
.LASF61:
	.ascii	"short_to_float\000"
.LASF64:
	.ascii	"wav_ima_adpcm_decode\000"
.LASF12:
	.ascii	"__uint64_t\000"
.LASF33:
	.ascii	"float\000"
.LASF62:
	.ascii	"clamp_predict\000"
.LASF48:
	.ascii	"_Bool\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF58:
	.ascii	"step\000"
.LASF4:
	.ascii	"short int\000"
.LASF37:
	.ascii	"format\000"
.LASF41:
	.ascii	"kImaIndexTable\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF56:
	.ascii	"step_index\000"
.LASF69:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF34:
	.ascii	"wav_chunk\000"
.LASF19:
	.ascii	"char\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF39:
	.ascii	"byte_rate\000"
.LASF40:
	.ascii	"bits_per_sample\000"
.LASF65:
	.ascii	"wav_decode_state_init\000"
.LASF46:
	.ascii	"riff\000"
.LASF29:
	.ascii	"wav_decode_state\000"
.LASF67:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF22:
	.ascii	"sample_count\000"
.LASF72:
	.ascii	"volume\000"
.LASF60:
	.ascii	"decode_sample\000"
.LASF24:
	.ascii	"channel_count\000"
.LASF68:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\util\\wav_ima_adpcm.c\000"
.LASF53:
	.ascii	"samples_to_write\000"
.LASF27:
	.ascii	"samples_per_block\000"
.LASF74:
	.ascii	"__aeabi_uldivmod\000"
.LASF20:
	.ascii	"sample_data\000"
.LASF28:
	.ascii	"wav_file_desc\000"
.LASF57:
	.ascii	"nibble\000"
	.global	__aeabi_uldivmod
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
