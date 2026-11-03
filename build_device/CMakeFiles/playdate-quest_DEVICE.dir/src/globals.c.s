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
	.file	"globals.c"
@ GNU C11 (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) version 15.3.1 20260627 (arm-none-eabi)
@	compiled by GNU C version 13-win32, GMP version 6.2.1, MPFR version 3.1.6, MPC version 1.0.3, isl version isl-0.15-1-g835ea3a-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations -march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -ffast-math -falign-functions=16 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-common
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\globals.c"
	.global	G
	.section	.bss.G,"aw",%nobits
	.align	2
	.type	G, %object
	.size	G, 48
G:
	.space	48
	.text
.Letext0:
	.file 2 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "D:/Playdate/arm-gnu-toolchain/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest\\src\\globals.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x18c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x40
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x68
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x30
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.4byte	0x15c
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc
	.byte	0xb
	.4byte	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd
	.byte	0x6
	.4byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"rng\000"
	.byte	0x4
	.byte	0x10
	.byte	0xb
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x11
	.byte	0x6
	.4byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x12
	.byte	0x6
	.4byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.byte	0xb
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x16
	.byte	0xb
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x17
	.byte	0x8
	.4byte	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.4byte	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x1b
	.byte	0x8
	.4byte	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1c
	.byte	0x8
	.4byte	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1d
	.byte	0x8
	.4byte	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x82
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF25
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0x1e
	.byte	0x3
	.4byte	0x9a
	.uleb128 0x9
	.ascii	"G\000"
	.byte	0x4
	.byte	0x20
	.byte	0x10
	.4byte	0x169
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x175
	.byte	0x1
	.byte	0x5
	.byte	0x9
	.byte	0x5
	.byte	0x3
	.4byte	G
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF16:
	.ascii	"statval1\000"
.LASF17:
	.ascii	"statval2\000"
.LASF8:
	.ascii	"__uint8_t\000"
.LASF26:
	.ascii	"Globals\000"
.LASF23:
	.ascii	"t_cur\000"
.LASF18:
	.ascii	"buttons_cur\000"
.LASF25:
	.ascii	"float\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF24:
	.ascii	"t_dt\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF29:
	.ascii	"D:\\\\Playdate\\\\PlaydateSDK\\\\Examples\\\\playda"
	.ascii	"te-quest\\\\build_device\000"
.LASF15:
	.ascii	"framebuffer_stride\000"
.LASF22:
	.ascii	"t_prev\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF27:
	.ascii	"GNU C11 15.3.1 20260627 -mthumb -mcpu=cortex-m7 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv5-sp-d16 -mword-relocations "
	.ascii	"-march=armv7e-m+fpv5 -gdwarf-2 -O3 -O2 -std=gnu11 -"
	.ascii	"ffast-math -falign-functions=16 -fomit-frame-pointe"
	.ascii	"r -ffunction-sections -fdata-sections -fno-common\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF14:
	.ascii	"framebuffer\000"
.LASF20:
	.ascii	"crank_angle_rad\000"
.LASF19:
	.ascii	"buttons_pressed\000"
.LASF1:
	.ascii	"long long int\000"
.LASF28:
	.ascii	"D:\\Playdate\\PlaydateSDK\\Examples\\playdate-quest"
	.ascii	"\\src\\globals.c\000"
.LASF5:
	.ascii	"short int\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"long int\000"
.LASF2:
	.ascii	"long double\000"
.LASF3:
	.ascii	"signed char\000"
.LASF21:
	.ascii	"crank_delta_angle_rad\000"
	.ident	"GCC: (Arm GNU Toolchain 15.3.Rel2 (Build arm-15.181)) 15.3.1 20260627"
