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
	.file	"main.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\main.c"
	.section	.rodata.app_initialize.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"house.pdm\000"
	.align	2
.LC1:
	.ascii	"Error: failed to load house.pdm\000"
	.section	.text.app_initialize,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	app_initialize
	.syntax unified
	.thumb
	.thumb_func
	.type	app_initialize, %function
app_initialize:
.LFB42:
	.loc 1 18 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 19 2 view .LVU1
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:19: 	G.rng = 1;
	.loc 1 19 8 is_stmt 0 view .LVU2
	movs	r2, #1	@ tmp119,
	ldr	r3, .L6	@ tmp118,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:18: {
	.loc 1 18 1 view .LVU3
	push	{lr}	@
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20	@,,
.LCFI1:
	.cfi_def_cfa_offset 24
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:19: 	G.rng = 1;
	.loc 1 19 8 view .LVU4
	str	r2, [r3, #8]	@ tmp119, G.rng
	.loc 1 20 2 is_stmt 1 view .LVU5
	bl	init_pixel_ops		@
.LVL0:
	.loc 1 22 2 view .LVU6
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:22: 	s_house = mesh_load_from_file("house.pdm");
	.loc 1 22 12 is_stmt 0 view .LVU7
	ldr	r0, .L6+4	@,
	bl	mesh_load_from_file		@
.LVL1:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:22: 	s_house = mesh_load_from_file("house.pdm");
	.loc 1 22 10 discriminator 1 view .LVU8
	ldr	r2, .L6+8	@ tmp121,
	str	r0, [r2]	@ _1, s_house
	.loc 1 23 2 is_stmt 1 view .LVU9
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:23: 	if (!s_house)
	.loc 1 23 5 is_stmt 0 view .LVU10
	cbz	r0, .L5	@ _1,
	.loc 1 29 2 is_stmt 1 view .LVU11
	ldr	r0, .L6+12	@,
	bl	scene_init		@
.LVL2:
	.loc 1 30 2 view .LVU12
.LBB18:
.LBI18:
	.file 2 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\mathlib.h"
	.loc 2 264 22 view .LVU13
	.loc 2 266 2 view .LVU14
	.loc 2 266 2 is_stmt 0 view .LVU15
.LBE18:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:30: 	scene_setLight(&s_scene, f3(-1.0f, 1.0f, -0.1f));
	.loc 1 30 2 discriminator 1 view .LVU16
	vmov.f32	s0, #-1.0e+0	@,
	vmov.f32	s1, #1.0e+0	@,
	vldr.32	s2, .L6+16	@,
	ldr	r0, .L6+12	@,
	bl	scene_setLight		@
.LVL3:
	.loc 1 32 2 is_stmt 1 view .LVU17
	ldr	r0, .L6+20	@,
	bl	mesh_instance_init		@
.LVL4:
	.loc 1 33 2 view .LVU18
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:34: 	s_house_inst.flags |= MeshDrawFlag_SilhouetteWire; // чёрный контур
	.loc 1 34 21 is_stmt 0 view .LVU19
	ldr	r1, .L6+20	@ tmp131,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:33: 	s_house_inst.mesh = s_house;
	.loc 1 33 20 view .LVU20
	ldr	r2, .L6+8	@ tmp121,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:34: 	s_house_inst.flags |= MeshDrawFlag_SilhouetteWire; // чёрный контур
	.loc 1 34 21 view .LVU21
	ldrb	r3, [r1, #56]	@ zero_extendqisi2	@ s_house_inst.flags, s_house_inst.flags
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:33: 	s_house_inst.mesh = s_house;
	.loc 1 33 20 view .LVU22
	ldr	r2, [r2]	@ s_house, s_house
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:34: 	s_house_inst.flags |= MeshDrawFlag_SilhouetteWire; // чёрный контур
	.loc 1 34 21 view .LVU23
	orr	r3, r3, #8	@ tmp139, s_house_inst.flags,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:35: 	scene_add_mesh(&s_scene, &s_house_inst);
	.loc 1 35 2 view .LVU24
	ldr	r0, .L6+12	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:33: 	s_house_inst.mesh = s_house;
	.loc 1 33 20 view .LVU25
	str	r2, [r1]	@ s_house, s_house_inst.mesh
	.loc 1 34 2 is_stmt 1 view .LVU26
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:34: 	s_house_inst.flags |= MeshDrawFlag_SilhouetteWire; // чёрный контур
	.loc 1 34 21 is_stmt 0 view .LVU27
	strb	r3, [r1, #56]	@ tmp139, s_house_inst.flags
	.loc 1 35 2 is_stmt 1 view .LVU28
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:36: }
	.loc 1 36 1 is_stmt 0 view .LVU29
	add	sp, sp, #20	@,,
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed	@
	ldr	lr, [sp], #4	@,
.LCFI3:
	.cfi_restore 14
	.cfi_def_cfa_offset 0
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:35: 	scene_add_mesh(&s_scene, &s_house_inst);
	.loc 1 35 2 view .LVU30
	b	scene_add_mesh		@
.LVL5:
.L5:
.LCFI4:
	.cfi_restore_state
	.loc 1 25 3 is_stmt 1 view .LVU31
	ldr	r0, .L6+24	@,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:36: }
	.loc 1 36 1 is_stmt 0 view .LVU32
	add	sp, sp, #20	@,,
.LCFI5:
	.cfi_def_cfa_offset 4
	@ sp needed	@
	ldr	lr, [sp], #4	@,
.LCFI6:
	.cfi_restore 14
	.cfi_def_cfa_offset 0
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:25: 		plat_sys_log_error("Error: failed to load house.pdm");
	.loc 1 25 3 view .LVU33
	b	plat_sys_log_error		@
.LVL6:
.L7:
	.align	2
.L6:
	.word	G
	.word	.LC0
	.word	s_house
	.word	s_scene
	.word	-1110651699
	.word	s_house_inst
	.word	.LC1
	.cfi_endproc
.LFE42:
	.size	app_initialize, .-app_initialize
	.section	.text.app_update,"ax",%progbits
	.align	1
	.p2align 4,,15
	.global	app_update
	.syntax unified
	.thumb
	.thumb_func
	.type	app_update, %function
app_update:
.LFB43:
	.loc 1 39 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 41 2 view .LVU35
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:39: {
	.loc 1 39 1 is_stmt 0 view .LVU36
	push	{r4, lr}	@
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:41: 	G.t_prev = G.t_cur;
	.loc 1 41 11 view .LVU37
	ldr	r4, .L34	@ tmp247,
	ldr	r3, [r4, #40]	@ float	@ G.t_cur, G.t_cur
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:39: {
	.loc 1 39 1 view .LVU38
	vpush.64	{d8}	@
.LCFI8:
	.cfi_def_cfa_offset 16
	.cfi_offset 80, -16
	.cfi_offset 81, -12
	sub	sp, sp, #64	@,,
.LCFI9:
	.cfi_def_cfa_offset 80
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:41: 	G.t_prev = G.t_cur;
	.loc 1 41 11 view .LVU39
	str	r3, [r4, #36]	@ float	@ G.t_cur, G.t_prev
	.loc 1 42 2 is_stmt 1 view .LVU40
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:42: 	G.t_cur = plat_time_get();
	.loc 1 42 12 is_stmt 0 view .LVU41
	bl	plat_time_get		@
.LVL7:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:43: 	G.t_dt = clamp_f(G.t_cur - G.t_prev, 0.0f, 0.5f);
	.loc 1 43 11 view .LVU42
	vldr.32	s15, [r4, #36]	@ G.t_prev, G.t_prev
.LBB19:
.LBB20:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:185: 	if (v > b) v = b;
	.loc 2 185 5 view .LVU43
	vmov.f32	s14, #5.0e-1	@ tmp172,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:184: 	if (v < a) v = a;
	.loc 2 184 5 view .LVU44
	vldr.32	s13, .L34+4	@ tmp170,
.LBE20:
.LBE19:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:43: 	G.t_dt = clamp_f(G.t_cur - G.t_prev, 0.0f, 0.5f);
	.loc 1 43 11 view .LVU45
	vsub.f32	s15, s0, s15	@ _4, _2, G.t_prev
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:47: 	plat_input_get_buttons(&btCur, &btPushed, &btRel);
	.loc 1 47 2 view .LVU46
	add	r1, sp, #26	@,,
	add	r0, sp, #25	@,,
	add	r2, sp, #27	@,,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:42: 	G.t_cur = plat_time_get();
	.loc 1 42 10 discriminator 1 view .LVU47
	vstr.32	s0, [r4, #40]	@ _2, G.t_cur
	.loc 1 43 2 is_stmt 1 view .LVU48
.LVL8:
.LBB22:
.LBI19:
	.loc 2 182 21 view .LVU49
.LBB21:
	.loc 2 184 2 view .LVU50
	.loc 2 185 2 view .LVU51
	.loc 2 186 2 view .LVU52
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:184: 	if (v < a) v = a;
	.loc 2 184 5 is_stmt 0 view .LVU53
	vmaxnm.f32	s15, s15, s13	@ _81, _4, tmp170
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:185: 	if (v > b) v = b;
	.loc 2 185 5 view .LVU54
	vminnm.f32	s15, s15, s14	@ _63, _81, tmp172
.LBE21:
.LBE22:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:43: 	G.t_dt = clamp_f(G.t_cur - G.t_prev, 0.0f, 0.5f);
	.loc 1 43 9 discriminator 1 view .LVU55
	vstr.32	s15, [r4, #44]	@ _63, G.t_dt
	.loc 1 46 2 is_stmt 1 view .LVU56
	.loc 1 47 2 view .LVU57
	bl	plat_input_get_buttons		@
.LVL9:
	.loc 1 48 2 view .LVU58
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:48: 	G.buttons_cur = btCur;
	.loc 1 48 16 is_stmt 0 view .LVU59
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ btCur, btCur
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:49: 	G.buttons_pressed = btPushed;
	.loc 1 49 20 view .LVU60
	ldrb	r3, [sp, #26]	@ zero_extendqisi2	@ btPushed, btPushed
	strd	r2, r3, [r4, #20]	@ btCur, btPushed, tmp247,
	.loc 1 50 2 is_stmt 1 view .LVU61
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:50: 	G.crank_angle_rad = plat_input_get_crank_angle_rad();
	.loc 1 50 22 is_stmt 0 view .LVU62
	bl	plat_input_get_crank_angle_rad		@
.LVL10:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:50: 	G.crank_angle_rad = plat_input_get_crank_angle_rad();
	.loc 1 50 20 discriminator 1 view .LVU63
	vstr.32	s0, [r4, #28]	@ _10, G.crank_angle_rad
	.loc 1 51 2 is_stmt 1 view .LVU64
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:51: 	G.crank_delta_angle_rad = plat_input_get_crank_delta_angle_rad();
	.loc 1 51 28 is_stmt 0 view .LVU65
	bl	plat_input_get_crank_delta_angle_rad		@
.LVL11:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:51: 	G.crank_delta_angle_rad = plat_input_get_crank_delta_angle_rad();
	.loc 1 51 26 discriminator 1 view .LVU66
	vstr.32	s0, [r4, #32]	@ _11, G.crank_delta_angle_rad
	.loc 1 53 2 is_stmt 1 view .LVU67
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:53: 	G.framebuffer = plat_gfx_get_frame();
	.loc 1 53 18 is_stmt 0 view .LVU68
	bl	plat_gfx_get_frame		@
.LVL12:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:54: 	G.framebuffer_stride = SCREEN_STRIDE_BYTES;
	.loc 1 54 23 view .LVU69
	movs	r3, #52	@ tmp184,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:53: 	G.framebuffer = plat_gfx_get_frame();
	.loc 1 53 16 discriminator 1 view .LVU70
	str	r0, [r4]	@, G.framebuffer
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:56: 	plat_gfx_clear(kSolidColorWhite);
	.loc 1 56 2 view .LVU71
	movs	r0, #1	@,
	.loc 1 54 2 is_stmt 1 view .LVU72
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:54: 	G.framebuffer_stride = SCREEN_STRIDE_BYTES;
	.loc 1 54 23 is_stmt 0 view .LVU73
	str	r3, [r4, #4]	@ tmp184, G.framebuffer_stride
	.loc 1 56 2 is_stmt 1 view .LVU74
	bl	plat_gfx_clear		@
.LVL13:
	.loc 1 58 2 view .LVU75
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:58: 	if (s_house)
	.loc 1 58 6 is_stmt 0 view .LVU76
	ldr	r3, .L34+8	@ tmp185,
	ldr	r3, [r3]	@ s_house.4_13, s_house
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:58: 	if (s_house)
	.loc 1 58 5 view .LVU77
	cmp	r3, #0	@ s_house.4_13
	beq	.L9	@
.LBB23:
	.loc 1 61 3 is_stmt 1 view .LVU78
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:61: 		s_cam_angle += G.crank_delta_angle_rad;
	.loc 1 61 15 is_stmt 0 view .LVU79
	ldr	r1, .L34+12	@ tmp248,
	vldr.32	s14, [r4, #32]	@ G.crank_delta_angle_rad, G.crank_delta_angle_rad
	vldr.32	s15, [r1]	@ s_cam_angle, s_cam_angle
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:62: 		if (G.buttons_cur & kPlatButtonLeft)  s_cam_angle -= 1.5f * G.t_dt;
	.loc 1 62 8 view .LVU80
	ldr	r2, [r4, #20]	@ _17, G.buttons_cur
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:61: 		s_cam_angle += G.crank_delta_angle_rad;
	.loc 1 61 15 view .LVU81
	vadd.f32	s14, s14, s15	@ _16, G.crank_delta_angle_rad, s_cam_angle
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:62: 		if (G.buttons_cur & kPlatButtonLeft)  s_cam_angle -= 1.5f * G.t_dt;
	.loc 1 62 6 view .LVU82
	lsls	r0, r2, #31	@, _17,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:61: 		s_cam_angle += G.crank_delta_angle_rad;
	.loc 1 61 15 view .LVU83
	vstr.32	s14, [r1]	@ _16, s_cam_angle
	.loc 1 62 3 is_stmt 1 view .LVU84
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:62: 		if (G.buttons_cur & kPlatButtonLeft)  s_cam_angle -= 1.5f * G.t_dt;
	.loc 1 62 6 is_stmt 0 view .LVU85
	bpl	.L10		@,
	.loc 1 62 40 is_stmt 1 discriminator 1 view .LVU86
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:62: 		if (G.buttons_cur & kPlatButtonLeft)  s_cam_angle -= 1.5f * G.t_dt;
	.loc 1 62 52 is_stmt 0 discriminator 1 view .LVU87
	vmov.f32	s15, #1.5e+0	@ tmp196,
	vldr.32	s13, [r4, #44]	@ G.t_dt, G.t_dt
	vfms.f32	s14, s13, s15	@ _16, G.t_dt, tmp196
	vstr.32	s14, [r1]	@ _16, s_cam_angle
.L10:
	.loc 1 63 3 is_stmt 1 view .LVU88
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:63: 		if (G.buttons_cur & kPlatButtonRight) s_cam_angle += 1.5f * G.t_dt;
	.loc 1 63 6 is_stmt 0 view .LVU89
	lsls	r0, r2, #30	@, _17,
	bpl	.L11		@,
	.loc 1 63 41 is_stmt 1 discriminator 1 view .LVU90
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:63: 		if (G.buttons_cur & kPlatButtonRight) s_cam_angle += 1.5f * G.t_dt;
	.loc 1 63 53 is_stmt 0 discriminator 1 view .LVU91
	vmov.f32	s15, #1.5e+0	@ tmp201,
	vldr.32	s13, [r4, #44]	@ G.t_dt, G.t_dt
	vfma.f32	s14, s13, s15	@ _16, G.t_dt, tmp201
	vstr.32	s14, [r1]	@ _16, s_cam_angle
.L11:
	.loc 1 64 3 is_stmt 1 view .LVU92
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:64: 		if (G.buttons_cur & kPlatButtonUp)    s_cam_dist -= 5.0f * G.t_dt;
	.loc 1 64 49 is_stmt 0 discriminator 1 view .LVU93
	ldr	r1, .L34+16	@ tmp250,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:64: 		if (G.buttons_cur & kPlatButtonUp)    s_cam_dist -= 5.0f * G.t_dt;
	.loc 1 64 6 view .LVU94
	lsls	r0, r2, #29	@, _17,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:64: 		if (G.buttons_cur & kPlatButtonUp)    s_cam_dist -= 5.0f * G.t_dt;
	.loc 1 64 49 discriminator 1 view .LVU95
	vldr.32	s15, [r1]	@ prephitmp_136, s_cam_dist
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:64: 		if (G.buttons_cur & kPlatButtonUp)    s_cam_dist -= 5.0f * G.t_dt;
	.loc 1 64 6 view .LVU96
	bpl	.L12		@,
	.loc 1 64 38 is_stmt 1 discriminator 1 view .LVU97
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:64: 		if (G.buttons_cur & kPlatButtonUp)    s_cam_dist -= 5.0f * G.t_dt;
	.loc 1 64 49 is_stmt 0 discriminator 1 view .LVU98
	vmov.f32	s13, #5.0e+0	@ tmp208,
	vldr.32	s12, [r4, #44]	@ G.t_dt, G.t_dt
	vfms.f32	s15, s12, s13	@ prephitmp_136, G.t_dt, tmp208
.L12:
	.loc 1 65 3 is_stmt 1 view .LVU99
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:65: 		if (G.buttons_cur & kPlatButtonDown)  s_cam_dist += 5.0f * G.t_dt;
	.loc 1 65 6 is_stmt 0 view .LVU100
	lsls	r2, r2, #28	@, _17,
	bpl	.L13		@,
	.loc 1 65 40 is_stmt 1 discriminator 1 view .LVU101
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:65: 		if (G.buttons_cur & kPlatButtonDown)  s_cam_dist += 5.0f * G.t_dt;
	.loc 1 65 51 is_stmt 0 discriminator 1 view .LVU102
	vmov.f32	s13, #5.0e+0	@ tmp212,
	vldr.32	s12, [r4, #44]	@ G.t_dt, G.t_dt
	vfma.f32	s15, s12, s13	@ prephitmp_136, G.t_dt, tmp212
.L13:
	.loc 1 66 3 is_stmt 1 view .LVU103
.LVL14:
.LBB24:
.LBI24:
	.loc 2 182 21 view .LVU104
.LBB25:
	.loc 2 184 2 view .LVU105
	.loc 2 185 2 view .LVU106
.LBE25:
.LBE24:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:67: 		if (G.buttons_pressed & kPlatButtonA)
	.loc 1 67 25 is_stmt 0 view .LVU107
	ldr	r2, [r4, #24]	@ G.buttons_pressed, G.buttons_pressed
.LBB28:
.LBB26:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:184: 	if (v < a) v = a;
	.loc 2 184 5 view .LVU108
	vmov.f32	s12, #1.0e+0	@ tmp213,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:185: 	if (v > b) v = b;
	.loc 2 185 5 view .LVU109
	vldr.32	s13, .L34+20	@ tmp214,
.LBE26:
.LBE28:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:67: 		if (G.buttons_pressed & kPlatButtonA)
	.loc 1 67 6 view .LVU110
	tst	r2, #32	@ G.buttons_pressed,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:68: 			s_draw_bluenoise = !s_draw_bluenoise;
	.loc 1 68 21 view .LVU111
	ldr	r2, .L34+24	@ tmp249,
.LBB29:
.LBB27:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:184: 	if (v < a) v = a;
	.loc 2 184 5 view .LVU112
	vmaxnm.f32	s15, s15, s12	@ _96, prephitmp_136, tmp213
.LVL15:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:185: 	if (v > b) v = b;
	.loc 2 185 5 view .LVU113
	vminnm.f32	s15, s15, s13	@ _96, _96, tmp214
.LVL16:
	.loc 2 186 2 is_stmt 1 view .LVU114
	.loc 2 186 2 is_stmt 0 view .LVU115
.LBE27:
.LBE29:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:66: 		s_cam_dist = clamp_f(s_cam_dist, 1.0f, 100.0f);
	.loc 1 66 14 discriminator 1 view .LVU116
	vstr.32	s15, [r1]	@ _96, s_cam_dist
	.loc 1 67 3 is_stmt 1 view .LVU117
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:67: 		if (G.buttons_pressed & kPlatButtonA)
	.loc 1 67 6 is_stmt 0 view .LVU118
	bne	.L32		@,
.L14:
	.loc 1 70 3 is_stmt 1 view .LVU119
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:70: 		float3 target = s_house->center;
	.loc 1 70 10 is_stmt 0 view .LVU120
	vldr.32	s3, [r3, #60]	@ target$x, s_house.4_13->center.x
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:71: 		float3 cam_pos = v3_add(target, f3(cosf(s_cam_angle) * s_cam_dist,
	.loc 1 71 38 view .LVU121
	vmov.f32	s0, s14	@, _16
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:70: 		float3 target = s_house->center;
	.loc 1 70 10 view .LVU122
	vldr.32	s4, [r3, #64]	@ target$y, s_house.4_13->center.y
	vldr.32	s5, [r3, #68]	@ target$z, s_house.4_13->center.z
	str	r2, [sp, #20]	@ tmp249, %sfp
	vstr.32	s15, [sp, #16]	@ int	@ _96, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:71: 		float3 cam_pos = v3_add(target, f3(cosf(s_cam_angle) * s_cam_dist,
	.loc 1 71 38 view .LVU123
	vstr.32	s14, [sp, #12]	@ int	@ _16, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:70: 		float3 target = s_house->center;
	.loc 1 70 10 view .LVU124
	vstr.32	s3, [sp, #8]	@ int	@ target$x, %sfp
.LVL17:
	.loc 1 70 10 view .LVU125
	vstr.32	s4, [sp, #4]	@ int	@ target$y, %sfp
.LVL18:
	.loc 1 70 10 view .LVU126
	vstr.32	s5, [sp]	@ int	@ target$z, %sfp
.LVL19:
	.loc 1 71 3 is_stmt 1 view .LVU127
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:71: 		float3 cam_pos = v3_add(target, f3(cosf(s_cam_angle) * s_cam_dist,
	.loc 1 71 38 is_stmt 0 view .LVU128
	bl	cosf		@
.LVL20:
	vmov.f32	s16, s0	@ _44,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:73: 		                                   sinf(s_cam_angle) * s_cam_dist));
	.loc 1 73 38 view .LVU129
	vldr.32	s0, [sp, #12]	@, %sfp
	bl	sinf		@
.LVL21:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:74: 		scene_setCamera(&s_scene, cam_pos, target, 1.0f, f3(0, 1, 0));
	.loc 1 74 3 discriminator 1 view .LVU130
	vldr.32	s3, [sp, #8]	@ int	@ target$x, %sfp
	vldr.32	s15, [sp, #16]	@ int	@ _96, %sfp
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:73: 		                                   sinf(s_cam_angle) * s_cam_dist));
	.loc 1 73 38 view .LVU131
	vmov.f32	s13, s0	@ _47,
.LVL22:
.LBB30:
.LBI30:
	.loc 2 302 22 is_stmt 1 view .LVU132
.LBB31:
	.loc 2 304 2 view .LVU133
.LBE31:
.LBE30:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:74: 		scene_setCamera(&s_scene, cam_pos, target, 1.0f, f3(0, 1, 0));
	.loc 1 74 3 is_stmt 0 discriminator 1 view .LVU134
	vmov.f32	s12, s3	@ tmp258, target$x
	vldr.32	s5, [sp]	@ int	@ target$z, %sfp
	vldr.32	s4, [sp, #4]	@ int	@ target$y, %sfp
	vmov.f32	s8, #1.0e+0	@ tmp228,
	vmov.f32	s2, s5	@ tmp260, target$z
	vldr.32	s7, .L34+4	@ tmp227,
	vfma.f32	s12, s16, s15	@ tmp258, _44, _96
.LBB34:
.LBB33:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\mathlib.h:304: 	return f3(a.x + v.x, a.y + v.y, a.z + v.z);
	.loc 2 304 9 view .LVU135
	vldr.32	s14, .L34+28	@ tmp225,
.LVL23:
.LBB32:
.LBI32:
	.loc 2 264 22 is_stmt 1 view .LVU136
	.loc 2 266 2 view .LVU137
	.loc 2 266 2 is_stmt 0 view .LVU138
.LBE32:
.LBE33:
.LBE34:
	.loc 1 74 3 is_stmt 1 view .LVU139
.LBB35:
.LBI35:
	.loc 2 264 22 view .LVU140
	.loc 2 266 2 view .LVU141
	.loc 2 266 2 is_stmt 0 view .LVU142
.LBE35:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:74: 		scene_setCamera(&s_scene, cam_pos, target, 1.0f, f3(0, 1, 0));
	.loc 1 74 3 discriminator 1 view .LVU143
	vmov.f32	s1, s4	@ tmp261, target$y
	ldr	r0, .L34+32	@,
	vfma.f32	s2, s13, s15	@ tmp260, _47, _96
	vmov.f32	s9, s7	@,
	vfma.f32	s1, s15, s14	@ tmp261, _96, tmp225
	vmov.f32	s6, s8	@,
	vmov.f32	s0, s12	@, tmp258
	bl	scene_setCamera		@
.LVL24:
	.loc 1 76 3 is_stmt 1 view .LVU144
	ldr	r2, [sp, #20]	@ tmp249, %sfp
	ldr	r0, .L34+32	@,
	ldrb	r3, [r2]	@ zero_extendqisi2	@, s_draw_bluenoise
	ldrd	r1, r2, [r4]	@,, tmp247
	bl	scene_draw		@
.LVL25:
.L9:
	.loc 1 76 3 is_stmt 0 view .LVU145
.LBE23:
	.loc 1 80 2 is_stmt 1 view .LVU146
	movs	r1, #239	@,
	movs	r0, #0	@,
	bl	plat_gfx_mark_updated_rows		@
.LVL26:
	.loc 1 81 2 view .LVU147
	bl	plat_sound_update		@
.LVL27:
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:82: }
	.loc 1 82 1 is_stmt 0 view .LVU148
	add	sp, sp, #64	@,,
.LCFI10:
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed	@
	vldm	sp!, {d8}	@
.LCFI11:
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 8
	pop	{r4, pc}	@
.L32:
.LCFI12:
	.cfi_restore_state
.LBB36:
	.loc 1 68 4 is_stmt 1 view .LVU149
	ldrb	r1, [r2]	@ zero_extendqisi2	@ s_draw_bluenoise, s_draw_bluenoise
	eor	r1, r1, #1	@ tmp223, s_draw_bluenoise,
@ D:\Playdate\PlaydateSDK\Examples\playdate-quest\src\main.c:68: 			s_draw_bluenoise = !s_draw_bluenoise;
	.loc 1 68 21 is_stmt 0 view .LVU150
	strb	r1, [r2]	@ tmp223, s_draw_bluenoise
	b	.L14		@
.L35:
	.align	2
.L34:
	.word	G
	.word	0
	.word	s_house
	.word	s_cam_angle
	.word	s_cam_dist
	.word	1120403456
	.word	s_draw_bluenoise
	.word	1053609165
	.word	s_scene
.LBE36:
	.cfi_endproc
.LFE43:
	.size	app_update, .-app_update
	.section	.bss.s_draw_bluenoise,"aw",%nobits
	.type	s_draw_bluenoise, %object
	.size	s_draw_bluenoise, 1
s_draw_bluenoise:
	.space	1
	.section	.data.s_cam_dist,"aw"
	.align	2
	.type	s_cam_dist, %object
	.size	s_cam_dist, 4
s_cam_dist:
	.word	1090519040
	.section	.data.s_cam_angle,"aw"
	.align	2
	.type	s_cam_angle, %object
	.size	s_cam_angle, 4
s_cam_angle:
	.word	1056964608
	.section	.bss.s_house_inst,"aw",%nobits
	.align	2
	.type	s_house_inst, %object
	.size	s_house_inst, 68
s_house_inst:
	.space	68
	.section	.bss.s_house,"aw",%nobits
	.align	2
	.type	s_house, %object
	.size	s_house, 4
s_house:
	.space	4
	.section	.bss.s_scene,"aw",%nobits
	.align	2
	.type	s_scene, %object
	.size	s_scene, 188
s_scene:
	.space	188
	.text
.Letext0:
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\globals.h"
	.file 6 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\platform.h"
	.file 7 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\render.h"
	.file 8 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/math.h"
	.file 9 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\util/pixel_ops.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc41
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xc
	.4byte	.LASF126
	.4byte	.LASF127
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
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
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x79
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x93
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x6d
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x87
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x30
	.byte	0x5
	.byte	0x9
	.byte	0x10
	.4byte	0x187
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0xc
	.byte	0xb
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0xd
	.byte	0x6
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"rng\000"
	.byte	0x5
	.byte	0x10
	.byte	0xb
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0x11
	.byte	0x6
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0x12
	.byte	0x6
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0x15
	.byte	0xb
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0x16
	.byte	0xb
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0x17
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0x18
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1b
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1c
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1d
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1e
	.byte	0x3
	.4byte	0xc5
	.uleb128 0x9
	.ascii	"G\000"
	.byte	0x5
	.byte	0x20
	.byte	0x10
	.4byte	0x18d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF29
	.uleb128 0xb
	.4byte	0x1a7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1ae
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF30
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0xc
	.byte	0x2
	.2byte	0x101
	.byte	0x10
	.4byte	0x1f9
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x103
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x105
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x106
	.byte	0x3
	.4byte	0x1c0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x30
	.byte	0x2
	.2byte	0x15c
	.byte	0x10
	.4byte	0x252
	.uleb128 0xd
	.ascii	"pos\000"
	.byte	0x2
	.2byte	0x15e
	.byte	0x9
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.ascii	"ax\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0x9
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii	"ay\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0xd
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.ascii	"az\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0x11
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x160
	.byte	0x3
	.4byte	0x206
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x5f
	.byte	0x6
	.byte	0xd
	.byte	0xe
	.4byte	0x27a
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x6
	.byte	0x10
	.byte	0x3
	.4byte	0x25f
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x5f
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.4byte	0x2b9
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x6
	.byte	0x1a
	.byte	0x3
	.4byte	0x286
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x7
	.byte	0x1
	.4byte	0x5f
	.byte	0x7
	.byte	0x5
	.byte	0x6
	.4byte	0x2de
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x7
	.byte	0x1
	.4byte	0x5f
	.byte	0x7
	.byte	0x9
	.byte	0x6
	.4byte	0x309
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x7
	.byte	0x1
	.4byte	0x5f
	.byte	0x7
	.byte	0x20
	.byte	0x6
	.4byte	0x322
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x4c
	.byte	0x7
	.byte	0x26
	.byte	0x10
	.4byte	0x3f3
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0x27
	.byte	0x6
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x7
	.byte	0x28
	.byte	0x6
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x7
	.byte	0x29
	.byte	0x8
	.4byte	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x7
	.byte	0x2a
	.byte	0x6
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x7
	.byte	0x2b
	.byte	0xc
	.4byte	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.ascii	"uvs\000"
	.byte	0x7
	.byte	0x2c
	.byte	0x9
	.4byte	0x3f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x7
	.byte	0x2d
	.byte	0xb
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0x2f
	.byte	0xc
	.4byte	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x7
	.byte	0x31
	.byte	0x9
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x7
	.byte	0x32
	.byte	0x9
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x7
	.byte	0x33
	.byte	0x11
	.4byte	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xad
	.uleb128 0x8
	.byte	0x4
	.4byte	0x29
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x7
	.byte	0x34
	.byte	0x3
	.4byte	0x322
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x44
	.byte	0x7
	.byte	0x3a
	.byte	0x10
	.4byte	0x472
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x7
	.byte	0x3b
	.byte	0x8
	.4byte	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"tr\000"
	.byte	0x7
	.byte	0x3c
	.byte	0x8
	.4byte	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x7
	.byte	0x3d
	.byte	0x6
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x7
	.byte	0x3e
	.byte	0x15
	.4byte	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x7
	.byte	0x3f
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x7
	.byte	0x40
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3ff
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x7
	.byte	0x41
	.byte	0x3
	.4byte	0x40b
	.uleb128 0xb
	.4byte	0x478
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0xbc
	.byte	0x7
	.byte	0x45
	.byte	0x10
	.4byte	0x5ff
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x7
	.byte	0x47
	.byte	0x8
	.4byte	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x7
	.byte	0x48
	.byte	0x8
	.4byte	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x7
	.byte	0x49
	.byte	0x9
	.4byte	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x7
	.byte	0x4c
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0x7
	.byte	0x4d
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x7
	.byte	0x50
	.byte	0x8
	.4byte	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0x7
	.byte	0x52
	.byte	0x6
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x7
	.byte	0x53
	.byte	0xa
	.4byte	0x5ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0x7
	.byte	0x54
	.byte	0xa
	.4byte	0x5ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x7
	.byte	0x56
	.byte	0x6
	.4byte	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x7
	.byte	0x57
	.byte	0xc
	.4byte	0x605
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x7
	.byte	0x58
	.byte	0xc
	.4byte	0x605
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x7
	.byte	0x5a
	.byte	0x6
	.4byte	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x7
	.byte	0x5b
	.byte	0xc
	.4byte	0x605
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x7
	.byte	0x5d
	.byte	0x6
	.4byte	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x7
	.byte	0x5e
	.byte	0x6
	.4byte	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x7
	.byte	0x5f
	.byte	0x17
	.4byte	0x60b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x7
	.byte	0x60
	.byte	0xc
	.4byte	0x605
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x7
	.byte	0x61
	.byte	0xc
	.4byte	0x605
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x7
	.byte	0x63
	.byte	0x6
	.4byte	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x7
	.byte	0x64
	.byte	0x6
	.4byte	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x7
	.byte	0x65
	.byte	0xa
	.4byte	0x5ff
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x7
	.byte	0x67
	.byte	0x6
	.4byte	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1f9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x611
	.uleb128 0x8
	.byte	0x4
	.4byte	0x484
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x7
	.byte	0x68
	.byte	0x3
	.4byte	0x489
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x1
	.byte	0x9
	.byte	0xe
	.4byte	0x617
	.byte	0x5
	.byte	0x3
	.4byte	s_scene
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x1
	.byte	0xa
	.byte	0xe
	.4byte	0x472
	.byte	0x5
	.byte	0x3
	.4byte	s_house
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x1
	.byte	0xb
	.byte	0x15
	.4byte	0x478
	.byte	0x5
	.byte	0x3
	.4byte	s_house_inst
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x1
	.byte	0xd
	.byte	0xe
	.4byte	0x29
	.byte	0x5
	.byte	0x3
	.4byte	s_cam_angle
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.4byte	0x29
	.byte	0x5
	.byte	0x3
	.4byte	s_cam_dist
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.4byte	0x68f
	.byte	0x5
	.byte	0x3
	.4byte	s_draw_bluenoise
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF100
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF118
	.byte	0x6
	.byte	0x36
	.byte	0x6
	.byte	0x1
	.4byte	0x6a6
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF101
	.byte	0x6
	.byte	0x23
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x6c0
	.uleb128 0x16
	.4byte	0x30
	.uleb128 0x16
	.4byte	0x30
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF102
	.byte	0x7
	.byte	0x72
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x6e4
	.uleb128 0x16
	.4byte	0x6e4
	.uleb128 0x16
	.4byte	0x187
	.uleb128 0x16
	.4byte	0x30
	.uleb128 0x16
	.4byte	0x309
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x617
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF103
	.byte	0x7
	.byte	0x6c
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x713
	.uleb128 0x16
	.4byte	0x6e4
	.uleb128 0x16
	.4byte	0x1f9
	.uleb128 0x16
	.4byte	0x1f9
	.uleb128 0x16
	.4byte	0x29
	.uleb128 0x16
	.4byte	0x1f9
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x177
	.byte	0xe
	.byte	0x1
	.4byte	0x29
	.byte	0x1
	.4byte	0x72d
	.uleb128 0x16
	.4byte	0x29
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x176
	.byte	0xe
	.byte	0x1
	.4byte	0x29
	.byte	0x1
	.4byte	0x747
	.uleb128 0x16
	.4byte	0x29
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF106
	.byte	0x6
	.byte	0x20
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x75c
	.uleb128 0x16
	.4byte	0x27a
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF107
	.byte	0x6
	.byte	0x21
	.byte	0xa
	.4byte	0x187
	.byte	0x1
	.4byte	0x770
	.uleb128 0x14
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF108
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x29
	.byte	0x1
	.4byte	0x784
	.uleb128 0x14
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF109
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x29
	.byte	0x1
	.4byte	0x798
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF110
	.byte	0x6
	.byte	0x42
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x7b7
	.uleb128 0x16
	.4byte	0x7b7
	.uleb128 0x16
	.4byte	0x7b7
	.uleb128 0x16
	.4byte	0x7b7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2b9
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF111
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.4byte	0x29
	.byte	0x1
	.4byte	0x7d1
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF112
	.byte	0x7
	.byte	0x70
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x7eb
	.uleb128 0x16
	.4byte	0x6e4
	.uleb128 0x16
	.4byte	0x611
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF113
	.byte	0x7
	.byte	0x43
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x800
	.uleb128 0x16
	.4byte	0x800
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x478
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF114
	.byte	0x7
	.byte	0x6d
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x820
	.uleb128 0x16
	.4byte	0x6e4
	.uleb128 0x16
	.4byte	0x1f9
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF115
	.byte	0x7
	.byte	0x6a
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x835
	.uleb128 0x16
	.4byte	0x6e4
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF116
	.byte	0x6
	.byte	0x46
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x84b
	.uleb128 0x16
	.4byte	0x1b3
	.uleb128 0x14
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF117
	.byte	0x7
	.byte	0x36
	.byte	0x7
	.byte	0x1
	.4byte	0x472
	.byte	0x1
	.4byte	0x864
	.uleb128 0x16
	.4byte	0x1b3
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF119
	.byte	0x9
	.byte	0xa
	.byte	0x6
	.byte	0x1
	.4byte	0x874
	.uleb128 0x14
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST4
	.byte	0x1
	.4byte	0xac3
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x1
	.byte	0x2e
	.byte	0xe
	.4byte	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 -55
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0x1
	.byte	0x2e
	.byte	0x15
	.4byte	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x1
	.byte	0x2e
	.byte	0x1f
	.4byte	0x2b9
	.byte	0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xa14
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x1
	.byte	0x46
	.byte	0xa
	.4byte	0x1f9
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x1
	.byte	0x47
	.byte	0xa
	.4byte	0x1f9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	0xc17
	.4byte	.LBI24
	.byte	.LVU104
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x42
	.byte	0x10
	.4byte	0x924
	.uleb128 0x1e
	.4byte	0xc25
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1e
	.4byte	0xc2f
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x1e
	.4byte	0xc39
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x1d
	.4byte	0xbb9
	.4byte	.LBI30
	.byte	.LVU132
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x47
	.byte	0x14
	.4byte	0x97a
	.uleb128 0x1e
	.4byte	0xbcc
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1e
	.4byte	0xbd7
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1f
	.4byte	0xbe3
	.4byte	.LBI32
	.byte	.LVU136
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0x2
	.2byte	0x130
	.byte	0x9
	.uleb128 0x20
	.4byte	0xbf5
	.uleb128 0x20
	.4byte	0xc00
	.uleb128 0x20
	.4byte	0xc0b
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0xbe3
	.4byte	.LBI35
	.byte	.LVU140
	.4byte	.LBB35
	.4byte	.LBE35
	.byte	0x1
	.byte	0x4a
	.byte	0x3
	.4byte	0x9bb
	.uleb128 0x1e
	.4byte	0xbf5
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1e
	.4byte	0xc00
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1e
	.4byte	0xc0b
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0x72d
	.uleb128 0x23
	.4byte	.LVL21
	.4byte	0x713
	.4byte	0x9dd
	.uleb128 0x24
	.byte	0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x6
	.byte	0x91
	.sleb128 -68
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0x6ea
	.4byte	0xa00
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	s_scene
	.uleb128 0x24
	.byte	0x2
	.byte	0x90
	.uleb128 0x46
	.byte	0x7
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f800000
	.byte	0
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0x6c0
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	s_scene
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0xc17
	.4byte	.LBI19
	.byte	.LVU49
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2b
	.byte	0xb
	.4byte	0xa49
	.uleb128 0x20
	.4byte	0xc25
	.uleb128 0x1e
	.4byte	0xc2f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1e
	.4byte	0xc39
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL7
	.4byte	0x7bd
	.uleb128 0x23
	.4byte	.LVL9
	.4byte	0x798
	.4byte	0xa72
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -55
	.uleb128 0x24
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x24
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x91
	.sleb128 -53
	.byte	0
	.uleb128 0x22
	.4byte	.LVL10
	.4byte	0x784
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0x770
	.uleb128 0x22
	.4byte	.LVL12
	.4byte	0x75c
	.uleb128 0x23
	.4byte	.LVL13
	.4byte	0x747
	.4byte	0xaa0
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL26
	.4byte	0x6a6
	.4byte	0xab9
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.uleb128 0x24
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xef
	.byte	0
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0x696
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xbb9
	.uleb128 0x21
	.4byte	0xbe3
	.4byte	.LBI18
	.byte	.LVU13
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.4byte	0xb1e
	.uleb128 0x1e
	.4byte	0xbf5
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1e
	.4byte	0xc00
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1e
	.4byte	0xc0b
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x22
	.4byte	.LVL0
	.4byte	0x864
	.uleb128 0x23
	.4byte	.LVL1
	.4byte	0x84b
	.4byte	0xb3e
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL2
	.4byte	0x820
	.4byte	0xb55
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	s_scene
	.byte	0
	.uleb128 0x23
	.4byte	.LVL3
	.4byte	0x806
	.4byte	0xb6c
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	s_scene
	.byte	0
	.uleb128 0x23
	.4byte	.LVL4
	.4byte	0x7eb
	.4byte	0xb83
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	s_house_inst
	.byte	0
	.uleb128 0x26
	.4byte	.LVL5
	.byte	0x1
	.4byte	0x7d1
	.4byte	0xba4
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	s_scene
	.uleb128 0x24
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	s_house_inst
	.byte	0
	.uleb128 0x27
	.4byte	.LVL6
	.byte	0x1
	.4byte	0x835
	.uleb128 0x24
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x12e
	.byte	0x16
	.byte	0x1
	.4byte	0x1f9
	.byte	0x3
	.4byte	0xbe3
	.uleb128 0x29
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x12e
	.byte	0x24
	.4byte	0x1f9
	.uleb128 0x29
	.ascii	"v\000"
	.byte	0x2
	.2byte	0x12e
	.byte	0x2e
	.4byte	0x1f9
	.byte	0
	.uleb128 0x2a
	.ascii	"f3\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x16
	.byte	0x1
	.4byte	0x1f9
	.byte	0x3
	.4byte	0xc17
	.uleb128 0x29
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x1f
	.4byte	0x29
	.uleb128 0x29
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x28
	.4byte	0x29
	.uleb128 0x29
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x31
	.4byte	0x29
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF131
	.byte	0x2
	.byte	0xb6
	.byte	0x15
	.byte	0x1
	.4byte	0x29
	.byte	0x3
	.uleb128 0x2c
	.ascii	"v\000"
	.byte	0x2
	.byte	0xb6
	.byte	0x23
	.4byte	0x29
	.uleb128 0x2c
	.ascii	"a\000"
	.byte	0x2
	.byte	0xb6
	.byte	0x2c
	.4byte	0x29
	.uleb128 0x2c
	.ascii	"b\000"
	.byte	0x2
	.byte	0xb6
	.byte	0x35
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
.LLST4:
	.4byte	.LFB43
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
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI12
	.4byte	.LFE43
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU125
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU145
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x7
	.byte	0x91
	.sleb128 -72
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0xc
	.byte	0x91
	.sleb128 -72
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0xe
	.byte	0x91
	.sleb128 -72
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x93
	.uleb128 0x4
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU104
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x3
	.4byte	s_cam_dist
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0x12
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f800000
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU104
	.uleb128 .LVU115
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU104
	.uleb128 .LVU115
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x42c80000
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU130
	.uleb128 .LVU138
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0xe
	.byte	0x91
	.sleb128 -72
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x93
	.uleb128 0x4
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU130
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU138
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1e
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0x91
	.sleb128 -64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3ecccccd
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x28
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0x91
	.sleb128 -64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3ecccccd
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x91
	.sleb128 -64
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU140
	.uleb128 .LVU142
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU140
	.uleb128 .LVU142
.LLST14:
	.4byte	.LVL23
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU49
	.uleb128 .LVU53
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU49
	.uleb128 .LVU53
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f000000
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
	.sleb128 4
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU13
	.uleb128 .LVU15
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xbf800000
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU13
	.uleb128 .LVU15
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU15
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xbdcccccd
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"framebuffer\000"
.LASF76:
	.ascii	"scale\000"
.LASF18:
	.ascii	"framebuffer_stride\000"
.LASF56:
	.ascii	"tri_count\000"
.LASF72:
	.ascii	"view_xform\000"
.LASF131:
	.ascii	"clamp_f\000"
.LASF7:
	.ascii	"__uint8_t\000"
.LASF54:
	.ascii	"vertex_frame_count\000"
.LASF47:
	.ascii	"MeshDrawFlag_Lighting\000"
.LASF73:
	.ascii	"light\000"
.LASF130:
	.ascii	"v3_add\000"
.LASF52:
	.ascii	"Mesh\000"
.LASF82:
	.ascii	"tmp_order_table2\000"
.LASF36:
	.ascii	"kPlatButtonLeft\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF42:
	.ascii	"PlatButtons\000"
.LASF32:
	.ascii	"xform\000"
.LASF67:
	.ascii	"frame\000"
.LASF86:
	.ascii	"inst_cap\000"
.LASF62:
	.ascii	"bbox_max\000"
.LASF70:
	.ascii	"Scene\000"
.LASF81:
	.ascii	"tmp_order_table1\000"
.LASF50:
	.ascii	"SceneDrawFlags\000"
.LASF93:
	.ascii	"stats_visible_tris\000"
.LASF2:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF98:
	.ascii	"s_cam_dist\000"
.LASF55:
	.ascii	"vertices\000"
.LASF123:
	.ascii	"target\000"
.LASF99:
	.ascii	"s_draw_bluenoise\000"
.LASF10:
	.ascii	"long int\000"
.LASF27:
	.ascii	"t_dt\000"
.LASF89:
	.ascii	"tmp_inst_order_table2\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF97:
	.ascii	"s_cam_angle\000"
.LASF30:
	.ascii	"double\000"
.LASF116:
	.ascii	"plat_sys_log_error\000"
.LASF110:
	.ascii	"plat_input_get_buttons\000"
.LASF59:
	.ascii	"wire_flags\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF37:
	.ascii	"kPlatButtonRight\000"
.LASF83:
	.ascii	"vis_tris_mask_cap\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF34:
	.ascii	"kSolidColorWhite\000"
.LASF87:
	.ascii	"instances\000"
.LASF129:
	.ascii	"app_initialize\000"
.LASF96:
	.ascii	"s_house_inst\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF39:
	.ascii	"kPlatButtonDown\000"
.LASF43:
	.ascii	"MeshFlag_FloatVertices\000"
.LASF109:
	.ascii	"plat_input_get_crank_angle_rad\000"
.LASF9:
	.ascii	"short unsigned int\000"
.LASF41:
	.ascii	"kPlatButtonA\000"
.LASF25:
	.ascii	"t_prev\000"
.LASF45:
	.ascii	"MeshDrawFlags\000"
.LASF124:
	.ascii	"cam_pos\000"
.LASF111:
	.ascii	"plat_time_get\000"
.LASF46:
	.ascii	"MeshDrawFlag_Solid\000"
.LASF35:
	.ascii	"SolidColor\000"
.LASF126:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\main.c\000"
.LASF51:
	.ascii	"SceneDrawFlag_DitherBluenoise\000"
.LASF57:
	.ascii	"tris\000"
.LASF63:
	.ascii	"center\000"
.LASF21:
	.ascii	"buttons_cur\000"
.LASF69:
	.ascii	"sort_bias\000"
.LASF113:
	.ascii	"mesh_instance_init\000"
.LASF84:
	.ascii	"tmp_vis_tris_mask\000"
.LASF106:
	.ascii	"plat_gfx_clear\000"
.LASF3:
	.ascii	"long double\000"
.LASF90:
	.ascii	"line_count\000"
.LASF88:
	.ascii	"tmp_inst_order_table1\000"
.LASF66:
	.ascii	"mesh\000"
.LASF102:
	.ascii	"scene_draw\000"
.LASF119:
	.ascii	"init_pixel_ops\000"
.LASF94:
	.ascii	"s_scene\000"
.LASF58:
	.ascii	"colors\000"
.LASF108:
	.ascii	"plat_input_get_crank_delta_angle_rad\000"
.LASF79:
	.ascii	"tmp_proj_points\000"
.LASF0:
	.ascii	"float\000"
.LASF53:
	.ascii	"vertex_count\000"
.LASF48:
	.ascii	"MeshDrawFlag_Wire\000"
.LASF100:
	.ascii	"_Bool\000"
.LASF71:
	.ascii	"camera_xform\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF85:
	.ascii	"inst_count\000"
.LASF6:
	.ascii	"short int\000"
.LASF118:
	.ascii	"plat_sound_update\000"
.LASF128:
	.ascii	"app_update\000"
.LASF101:
	.ascii	"plat_gfx_mark_updated_rows\000"
.LASF114:
	.ascii	"scene_setLight\000"
.LASF31:
	.ascii	"float3\000"
.LASF103:
	.ascii	"scene_setCamera\000"
.LASF23:
	.ascii	"crank_angle_rad\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF24:
	.ascii	"crank_delta_angle_rad\000"
.LASF127:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF121:
	.ascii	"btPushed\000"
.LASF29:
	.ascii	"char\000"
.LASF68:
	.ascii	"color\000"
.LASF22:
	.ascii	"buttons_pressed\000"
.LASF80:
	.ascii	"order_cap\000"
.LASF44:
	.ascii	"MeshFlags\000"
.LASF92:
	.ascii	"line_buf\000"
.LASF8:
	.ascii	"__uint16_t\000"
.LASF120:
	.ascii	"btCur\000"
.LASF115:
	.ascii	"scene_init\000"
.LASF60:
	.ascii	"adjacency\000"
.LASF104:
	.ascii	"sinf\000"
.LASF117:
	.ascii	"mesh_load_from_file\000"
.LASF95:
	.ascii	"s_house\000"
.LASF61:
	.ascii	"bbox_min\000"
.LASF105:
	.ascii	"cosf\000"
.LASF112:
	.ascii	"scene_add_mesh\000"
.LASF77:
	.ascii	"tmp_points_cap\000"
.LASF78:
	.ascii	"tmp_view_points\000"
.LASF125:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF28:
	.ascii	"Globals\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF38:
	.ascii	"kPlatButtonUp\000"
.LASF33:
	.ascii	"kSolidColorBlack\000"
.LASF64:
	.ascii	"flags\000"
.LASF40:
	.ascii	"kPlatButtonB\000"
.LASF74:
	.ascii	"centerx\000"
.LASF75:
	.ascii	"centery\000"
.LASF19:
	.ascii	"statval1\000"
.LASF20:
	.ascii	"statval2\000"
.LASF26:
	.ascii	"t_cur\000"
.LASF49:
	.ascii	"MeshDrawFlag_SilhouetteWire\000"
.LASF122:
	.ascii	"btRel\000"
.LASF65:
	.ascii	"MeshInstance\000"
.LASF107:
	.ascii	"plat_gfx_get_frame\000"
.LASF91:
	.ascii	"line_cap\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
