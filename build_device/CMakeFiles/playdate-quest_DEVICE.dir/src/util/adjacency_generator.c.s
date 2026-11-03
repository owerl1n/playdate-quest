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
	.file	"adjacency_generator.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util\\adjacency_generator.c"
	.section	.text.generate_adjacency_buffer,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	generate_adjacency_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	generate_adjacency_buffer, %function
generate_adjacency_buffer:
.LVL0:
.LFB3:
	.loc 1 47 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 48 1 view .LVU1
	.loc 1 51 2 view .LVU2
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:47: {
	.loc 1 47 1 is_stmt 0 view .LVU3
	mov	r3, r2	@ index_count, index_count
.LVL1:
.LBB38:
.LBI38:
	.loc 1 16 17 is_stmt 1 view .LVU4
.LBB39:
	.loc 1 18 2 view .LVU5
	.loc 1 19 2 view .LVU6
	.loc 1 19 17 view .LVU7
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:19: 	while (buckets < count + count / 4)
	.loc 1 19 25 is_stmt 0 view .LVU8
	add	r2, r2, r2, lsr #2	@ _131, index_count, index_count,
.LVL2:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:19: 	while (buckets < count + count / 4)
	.loc 1 19 17 view .LVU9
	cmp	r2, #1	@ _131,
.LBE39:
.LBE38:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:47: {
	.loc 1 47 1 view .LVU10
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
	mov	r10, r0	@ destination, destination
	sub	sp, sp, #28	@,,
.LCFI1:
	.cfi_def_cfa_offset 64
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:47: {
	.loc 1 47 1 view .LVU11
	mov	fp, r1	@ indices, indices
.LBB44:
.LBB40:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:19: 	while (buckets < count + count / 4)
	.loc 1 19 17 view .LVU12
	bls	.L18		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:18: 	uint32_t buckets = 1;
	.loc 1 18 11 view .LVU13
	movs	r5, #1	@ buckets,
.LVL3:
.L3:
	.loc 1 20 3 is_stmt 1 view .LVU14
	mov	r1, r5	@ buckets, buckets
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:20: 		buckets *= 2;
	.loc 1 20 11 is_stmt 0 view .LVU15
	lsls	r5, r5, #1	@ buckets, buckets,
.LVL4:
	.loc 1 19 17 is_stmt 1 view .LVU16
	cmp	r5, r2	@ buckets, _131
	bcc	.L3		@,
.LBE40:
.LBE44:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:52: 	uint32_t* edge_table = (uint32_t*)plat_malloc(edge_table_size * sizeof(uint32_t));
	.loc 1 52 64 is_stmt 0 view .LVU17
	lsls	r7, r1, #3	@ _293, buckets,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:53: 	uint16_t* edge_face_table = (uint16_t*)plat_malloc(edge_table_size * sizeof(uint16_t));
	.loc 1 53 69 view .LVU18
	lsls	r6, r1, #2	@ _295, buckets,
.LVL5:
.L2:
.LBB45:
.LBB41:
	.loc 1 21 2 is_stmt 1 view .LVU19
	.loc 1 21 2 is_stmt 0 view .LVU20
.LBE41:
.LBE45:
	.loc 1 52 2 is_stmt 1 view .LVU21
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:52: 	uint32_t* edge_table = (uint32_t*)plat_malloc(edge_table_size * sizeof(uint32_t));
	.loc 1 52 36 is_stmt 0 view .LVU22
	mov	r0, r7	@, _293
.LVL6:
	.loc 1 52 36 view .LVU23
	str	r3, [sp, #4]	@ index_count, %sfp
	bl	plat_malloc		@
.LVL7:
	.loc 1 52 36 view .LVU24
	mov	r4, r0	@ edge_table,
.LVL8:
	.loc 1 53 2 is_stmt 1 view .LVU25
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:53: 	uint16_t* edge_face_table = (uint16_t*)plat_malloc(edge_table_size * sizeof(uint16_t));
	.loc 1 53 41 is_stmt 0 view .LVU26
	mov	r0, r6	@, _295
.LVL9:
	.loc 1 53 41 view .LVU27
	bl	plat_malloc		@
.LVL10:
	mov	r8, r0	@ edge_face_table,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:55: 	memset(edge_table, -1, edge_table_size * sizeof(uint32_t));
	.loc 1 55 2 view .LVU28
	mov	r2, r7	@, _293
	mov	r1, #-1	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:53: 	uint16_t* edge_face_table = (uint16_t*)plat_malloc(edge_table_size * sizeof(uint16_t));
	.loc 1 53 41 view .LVU29
	str	r0, [sp]	@ edge_face_table, %sfp
.LVL11:
	.loc 1 55 2 is_stmt 1 view .LVU30
	mov	r0, r4	@, edge_table
.LVL12:
	.loc 1 55 2 is_stmt 0 view .LVU31
	bl	memset		@
.LVL13:
	.loc 1 56 2 is_stmt 1 view .LVU32
	mov	r2, r6	@, _295
	mov	r1, #-1	@,
	mov	r0, r8	@, edge_face_table
	bl	memset		@
.LVL14:
	.loc 1 58 2 view .LVU33
	.loc 1 59 2 view .LVU34
	.loc 1 60 2 view .LVU35
.LBB46:
	.loc 1 60 7 view .LVU36
	.loc 1 60 25 discriminator 1 view .LVU37
	ldr	r3, [sp, #4]	@ index_count, %sfp
	cmp	r3, #0	@ index_count
	beq	.L5	@
	.loc 1 60 25 is_stmt 0 discriminator 1 view .LVU38
	add	r1, fp, #6	@ ivtmp.38, indices,
.LBB47:
.LBB48:
.LBB49:
.LBB50:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:29: 	uint32_t hashmod = buckets - 1;
	.loc 1 29 11 view .LVU39
	movs	r2, #0	@ ivtmp.55,
	subs	r0, r5, #1	@ _297, buckets,
.LBB51:
.LBB52:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:13: 	return edge * 0xdeece66d + 0xb;
	.loc 1 13 14 view .LVU40
	str	r10, [sp, #20]	@ destination, %sfp
.LBE52:
.LBE51:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:29: 	uint32_t hashmod = buckets - 1;
	.loc 1 29 11 view .LVU41
	mov	r9, r1	@ ivtmp.60, ivtmp.38
.LBE50:
.LBE49:
.LBE48:
.LBE47:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:60: 	for (uint32_t i = 0; i < index_count; i += 3, fi++)
	.loc 1 60 16 view .LVU42
	mov	r8, r2	@ i, ivtmp.55
.LVL15:
	.loc 1 60 16 view .LVU43
	str	r1, [sp, #16]	@ ivtmp.38, %sfp
.LBB71:
.LBB69:
.LBB66:
.LBB63:
.LBB55:
.LBB53:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:13: 	return edge * 0xdeece66d + 0xb;
	.loc 1 13 14 view .LVU44
	str	r3, [sp, #12]	@ index_count, %sfp
.LVL16:
.L11:
	.loc 1 13 14 view .LVU45
	sub	ip, r9, #6	@ ivtmp.51, ivtmp.60,
.LBE53:
.LBE55:
.LBE63:
.LBE66:
.LBE69:
.LBE71:
.LBE46:
.LBB73:
.LBB42:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:18: 	uint32_t buckets = 1;
	.loc 1 18 11 view .LVU46
	ldr	lr, .L33+4	@ ivtmp.54,
	str	r2, [sp, #4]	@ ivtmp.55, %sfp
.LVL17:
	.loc 1 18 11 view .LVU47
.LBE42:
.LBE73:
.LBB74:
.LBB72:
	.loc 1 62 21 is_stmt 1 discriminator 1 view .LVU48
	str	r2, [sp, #8]	@ ivtmp.55, %sfp
.LVL18:
.L10:
.LBB70:
	.loc 1 64 4 view .LVU49
	.loc 1 65 4 view .LVU50
	.loc 1 67 4 view .LVU51
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:65: 			uint16_t i1 = indices[i + next[e]];
	.loc 1 65 25 is_stmt 0 view .LVU52
	ldr	r3, [lr]	@ MEM[(int *)_239], MEM[(int *)_239]
.LBB67:
.LBB64:
.LBB56:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:32: 	for (uint32_t probe = 0; probe <= hashmod; ++probe)
	.loc 1 32 16 view .LVU53
	movs	r2, #0	@ probe,
.LBE56:
.LBE64:
.LBE67:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:65: 			uint16_t i1 = indices[i + next[e]];
	.loc 1 65 25 view .LVU54
	add	r3, r3, r8	@ tmp207, i
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:67: 			uint32_t edge = ((uint32_t)i0 << 16) | i1;
	.loc 1 67 41 view .LVU55
	ldrh	r7, [fp, r3, lsl #1]	@ _14, *_11
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:67: 			uint32_t edge = ((uint32_t)i0 << 16) | i1;
	.loc 1 67 21 view .LVU56
	ldrh	r3, [ip]	@ _12, MEM[(const uint16_t *)_240]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:67: 			uint32_t edge = ((uint32_t)i0 << 16) | i1;
	.loc 1 67 13 view .LVU57
	orr	r7, r7, r3, lsl #16	@ edge, _14, _12,
.LVL19:
	.loc 1 68 4 is_stmt 1 view .LVU58
.LBB68:
.LBI49:
	.loc 1 24 18 view .LVU59
.LBB65:
	.loc 1 26 1 view .LVU60
	.loc 1 27 1 view .LVU61
	.loc 1 29 2 view .LVU62
	.loc 1 30 2 view .LVU63
.LBB61:
.LBI51:
	.loc 1 11 17 view .LVU64
.LBB54:
	.loc 1 13 2 view .LVU65
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:13: 	return edge * 0xdeece66d + 0xb;
	.loc 1 13 14 is_stmt 0 view .LVU66
	ldr	r3, .L33	@ tmp328,
	mul	r3, r3, r7	@ _85, tmp328, edge
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:13: 	return edge * 0xdeece66d + 0xb;
	.loc 1 13 27 view .LVU67
	adds	r3, r3, #11	@ _86, _85,
.LBE54:
.LBE61:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:30: 	uint32_t bucket = edge_hash(key) & hashmod;
	.loc 1 30 11 discriminator 1 view .LVU68
	ands	r3, r3, r0	@, bucket, _86, _297
	.loc 1 32 2 is_stmt 1 view .LVU69
.LBB62:
	.loc 1 32 7 view .LVU70
.LVL20:
	.loc 1 32 33 discriminator 1 view .LVU71
	b	.L7		@
.LVL21:
.L31:
.LBB57:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:35: 		if (*item == empty || *item == key)
	.loc 1 35 22 is_stmt 0 discriminator 1 view .LVU72
	subs	r6, r7, r1	@ _114, edge, _91
	clz	r6, r6	@ _114, _114
	lsrs	r6, r6, #5	@ _114, _114,
	cbnz	r6, .L6	@ _114,
	.loc 1 39 3 is_stmt 1 view .LVU73
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:39: 		bucket = (bucket + probe + 1) & hashmod;
	.loc 1 39 20 is_stmt 0 view .LVU74
	add	r3, r3, r2	@ _93, probe
.LVL22:
	.loc 1 39 20 view .LVU75
.LBE57:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:32: 	for (uint32_t probe = 0; probe <= hashmod; ++probe)
	.loc 1 32 45 discriminator 2 view .LVU76
	adds	r2, r2, #1	@ probe, probe,
.LVL23:
.LBB58:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:39: 		bucket = (bucket + probe + 1) & hashmod;
	.loc 1 39 28 view .LVU77
	adds	r3, r3, #1	@ _94, _93,
.LBE58:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:32: 	for (uint32_t probe = 0; probe <= hashmod; ++probe)
	.loc 1 32 33 discriminator 1 view .LVU78
	cmp	r2, r5	@ probe, buckets
.LBB59:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:39: 		bucket = (bucket + probe + 1) & hashmod;
	.loc 1 39 10 view .LVU79
	and	r3, r3, r0	@ bucket, _94, _297
.LVL24:
	.loc 1 39 10 view .LVU80
.LBE59:
	.loc 1 32 45 is_stmt 1 discriminator 2 view .LVU81
	.loc 1 32 33 discriminator 1 view .LVU82
	beq	.L27		@,
.LVL25:
.L7:
.LBB60:
	.loc 1 34 3 view .LVU83
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:35: 		if (*item == empty || *item == key)
	.loc 1 35 7 is_stmt 0 view .LVU84
	ldr	r1, [r4, r3, lsl #2]	@ _91, *item_90
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:34: 		uint32_t* item = &table[bucket];
	.loc 1 34 26 view .LVU85
	lsl	r10, r3, #2	@ _89, bucket,
.LVL26:
	.loc 1 35 3 is_stmt 1 view .LVU86
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:35: 		if (*item == empty || *item == key)
	.loc 1 35 22 is_stmt 0 discriminator 1 view .LVU87
	cmp	r1, #-1	@ _91,
	bne	.L31		@,
.L6:
	.loc 1 35 22 discriminator 1 view .LVU88
.LBE60:
.LBE62:
.LBE65:
.LBE68:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:69: 			if (*entry == ~0u)
	.loc 1 69 7 view .LVU89
	adds	r1, r1, #1	@ _91, _91,
	add	ip, ip, #2	@ ivtmp.51, ivtmp.51,
.LVL27:
	.loc 1 69 7 view .LVU90
	add	lr, lr, #4	@ ivtmp.54, ivtmp.54,
.LVL28:
	.loc 1 69 4 is_stmt 1 view .LVU91
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:69: 			if (*entry == ~0u)
	.loc 1 69 7 is_stmt 0 view .LVU92
	bne	.L9		@,
	.loc 1 71 5 is_stmt 1 view .LVU93
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:71: 				*entry = edge;
	.loc 1 71 12 is_stmt 0 view .LVU94
	str	r7, [r4, r10]	@ edge, *item_90
.LVL29:
	.loc 1 73 5 is_stmt 1 view .LVU95
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:73: 				edge_face_table[entry - edge_table] = fi;
	.loc 1 73 27 is_stmt 0 view .LVU96
	asr	r10, r10, #2	@ _17, _89,
.LVL30:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:73: 				edge_face_table[entry - edge_table] = fi;
	.loc 1 73 41 view .LVU97
	ldrd	r3, r2, [sp]	@ edge_face_table, _227,
.LVL31:
	.loc 1 73 41 view .LVU98
	strh	r2, [r3, r10, lsl #1]	@ movhi	@ _227, *_20
.L9:
	.loc 1 73 41 view .LVU99
.LBE70:
	.loc 1 62 26 is_stmt 1 discriminator 2 view .LVU100
	.loc 1 62 21 discriminator 1 view .LVU101
	cmp	r9, ip	@ ivtmp.60, ivtmp.51
	bne	.L10		@,
.LBE72:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:60: 	for (uint32_t i = 0; i < index_count; i += 3, fi++)
	.loc 1 60 42 is_stmt 0 discriminator 2 view .LVU102
	add	r8, r8, #3	@ i, i,
.LVL32:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:60: 	for (uint32_t i = 0; i < index_count; i += 3, fi++)
	.loc 1 60 25 discriminator 1 view .LVU103
	ldr	r3, [sp, #12]	@ index_count, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:60: 	for (uint32_t i = 0; i < index_count; i += 3, fi++)
	.loc 1 60 42 discriminator 2 view .LVU104
	ldr	r2, [sp, #8]	@ ivtmp.55, %sfp
	.loc 1 60 46 is_stmt 1 discriminator 2 view .LVU105
.LVL33:
	.loc 1 60 25 discriminator 1 view .LVU106
	add	r9, r9, #6	@ ivtmp.60, ivtmp.60,
	cmp	r3, r8	@ index_count, i
	add	r2, r2, #1	@ ivtmp.55, ivtmp.55,
.LVL34:
	.loc 1 60 25 is_stmt 0 discriminator 1 view .LVU107
	bhi	.L11		@,
	ldr	r2, [sp, #20]	@ ivtmp.40, %sfp
.LBE74:
.LBB75:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:79: 	for (uint32_t i = 0; i < index_count; i += 3)
	.loc 1 79 16 view .LVU108
	mov	r9, #0	@ i,
	ldr	r10, [sp, #16]	@ ivtmp.38, %sfp
	str	fp, [sp, #4]	@ indices, %sfp
.LVL35:
.L12:
.LBB76:
	.loc 1 81 21 is_stmt 1 discriminator 1 view .LVU109
	sub	ip, r10, #6	@ ivtmp.27, ivtmp.38,
.LBE76:
.LBE75:
.LBB96:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:60: 	for (uint32_t i = 0; i < index_count; i += 3, fi++)
	.loc 1 60 16 is_stmt 0 view .LVU110
	mov	r8, r2	@ ivtmp.33, ivtmp.40
	ldr	lr, .L33+4	@ ivtmp.30,
	str	r2, [sp, #8]	@ ivtmp.40, %sfp
.LVL36:
.L17:
	.loc 1 60 16 view .LVU111
.LBE96:
.LBB97:
.LBB93:
.LBB77:
	.loc 1 83 4 is_stmt 1 view .LVU112
	.loc 1 84 4 view .LVU113
	.loc 1 87 4 view .LVU114
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:84: 			uint16_t i1 = indices[i + next[e]];
	.loc 1 84 25 is_stmt 0 view .LVU115
	ldr	r3, [lr]	@ MEM[(int *)_274], MEM[(int *)_274]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:87: 			uint32_t edge = ((uint32_t)i1 << 16) | i0;
	.loc 1 87 21 view .LVU116
	ldr	r2, [sp, #4]	@ indices, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:84: 			uint16_t i1 = indices[i + next[e]];
	.loc 1 84 25 view .LVU117
	add	r3, r3, r9	@ tmp225, i
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:87: 			uint32_t edge = ((uint32_t)i1 << 16) | i0;
	.loc 1 87 41 view .LVU118
	ldrh	r7, [ip]	@ _32, MEM[(const uint16_t *)_275]
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:87: 			uint32_t edge = ((uint32_t)i1 << 16) | i0;
	.loc 1 87 21 view .LVU119
	ldrh	r3, [r2, r3, lsl #1]	@ _30, *_29
.LBB78:
.LBB79:
.LBB80:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:32: 	for (uint32_t probe = 0; probe <= hashmod; ++probe)
	.loc 1 32 16 view .LVU120
	movs	r2, #0	@ probe,
.LBE80:
.LBE79:
.LBE78:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:87: 			uint32_t edge = ((uint32_t)i1 << 16) | i0;
	.loc 1 87 13 view .LVU121
	orr	r7, r7, r3, lsl #16	@ edge, _32, _30,
.LVL37:
	.loc 1 88 4 is_stmt 1 view .LVU122
.LBB89:
.LBI78:
	.loc 1 24 18 view .LVU123
.LBB88:
	.loc 1 26 1 view .LVU124
	.loc 1 27 1 view .LVU125
	.loc 1 29 2 view .LVU126
	.loc 1 30 2 view .LVU127
.LBB85:
.LBI85:
	.loc 1 11 17 view .LVU128
.LBB86:
	.loc 1 13 2 view .LVU129
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:13: 	return edge * 0xdeece66d + 0xb;
	.loc 1 13 14 is_stmt 0 view .LVU130
	ldr	r3, .L33	@ tmp334,
	mul	r3, r3, r7	@ _99, tmp334, edge
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:13: 	return edge * 0xdeece66d + 0xb;
	.loc 1 13 27 view .LVU131
	adds	r3, r3, #11	@ _100, _99,
.LBE86:
.LBE85:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:30: 	uint32_t bucket = edge_hash(key) & hashmod;
	.loc 1 30 11 discriminator 1 view .LVU132
	ands	r3, r3, r0	@, bucket, _100, _297
	.loc 1 32 2 is_stmt 1 view .LVU133
.LBB87:
	.loc 1 32 7 view .LVU134
.LVL38:
	.loc 1 32 33 discriminator 1 view .LVU135
	b	.L14		@
.LVL39:
.L32:
.LBB81:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:35: 		if (*item == empty || *item == key)
	.loc 1 35 22 is_stmt 0 discriminator 1 view .LVU136
	subs	r6, r7, r1	@ _112, edge, _105
	clz	r6, r6	@ _112, _112
	lsrs	r6, r6, #5	@ _112, _112,
	cbnz	r6, .L13	@ _112,
	.loc 1 39 3 is_stmt 1 view .LVU137
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:39: 		bucket = (bucket + probe + 1) & hashmod;
	.loc 1 39 20 is_stmt 0 view .LVU138
	add	r3, r3, r2	@ _107, probe
.LVL40:
	.loc 1 39 20 view .LVU139
.LBE81:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:32: 	for (uint32_t probe = 0; probe <= hashmod; ++probe)
	.loc 1 32 45 discriminator 2 view .LVU140
	adds	r2, r2, #1	@ probe, probe,
.LVL41:
.LBB82:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:39: 		bucket = (bucket + probe + 1) & hashmod;
	.loc 1 39 28 view .LVU141
	adds	r3, r3, #1	@ _108, _107,
.LBE82:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:32: 	for (uint32_t probe = 0; probe <= hashmod; ++probe)
	.loc 1 32 33 discriminator 1 view .LVU142
	cmp	r2, r5	@ probe, buckets
.LBB83:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:39: 		bucket = (bucket + probe + 1) & hashmod;
	.loc 1 39 10 view .LVU143
	and	r3, r3, r0	@ bucket, _108, _297
.LVL42:
	.loc 1 39 10 view .LVU144
.LBE83:
	.loc 1 32 45 is_stmt 1 discriminator 2 view .LVU145
	.loc 1 32 33 discriminator 1 view .LVU146
	beq	.L27		@,
.LVL43:
.L14:
.LBB84:
	.loc 1 34 3 view .LVU147
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:35: 		if (*item == empty || *item == key)
	.loc 1 35 7 is_stmt 0 view .LVU148
	ldr	r1, [r4, r3, lsl #2]	@ _105, *item_104
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:34: 		uint32_t* item = &table[bucket];
	.loc 1 34 26 view .LVU149
	lsl	fp, r3, #2	@ _103, bucket,
.LVL44:
	.loc 1 35 3 is_stmt 1 view .LVU150
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:35: 		if (*item == empty || *item == key)
	.loc 1 35 22 is_stmt 0 discriminator 1 view .LVU151
	cmp	r1, #-1	@ _105,
	bne	.L32		@,
.L13:
	.loc 1 35 22 discriminator 1 view .LVU152
.LBE84:
.LBE87:
.LBE88:
.LBE89:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:89: 			uint16_t res = (*oppe == ~0u) ? 0xFFFF : edge_face_table[oppe - edge_table];
	.loc 1 89 13 view .LVU153
	adds	r1, r1, #1	@ _105, _105,
	add	ip, ip, #2	@ ivtmp.27, ivtmp.27,
.LVL45:
	.loc 1 89 13 view .LVU154
	add	lr, lr, #4	@ ivtmp.30, ivtmp.30,
.LVL46:
	.loc 1 89 4 is_stmt 1 view .LVU155
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:89: 			uint16_t res = (*oppe == ~0u) ? 0xFFFF : edge_face_table[oppe - edge_table];
	.loc 1 89 13 is_stmt 0 view .LVU156
	beq	.L19		@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:89: 			uint16_t res = (*oppe == ~0u) ? 0xFFFF : edge_face_table[oppe - edge_table];
	.loc 1 89 66 discriminator 1 view .LVU157
	asr	fp, fp, #2	@ _35, _103,
.LVL47:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:89: 			uint16_t res = (*oppe == ~0u) ? 0xFFFF : edge_face_table[oppe - edge_table];
	.loc 1 89 13 discriminator 1 view .LVU158
	ldr	r3, [sp]	@ edge_face_table, %sfp
.LVL48:
	.loc 1 89 13 discriminator 1 view .LVU159
	ldrh	r3, [r3, fp, lsl #1]	@ res, *_38
.LVL49:
.L16:
	.loc 1 90 3 is_stmt 1 view .LVU160
	.loc 1 91 4 view .LVU161
.LBE77:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:81: 		for (int e = 0; e < 3; ++e)
	.loc 1 81 21 is_stmt 0 discriminator 1 view .LVU162
	cmp	ip, r10	@ ivtmp.27, ivtmp.38
.LBB90:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:91: 			destination[i + e] = res;
	.loc 1 91 23 view .LVU163
	strh	r3, [r8], #2	@ movhi	@ res, MEM[(uint16_t *)_273]
.LVL50:
	.loc 1 91 23 view .LVU164
.LBE90:
	.loc 1 81 26 is_stmt 1 discriminator 2 view .LVU165
	.loc 1 81 21 discriminator 1 view .LVU166
	bne	.L17		@,
.LBE93:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:79: 	for (uint32_t i = 0; i < index_count; i += 3)
	.loc 1 79 42 is_stmt 0 discriminator 2 view .LVU167
	add	r9, r9, #3	@ i, i,
.LVL51:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:79: 	for (uint32_t i = 0; i < index_count; i += 3)
	.loc 1 79 25 discriminator 1 view .LVU168
	ldr	r3, [sp, #12]	@ index_count, %sfp
.LVL52:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:79: 	for (uint32_t i = 0; i < index_count; i += 3)
	.loc 1 79 42 discriminator 2 view .LVU169
	ldr	r2, [sp, #8]	@ ivtmp.40, %sfp
	.loc 1 79 42 is_stmt 1 discriminator 2 view .LVU170
.LVL53:
	.loc 1 79 25 discriminator 1 view .LVU171
	add	r10, r10, #6	@ ivtmp.38, ivtmp.38,
	cmp	r3, r9	@ index_count, i
	add	r2, r2, #6	@ ivtmp.40, ivtmp.40,
	bhi	.L12		@,
.LVL54:
.L5:
	.loc 1 79 25 is_stmt 0 discriminator 1 view .LVU172
.LBE97:
	.loc 1 95 2 is_stmt 1 view .LVU173
	mov	r0, r4	@, edge_table
	bl	plat_free		@
.LVL55:
	.loc 1 96 2 view .LVU174
	ldr	r0, [sp]	@, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:97: }
	.loc 1 97 1 is_stmt 0 view .LVU175
	add	sp, sp, #28	@,,
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 36
.LVL56:
	.loc 1 97 1 view .LVU176
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
.LCFI3:
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL57:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:96: 	plat_free(edge_face_table);
	.loc 1 96 2 view .LVU177
	b	plat_free		@
.LVL58:
.L19:
.LCFI4:
	.cfi_restore_state
.LBB98:
.LBB94:
.LBB91:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:89: 			uint16_t res = (*oppe == ~0u) ? 0xFFFF : edge_face_table[oppe - edge_table];
	.loc 1 89 13 discriminator 2 view .LVU178
	movw	r3, #65535	@ res,
	b	.L16		@
.LVL59:
.L18:
	.loc 1 89 13 discriminator 2 view .LVU179
.LBE91:
.LBE94:
.LBE98:
.LBB99:
.LBB43:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:19: 	while (buckets < count + count / 4)
	.loc 1 19 17 view .LVU180
	movs	r6, #2	@ _295,
	movs	r7, #4	@ _293,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:18: 	uint32_t buckets = 1;
	.loc 1 18 11 view .LVU181
	movs	r5, #1	@ buckets,
	b	.L2		@
.LVL60:
.L27:
	.loc 1 18 11 view .LVU182
.LBE43:
.LBE99:
.LBB100:
.LBB95:
.LBB92:
	.loc 1 89 4 is_stmt 1 view .LVU183
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\util\adjacency_generator.c:89: 			uint16_t res = (*oppe == ~0u) ? 0xFFFF : edge_face_table[oppe - edge_table];
	.loc 1 89 20 is_stmt 0 view .LVU184
	ldr	r3, [r6]	@ _142,* _112
	.inst	0xdeff
.L34:
	.align	2
.L33:
	.word	-554899859
	.word	next.0
.LBE92:
.LBE95:
.LBE100:
	.cfi_endproc
.LFE3:
	.size	generate_adjacency_buffer, .-generate_adjacency_buffer
	.section	.rodata.next.0,"a"
	.align	2
	.type	next.0, %object
	.size	next.0, 16
next.0:
	.word	1
	.word	2
	.word	0
	.word	1
	.text
.Letext0:
	.file 2 "D:/Playdate/arm-gnu-toolchain/lib/gcc/arm-none-eabi/15.3.1/include/stddef.h"
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/string.h"
	.file 6 "D:/Playdate/PlaydateSDK/Examples/playdate-quest/src/platform.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5e8
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ldebug_ranges0+0x1e8
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
	.uleb128 0x4
	.4byte	0x37
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x98
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x72
	.uleb128 0x4
	.4byte	0xa8
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x8c
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4b
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0xda
	.uleb128 0x8
	.4byte	0x9f
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF16
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x1
	.4byte	0x9f
	.byte	0x1
	.4byte	0xfd
	.uleb128 0x8
	.4byte	0x9f
	.uleb128 0x8
	.4byte	0x37
	.uleb128 0x8
	.4byte	0x30
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF17
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.byte	0x1
	.4byte	0x9f
	.byte	0x1
	.4byte	0x116
	.uleb128 0x8
	.4byte	0x43
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x507
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2e
	.byte	0x2a
	.4byte	0x507
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2e
	.byte	0x47
	.4byte	0x50d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2e
	.byte	0x59
	.4byte	0xb9
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x33
	.byte	0xb
	.4byte	0xb9
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.4byte	0x513
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x507
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3a
	.byte	0x13
	.4byte	0x529
	.byte	0x5
	.byte	0x3
	.4byte	next.0
	.uleb128 0xe
	.ascii	"fi\000"
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.4byte	0xa8
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xf
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x2ff
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x1
	.byte	0x3c
	.byte	0x10
	.4byte	0xb9
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0xe
	.ascii	"e\000"
	.byte	0x1
	.byte	0x3e
	.byte	0xc
	.4byte	0x37
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0xe
	.ascii	"i0\000"
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	0xa8
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x11
	.ascii	"i1\000"
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.4byte	0xa8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0xb9
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0x513
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x12
	.4byte	0x52e
	.4byte	.LBI49
	.byte	.LVU59
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x44
	.byte	0x16
	.uleb128 0x13
	.4byte	0x564
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x13
	.4byte	0x540
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x13
	.4byte	0x54c
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x13
	.4byte	0x558
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x14
	.4byte	0x570
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x14
	.4byte	0x57c
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x15
	.4byte	0x5d0
	.4byte	.LBI51
	.byte	.LVU64
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.4byte	0x2cd
	.uleb128 0x13
	.4byte	0x5de
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.uleb128 0x16
	.4byte	0x588
	.4byte	.Ldebug_ranges0+0xd8
	.uleb128 0x14
	.4byte	0x589
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x16
	.4byte	0x595
	.4byte	.Ldebug_ranges0+0xf0
	.uleb128 0x14
	.4byte	0x596
	.4byte	.LLST23
	.4byte	.LVUS23
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.Ldebug_ranges0+0x118
	.4byte	0x448
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4f
	.byte	0x10
	.4byte	0xb9
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0x140
	.uleb128 0xe
	.ascii	"e\000"
	.byte	0x1
	.byte	0x51
	.byte	0xc
	.4byte	0x37
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0x168
	.uleb128 0xe
	.ascii	"i0\000"
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.4byte	0xa8
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x11
	.ascii	"i1\000"
	.byte	0x1
	.byte	0x54
	.byte	0xd
	.4byte	0xa8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x57
	.byte	0xd
	.4byte	0xb9
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x58
	.byte	0xe
	.4byte	0x513
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0xe
	.ascii	"res\000"
	.byte	0x1
	.byte	0x59
	.byte	0xd
	.4byte	0xa8
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x12
	.4byte	0x52e
	.4byte	.LBI78
	.byte	.LVU123
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x58
	.byte	0x15
	.uleb128 0x13
	.4byte	0x564
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x13
	.4byte	0x540
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x13
	.4byte	0x54c
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x13
	.4byte	0x558
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x14
	.4byte	0x570
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x14
	.4byte	0x57c
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x17
	.4byte	0x588
	.4byte	.Ldebug_ranges0+0x1a8
	.4byte	0x421
	.uleb128 0x14
	.4byte	0x589
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x16
	.4byte	0x595
	.4byte	.Ldebug_ranges0+0x1c0
	.uleb128 0x14
	.4byte	0x596
	.4byte	.LLST37
	.4byte	.LVUS37
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x5d0
	.4byte	.LBI85
	.byte	.LVU128
	.4byte	.LBB85
	.4byte	.LBE85
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.uleb128 0x13
	.4byte	0x5de
	.4byte	.LLST38
	.4byte	.LVUS38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x5a5
	.4byte	.LBI38
	.byte	.LVU4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x33
	.byte	0x1d
	.4byte	0x478
	.uleb128 0x13
	.4byte	0x5b7
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x14
	.4byte	0x5c3
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0xfd
	.4byte	0x48c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0xfd
	.4byte	0x4a0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0xda
	.4byte	0x4c0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0xda
	.4byte	0x4e0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0xc5
	.4byte	0x4f4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL58
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x7d
	.sleb128 -64
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x1c
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x1c
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x1d
	.4byte	0x3e
	.4byte	0x529
	.uleb128 0x1e
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0x519
	.uleb128 0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0x18
	.byte	0x12
	.byte	0x1
	.4byte	0x513
	.byte	0x1
	.4byte	0x5a5
	.uleb128 0x20
	.4byte	.LASF27
	.byte	0x1
	.byte	0x18
	.byte	0x2d
	.4byte	0x513
	.uleb128 0x20
	.4byte	.LASF28
	.byte	0x1
	.byte	0x18
	.byte	0x3d
	.4byte	0xb9
	.uleb128 0x21
	.ascii	"key\000"
	.byte	0x1
	.byte	0x18
	.byte	0x4f
	.4byte	0xb9
	.uleb128 0x20
	.4byte	.LASF29
	.byte	0x1
	.byte	0x18
	.byte	0x5d
	.4byte	0xb9
	.uleb128 0x22
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1d
	.byte	0xb
	.4byte	0xb9
	.uleb128 0x22
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.4byte	0xb9
	.uleb128 0x23
	.uleb128 0x22
	.4byte	.LASF32
	.byte	0x1
	.byte	0x20
	.byte	0x10
	.4byte	0xb9
	.uleb128 0x23
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	0x513
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0x10
	.byte	0x11
	.byte	0x1
	.4byte	0xb9
	.byte	0x1
	.4byte	0x5d0
	.uleb128 0x20
	.4byte	.LASF36
	.byte	0x1
	.byte	0x10
	.byte	0x2c
	.4byte	0xb9
	.uleb128 0x22
	.4byte	.LASF28
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.4byte	0xb9
	.byte	0
	.uleb128 0x24
	.4byte	.LASF43
	.byte	0x1
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.4byte	0xb9
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb
	.byte	0x24
	.4byte	0xb9
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
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
	.sleb128 64
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE3
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL54
	.4byte	.LVL58
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
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL54
	.4byte	.LVL58
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
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x36
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-1
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL16
	.4byte	.LVL59
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
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LFE3
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
	.uleb128 .LVU20
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU25
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU30
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x7d
	.sleb128 -64
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU37
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU109
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x7
	.byte	0x91
	.sleb128 -56
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU37
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU109
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x78
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU47
	.uleb128 .LVU49
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU50
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU95
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x7c
	.sleb128 -2
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU58
	.uleb128 .LVU109
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU91
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU98
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU60
	.uleb128 .LVU91
.LLST15:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU59
	.uleb128 .LVU91
.LLST16:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU59
	.uleb128 .LVU91
.LLST17:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU59
	.uleb128 .LVU91
.LLST18:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU63
	.uleb128 .LVU91
.LLST19:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU71
	.uleb128 .LVU75
	.uleb128 .LVU80
	.uleb128 .LVU91
.LLST20:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU64
	.uleb128 .LVU66
.LLST21:
	.4byte	.LVL19
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU71
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU91
.LLST22:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU72
	.uleb128 .LVU83
	.uleb128 .LVU86
	.uleb128 .LVU91
.LLST23:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU109
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU172
	.uleb128 .LVU178
	.uleb128 .LVU179
.LLST24:
	.4byte	.LVL35
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x79
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU109
	.uleb128 .LVU111
.LLST25:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU113
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU164
	.uleb128 .LVU178
	.uleb128 .LVU179
.LLST26:
	.4byte	.LVL36
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x7c
	.sleb128 -2
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x7c
	.sleb128 -2
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU122
	.uleb128 .LVU172
	.uleb128 .LVU178
	.uleb128 .LVU179
.LLST27:
	.4byte	.LVL37
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU155
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU159
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU182
	.uleb128 0
.LLST28:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU160
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU172
.LLST29:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x78
	.sleb128 -2
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU124
	.uleb128 .LVU155
.LLST30:
	.4byte	.LVL37
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU123
	.uleb128 .LVU155
.LLST31:
	.4byte	.LVL37
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU123
	.uleb128 .LVU155
.LLST32:
	.4byte	.LVL37
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU123
	.uleb128 .LVU155
.LLST33:
	.4byte	.LVL37
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU127
	.uleb128 .LVU155
.LLST34:
	.4byte	.LVL37
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU135
	.uleb128 .LVU139
	.uleb128 .LVU144
	.uleb128 .LVU155
.LLST35:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU135
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU155
.LLST36:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU136
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU155
.LLST37:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU128
	.uleb128 .LVU130
.LLST38:
	.4byte	.LVL37
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU4
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU20
	.uleb128 .LVU179
	.uleb128 .LVU182
.LLST8:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU7
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU19
	.uleb128 .LVU179
	.uleb128 .LVU182
.LLST9:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
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
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	0
	.4byte	0
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	0
	.4byte	0
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF7:
	.ascii	"size_t\000"
.LASF42:
	.ascii	"next\000"
.LASF20:
	.ascii	"index_count\000"
.LASF33:
	.ascii	"item\000"
.LASF36:
	.ascii	"count\000"
.LASF34:
	.ascii	"edge_hash_lookup\000"
.LASF16:
	.ascii	"memset\000"
.LASF9:
	.ascii	"short unsigned int\000"
.LASF23:
	.ascii	"edge_face_table\000"
.LASF25:
	.ascii	"entry\000"
.LASF18:
	.ascii	"destination\000"
.LASF37:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF30:
	.ascii	"hashmod\000"
.LASF22:
	.ascii	"edge_table\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"plat_free\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF41:
	.ascii	"generate_adjacency_buffer\000"
.LASF32:
	.ascii	"probe\000"
.LASF21:
	.ascii	"edge_table_size\000"
.LASF43:
	.ascii	"edge_hash\000"
.LASF8:
	.ascii	"__uint16_t\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF39:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"plat_malloc\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF35:
	.ascii	"edge_hash_buckets\000"
.LASF29:
	.ascii	"empty\000"
.LASF38:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\util\\adjacency_generator.c\000"
.LASF24:
	.ascii	"edge\000"
.LASF2:
	.ascii	"long long int\000"
.LASF26:
	.ascii	"oppe\000"
.LASF13:
	.ascii	"char\000"
.LASF28:
	.ascii	"buckets\000"
.LASF6:
	.ascii	"short int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF10:
	.ascii	"long int\000"
.LASF3:
	.ascii	"long double\000"
.LASF4:
	.ascii	"signed char\000"
.LASF31:
	.ascii	"bucket\000"
.LASF27:
	.ascii	"table\000"
.LASF19:
	.ascii	"indices\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
