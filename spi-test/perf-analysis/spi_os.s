	.file	"spi.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C (AVR_8_bit_GNU_Toolchain_3.5.0_419) version 4.9.2 (avr)
 ; 	compiled by GNU C version 4.9.3, GMP version 5.0.2, MPFR version 3.0.0, MPC version 0.9
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -fpreprocessed spi.i -mn-flash=2 -mno-skip-bug
 ;  -mmcu=avr51 -auxbase-strip mcu/spi.o -g3 -O0 -Os -Wall -Wextra
 ;  -Wconversion -Wstrict-prototypes -Wmissing-prototypes
 ;  -Wmissing-declarations -fmessage-length=0 -fverbose-asm
 ;  options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
 ;  -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
 ;  -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
 ;  -fdefer-pop -fdevirtualize -fdevirtualize-speculatively
 ;  -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 ;  -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
 ;  -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
 ;  -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
 ;  -findirect-inlining -finline -finline-atomics -finline-functions
 ;  -finline-functions-called-once -finline-small-functions -fipa-cp
 ;  -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
 ;  -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
 ;  -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
 ;  -fleading-underscore -fmath-errno -fmerge-constants
 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 ;  -foptimize-sibling-calls -fpartial-inlining -fpeephole -fpeephole2
 ;  -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
 ;  -freorder-functions -frerun-cse-after-loop
 ;  -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 ;  -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 ;  -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 ;  -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
 ;  -fstrict-overflow -fstrict-volatile-bitfields -fsync-libcalls
 ;  -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 ;  -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
 ;  -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
 ;  -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
 ;  -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
 ;  -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
 ;  -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
 ;  -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
 ;  -funit-at-a-time -fvar-tracking -fvar-tracking-assignments
 ;  -fverbose-asm -fzero-initialized-in-bss

	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	SPI_MasterInit
	.type	SPI_MasterInit, @function
SPI_MasterInit:
.LFB17:
	.file 1 "../mcu/spi.c"
	 ;  ../mcu/spi.c:49
	.loc 1 49 0
	.cfi_startproc
.LVL0:
 ;  BLOCK 2 freq:10000 seq:0
 ;  PRED: ENTRY [100.0%]  (FALLTHRU)
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	 ;  ../mcu/spi.c:51
	.loc 1 51 0
	in r25,0x4	 ;  ddrb, MEM[(volatile uint8_t *)36B]
.LVL1:
	 ;  ../mcu/spi.c:53
	.loc 1 53 0
	andi r25,lo8(-65)	 ;  D.2059,
.LVL2:
	ori r25,lo8(-80)	 ;  ddrb,
.LVL3:
	 ;  ../mcu/spi.c:54
	.loc 1 54 0
	out 0x4,r25	 ;  MEM[(volatile uint8_t *)36B], ddrb
.LVL4:
	 ;  ../mcu/spi.c:57
	.loc 1 57 0
	mov r25,r24	 ;  tmp, speed
.LVL5:
	andi r25,lo8(3)	 ;  tmp,
.LVL6:
	 ;  ../mcu/spi.c:58
	.loc 1 58 0
	ori r25,lo8(80)	 ;  spcr,
.LVL7:
	 ;  ../mcu/spi.c:59
	.loc 1 59 0
	out 0x2c,r25	 ;  MEM[(volatile uint8_t *)76B], spcr
.LVL8:
	 ;  ../mcu/spi.c:60
	.loc 1 60 0
	bst r24,2	 ;  speed,
	clr r24	 ;  D.2059
	bld r24,0	 ;  D.2059
.LVL9:
	out 0x2d,r24	 ;  MEM[(volatile uint8_t *)77B], D.2059
 ;  SUCC: EXIT [100.0%] 
	ret
	.cfi_endproc
.LFE17:
	.size	SPI_MasterInit, .-SPI_MasterInit
.global	SPI_SlaveInit
	.type	SPI_SlaveInit, @function
SPI_SlaveInit:
.LFB18:
	 ;  ../mcu/spi.c:64
	.loc 1 64 0
	.cfi_startproc
 ;  BLOCK 2 freq:10000 seq:0
 ;  PRED: ENTRY [100.0%]  (FALLTHRU)
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	 ;  ../mcu/spi.c:65
	.loc 1 65 0
	sts spi_in_idx,__zero_reg__	 ;  spi_in_idx,
	 ;  ../mcu/spi.c:66
	.loc 1 66 0
	ldi r24,lo8(-1)	 ;  tmp45,
	sts spi_out_idx,r24	 ;  spi_out_idx, tmp45
	 ;  ../mcu/spi.c:68
	.loc 1 68 0
	ldi r20,lo8(-1)	 ; ,
	ldi r22,lo8(spi_in_buf)	 ; ,
	ldi r23,hi8(spi_in_buf)	 ; ,
	ldi r24,lo8(spi_in_fifo)	 ; ,
	ldi r25,hi8(spi_in_fifo)	 ; ,
	call fifo_init	 ; 
.LVL10:
	 ;  ../mcu/spi.c:69
	.loc 1 69 0
	ldi r20,lo8(-1)	 ; ,
	ldi r22,lo8(spi_out_buf)	 ; ,
	ldi r23,hi8(spi_out_buf)	 ; ,
	ldi r24,lo8(spi_out_fifo)	 ; ,
	ldi r25,hi8(spi_out_fifo)	 ; ,
	call fifo_init	 ; 
.LVL11:
	 ;  ../mcu/spi.c:72
	.loc 1 72 0
	in r24,0x4	 ;  ddrb, MEM[(volatile uint8_t *)36B]
.LVL12:
	 ;  ../mcu/spi.c:74
	.loc 1 74 0
	andi r24,lo8(79)	 ;  D.2063,
.LVL13:
	ori r24,lo8(64)	 ;  ddrb,
.LVL14:
	 ;  ../mcu/spi.c:75
	.loc 1 75 0
	out 0x4,r24	 ;  MEM[(volatile uint8_t *)36B], ddrb
	 ;  ../mcu/spi.c:78
	.loc 1 78 0
	ldi r24,lo8(64)	 ;  tmp49,
.LVL15:
	out 0x2c,r24	 ;  MEM[(volatile uint8_t *)76B], tmp49
.LVL16:
 ;  SUCC: EXIT [100.0%] 
	ret
	.cfi_endproc
.LFE18:
	.size	SPI_SlaveInit, .-SPI_SlaveInit
.global	SPI_MasterTransmit
	.type	SPI_MasterTransmit, @function
SPI_MasterTransmit:
.LFB19:
	 ;  ../mcu/spi.c:85
	.loc 1 85 0
	.cfi_startproc
.LVL17:
 ;  BLOCK 2 freq:900 seq:0
 ;  PRED: ENTRY [100.0%]  (FALLTHRU)
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  SUCC: 3 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	 ;  ../mcu/spi.c:87
	.loc 1 87 0
	out 0x2e,r24	 ;  MEM[(volatile uint8_t *)78B], data
 ;  BLOCK 3 freq:10000 seq:1
 ;  PRED: 2 [100.0%]  (FALLTHRU,CAN_FALLTHRU) 3 [91.0%]  (DFS_BACK,CAN_FALLTHRU)
.L4:
 ;  SUCC: 3 [91.0%]  (DFS_BACK,CAN_FALLTHRU) 4 [9.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	 ;  ../mcu/spi.c:89
	.loc 1 89 0 discriminator 1
	in __tmp_reg__,0x2d	 ; 
	sbrs __tmp_reg__,7	 ; 
	rjmp .L4	 ; 
 ;  BLOCK 4 freq:900 seq:2
 ;  PRED: 3 [9.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
/* epilogue start */
 ;  SUCC: EXIT [100.0%] 
	 ;  ../mcu/spi.c:90
	.loc 1 90 0
	ret
	.cfi_endproc
.LFE19:
	.size	SPI_MasterTransmit, .-SPI_MasterTransmit
.global	SPI_MasterReceive
	.type	SPI_MasterReceive, @function
SPI_MasterReceive:
.LFB20:
	 ;  ../mcu/spi.c:96
	.loc 1 96 0
	.cfi_startproc
 ;  BLOCK 2 freq:900 seq:0
 ;  PRED: ENTRY [100.0%]  (FALLTHRU)
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	 ;  ../mcu/spi.c:97
	.loc 1 97 0
	ldi r24,lo8(-1)	 ;  tmp47,
 ;  SUCC: 3 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	out 0x2e,r24	 ;  MEM[(volatile uint8_t *)78B], tmp47
 ;  BLOCK 3 freq:10000 seq:1
 ;  PRED: 2 [100.0%]  (FALLTHRU,CAN_FALLTHRU) 3 [91.0%]  (DFS_BACK,CAN_FALLTHRU)
.L8:
 ;  SUCC: 3 [91.0%]  (DFS_BACK,CAN_FALLTHRU) 4 [9.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	 ;  ../mcu/spi.c:99
	.loc 1 99 0 discriminator 1
	in __tmp_reg__,0x2d	 ; 
	sbrs __tmp_reg__,7	 ; 
	rjmp .L8	 ; 
 ;  BLOCK 4 freq:900 seq:2
 ;  PRED: 3 [9.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	 ;  ../mcu/spi.c:101
	.loc 1 101 0
	in r24,0x2e	 ;  D.2072, MEM[(volatile uint8_t *)78B]
 ;  SUCC: EXIT [100.0%] 
	 ;  ../mcu/spi.c:102
	.loc 1 102 0
	ret
	.cfi_endproc
.LFE20:
	.size	SPI_MasterReceive, .-SPI_MasterReceive
.global	SPI_SlaveSendReceive
	.type	SPI_SlaveSendReceive, @function
SPI_SlaveSendReceive:
.LFB21:
	 ;  ../mcu/spi.c:105
	.loc 1 105 0
	.cfi_startproc
.LVL18:
 ;  BLOCK 2 freq:900 seq:0
 ;  PRED: ENTRY [100.0%]  (FALLTHRU)
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
 ;  SUCC: 3 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	 ;  ../mcu/spi.c:106
	.loc 1 106 0
	out 0x2e,r24	 ;  MEM[(volatile uint8_t *)78B], data
 ;  BLOCK 3 freq:10000 seq:1
 ;  PRED: 2 [100.0%]  (FALLTHRU,CAN_FALLTHRU) 3 [91.0%]  (DFS_BACK,CAN_FALLTHRU)
.L11:
 ;  SUCC: 3 [91.0%]  (DFS_BACK,CAN_FALLTHRU) 4 [9.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	 ;  ../mcu/spi.c:109
	.loc 1 109 0 discriminator 1
	in __tmp_reg__,0x2d	 ; 
	sbrs __tmp_reg__,7	 ; 
	rjmp .L11	 ; 
 ;  BLOCK 4 freq:900 seq:2
 ;  PRED: 3 [9.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	 ;  ../mcu/spi.c:112
	.loc 1 112 0
	in r24,0x2e	 ;  D.2077, MEM[(volatile uint8_t *)78B]
.LVL19:
 ;  SUCC: EXIT [100.0%] 
	 ;  ../mcu/spi.c:113
	.loc 1 113 0
	ret
	.cfi_endproc
.LFE21:
	.size	SPI_SlaveSendReceive, .-SPI_SlaveSendReceive
.global	__vector_19
	.type	__vector_19, @function
__vector_19:
.LFB22:
	 ;  ../mcu/spi.c:116
	.loc 1 116 0
	.cfi_startproc
 ;  BLOCK 2 freq:10000 seq:0
 ;  PRED: ENTRY [100.0%]  (FALLTHRU)
	push r1	 ;                              2
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0	 ;                              2
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__	 ; ,                    1
	push r0	 ;                              2
	clr __zero_reg__	 ;                  1
	in r0,__RAMPZ__	 ; ,                    1
	push r0	 ;                              2
	push r18	 ;                          2
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19	 ;                          2
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20	 ;                          2
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21	 ;                          2
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22	 ;                          2
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23	 ;                          2
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24	 ;                          2
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25	 ;                          2
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26	 ;                          2
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27	 ;                          2
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30	 ;                          2
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31	 ;                          2
.LCFI13:
	.cfi_def_cfa_offset 16                  => 35
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	 ;  ../mcu/spi.c:118
	.loc 1 118 0
	in r24,0x2e	 ;  D.2080, MEM[(volatile uint8_t *)78B]        1
	sts spi_in_data,r24	 ;  spi_in_data, D.2080                 2
	 ;  ../mcu/spi.c:119
	.loc 1 119 0
	sts spi_signal,__zero_reg__	 ;  spi_signal.value,           2
	 ;  ../mcu/spi.c:120
	.loc 1 120 0
	lds r22,tickCount	 ;  now, tickCount.u32                  2
	lds r23,tickCount+1	 ;  now, tickCount.u32                  2
	lds r24,tickCount+2	 ;  now, tickCount.u32                  2
	lds r25,tickCount+3	 ;  now, tickCount.u32                  2
.LVL20:
	 ;  ../mcu/spi.c:121
	.loc 1 121 0
	call os_schedule	 ;                                      4
.LVL21:                                                         => 17
/* epilogue start */
	 ;  ../mcu/spi.c:141
	.loc 1 141 0
	pop r31	 ;                                                  2
	pop r30	 ;                                                  2
	pop r27	 ;                                                  2
	pop r26	 ;                                                  2
	pop r25	 ;                                                  2
	pop r24	 ;                                                  2
	pop r23	 ;                                                  2
	pop r22	 ;                                                  2
	pop r21	 ;                                                  2
	pop r20	 ;                                                  2
	pop r19	 ;                                                  2
	pop r18	 ;                                                  2
	pop r0	 ;                                                  2
	out __RAMPZ__,r0	 ; ,                                    1
	pop r0	 ;                                                  2
	out __SREG__,r0	 ; ,                                        1
	pop r0	 ;                                                  2
	pop r1	 ;                                                  2
 ;  SUCC: EXIT [100 .0%]
	reti                                                        4
	.cfi_endproc                                                => 38
.LFE22:                                                             => 90
	.size	__vector_19, .-__vector_19
	.comm	spi_in_data,1,1
	.comm	spi_signal,1,1
	.comm	spi_out_fifo,10,1
	.comm	spi_in_fifo,10,1
	.comm	spi_out_idx,1,1
	.comm	spi_in_idx,1,1
	.comm	spi_out_buf,255,1
	.comm	spi_in_buf,255,1
.Letext0:
	.file 2 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/stdint.h"
	.file 3 "include/spi.h"
	.file 4 "include/timer.h"
	.file 5 "include/os_thread.h"
	.file 6 "include/fifo.h"
	.file 7 "include/os_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4b0	 ;  Length of Compilation Unit Info
	.word	0x2	 ;  DWARF version number
	.long	.Ldebug_abbrev0	 ;  Offset Into Abbrev. Section
	.byte	0x4	 ;  Pointer Size (in bytes)
	.uleb128 0x1	 ;  (DIE (0xb) DW_TAG_compile_unit)
	.long	.LASF2075	 ;  DW_AT_producer: "GNU C 4.9.2 -fpreprocessed -mn-flash=2 -mno-skip-bug -mmcu=avr51 -g3 -O0 -Os -fmessage-length=0"
	.byte	0x1	 ;  DW_AT_language
	.long	.LASF2076	 ;  DW_AT_name: "../mcu/spi.c"
	.long	.LASF2077	 ;  DW_AT_comp_dir: "Debug-MCU-m1284p"
	.long	.Ltext0	 ;  DW_AT_low_pc
	.long	.Letext0	 ;  DW_AT_high_pc
	.long	.Ldebug_line0	 ;  DW_AT_stmt_list
	.long	.Ldebug_macro0	 ;  DW_AT_GNU_macros
	.uleb128 0x2	 ;  (DIE (0x29) DW_TAG_base_type)
	.byte	0x1	 ;  DW_AT_byte_size
	.byte	0x6	 ;  DW_AT_encoding
	.long	.LASF2024	 ;  DW_AT_name: "signed char"
	.uleb128 0x3	 ;  (DIE (0x30) DW_TAG_typedef)
	.long	.LASF2026	 ;  DW_AT_name: "uint8_t"
	.byte	0x2	 ;  DW_AT_decl_file (/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/stdint.h)
	.byte	0x7a	 ;  DW_AT_decl_line
	.long	0x3b	 ;  DW_AT_type
	.uleb128 0x2	 ;  (DIE (0x3b) DW_TAG_base_type)
	.byte	0x1	 ;  DW_AT_byte_size
	.byte	0x8	 ;  DW_AT_encoding
	.long	.LASF2025	 ;  DW_AT_name: "unsigned char"
	.uleb128 0x4	 ;  (DIE (0x42) DW_TAG_base_type)
	.byte	0x2	 ;  DW_AT_byte_size
	.byte	0x5	 ;  DW_AT_encoding
	.ascii "int\0"	 ;  DW_AT_name
	.uleb128 0x3	 ;  (DIE (0x49) DW_TAG_typedef)
	.long	.LASF2027	 ;  DW_AT_name: "uint16_t"
	.byte	0x2	 ;  DW_AT_decl_file (/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/stdint.h)
	.byte	0x7c	 ;  DW_AT_decl_line
	.long	0x54	 ;  DW_AT_type
	.uleb128 0x2	 ;  (DIE (0x54) DW_TAG_base_type)
	.byte	0x2	 ;  DW_AT_byte_size
	.byte	0x7	 ;  DW_AT_encoding
	.long	.LASF2028	 ;  DW_AT_name: "unsigned int"
	.uleb128 0x2	 ;  (DIE (0x5b) DW_TAG_base_type)
	.byte	0x4	 ;  DW_AT_byte_size
	.byte	0x5	 ;  DW_AT_encoding
	.long	.LASF2029	 ;  DW_AT_name: "long int"
	.uleb128 0x3	 ;  (DIE (0x62) DW_TAG_typedef)
	.long	.LASF2030	 ;  DW_AT_name: "uint32_t"
	.byte	0x2	 ;  DW_AT_decl_file (/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/stdint.h)
	.byte	0x7e	 ;  DW_AT_decl_line
	.long	0x6d	 ;  DW_AT_type
	.uleb128 0x2	 ;  (DIE (0x6d) DW_TAG_base_type)
	.byte	0x4	 ;  DW_AT_byte_size
	.byte	0x7	 ;  DW_AT_encoding
	.long	.LASF2031	 ;  DW_AT_name: "long unsigned int"
	.uleb128 0x2	 ;  (DIE (0x74) DW_TAG_base_type)
	.byte	0x8	 ;  DW_AT_byte_size
	.byte	0x5	 ;  DW_AT_encoding
	.long	.LASF2032	 ;  DW_AT_name: "long long int"
	.uleb128 0x2	 ;  (DIE (0x7b) DW_TAG_base_type)
	.byte	0x8	 ;  DW_AT_byte_size
	.byte	0x7	 ;  DW_AT_encoding
	.long	.LASF2033	 ;  DW_AT_name: "long long unsigned int"
	.uleb128 0x5	 ;  (DIE (0x82) DW_TAG_structure_type)
	.byte	0x1	 ;  DW_AT_byte_size
	.byte	0x3	 ;  DW_AT_decl_file (include/spi.h)
	.byte	0x22	 ;  DW_AT_decl_line
	.long	0xbe	 ;  DW_AT_sibling
	.uleb128 0x6	 ;  (DIE (0x8a) DW_TAG_member)
	.long	.LASF2034	 ;  DW_AT_name: "spr0"
	.byte	0x3	 ;  DW_AT_decl_file (include/spi.h)
	.byte	0x23	 ;  DW_AT_decl_line
	.long	0x54	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_byte_size
	.byte	0x1	 ;  DW_AT_bit_size
	.byte	0xf	 ;  DW_AT_bit_offset
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x6	 ;  (DIE (0x9b) DW_TAG_member)
	.long	.LASF2035	 ;  DW_AT_name: "spr1"
	.byte	0x3	 ;  DW_AT_decl_file (include/spi.h)
	.byte	0x24	 ;  DW_AT_decl_line
	.long	0x54	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_byte_size
	.byte	0x1	 ;  DW_AT_bit_size
	.byte	0xe	 ;  DW_AT_bit_offset
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x6	 ;  (DIE (0xac) DW_TAG_member)
	.long	.LASF2036	 ;  DW_AT_name: "spi2x"
	.byte	0x3	 ;  DW_AT_decl_file (include/spi.h)
	.byte	0x25	 ;  DW_AT_decl_line
	.long	0x54	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_byte_size
	.byte	0x1	 ;  DW_AT_bit_size
	.byte	0xd	 ;  DW_AT_bit_offset
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0
	.byte	0	 ;  end of children of DIE 0x82
	.uleb128 0x7	 ;  (DIE (0xbe) DW_TAG_union_type)
	.byte	0x1	 ;  DW_AT_byte_size
	.byte	0x3	 ;  DW_AT_decl_file (include/spi.h)
	.byte	0x21	 ;  DW_AT_decl_line
	.long	0xdd	 ;  DW_AT_sibling
	.uleb128 0x8	 ;  (DIE (0xc6) DW_TAG_member)
	.long	.LASF2037	 ;  DW_AT_name: "data"
	.byte	0x3	 ;  DW_AT_decl_file (include/spi.h)
	.byte	0x27	 ;  DW_AT_decl_line
	.long	0x82	 ;  DW_AT_type
	.uleb128 0x9	 ;  (DIE (0xd1) DW_TAG_member)
	.ascii "raw\0"	 ;  DW_AT_name
	.byte	0x3	 ;  DW_AT_decl_file (include/spi.h)
	.byte	0x28	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0	 ;  end of children of DIE 0xbe
	.uleb128 0x3	 ;  (DIE (0xdd) DW_TAG_typedef)
	.long	.LASF2038	 ;  DW_AT_name: "spi_speed_t"
	.byte	0x3	 ;  DW_AT_decl_file (include/spi.h)
	.byte	0x29	 ;  DW_AT_decl_line
	.long	0xbe	 ;  DW_AT_type
	.uleb128 0x7	 ;  (DIE (0xe8) DW_TAG_union_type)
	.byte	0x4	 ;  DW_AT_byte_size
	.byte	0x4	 ;  DW_AT_decl_file (include/timer.h)
	.byte	0x58	 ;  DW_AT_decl_line
	.long	0x111	 ;  DW_AT_sibling
	.uleb128 0x9	 ;  (DIE (0xf0) DW_TAG_member)
	.ascii "u32\0"	 ;  DW_AT_name
	.byte	0x4	 ;  DW_AT_decl_file (include/timer.h)
	.byte	0x59	 ;  DW_AT_decl_line
	.long	0x62	 ;  DW_AT_type
	.uleb128 0x9	 ;  (DIE (0xfb) DW_TAG_member)
	.ascii "u16\0"	 ;  DW_AT_name
	.byte	0x4	 ;  DW_AT_decl_file (include/timer.h)
	.byte	0x5a	 ;  DW_AT_decl_line
	.long	0x49	 ;  DW_AT_type
	.uleb128 0x9	 ;  (DIE (0x106) DW_TAG_member)
	.ascii "u8\0"	 ;  DW_AT_name
	.byte	0x4	 ;  DW_AT_decl_file (include/timer.h)
	.byte	0x5b	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0	 ;  end of children of DIE 0xe8
	.uleb128 0x3	 ;  (DIE (0x111) DW_TAG_typedef)
	.long	.LASF2039	 ;  DW_AT_name: "tickCount_t"
	.byte	0x4	 ;  DW_AT_decl_file (include/timer.h)
	.byte	0x5c	 ;  DW_AT_decl_line
	.long	0xe8	 ;  DW_AT_type
	.uleb128 0x5	 ;  (DIE (0x11c) DW_TAG_structure_type)
	.byte	0x1	 ;  DW_AT_byte_size
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x28	 ;  DW_AT_decl_line
	.long	0x133	 ;  DW_AT_sibling
	.uleb128 0xa	 ;  (DIE (0x124) DW_TAG_member)
	.long	.LASF2041	 ;  DW_AT_name: "value"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x29	 ;  DW_AT_decl_line
	.long	0x133	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0
	.byte	0	 ;  end of children of DIE 0x11c
	.uleb128 0xb	 ;  (DIE (0x133) DW_TAG_volatile_type)
	.long	0x30	 ;  DW_AT_type
	.uleb128 0x3	 ;  (DIE (0x138) DW_TAG_typedef)
	.long	.LASF2040	 ;  DW_AT_name: "os_signal_t"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x2e	 ;  DW_AT_decl_line
	.long	0x11c	 ;  DW_AT_type
	.uleb128 0xc	 ;  (DIE (0x143) DW_TAG_pointer_type)
	.byte	0x2	 ;  DW_AT_byte_size
	.uleb128 0x5	 ;  (DIE (0x145) DW_TAG_structure_type)
	.byte	0xa	 ;  DW_AT_byte_size
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x5e	 ;  DW_AT_decl_line
	.long	0x186	 ;  DW_AT_sibling
	.uleb128 0xa	 ;  (DIE (0x14d) DW_TAG_member)
	.long	.LASF2042	 ;  DW_AT_name: "stack"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x5f	 ;  DW_AT_decl_line
	.long	0x143	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0xa	 ;  (DIE (0x15b) DW_TAG_member)
	.long	.LASF2043	 ;  DW_AT_name: "nextSchedule"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x60	 ;  DW_AT_decl_line
	.long	0x62	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x2
	.uleb128 0xa	 ;  (DIE (0x169) DW_TAG_member)
	.long	.LASF2044	 ;  DW_AT_name: "lastSchedule"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x61	 ;  DW_AT_decl_line
	.long	0x49	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x6
	.uleb128 0xa	 ;  (DIE (0x177) DW_TAG_member)
	.long	.LASF2045	 ;  DW_AT_name: "wait_for"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x62	 ;  DW_AT_decl_line
	.long	0x186	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x8
	.byte	0	 ;  end of children of DIE 0x145
	.uleb128 0xd	 ;  (DIE (0x186) DW_TAG_pointer_type)
	.byte	0x2	 ;  DW_AT_byte_size
	.long	0x138	 ;  DW_AT_type
	.uleb128 0x3	 ;  (DIE (0x18c) DW_TAG_typedef)
	.long	.LASF2046	 ;  DW_AT_name: "Tcb_t"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x66	 ;  DW_AT_decl_line
	.long	0x145	 ;  DW_AT_type
	.uleb128 0x5	 ;  (DIE (0x197) DW_TAG_structure_type)
	.byte	0xa	 ;  DW_AT_byte_size
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x30	 ;  DW_AT_decl_line
	.long	0x210	 ;  DW_AT_sibling
	.uleb128 0xa	 ;  (DIE (0x19f) DW_TAG_member)
	.long	.LASF2047	 ;  DW_AT_name: "count"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x31	 ;  DW_AT_decl_line
	.long	0x133	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0xa	 ;  (DIE (0x1ad) DW_TAG_member)
	.long	.LASF2048	 ;  DW_AT_name: "size"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x32	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x1
	.uleb128 0xa	 ;  (DIE (0x1bb) DW_TAG_member)
	.long	.LASF2049	 ;  DW_AT_name: "pread"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x33	 ;  DW_AT_decl_line
	.long	0x210	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x2
	.uleb128 0xa	 ;  (DIE (0x1c9) DW_TAG_member)
	.long	.LASF2050	 ;  DW_AT_name: "pwrite"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x34	 ;  DW_AT_decl_line
	.long	0x210	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0xa	 ;  (DIE (0x1d7) DW_TAG_member)
	.long	.LASF2051	 ;  DW_AT_name: "read2end"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x35	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x6
	.uleb128 0xa	 ;  (DIE (0x1e5) DW_TAG_member)
	.long	.LASF2052	 ;  DW_AT_name: "write2end"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x36	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x7
	.uleb128 0xa	 ;  (DIE (0x1f3) DW_TAG_member)
	.long	.LASF2053	 ;  DW_AT_name: "overflow"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x37	 ;  DW_AT_decl_line
	.long	0x133	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0xa	 ;  (DIE (0x201) DW_TAG_member)
	.long	.LASF2054	 ;  DW_AT_name: "signal"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x3c	 ;  DW_AT_decl_line
	.long	0x138	 ;  DW_AT_type
	.byte	0x2	 ;  DW_AT_data_member_location
	.byte	0x23	 ;  DW_OP_plus_uconst
	.uleb128 0x9
	.byte	0	 ;  end of children of DIE 0x197
	.uleb128 0xd	 ;  (DIE (0x210) DW_TAG_pointer_type)
	.byte	0x2	 ;  DW_AT_byte_size
	.long	0x30	 ;  DW_AT_type
	.uleb128 0x3	 ;  (DIE (0x216) DW_TAG_typedef)
	.long	.LASF2055	 ;  DW_AT_name: "fifo_t"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x44	 ;  DW_AT_decl_line
	.long	0x197	 ;  DW_AT_type
	.uleb128 0xe	 ;  (DIE (0x221) DW_TAG_subprogram)
	.byte	0x1	 ;  DW_AT_external
	.long	.LASF2058	 ;  DW_AT_name: "SPI_MasterInit"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x31	 ;  DW_AT_decl_line
	.byte	0x1	 ;  DW_AT_prototyped
	.long	.LFB17	 ;  DW_AT_low_pc
	.long	.LFE17	 ;  DW_AT_high_pc
	.byte	0x3	 ;  DW_AT_frame_base
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 2
	.byte	0x1	 ;  DW_AT_GNU_all_call_sites
	.long	0x278	 ;  DW_AT_sibling
	.uleb128 0xf	 ;  (DIE (0x23b) DW_TAG_formal_parameter)
	.long	.LASF2061	 ;  DW_AT_name: "speed"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x31	 ;  DW_AT_decl_line
	.long	0xdd	 ;  DW_AT_type
	.long	.LLST0	 ;  DW_AT_location
	.uleb128 0x10	 ;  (DIE (0x24a) DW_TAG_variable)
	.long	.LASF2056	 ;  DW_AT_name: "ddrb"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x33	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.long	.LLST1	 ;  DW_AT_location
	.uleb128 0x10	 ;  (DIE (0x259) DW_TAG_variable)
	.long	.LASF2057	 ;  DW_AT_name: "spcr"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x38	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.long	.LLST2	 ;  DW_AT_location
	.uleb128 0x11	 ;  (DIE (0x268) DW_TAG_variable)
	.ascii "tmp\0"	 ;  DW_AT_name
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x39	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.long	.LLST3	 ;  DW_AT_location
	.byte	0	 ;  end of children of DIE 0x221
	.uleb128 0xe	 ;  (DIE (0x278) DW_TAG_subprogram)
	.byte	0x1	 ;  DW_AT_external
	.long	.LASF2059	 ;  DW_AT_name: "SPI_SlaveInit"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x40	 ;  DW_AT_decl_line
	.byte	0x1	 ;  DW_AT_prototyped
	.long	.LFB18	 ;  DW_AT_low_pc
	.long	.LFE18	 ;  DW_AT_high_pc
	.byte	0x3	 ;  DW_AT_frame_base
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 2
	.byte	0x1	 ;  DW_AT_GNU_all_call_sites
	.long	0x2fe	 ;  DW_AT_sibling
	.uleb128 0x10	 ;  (DIE (0x292) DW_TAG_variable)
	.long	.LASF2056	 ;  DW_AT_name: "ddrb"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x48	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.long	.LLST4	 ;  DW_AT_location
	.uleb128 0x12	 ;  (DIE (0x2a1) DW_TAG_GNU_call_site)
	.long	.LVL10	 ;  DW_AT_low_pc
	.long	0x47a	 ;  DW_AT_abstract_origin
	.long	0x2d1	 ;  DW_AT_sibling
	.uleb128 0x13	 ;  (DIE (0x2ae) DW_TAG_GNU_call_site_parameter)
	.byte	0x6	 ;  DW_AT_location
	.byte	0x68	 ;  DW_OP_reg24
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x69	 ;  DW_OP_reg25
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x5	 ;  DW_AT_GNU_call_site_value
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_in_fifo
	.uleb128 0x13	 ;  (DIE (0x2bc) DW_TAG_GNU_call_site_parameter)
	.byte	0x6	 ;  DW_AT_location
	.byte	0x66	 ;  DW_OP_reg22
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x67	 ;  DW_OP_reg23
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x5	 ;  DW_AT_GNU_call_site_value
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_in_buf
	.uleb128 0x13	 ;  (DIE (0x2ca) DW_TAG_GNU_call_site_parameter)
	.byte	0x1	 ;  DW_AT_location
	.byte	0x64	 ;  DW_OP_reg20
	.byte	0x2	 ;  DW_AT_GNU_call_site_value
	.byte	0x9	 ;  DW_OP_const1s
	.byte	0xff
	.byte	0	 ;  end of children of DIE 0x2a1
	.uleb128 0x14	 ;  (DIE (0x2d1) DW_TAG_GNU_call_site)
	.long	.LVL11	 ;  DW_AT_low_pc
	.long	0x47a	 ;  DW_AT_abstract_origin
	.uleb128 0x13	 ;  (DIE (0x2da) DW_TAG_GNU_call_site_parameter)
	.byte	0x6	 ;  DW_AT_location
	.byte	0x68	 ;  DW_OP_reg24
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x69	 ;  DW_OP_reg25
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x5	 ;  DW_AT_GNU_call_site_value
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_out_fifo
	.uleb128 0x13	 ;  (DIE (0x2e8) DW_TAG_GNU_call_site_parameter)
	.byte	0x6	 ;  DW_AT_location
	.byte	0x66	 ;  DW_OP_reg22
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x67	 ;  DW_OP_reg23
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x5	 ;  DW_AT_GNU_call_site_value
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_out_buf
	.uleb128 0x13	 ;  (DIE (0x2f6) DW_TAG_GNU_call_site_parameter)
	.byte	0x1	 ;  DW_AT_location
	.byte	0x64	 ;  DW_OP_reg20
	.byte	0x2	 ;  DW_AT_GNU_call_site_value
	.byte	0x9	 ;  DW_OP_const1s
	.byte	0xff
	.byte	0	 ;  end of children of DIE 0x2d1
	.byte	0	 ;  end of children of DIE 0x278
	.uleb128 0xe	 ;  (DIE (0x2fe) DW_TAG_subprogram)
	.byte	0x1	 ;  DW_AT_external
	.long	.LASF2060	 ;  DW_AT_name: "SPI_MasterTransmit"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x55	 ;  DW_AT_decl_line
	.byte	0x1	 ;  DW_AT_prototyped
	.long	.LFB19	 ;  DW_AT_low_pc
	.long	.LFE19	 ;  DW_AT_high_pc
	.byte	0x3	 ;  DW_AT_frame_base
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 2
	.byte	0x1	 ;  DW_AT_GNU_all_call_sites
	.long	0x326	 ;  DW_AT_sibling
	.uleb128 0x15	 ;  (DIE (0x318) DW_TAG_formal_parameter)
	.long	.LASF2037	 ;  DW_AT_name: "data"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x55	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_location
	.byte	0x68	 ;  DW_OP_reg24
	.byte	0	 ;  end of children of DIE 0x2fe
	.uleb128 0x16	 ;  (DIE (0x326) DW_TAG_subprogram)
	.byte	0x1	 ;  DW_AT_external
	.long	.LASF2078	 ;  DW_AT_name: "SPI_MasterReceive"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x60	 ;  DW_AT_decl_line
	.byte	0x1	 ;  DW_AT_prototyped
	.long	0x30	 ;  DW_AT_type
	.long	.LFB20	 ;  DW_AT_low_pc
	.long	.LFE20	 ;  DW_AT_high_pc
	.byte	0x3	 ;  DW_AT_frame_base
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 2
	.byte	0x1	 ;  DW_AT_GNU_all_call_sites
	.uleb128 0x17	 ;  (DIE (0x340) DW_TAG_subprogram)
	.byte	0x1	 ;  DW_AT_external
	.long	.LASF2079	 ;  DW_AT_name: "SPI_SlaveSendReceive"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x69	 ;  DW_AT_decl_line
	.byte	0x1	 ;  DW_AT_prototyped
	.long	0x30	 ;  DW_AT_type
	.long	.LFB21	 ;  DW_AT_low_pc
	.long	.LFE21	 ;  DW_AT_high_pc
	.byte	0x3	 ;  DW_AT_frame_base
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 2
	.byte	0x1	 ;  DW_AT_GNU_all_call_sites
	.long	0x36e	 ;  DW_AT_sibling
	.uleb128 0xf	 ;  (DIE (0x35e) DW_TAG_formal_parameter)
	.long	.LASF2037	 ;  DW_AT_name: "data"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x69	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.long	.LLST5	 ;  DW_AT_location
	.byte	0	 ;  end of children of DIE 0x340
	.uleb128 0x18	 ;  (DIE (0x36e) DW_TAG_subprogram)
	.byte	0x1	 ;  DW_AT_external
	.long	.LASF2062	 ;  DW_AT_name: "__vector_19"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x74	 ;  DW_AT_decl_line
	.byte	0x1	 ;  DW_AT_prototyped
	.long	.LFB22	 ;  DW_AT_low_pc
	.long	.LFE22	 ;  DW_AT_high_pc
	.long	.LLST6	 ;  DW_AT_frame_base
	.byte	0x1	 ;  DW_AT_GNU_all_call_sites
	.long	0x3a1	 ;  DW_AT_sibling
	.uleb128 0x11	 ;  (DIE (0x388) DW_TAG_variable)
	.ascii "now\0"	 ;  DW_AT_name
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x78	 ;  DW_AT_decl_line
	.long	0x62	 ;  DW_AT_type
	.long	.LLST7	 ;  DW_AT_location
	.uleb128 0x19	 ;  (DIE (0x397) DW_TAG_GNU_call_site)
	.long	.LVL21	 ;  DW_AT_low_pc
	.long	0x4a3	 ;  DW_AT_abstract_origin
	.byte	0	 ;  end of children of DIE 0x36e
	.uleb128 0x1a	 ;  (DIE (0x3a1) DW_TAG_variable)
	.long	.LASF2063	 ;  DW_AT_name: "tickCount"
	.byte	0x4	 ;  DW_AT_decl_file (include/timer.h)
	.byte	0x5e	 ;  DW_AT_decl_line
	.long	0x3ae	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x1	 ;  DW_AT_declaration
	.uleb128 0xb	 ;  (DIE (0x3ae) DW_TAG_volatile_type)
	.long	0x111	 ;  DW_AT_type
	.uleb128 0x1a	 ;  (DIE (0x3b3) DW_TAG_variable)
	.long	.LASF2064	 ;  DW_AT_name: "os_thread_running"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x69	 ;  DW_AT_decl_line
	.long	0x3c0	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x1	 ;  DW_AT_declaration
	.uleb128 0xd	 ;  (DIE (0x3c0) DW_TAG_pointer_type)
	.byte	0x2	 ;  DW_AT_byte_size
	.long	0x18c	 ;  DW_AT_type
	.uleb128 0x1a	 ;  (DIE (0x3c6) DW_TAG_variable)
	.long	.LASF2065	 ;  DW_AT_name: "dummy_signal"
	.byte	0x5	 ;  DW_AT_decl_file (include/os_thread.h)
	.byte	0x6c	 ;  DW_AT_decl_line
	.long	0x138	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x1	 ;  DW_AT_declaration
	.uleb128 0x1b	 ;  (DIE (0x3d3) DW_TAG_array_type)
	.long	0x30	 ;  DW_AT_type
	.long	0x3e3	 ;  DW_AT_sibling
	.uleb128 0x1c	 ;  (DIE (0x3dc) DW_TAG_subrange_type)
	.long	0x3e3	 ;  DW_AT_type
	.byte	0xfe	 ;  DW_AT_upper_bound
	.byte	0	 ;  end of children of DIE 0x3d3
	.uleb128 0x2	 ;  (DIE (0x3e3) DW_TAG_base_type)
	.byte	0x2	 ;  DW_AT_byte_size
	.byte	0x7	 ;  DW_AT_encoding
	.long	.LASF2066	 ;  DW_AT_name: "sizetype"
	.uleb128 0x1d	 ;  (DIE (0x3ea) DW_TAG_variable)
	.long	.LASF2067	 ;  DW_AT_name: "spi_in_buf"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x24	 ;  DW_AT_decl_line
	.long	0x3d3	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x5	 ;  DW_AT_location
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_in_buf
	.uleb128 0x1d	 ;  (DIE (0x3fc) DW_TAG_variable)
	.long	.LASF2068	 ;  DW_AT_name: "spi_out_buf"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x24	 ;  DW_AT_decl_line
	.long	0x3d3	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x5	 ;  DW_AT_location
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_out_buf
	.uleb128 0x1d	 ;  (DIE (0x40e) DW_TAG_variable)
	.long	.LASF2069	 ;  DW_AT_name: "spi_in_idx"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x25	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x5	 ;  DW_AT_location
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_in_idx
	.uleb128 0x1d	 ;  (DIE (0x420) DW_TAG_variable)
	.long	.LASF2070	 ;  DW_AT_name: "spi_out_idx"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x26	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x5	 ;  DW_AT_location
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_out_idx
	.uleb128 0x1d	 ;  (DIE (0x432) DW_TAG_variable)
	.long	.LASF2071	 ;  DW_AT_name: "spi_in_fifo"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x27	 ;  DW_AT_decl_line
	.long	0x216	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x5	 ;  DW_AT_location
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_in_fifo
	.uleb128 0x1d	 ;  (DIE (0x444) DW_TAG_variable)
	.long	.LASF2072	 ;  DW_AT_name: "spi_out_fifo"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x27	 ;  DW_AT_decl_line
	.long	0x216	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x5	 ;  DW_AT_location
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_out_fifo
	.uleb128 0x1d	 ;  (DIE (0x456) DW_TAG_variable)
	.long	.LASF2073	 ;  DW_AT_name: "spi_signal"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x29	 ;  DW_AT_decl_line
	.long	0x138	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x5	 ;  DW_AT_location
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_signal
	.uleb128 0x1d	 ;  (DIE (0x468) DW_TAG_variable)
	.long	.LASF2074	 ;  DW_AT_name: "spi_in_data"
	.byte	0x1	 ;  DW_AT_decl_file (../mcu/spi.c)
	.byte	0x2a	 ;  DW_AT_decl_line
	.long	0x30	 ;  DW_AT_type
	.byte	0x1	 ;  DW_AT_external
	.byte	0x5	 ;  DW_AT_location
	.byte	0x3	 ;  DW_OP_addr
	.long	spi_in_data
	.uleb128 0x1e	 ;  (DIE (0x47a) DW_TAG_subprogram)
	.byte	0x1	 ;  DW_AT_external
	.long	.LASF2080	 ;  DW_AT_name: "fifo_init"
	.byte	0x6	 ;  DW_AT_decl_file (include/fifo.h)
	.byte	0x4c	 ;  DW_AT_decl_line
	.byte	0x1	 ;  DW_AT_prototyped
	.byte	0x1	 ;  DW_AT_declaration
	.long	0x498	 ;  DW_AT_sibling
	.uleb128 0x1f	 ;  (DIE (0x488) DW_TAG_formal_parameter)
	.long	0x498	 ;  DW_AT_type
	.uleb128 0x1f	 ;  (DIE (0x48d) DW_TAG_formal_parameter)
	.long	0x143	 ;  DW_AT_type
	.uleb128 0x1f	 ;  (DIE (0x492) DW_TAG_formal_parameter)
	.long	0x49e	 ;  DW_AT_type
	.byte	0	 ;  end of children of DIE 0x47a
	.uleb128 0xd	 ;  (DIE (0x498) DW_TAG_pointer_type)
	.byte	0x2	 ;  DW_AT_byte_size
	.long	0x216	 ;  DW_AT_type
	.uleb128 0x20	 ;  (DIE (0x49e) DW_TAG_const_type)
	.long	0x30	 ;  DW_AT_type
	.uleb128 0x21	 ;  (DIE (0x4a3) DW_TAG_subprogram)
	.byte	0x1	 ;  DW_AT_external
	.long	.LASF2081	 ;  DW_AT_name: "os_schedule"
	.byte	0x7	 ;  DW_AT_decl_file (include/os_scheduler.h)
	.byte	0x30	 ;  DW_AT_decl_line
	.byte	0x1	 ;  DW_AT_prototyped
	.byte	0x1	 ;  DW_AT_declaration
	.uleb128 0x1f	 ;  (DIE (0x4ad) DW_TAG_formal_parameter)
	.long	0x62	 ;  DW_AT_type
	.byte	0	 ;  end of children of DIE 0x4a3
	.byte	0	 ;  end of children of DIE 0xb
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1	 ;  (abbrev code)
	.uleb128 0x11	 ;  (TAG: DW_TAG_compile_unit)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x25	 ;  (DW_AT_producer)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x13	 ;  (DW_AT_language)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x1b	 ;  (DW_AT_comp_dir)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x11	 ;  (DW_AT_low_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x12	 ;  (DW_AT_high_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x10	 ;  (DW_AT_stmt_list)
	.uleb128 0x6	 ;  (DW_FORM_data4)
	.uleb128 0x2119	 ;  (DW_AT_GNU_macros)
	.uleb128 0x6	 ;  (DW_FORM_data4)
	.byte	0
	.byte	0
	.uleb128 0x2	 ;  (abbrev code)
	.uleb128 0x24	 ;  (TAG: DW_TAG_base_type)
	.byte	0	 ;  DW_children_no
	.uleb128 0xb	 ;  (DW_AT_byte_size)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3e	 ;  (DW_AT_encoding)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.byte	0
	.byte	0
	.uleb128 0x3	 ;  (abbrev code)
	.uleb128 0x16	 ;  (TAG: DW_TAG_typedef)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x4	 ;  (abbrev code)
	.uleb128 0x24	 ;  (TAG: DW_TAG_base_type)
	.byte	0	 ;  DW_children_no
	.uleb128 0xb	 ;  (DW_AT_byte_size)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3e	 ;  (DW_AT_encoding)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0x8	 ;  (DW_FORM_string)
	.byte	0
	.byte	0
	.uleb128 0x5	 ;  (abbrev code)
	.uleb128 0x13	 ;  (TAG: DW_TAG_structure_type)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0xb	 ;  (DW_AT_byte_size)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x1	 ;  (DW_AT_sibling)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x6	 ;  (abbrev code)
	.uleb128 0xd	 ;  (TAG: DW_TAG_member)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0xb	 ;  (DW_AT_byte_size)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0xd	 ;  (DW_AT_bit_size)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0xc	 ;  (DW_AT_bit_offset)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x38	 ;  (DW_AT_data_member_location)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x7	 ;  (abbrev code)
	.uleb128 0x17	 ;  (TAG: DW_TAG_union_type)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0xb	 ;  (DW_AT_byte_size)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x1	 ;  (DW_AT_sibling)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x8	 ;  (abbrev code)
	.uleb128 0xd	 ;  (TAG: DW_TAG_member)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x9	 ;  (abbrev code)
	.uleb128 0xd	 ;  (TAG: DW_TAG_member)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0x8	 ;  (DW_FORM_string)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xa	 ;  (abbrev code)
	.uleb128 0xd	 ;  (TAG: DW_TAG_member)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x38	 ;  (DW_AT_data_member_location)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0xb	 ;  (abbrev code)
	.uleb128 0x35	 ;  (TAG: DW_TAG_volatile_type)
	.byte	0	 ;  DW_children_no
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xc	 ;  (abbrev code)
	.uleb128 0xf	 ;  (TAG: DW_TAG_pointer_type)
	.byte	0	 ;  DW_children_no
	.uleb128 0xb	 ;  (DW_AT_byte_size)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0xd	 ;  (abbrev code)
	.uleb128 0xf	 ;  (TAG: DW_TAG_pointer_type)
	.byte	0	 ;  DW_children_no
	.uleb128 0xb	 ;  (DW_AT_byte_size)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xe	 ;  (abbrev code)
	.uleb128 0x2e	 ;  (TAG: DW_TAG_subprogram)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x3f	 ;  (DW_AT_external)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x27	 ;  (DW_AT_prototyped)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x11	 ;  (DW_AT_low_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x12	 ;  (DW_AT_high_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x40	 ;  (DW_AT_frame_base)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.uleb128 0x2117	 ;  (DW_AT_GNU_all_call_sites)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x1	 ;  (DW_AT_sibling)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xf	 ;  (abbrev code)
	.uleb128 0x5	 ;  (TAG: DW_TAG_formal_parameter)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x2	 ;  (DW_AT_location)
	.uleb128 0x6	 ;  (DW_FORM_data4)
	.byte	0
	.byte	0
	.uleb128 0x10	 ;  (abbrev code)
	.uleb128 0x34	 ;  (TAG: DW_TAG_variable)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x2	 ;  (DW_AT_location)
	.uleb128 0x6	 ;  (DW_FORM_data4)
	.byte	0
	.byte	0
	.uleb128 0x11	 ;  (abbrev code)
	.uleb128 0x34	 ;  (TAG: DW_TAG_variable)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0x8	 ;  (DW_FORM_string)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x2	 ;  (DW_AT_location)
	.uleb128 0x6	 ;  (DW_FORM_data4)
	.byte	0
	.byte	0
	.uleb128 0x12	 ;  (abbrev code)
	.uleb128 0x4109	 ;  (TAG: DW_TAG_GNU_call_site)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x11	 ;  (DW_AT_low_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x31	 ;  (DW_AT_abstract_origin)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x1	 ;  (DW_AT_sibling)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x13	 ;  (abbrev code)
	.uleb128 0x410a	 ;  (TAG: DW_TAG_GNU_call_site_parameter)
	.byte	0	 ;  DW_children_no
	.uleb128 0x2	 ;  (DW_AT_location)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.uleb128 0x2111	 ;  (DW_AT_GNU_call_site_value)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x14	 ;  (abbrev code)
	.uleb128 0x4109	 ;  (TAG: DW_TAG_GNU_call_site)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x11	 ;  (DW_AT_low_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x31	 ;  (DW_AT_abstract_origin)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x15	 ;  (abbrev code)
	.uleb128 0x5	 ;  (TAG: DW_TAG_formal_parameter)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x2	 ;  (DW_AT_location)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x16	 ;  (abbrev code)
	.uleb128 0x2e	 ;  (TAG: DW_TAG_subprogram)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3f	 ;  (DW_AT_external)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x27	 ;  (DW_AT_prototyped)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x11	 ;  (DW_AT_low_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x12	 ;  (DW_AT_high_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x40	 ;  (DW_AT_frame_base)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.uleb128 0x2117	 ;  (DW_AT_GNU_all_call_sites)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.byte	0
	.byte	0
	.uleb128 0x17	 ;  (abbrev code)
	.uleb128 0x2e	 ;  (TAG: DW_TAG_subprogram)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x3f	 ;  (DW_AT_external)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x27	 ;  (DW_AT_prototyped)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x11	 ;  (DW_AT_low_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x12	 ;  (DW_AT_high_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x40	 ;  (DW_AT_frame_base)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.uleb128 0x2117	 ;  (DW_AT_GNU_all_call_sites)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x1	 ;  (DW_AT_sibling)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x18	 ;  (abbrev code)
	.uleb128 0x2e	 ;  (TAG: DW_TAG_subprogram)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x3f	 ;  (DW_AT_external)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x27	 ;  (DW_AT_prototyped)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x11	 ;  (DW_AT_low_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x12	 ;  (DW_AT_high_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x40	 ;  (DW_AT_frame_base)
	.uleb128 0x6	 ;  (DW_FORM_data4)
	.uleb128 0x2117	 ;  (DW_AT_GNU_all_call_sites)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x1	 ;  (DW_AT_sibling)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x19	 ;  (abbrev code)
	.uleb128 0x4109	 ;  (TAG: DW_TAG_GNU_call_site)
	.byte	0	 ;  DW_children_no
	.uleb128 0x11	 ;  (DW_AT_low_pc)
	.uleb128 0x1	 ;  (DW_FORM_addr)
	.uleb128 0x31	 ;  (DW_AT_abstract_origin)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x1a	 ;  (abbrev code)
	.uleb128 0x34	 ;  (TAG: DW_TAG_variable)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x3f	 ;  (DW_AT_external)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3c	 ;  (DW_AT_declaration)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.byte	0
	.byte	0
	.uleb128 0x1b	 ;  (abbrev code)
	.uleb128 0x1	 ;  (TAG: DW_TAG_array_type)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x1	 ;  (DW_AT_sibling)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x1c	 ;  (abbrev code)
	.uleb128 0x21	 ;  (TAG: DW_TAG_subrange_type)
	.byte	0	 ;  DW_children_no
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x2f	 ;  (DW_AT_upper_bound)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0x1d	 ;  (abbrev code)
	.uleb128 0x34	 ;  (TAG: DW_TAG_variable)
	.byte	0	 ;  DW_children_no
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.uleb128 0x3f	 ;  (DW_AT_external)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x2	 ;  (DW_AT_location)
	.uleb128 0xa	 ;  (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x1e	 ;  (abbrev code)
	.uleb128 0x2e	 ;  (TAG: DW_TAG_subprogram)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x3f	 ;  (DW_AT_external)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x27	 ;  (DW_AT_prototyped)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3c	 ;  (DW_AT_declaration)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x1	 ;  (DW_AT_sibling)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x1f	 ;  (abbrev code)
	.uleb128 0x5	 ;  (TAG: DW_TAG_formal_parameter)
	.byte	0	 ;  DW_children_no
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x20	 ;  (abbrev code)
	.uleb128 0x26	 ;  (TAG: DW_TAG_const_type)
	.byte	0	 ;  DW_children_no
	.uleb128 0x49	 ;  (DW_AT_type)
	.uleb128 0x13	 ;  (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x21	 ;  (abbrev code)
	.uleb128 0x2e	 ;  (TAG: DW_TAG_subprogram)
	.byte	0x1	 ;  DW_children_yes
	.uleb128 0x3f	 ;  (DW_AT_external)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3	 ;  (DW_AT_name)
	.uleb128 0xe	 ;  (DW_FORM_strp)
	.uleb128 0x3a	 ;  (DW_AT_decl_file)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x3b	 ;  (DW_AT_decl_line)
	.uleb128 0xb	 ;  (DW_FORM_data1)
	.uleb128 0x27	 ;  (DW_AT_prototyped)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.uleb128 0x3c	 ;  (DW_AT_declaration)
	.uleb128 0xc	 ;  (DW_FORM_flag)
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0-.Ltext0	 ;  Location list begin address (*.LLST0)
	.long	.LVL9-.Ltext0	 ;  Location list end address (*.LLST0)
	.word	0x1	 ;  Location expression size
	.byte	0x68	 ;  DW_OP_reg24
	.long	0	 ;  Location list terminator begin (*.LLST0)
	.long	0	 ;  Location list terminator end (*.LLST0)
.LLST1:
	.long	.LVL1-.Ltext0	 ;  Location list begin address (*.LLST1)
	.long	.LVL2-.Ltext0	 ;  Location list end address (*.LLST1)
	.word	0x6	 ;  Location expression size
	.byte	0x89	 ;  DW_OP_breg25
	.sleb128 0
	.byte	0x9	 ;  DW_OP_const1s
	.byte	0xb0
	.byte	0x21	 ;  DW_OP_or
	.byte	0x9f	 ;  DW_OP_stack_value
	.long	.LVL3-.Ltext0	 ;  Location list begin address (*.LLST1)
	.long	.LVL5-.Ltext0	 ;  Location list end address (*.LLST1)
	.word	0x1	 ;  Location expression size
	.byte	0x69	 ;  DW_OP_reg25
	.long	.LVL5-.Ltext0	 ;  Location list begin address (*.LLST1)
	.long	.LVL8-.Ltext0	 ;  Location list end address (*.LLST1)
	.word	0x2	 ;  Location expression size
	.byte	0x8	 ;  DW_OP_const1u
	.byte	0x24
	.long	0	 ;  Location list terminator begin (*.LLST1)
	.long	0	 ;  Location list terminator end (*.LLST1)
.LLST2:
	.long	.LVL4-.Ltext0	 ;  Location list begin address (*.LLST2)
	.long	.LVL7-.Ltext0	 ;  Location list end address (*.LLST2)
	.word	0x3	 ;  Location expression size
	.byte	0x8	 ;  DW_OP_const1u
	.byte	0x50
	.byte	0x9f	 ;  DW_OP_stack_value
	.long	.LVL7-.Ltext0	 ;  Location list begin address (*.LLST2)
	.long	.LFE17-.Ltext0	 ;  Location list end address (*.LLST2)
	.word	0x1	 ;  Location expression size
	.byte	0x69	 ;  DW_OP_reg25
	.long	0	 ;  Location list terminator begin (*.LLST2)
	.long	0	 ;  Location list terminator end (*.LLST2)
.LLST3:
	.long	.LVL4-.Ltext0	 ;  Location list begin address (*.LLST3)
	.long	.LVL6-.Ltext0	 ;  Location list end address (*.LLST3)
	.word	0x5	 ;  Location expression size
	.byte	0x88	 ;  DW_OP_breg24
	.sleb128 0
	.byte	0x33	 ;  DW_OP_lit3
	.byte	0x1a	 ;  DW_OP_and
	.byte	0x9f	 ;  DW_OP_stack_value
	.long	.LVL6-.Ltext0	 ;  Location list begin address (*.LLST3)
	.long	.LVL7-.Ltext0	 ;  Location list end address (*.LLST3)
	.word	0x1	 ;  Location expression size
	.byte	0x69	 ;  DW_OP_reg25
	.long	.LVL7-.Ltext0	 ;  Location list begin address (*.LLST3)
	.long	.LVL9-.Ltext0	 ;  Location list end address (*.LLST3)
	.word	0x5	 ;  Location expression size
	.byte	0x88	 ;  DW_OP_breg24
	.sleb128 0
	.byte	0x33	 ;  DW_OP_lit3
	.byte	0x1a	 ;  DW_OP_and
	.byte	0x9f	 ;  DW_OP_stack_value
	.long	0	 ;  Location list terminator begin (*.LLST3)
	.long	0	 ;  Location list terminator end (*.LLST3)
.LLST4:
	.long	.LVL12-.Ltext0	 ;  Location list begin address (*.LLST4)
	.long	.LVL13-.Ltext0	 ;  Location list end address (*.LLST4)
	.word	0x6	 ;  Location expression size
	.byte	0x88	 ;  DW_OP_breg24
	.sleb128 0
	.byte	0x8	 ;  DW_OP_const1u
	.byte	0x40
	.byte	0x21	 ;  DW_OP_or
	.byte	0x9f	 ;  DW_OP_stack_value
	.long	.LVL14-.Ltext0	 ;  Location list begin address (*.LLST4)
	.long	.LVL15-.Ltext0	 ;  Location list end address (*.LLST4)
	.word	0x1	 ;  Location expression size
	.byte	0x68	 ;  DW_OP_reg24
	.long	.LVL15-.Ltext0	 ;  Location list begin address (*.LLST4)
	.long	.LVL16-.Ltext0	 ;  Location list end address (*.LLST4)
	.word	0x2	 ;  Location expression size
	.byte	0x8	 ;  DW_OP_const1u
	.byte	0x24
	.long	0	 ;  Location list terminator begin (*.LLST4)
	.long	0	 ;  Location list terminator end (*.LLST4)
.LLST5:
	.long	.LVL18-.Ltext0	 ;  Location list begin address (*.LLST5)
	.long	.LVL19-.Ltext0	 ;  Location list end address (*.LLST5)
	.word	0x1	 ;  Location expression size
	.byte	0x68	 ;  DW_OP_reg24
	.long	.LVL19-.Ltext0	 ;  Location list begin address (*.LLST5)
	.long	.LFE21-.Ltext0	 ;  Location list end address (*.LLST5)
	.word	0x2	 ;  Location expression size
	.byte	0x8	 ;  DW_OP_const1u
	.byte	0x4e
	.long	0	 ;  Location list terminator begin (*.LLST5)
	.long	0	 ;  Location list terminator end (*.LLST5)
.LLST6:
	.long	.LFB22-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI0-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI1-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI2-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI3-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI4-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI5-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI6-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI7-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI8-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI9-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI10-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI11-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI12-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LCFI13-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13-.Ltext0	 ;  Location list begin address (*.LLST6)
	.long	.LFE22-.Ltext0	 ;  Location list end address (*.LLST6)
	.word	0x3	 ;  Location expression size
	.byte	0x92	 ;  DW_OP_bregx
	.uleb128 0x20
	.sleb128 16
	.long	0	 ;  Location list terminator begin (*.LLST6)
	.long	0	 ;  Location list terminator end (*.LLST6)
.LLST7:
	.long	.LVL20-.Ltext0	 ;  Location list begin address (*.LLST7)
	.long	.LVL21-1-.Ltext0	 ;  Location list end address (*.LLST7)
	.word	0xc	 ;  Location expression size
	.byte	0x66	 ;  DW_OP_reg22
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x67	 ;  DW_OP_reg23
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x68	 ;  DW_OP_reg24
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.byte	0x69	 ;  DW_OP_reg25
	.byte	0x93	 ;  DW_OP_piece
	.uleb128 0x1
	.long	0	 ;  Location list terminator begin (*.LLST7)
	.long	0	 ;  Location list terminator end (*.LLST7)
	.section	.debug_aranges,"",@progbits
	.long	0x1c	 ;  Length of Address Ranges Info
	.word	0x2	 ;  DWARF Version
	.long	.Ldebug_info0	 ;  Offset of Compilation Unit Info
	.byte	0x4	 ;  Size of Address
	.byte	0	 ;  Size of Segment Descriptor
	.word	0	 ;  Pad to 8 byte boundary
	.word	0
	.long	.Ltext0	 ;  Address
	.long	.Letext0-.Ltext0	 ;  Length
	.long	0
	.long	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.word	0x4	 ;  DWARF macro version number
	.byte	0x2	 ;  Flags: 32-bit, lineptr present
	.long	.Ldebug_line0
	.byte	0x3	 ;  Start new file
	.uleb128 0	 ;  Included from line number 0
	.uleb128 0x1	 ;  file ../mcu/spi.c
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1	 ;  At line number 1
	.long	.LASF0	 ;  The macro: "__STDC__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2	 ;  At line number 2
	.long	.LASF1	 ;  The macro: "__STDC_HOSTED__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3	 ;  At line number 3
	.long	.LASF2	 ;  The macro: "__GNUC__ 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4	 ;  At line number 4
	.long	.LASF3	 ;  The macro: "__GNUC_MINOR__ 9"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5	 ;  At line number 5
	.long	.LASF4	 ;  The macro: "__GNUC_PATCHLEVEL__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6	 ;  At line number 6
	.long	.LASF5	 ;  The macro: "__VERSION__ "4.9.2""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7	 ;  At line number 7
	.long	.LASF6	 ;  The macro: "__ATOMIC_RELAXED 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8	 ;  At line number 8
	.long	.LASF7	 ;  The macro: "__ATOMIC_SEQ_CST 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9	 ;  At line number 9
	.long	.LASF8	 ;  The macro: "__ATOMIC_ACQUIRE 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa	 ;  At line number 10
	.long	.LASF9	 ;  The macro: "__ATOMIC_RELEASE 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb	 ;  At line number 11
	.long	.LASF10	 ;  The macro: "__ATOMIC_ACQ_REL 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc	 ;  At line number 12
	.long	.LASF11	 ;  The macro: "__ATOMIC_CONSUME 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd	 ;  At line number 13
	.long	.LASF12	 ;  The macro: "__OPTIMIZE_SIZE__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe	 ;  At line number 14
	.long	.LASF13	 ;  The macro: "__OPTIMIZE__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf	 ;  At line number 15
	.long	.LASF14	 ;  The macro: "__FINITE_MATH_ONLY__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10	 ;  At line number 16
	.long	.LASF15	 ;  The macro: "__SIZEOF_INT__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11	 ;  At line number 17
	.long	.LASF16	 ;  The macro: "__SIZEOF_LONG__ 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12	 ;  At line number 18
	.long	.LASF17	 ;  The macro: "__SIZEOF_LONG_LONG__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13	 ;  At line number 19
	.long	.LASF18	 ;  The macro: "__SIZEOF_SHORT__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14	 ;  At line number 20
	.long	.LASF19	 ;  The macro: "__SIZEOF_FLOAT__ 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15	 ;  At line number 21
	.long	.LASF20	 ;  The macro: "__SIZEOF_DOUBLE__ 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16	 ;  At line number 22
	.long	.LASF21	 ;  The macro: "__SIZEOF_LONG_DOUBLE__ 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17	 ;  At line number 23
	.long	.LASF22	 ;  The macro: "__SIZEOF_SIZE_T__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18	 ;  At line number 24
	.long	.LASF23	 ;  The macro: "__CHAR_BIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19	 ;  At line number 25
	.long	.LASF24	 ;  The macro: "__BIGGEST_ALIGNMENT__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a	 ;  At line number 26
	.long	.LASF25	 ;  The macro: "__ORDER_LITTLE_ENDIAN__ 1234"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b	 ;  At line number 27
	.long	.LASF26	 ;  The macro: "__ORDER_BIG_ENDIAN__ 4321"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF27	 ;  The macro: "__ORDER_PDP_ENDIAN__ 3412"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d	 ;  At line number 29
	.long	.LASF28	 ;  The macro: "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e	 ;  At line number 30
	.long	.LASF29	 ;  The macro: "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f	 ;  At line number 31
	.long	.LASF30	 ;  The macro: "__SIZEOF_POINTER__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20	 ;  At line number 32
	.long	.LASF31	 ;  The macro: "__SIZE_TYPE__ unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x21	 ;  At line number 33
	.long	.LASF32	 ;  The macro: "__PTRDIFF_TYPE__ int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22	 ;  At line number 34
	.long	.LASF33	 ;  The macro: "__WCHAR_TYPE__ int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23	 ;  At line number 35
	.long	.LASF34	 ;  The macro: "__WINT_TYPE__ int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24	 ;  At line number 36
	.long	.LASF35	 ;  The macro: "__INTMAX_TYPE__ long long int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x25	 ;  At line number 37
	.long	.LASF36	 ;  The macro: "__UINTMAX_TYPE__ long long unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x26	 ;  At line number 38
	.long	.LASF37	 ;  The macro: "__CHAR16_TYPE__ unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27	 ;  At line number 39
	.long	.LASF38	 ;  The macro: "__CHAR32_TYPE__ long unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28	 ;  At line number 40
	.long	.LASF39	 ;  The macro: "__SIG_ATOMIC_TYPE__ char"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x29	 ;  At line number 41
	.long	.LASF40	 ;  The macro: "__INT8_TYPE__ signed char"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a	 ;  At line number 42
	.long	.LASF41	 ;  The macro: "__INT16_TYPE__ int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b	 ;  At line number 43
	.long	.LASF42	 ;  The macro: "__INT32_TYPE__ long int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c	 ;  At line number 44
	.long	.LASF43	 ;  The macro: "__INT64_TYPE__ long long int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d	 ;  At line number 45
	.long	.LASF44	 ;  The macro: "__UINT8_TYPE__ unsigned char"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e	 ;  At line number 46
	.long	.LASF45	 ;  The macro: "__UINT16_TYPE__ unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f	 ;  At line number 47
	.long	.LASF46	 ;  The macro: "__UINT32_TYPE__ long unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30	 ;  At line number 48
	.long	.LASF47	 ;  The macro: "__UINT64_TYPE__ long long unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x31	 ;  At line number 49
	.long	.LASF48	 ;  The macro: "__INT_LEAST8_TYPE__ signed char"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32	 ;  At line number 50
	.long	.LASF49	 ;  The macro: "__INT_LEAST16_TYPE__ int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33	 ;  At line number 51
	.long	.LASF50	 ;  The macro: "__INT_LEAST32_TYPE__ long int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x34	 ;  At line number 52
	.long	.LASF51	 ;  The macro: "__INT_LEAST64_TYPE__ long long int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35	 ;  At line number 53
	.long	.LASF52	 ;  The macro: "__UINT_LEAST8_TYPE__ unsigned char"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36	 ;  At line number 54
	.long	.LASF53	 ;  The macro: "__UINT_LEAST16_TYPE__ unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x37	 ;  At line number 55
	.long	.LASF54	 ;  The macro: "__UINT_LEAST32_TYPE__ long unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38	 ;  At line number 56
	.long	.LASF55	 ;  The macro: "__UINT_LEAST64_TYPE__ long long unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39	 ;  At line number 57
	.long	.LASF56	 ;  The macro: "__INT_FAST8_TYPE__ signed char"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a	 ;  At line number 58
	.long	.LASF57	 ;  The macro: "__INT_FAST16_TYPE__ int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b	 ;  At line number 59
	.long	.LASF58	 ;  The macro: "__INT_FAST32_TYPE__ long int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c	 ;  At line number 60
	.long	.LASF59	 ;  The macro: "__INT_FAST64_TYPE__ long long int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d	 ;  At line number 61
	.long	.LASF60	 ;  The macro: "__UINT_FAST8_TYPE__ unsigned char"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e	 ;  At line number 62
	.long	.LASF61	 ;  The macro: "__UINT_FAST16_TYPE__ unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f	 ;  At line number 63
	.long	.LASF62	 ;  The macro: "__UINT_FAST32_TYPE__ long unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x40	 ;  At line number 64
	.long	.LASF63	 ;  The macro: "__UINT_FAST64_TYPE__ long long unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x41	 ;  At line number 65
	.long	.LASF64	 ;  The macro: "__INTPTR_TYPE__ int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x42	 ;  At line number 66
	.long	.LASF65	 ;  The macro: "__UINTPTR_TYPE__ unsigned int"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43	 ;  At line number 67
	.long	.LASF66	 ;  The macro: "__has_include(STR) __has_include__(STR)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44	 ;  At line number 68
	.long	.LASF67	 ;  The macro: "__has_include_next(STR) __has_include_next__(STR)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45	 ;  At line number 69
	.long	.LASF68	 ;  The macro: "__GXX_ABI_VERSION 1002"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x46	 ;  At line number 70
	.long	.LASF69	 ;  The macro: "__USING_SJLJ_EXCEPTIONS__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x47	 ;  At line number 71
	.long	.LASF70	 ;  The macro: "__SCHAR_MAX__ 127"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48	 ;  At line number 72
	.long	.LASF71	 ;  The macro: "__SHRT_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x49	 ;  At line number 73
	.long	.LASF72	 ;  The macro: "__INT_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a	 ;  At line number 74
	.long	.LASF73	 ;  The macro: "__LONG_MAX__ 2147483647L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4b	 ;  At line number 75
	.long	.LASF74	 ;  The macro: "__LONG_LONG_MAX__ 9223372036854775807LL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4c	 ;  At line number 76
	.long	.LASF75	 ;  The macro: "__WCHAR_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4d	 ;  At line number 77
	.long	.LASF76	 ;  The macro: "__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4e	 ;  At line number 78
	.long	.LASF77	 ;  The macro: "__WINT_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4f	 ;  At line number 79
	.long	.LASF78	 ;  The macro: "__WINT_MIN__ (-__WINT_MAX__ - 1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x50	 ;  At line number 80
	.long	.LASF79	 ;  The macro: "__PTRDIFF_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x51	 ;  At line number 81
	.long	.LASF80	 ;  The macro: "__SIZE_MAX__ 65535U"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x52	 ;  At line number 82
	.long	.LASF81	 ;  The macro: "__INTMAX_MAX__ 9223372036854775807LL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x53	 ;  At line number 83
	.long	.LASF82	 ;  The macro: "__INTMAX_C(c) c ## LL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x54	 ;  At line number 84
	.long	.LASF83	 ;  The macro: "__UINTMAX_MAX__ 18446744073709551615ULL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x55	 ;  At line number 85
	.long	.LASF84	 ;  The macro: "__UINTMAX_C(c) c ## ULL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x56	 ;  At line number 86
	.long	.LASF85	 ;  The macro: "__SIG_ATOMIC_MAX__ 127"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x57	 ;  At line number 87
	.long	.LASF86	 ;  The macro: "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x58	 ;  At line number 88
	.long	.LASF87	 ;  The macro: "__INT8_MAX__ 127"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x59	 ;  At line number 89
	.long	.LASF88	 ;  The macro: "__INT16_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5a	 ;  At line number 90
	.long	.LASF89	 ;  The macro: "__INT32_MAX__ 2147483647L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5b	 ;  At line number 91
	.long	.LASF90	 ;  The macro: "__INT64_MAX__ 9223372036854775807LL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5c	 ;  At line number 92
	.long	.LASF91	 ;  The macro: "__UINT8_MAX__ 255"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5d	 ;  At line number 93
	.long	.LASF92	 ;  The macro: "__UINT16_MAX__ 65535U"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5e	 ;  At line number 94
	.long	.LASF93	 ;  The macro: "__UINT32_MAX__ 4294967295UL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5f	 ;  At line number 95
	.long	.LASF94	 ;  The macro: "__UINT64_MAX__ 18446744073709551615ULL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x60	 ;  At line number 96
	.long	.LASF95	 ;  The macro: "__INT_LEAST8_MAX__ 127"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x61	 ;  At line number 97
	.long	.LASF96	 ;  The macro: "__INT8_C(c) c"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x62	 ;  At line number 98
	.long	.LASF97	 ;  The macro: "__INT_LEAST16_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x63	 ;  At line number 99
	.long	.LASF98	 ;  The macro: "__INT16_C(c) c"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x64	 ;  At line number 100
	.long	.LASF99	 ;  The macro: "__INT_LEAST32_MAX__ 2147483647L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x65	 ;  At line number 101
	.long	.LASF100	 ;  The macro: "__INT32_C(c) c ## L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x66	 ;  At line number 102
	.long	.LASF101	 ;  The macro: "__INT_LEAST64_MAX__ 9223372036854775807LL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x67	 ;  At line number 103
	.long	.LASF102	 ;  The macro: "__INT64_C(c) c ## LL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x68	 ;  At line number 104
	.long	.LASF103	 ;  The macro: "__UINT_LEAST8_MAX__ 255"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x69	 ;  At line number 105
	.long	.LASF104	 ;  The macro: "__UINT8_C(c) c"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6a	 ;  At line number 106
	.long	.LASF105	 ;  The macro: "__UINT_LEAST16_MAX__ 65535U"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6b	 ;  At line number 107
	.long	.LASF106	 ;  The macro: "__UINT16_C(c) c ## U"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6c	 ;  At line number 108
	.long	.LASF107	 ;  The macro: "__UINT_LEAST32_MAX__ 4294967295UL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6d	 ;  At line number 109
	.long	.LASF108	 ;  The macro: "__UINT32_C(c) c ## UL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6e	 ;  At line number 110
	.long	.LASF109	 ;  The macro: "__UINT_LEAST64_MAX__ 18446744073709551615ULL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6f	 ;  At line number 111
	.long	.LASF110	 ;  The macro: "__UINT64_C(c) c ## ULL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x70	 ;  At line number 112
	.long	.LASF111	 ;  The macro: "__INT_FAST8_MAX__ 127"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x71	 ;  At line number 113
	.long	.LASF112	 ;  The macro: "__INT_FAST16_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x72	 ;  At line number 114
	.long	.LASF113	 ;  The macro: "__INT_FAST32_MAX__ 2147483647L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x73	 ;  At line number 115
	.long	.LASF114	 ;  The macro: "__INT_FAST64_MAX__ 9223372036854775807LL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x74	 ;  At line number 116
	.long	.LASF115	 ;  The macro: "__UINT_FAST8_MAX__ 255"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x75	 ;  At line number 117
	.long	.LASF116	 ;  The macro: "__UINT_FAST16_MAX__ 65535U"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x76	 ;  At line number 118
	.long	.LASF117	 ;  The macro: "__UINT_FAST32_MAX__ 4294967295UL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x77	 ;  At line number 119
	.long	.LASF118	 ;  The macro: "__UINT_FAST64_MAX__ 18446744073709551615ULL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x78	 ;  At line number 120
	.long	.LASF119	 ;  The macro: "__INTPTR_MAX__ 32767"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x79	 ;  At line number 121
	.long	.LASF120	 ;  The macro: "__UINTPTR_MAX__ 65535U"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7a	 ;  At line number 122
	.long	.LASF121	 ;  The macro: "__GCC_IEC_559 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7b	 ;  At line number 123
	.long	.LASF122	 ;  The macro: "__GCC_IEC_559_COMPLEX 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7c	 ;  At line number 124
	.long	.LASF123	 ;  The macro: "__FLT_EVAL_METHOD__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7d	 ;  At line number 125
	.long	.LASF124	 ;  The macro: "__DEC_EVAL_METHOD__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7e	 ;  At line number 126
	.long	.LASF125	 ;  The macro: "__FLT_RADIX__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7f	 ;  At line number 127
	.long	.LASF126	 ;  The macro: "__FLT_MANT_DIG__ 24"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x80	 ;  At line number 128
	.long	.LASF127	 ;  The macro: "__FLT_DIG__ 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x81	 ;  At line number 129
	.long	.LASF128	 ;  The macro: "__FLT_MIN_EXP__ (-125)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x82	 ;  At line number 130
	.long	.LASF129	 ;  The macro: "__FLT_MIN_10_EXP__ (-37)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x83	 ;  At line number 131
	.long	.LASF130	 ;  The macro: "__FLT_MAX_EXP__ 128"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x84	 ;  At line number 132
	.long	.LASF131	 ;  The macro: "__FLT_MAX_10_EXP__ 38"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x85	 ;  At line number 133
	.long	.LASF132	 ;  The macro: "__FLT_DECIMAL_DIG__ 9"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x86	 ;  At line number 134
	.long	.LASF133	 ;  The macro: "__FLT_MAX__ 3.40282347e+38F"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x87	 ;  At line number 135
	.long	.LASF134	 ;  The macro: "__FLT_MIN__ 1.17549435e-38F"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x88	 ;  At line number 136
	.long	.LASF135	 ;  The macro: "__FLT_EPSILON__ 1.19209290e-7F"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x89	 ;  At line number 137
	.long	.LASF136	 ;  The macro: "__FLT_DENORM_MIN__ 1.40129846e-45F"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8a	 ;  At line number 138
	.long	.LASF137	 ;  The macro: "__FLT_HAS_DENORM__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8b	 ;  At line number 139
	.long	.LASF138	 ;  The macro: "__FLT_HAS_INFINITY__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8c	 ;  At line number 140
	.long	.LASF139	 ;  The macro: "__FLT_HAS_QUIET_NAN__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8d	 ;  At line number 141
	.long	.LASF140	 ;  The macro: "__DBL_MANT_DIG__ 24"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8e	 ;  At line number 142
	.long	.LASF141	 ;  The macro: "__DBL_DIG__ 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8f	 ;  At line number 143
	.long	.LASF142	 ;  The macro: "__DBL_MIN_EXP__ (-125)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x90	 ;  At line number 144
	.long	.LASF143	 ;  The macro: "__DBL_MIN_10_EXP__ (-37)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x91	 ;  At line number 145
	.long	.LASF144	 ;  The macro: "__DBL_MAX_EXP__ 128"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x92	 ;  At line number 146
	.long	.LASF145	 ;  The macro: "__DBL_MAX_10_EXP__ 38"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x93	 ;  At line number 147
	.long	.LASF146	 ;  The macro: "__DBL_DECIMAL_DIG__ 9"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x94	 ;  At line number 148
	.long	.LASF147	 ;  The macro: "__DBL_MAX__ ((double)3.40282347e+38L)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x95	 ;  At line number 149
	.long	.LASF148	 ;  The macro: "__DBL_MIN__ ((double)1.17549435e-38L)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x96	 ;  At line number 150
	.long	.LASF149	 ;  The macro: "__DBL_EPSILON__ ((double)1.19209290e-7L)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x97	 ;  At line number 151
	.long	.LASF150	 ;  The macro: "__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x98	 ;  At line number 152
	.long	.LASF151	 ;  The macro: "__DBL_HAS_DENORM__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x99	 ;  At line number 153
	.long	.LASF152	 ;  The macro: "__DBL_HAS_INFINITY__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9a	 ;  At line number 154
	.long	.LASF153	 ;  The macro: "__DBL_HAS_QUIET_NAN__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9b	 ;  At line number 155
	.long	.LASF154	 ;  The macro: "__LDBL_MANT_DIG__ 24"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9c	 ;  At line number 156
	.long	.LASF155	 ;  The macro: "__LDBL_DIG__ 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9d	 ;  At line number 157
	.long	.LASF156	 ;  The macro: "__LDBL_MIN_EXP__ (-125)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9e	 ;  At line number 158
	.long	.LASF157	 ;  The macro: "__LDBL_MIN_10_EXP__ (-37)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9f	 ;  At line number 159
	.long	.LASF158	 ;  The macro: "__LDBL_MAX_EXP__ 128"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa0	 ;  At line number 160
	.long	.LASF159	 ;  The macro: "__LDBL_MAX_10_EXP__ 38"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa1	 ;  At line number 161
	.long	.LASF160	 ;  The macro: "__DECIMAL_DIG__ 9"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa2	 ;  At line number 162
	.long	.LASF161	 ;  The macro: "__LDBL_MAX__ 3.40282347e+38L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa3	 ;  At line number 163
	.long	.LASF162	 ;  The macro: "__LDBL_MIN__ 1.17549435e-38L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa4	 ;  At line number 164
	.long	.LASF163	 ;  The macro: "__LDBL_EPSILON__ 1.19209290e-7L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa5	 ;  At line number 165
	.long	.LASF164	 ;  The macro: "__LDBL_DENORM_MIN__ 1.40129846e-45L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa6	 ;  At line number 166
	.long	.LASF165	 ;  The macro: "__LDBL_HAS_DENORM__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa7	 ;  At line number 167
	.long	.LASF166	 ;  The macro: "__LDBL_HAS_INFINITY__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa8	 ;  At line number 168
	.long	.LASF167	 ;  The macro: "__LDBL_HAS_QUIET_NAN__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa9	 ;  At line number 169
	.long	.LASF168	 ;  The macro: "__DEC32_MANT_DIG__ 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xaa	 ;  At line number 170
	.long	.LASF169	 ;  The macro: "__DEC32_MIN_EXP__ (-94)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xab	 ;  At line number 171
	.long	.LASF170	 ;  The macro: "__DEC32_MAX_EXP__ 97"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xac	 ;  At line number 172
	.long	.LASF171	 ;  The macro: "__DEC32_MIN__ 1E-95DF"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xad	 ;  At line number 173
	.long	.LASF172	 ;  The macro: "__DEC32_MAX__ 9.999999E96DF"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xae	 ;  At line number 174
	.long	.LASF173	 ;  The macro: "__DEC32_EPSILON__ 1E-6DF"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xaf	 ;  At line number 175
	.long	.LASF174	 ;  The macro: "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb0	 ;  At line number 176
	.long	.LASF175	 ;  The macro: "__DEC64_MANT_DIG__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb1	 ;  At line number 177
	.long	.LASF176	 ;  The macro: "__DEC64_MIN_EXP__ (-382)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb2	 ;  At line number 178
	.long	.LASF177	 ;  The macro: "__DEC64_MAX_EXP__ 385"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb3	 ;  At line number 179
	.long	.LASF178	 ;  The macro: "__DEC64_MIN__ 1E-383DD"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb4	 ;  At line number 180
	.long	.LASF179	 ;  The macro: "__DEC64_MAX__ 9.999999999999999E384DD"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb5	 ;  At line number 181
	.long	.LASF180	 ;  The macro: "__DEC64_EPSILON__ 1E-15DD"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb6	 ;  At line number 182
	.long	.LASF181	 ;  The macro: "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb7	 ;  At line number 183
	.long	.LASF182	 ;  The macro: "__DEC128_MANT_DIG__ 34"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb8	 ;  At line number 184
	.long	.LASF183	 ;  The macro: "__DEC128_MIN_EXP__ (-6142)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb9	 ;  At line number 185
	.long	.LASF184	 ;  The macro: "__DEC128_MAX_EXP__ 6145"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xba	 ;  At line number 186
	.long	.LASF185	 ;  The macro: "__DEC128_MIN__ 1E-6143DL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbb	 ;  At line number 187
	.long	.LASF186	 ;  The macro: "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbc	 ;  At line number 188
	.long	.LASF187	 ;  The macro: "__DEC128_EPSILON__ 1E-33DL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbd	 ;  At line number 189
	.long	.LASF188	 ;  The macro: "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbe	 ;  At line number 190
	.long	.LASF189	 ;  The macro: "__SFRACT_FBIT__ 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbf	 ;  At line number 191
	.long	.LASF190	 ;  The macro: "__SFRACT_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc0	 ;  At line number 192
	.long	.LASF191	 ;  The macro: "__SFRACT_MIN__ (-0.5HR-0.5HR)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc1	 ;  At line number 193
	.long	.LASF192	 ;  The macro: "__SFRACT_MAX__ 0X7FP-7HR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc2	 ;  At line number 194
	.long	.LASF193	 ;  The macro: "__SFRACT_EPSILON__ 0x1P-7HR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc3	 ;  At line number 195
	.long	.LASF194	 ;  The macro: "__USFRACT_FBIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc4	 ;  At line number 196
	.long	.LASF195	 ;  The macro: "__USFRACT_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc5	 ;  At line number 197
	.long	.LASF196	 ;  The macro: "__USFRACT_MIN__ 0.0UHR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc6	 ;  At line number 198
	.long	.LASF197	 ;  The macro: "__USFRACT_MAX__ 0XFFP-8UHR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc7	 ;  At line number 199
	.long	.LASF198	 ;  The macro: "__USFRACT_EPSILON__ 0x1P-8UHR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc8	 ;  At line number 200
	.long	.LASF199	 ;  The macro: "__FRACT_FBIT__ 15"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc9	 ;  At line number 201
	.long	.LASF200	 ;  The macro: "__FRACT_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xca	 ;  At line number 202
	.long	.LASF201	 ;  The macro: "__FRACT_MIN__ (-0.5R-0.5R)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcb	 ;  At line number 203
	.long	.LASF202	 ;  The macro: "__FRACT_MAX__ 0X7FFFP-15R"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcc	 ;  At line number 204
	.long	.LASF203	 ;  The macro: "__FRACT_EPSILON__ 0x1P-15R"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcd	 ;  At line number 205
	.long	.LASF204	 ;  The macro: "__UFRACT_FBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xce	 ;  At line number 206
	.long	.LASF205	 ;  The macro: "__UFRACT_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcf	 ;  At line number 207
	.long	.LASF206	 ;  The macro: "__UFRACT_MIN__ 0.0UR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd0	 ;  At line number 208
	.long	.LASF207	 ;  The macro: "__UFRACT_MAX__ 0XFFFFP-16UR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd1	 ;  At line number 209
	.long	.LASF208	 ;  The macro: "__UFRACT_EPSILON__ 0x1P-16UR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd2	 ;  At line number 210
	.long	.LASF209	 ;  The macro: "__LFRACT_FBIT__ 31"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd3	 ;  At line number 211
	.long	.LASF210	 ;  The macro: "__LFRACT_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd4	 ;  At line number 212
	.long	.LASF211	 ;  The macro: "__LFRACT_MIN__ (-0.5LR-0.5LR)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd5	 ;  At line number 213
	.long	.LASF212	 ;  The macro: "__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd6	 ;  At line number 214
	.long	.LASF213	 ;  The macro: "__LFRACT_EPSILON__ 0x1P-31LR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd7	 ;  At line number 215
	.long	.LASF214	 ;  The macro: "__ULFRACT_FBIT__ 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd8	 ;  At line number 216
	.long	.LASF215	 ;  The macro: "__ULFRACT_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd9	 ;  At line number 217
	.long	.LASF216	 ;  The macro: "__ULFRACT_MIN__ 0.0ULR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xda	 ;  At line number 218
	.long	.LASF217	 ;  The macro: "__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdb	 ;  At line number 219
	.long	.LASF218	 ;  The macro: "__ULFRACT_EPSILON__ 0x1P-32ULR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdc	 ;  At line number 220
	.long	.LASF219	 ;  The macro: "__LLFRACT_FBIT__ 63"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdd	 ;  At line number 221
	.long	.LASF220	 ;  The macro: "__LLFRACT_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xde	 ;  At line number 222
	.long	.LASF221	 ;  The macro: "__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdf	 ;  At line number 223
	.long	.LASF222	 ;  The macro: "__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe0	 ;  At line number 224
	.long	.LASF223	 ;  The macro: "__LLFRACT_EPSILON__ 0x1P-63LLR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe1	 ;  At line number 225
	.long	.LASF224	 ;  The macro: "__ULLFRACT_FBIT__ 64"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe2	 ;  At line number 226
	.long	.LASF225	 ;  The macro: "__ULLFRACT_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe3	 ;  At line number 227
	.long	.LASF226	 ;  The macro: "__ULLFRACT_MIN__ 0.0ULLR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe4	 ;  At line number 228
	.long	.LASF227	 ;  The macro: "__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe5	 ;  At line number 229
	.long	.LASF228	 ;  The macro: "__ULLFRACT_EPSILON__ 0x1P-64ULLR"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe6	 ;  At line number 230
	.long	.LASF229	 ;  The macro: "__SACCUM_FBIT__ 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe7	 ;  At line number 231
	.long	.LASF230	 ;  The macro: "__SACCUM_IBIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe8	 ;  At line number 232
	.long	.LASF231	 ;  The macro: "__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe9	 ;  At line number 233
	.long	.LASF232	 ;  The macro: "__SACCUM_MAX__ 0X7FFFP-7HK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xea	 ;  At line number 234
	.long	.LASF233	 ;  The macro: "__SACCUM_EPSILON__ 0x1P-7HK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xeb	 ;  At line number 235
	.long	.LASF234	 ;  The macro: "__USACCUM_FBIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xec	 ;  At line number 236
	.long	.LASF235	 ;  The macro: "__USACCUM_IBIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xed	 ;  At line number 237
	.long	.LASF236	 ;  The macro: "__USACCUM_MIN__ 0.0UHK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xee	 ;  At line number 238
	.long	.LASF237	 ;  The macro: "__USACCUM_MAX__ 0XFFFFP-8UHK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xef	 ;  At line number 239
	.long	.LASF238	 ;  The macro: "__USACCUM_EPSILON__ 0x1P-8UHK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf0	 ;  At line number 240
	.long	.LASF239	 ;  The macro: "__ACCUM_FBIT__ 15"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf1	 ;  At line number 241
	.long	.LASF240	 ;  The macro: "__ACCUM_IBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf2	 ;  At line number 242
	.long	.LASF241	 ;  The macro: "__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf3	 ;  At line number 243
	.long	.LASF242	 ;  The macro: "__ACCUM_MAX__ 0X7FFFFFFFP-15K"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf4	 ;  At line number 244
	.long	.LASF243	 ;  The macro: "__ACCUM_EPSILON__ 0x1P-15K"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf5	 ;  At line number 245
	.long	.LASF244	 ;  The macro: "__UACCUM_FBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf6	 ;  At line number 246
	.long	.LASF245	 ;  The macro: "__UACCUM_IBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf7	 ;  At line number 247
	.long	.LASF246	 ;  The macro: "__UACCUM_MIN__ 0.0UK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf8	 ;  At line number 248
	.long	.LASF247	 ;  The macro: "__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf9	 ;  At line number 249
	.long	.LASF248	 ;  The macro: "__UACCUM_EPSILON__ 0x1P-16UK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfa	 ;  At line number 250
	.long	.LASF249	 ;  The macro: "__LACCUM_FBIT__ 31"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfb	 ;  At line number 251
	.long	.LASF250	 ;  The macro: "__LACCUM_IBIT__ 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfc	 ;  At line number 252
	.long	.LASF251	 ;  The macro: "__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfd	 ;  At line number 253
	.long	.LASF252	 ;  The macro: "__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfe	 ;  At line number 254
	.long	.LASF253	 ;  The macro: "__LACCUM_EPSILON__ 0x1P-31LK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xff	 ;  At line number 255
	.long	.LASF254	 ;  The macro: "__ULACCUM_FBIT__ 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x100	 ;  At line number 256
	.long	.LASF255	 ;  The macro: "__ULACCUM_IBIT__ 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x101	 ;  At line number 257
	.long	.LASF256	 ;  The macro: "__ULACCUM_MIN__ 0.0ULK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x102	 ;  At line number 258
	.long	.LASF257	 ;  The macro: "__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x103	 ;  At line number 259
	.long	.LASF258	 ;  The macro: "__ULACCUM_EPSILON__ 0x1P-32ULK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x104	 ;  At line number 260
	.long	.LASF259	 ;  The macro: "__LLACCUM_FBIT__ 47"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x105	 ;  At line number 261
	.long	.LASF260	 ;  The macro: "__LLACCUM_IBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x106	 ;  At line number 262
	.long	.LASF261	 ;  The macro: "__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x107	 ;  At line number 263
	.long	.LASF262	 ;  The macro: "__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x108	 ;  At line number 264
	.long	.LASF263	 ;  The macro: "__LLACCUM_EPSILON__ 0x1P-47LLK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x109	 ;  At line number 265
	.long	.LASF264	 ;  The macro: "__ULLACCUM_FBIT__ 48"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10a	 ;  At line number 266
	.long	.LASF265	 ;  The macro: "__ULLACCUM_IBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10b	 ;  At line number 267
	.long	.LASF266	 ;  The macro: "__ULLACCUM_MIN__ 0.0ULLK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10c	 ;  At line number 268
	.long	.LASF267	 ;  The macro: "__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10d	 ;  At line number 269
	.long	.LASF268	 ;  The macro: "__ULLACCUM_EPSILON__ 0x1P-48ULLK"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10e	 ;  At line number 270
	.long	.LASF269	 ;  The macro: "__QQ_FBIT__ 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10f	 ;  At line number 271
	.long	.LASF270	 ;  The macro: "__QQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x110	 ;  At line number 272
	.long	.LASF271	 ;  The macro: "__HQ_FBIT__ 15"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x111	 ;  At line number 273
	.long	.LASF272	 ;  The macro: "__HQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x112	 ;  At line number 274
	.long	.LASF273	 ;  The macro: "__SQ_FBIT__ 31"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x113	 ;  At line number 275
	.long	.LASF274	 ;  The macro: "__SQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x114	 ;  At line number 276
	.long	.LASF275	 ;  The macro: "__DQ_FBIT__ 63"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x115	 ;  At line number 277
	.long	.LASF276	 ;  The macro: "__DQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x116	 ;  At line number 278
	.long	.LASF277	 ;  The macro: "__TQ_FBIT__ 127"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x117	 ;  At line number 279
	.long	.LASF278	 ;  The macro: "__TQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x118	 ;  At line number 280
	.long	.LASF279	 ;  The macro: "__UQQ_FBIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x119	 ;  At line number 281
	.long	.LASF280	 ;  The macro: "__UQQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11a	 ;  At line number 282
	.long	.LASF281	 ;  The macro: "__UHQ_FBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11b	 ;  At line number 283
	.long	.LASF282	 ;  The macro: "__UHQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11c	 ;  At line number 284
	.long	.LASF283	 ;  The macro: "__USQ_FBIT__ 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11d	 ;  At line number 285
	.long	.LASF284	 ;  The macro: "__USQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11e	 ;  At line number 286
	.long	.LASF285	 ;  The macro: "__UDQ_FBIT__ 64"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11f	 ;  At line number 287
	.long	.LASF286	 ;  The macro: "__UDQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x120	 ;  At line number 288
	.long	.LASF287	 ;  The macro: "__UTQ_FBIT__ 128"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x121	 ;  At line number 289
	.long	.LASF288	 ;  The macro: "__UTQ_IBIT__ 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x122	 ;  At line number 290
	.long	.LASF289	 ;  The macro: "__HA_FBIT__ 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x123	 ;  At line number 291
	.long	.LASF290	 ;  The macro: "__HA_IBIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x124	 ;  At line number 292
	.long	.LASF291	 ;  The macro: "__SA_FBIT__ 15"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x125	 ;  At line number 293
	.long	.LASF292	 ;  The macro: "__SA_IBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x126	 ;  At line number 294
	.long	.LASF293	 ;  The macro: "__DA_FBIT__ 31"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x127	 ;  At line number 295
	.long	.LASF294	 ;  The macro: "__DA_IBIT__ 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x128	 ;  At line number 296
	.long	.LASF295	 ;  The macro: "__TA_FBIT__ 47"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x129	 ;  At line number 297
	.long	.LASF296	 ;  The macro: "__TA_IBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12a	 ;  At line number 298
	.long	.LASF297	 ;  The macro: "__UHA_FBIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12b	 ;  At line number 299
	.long	.LASF298	 ;  The macro: "__UHA_IBIT__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12c	 ;  At line number 300
	.long	.LASF299	 ;  The macro: "__USA_FBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12d	 ;  At line number 301
	.long	.LASF300	 ;  The macro: "__USA_IBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12e	 ;  At line number 302
	.long	.LASF301	 ;  The macro: "__UDA_FBIT__ 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12f	 ;  At line number 303
	.long	.LASF302	 ;  The macro: "__UDA_IBIT__ 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x130	 ;  At line number 304
	.long	.LASF303	 ;  The macro: "__UTA_FBIT__ 48"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x131	 ;  At line number 305
	.long	.LASF304	 ;  The macro: "__UTA_IBIT__ 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x132	 ;  At line number 306
	.long	.LASF305	 ;  The macro: "__REGISTER_PREFIX__ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x133	 ;  At line number 307
	.long	.LASF306	 ;  The macro: "__USER_LABEL_PREFIX__ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x134	 ;  At line number 308
	.long	.LASF307	 ;  The macro: "__GNUC_GNU_INLINE__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x135	 ;  At line number 309
	.long	.LASF308	 ;  The macro: "__GCC_ATOMIC_BOOL_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x136	 ;  At line number 310
	.long	.LASF309	 ;  The macro: "__GCC_ATOMIC_CHAR_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x137	 ;  At line number 311
	.long	.LASF310	 ;  The macro: "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x138	 ;  At line number 312
	.long	.LASF311	 ;  The macro: "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x139	 ;  At line number 313
	.long	.LASF312	 ;  The macro: "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13a	 ;  At line number 314
	.long	.LASF313	 ;  The macro: "__GCC_ATOMIC_SHORT_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13b	 ;  At line number 315
	.long	.LASF314	 ;  The macro: "__GCC_ATOMIC_INT_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13c	 ;  At line number 316
	.long	.LASF315	 ;  The macro: "__GCC_ATOMIC_LONG_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13d	 ;  At line number 317
	.long	.LASF316	 ;  The macro: "__GCC_ATOMIC_LLONG_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13e	 ;  At line number 318
	.long	.LASF317	 ;  The macro: "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13f	 ;  At line number 319
	.long	.LASF318	 ;  The macro: "__GCC_ATOMIC_POINTER_LOCK_FREE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x140	 ;  At line number 320
	.long	.LASF319	 ;  The macro: "__GCC_HAVE_DWARF2_CFI_ASM 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x141	 ;  At line number 321
	.long	.LASF320	 ;  The macro: "__PRAGMA_REDEFINE_EXTNAME 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x142	 ;  At line number 322
	.long	.LASF321	 ;  The macro: "__SIZEOF_WCHAR_T__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x143	 ;  At line number 323
	.long	.LASF322	 ;  The macro: "__SIZEOF_WINT_T__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x144	 ;  At line number 324
	.long	.LASF323	 ;  The macro: "__SIZEOF_PTRDIFF_T__ 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x145	 ;  At line number 325
	.long	.LASF324	 ;  The macro: "__AVR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x146	 ;  At line number 326
	.long	.LASF325	 ;  The macro: "__AVR__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x147	 ;  At line number 327
	.long	.LASF326	 ;  The macro: "AVR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x148	 ;  At line number 328
	.long	.LASF327	 ;  The macro: "__AVR_ARCH__ 51"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x149	 ;  At line number 329
	.long	.LASF328	 ;  The macro: "__AVR_HAVE_RAMPZ__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14a	 ;  At line number 330
	.long	.LASF329	 ;  The macro: "__AVR_HAVE_ELPM__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14b	 ;  At line number 331
	.long	.LASF330	 ;  The macro: "__AVR_HAVE_ELPMX__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14c	 ;  At line number 332
	.long	.LASF331	 ;  The macro: "__AVR_HAVE_MOVW__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14d	 ;  At line number 333
	.long	.LASF332	 ;  The macro: "__AVR_HAVE_LPMX__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14e	 ;  At line number 334
	.long	.LASF333	 ;  The macro: "__AVR_ENHANCED__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14f	 ;  At line number 335
	.long	.LASF334	 ;  The macro: "__AVR_HAVE_MUL__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x150	 ;  At line number 336
	.long	.LASF335	 ;  The macro: "__AVR_MEGA__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x151	 ;  At line number 337
	.long	.LASF336	 ;  The macro: "__AVR_HAVE_JMP_CALL__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x152	 ;  At line number 338
	.long	.LASF337	 ;  The macro: "__AVR_2_BYTE_PC__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x153	 ;  At line number 339
	.long	.LASF338	 ;  The macro: "__AVR_HAVE_16BIT_SP__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x154	 ;  At line number 340
	.long	.LASF339	 ;  The macro: "__AVR_HAVE_SPH__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x155	 ;  At line number 341
	.long	.LASF340	 ;  The macro: "__AVR_SFR_OFFSET__ 0x20"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x156	 ;  At line number 342
	.long	.LASF341	 ;  The macro: "__WITH_AVRLIBC__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x157	 ;  At line number 343
	.long	.LASF342	 ;  The macro: "__FLASH 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x158	 ;  At line number 344
	.long	.LASF343	 ;  The macro: "__FLASH1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x159	 ;  At line number 345
	.long	.LASF344	 ;  The macro: "__MEMX 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15a	 ;  At line number 346
	.long	.LASF345	 ;  The macro: "__BUILTIN_AVR_NOP 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15b	 ;  At line number 347
	.long	.LASF346	 ;  The macro: "__BUILTIN_AVR_SEI 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15c	 ;  At line number 348
	.long	.LASF347	 ;  The macro: "__BUILTIN_AVR_CLI 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15d	 ;  At line number 349
	.long	.LASF348	 ;  The macro: "__BUILTIN_AVR_WDR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15e	 ;  At line number 350
	.long	.LASF349	 ;  The macro: "__BUILTIN_AVR_SLEEP 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15f	 ;  At line number 351
	.long	.LASF350	 ;  The macro: "__BUILTIN_AVR_SWAP 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x160	 ;  At line number 352
	.long	.LASF351	 ;  The macro: "__BUILTIN_AVR_FMUL 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x161	 ;  At line number 353
	.long	.LASF352	 ;  The macro: "__BUILTIN_AVR_FMULS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x162	 ;  At line number 354
	.long	.LASF353	 ;  The macro: "__BUILTIN_AVR_FMULSU 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x163	 ;  At line number 355
	.long	.LASF354	 ;  The macro: "__BUILTIN_AVR_DELAY_CYCLES 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x164	 ;  At line number 356
	.long	.LASF355	 ;  The macro: "__BUILTIN_AVR_INSERT_BITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x165	 ;  At line number 357
	.long	.LASF356	 ;  The macro: "__BUILTIN_AVR_FLASH_SEGMENT 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x166	 ;  At line number 358
	.long	.LASF357	 ;  The macro: "__BUILTIN_AVR_ABSHR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x167	 ;  At line number 359
	.long	.LASF358	 ;  The macro: "__BUILTIN_AVR_ABSR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x168	 ;  At line number 360
	.long	.LASF359	 ;  The macro: "__BUILTIN_AVR_ABSLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x169	 ;  At line number 361
	.long	.LASF360	 ;  The macro: "__BUILTIN_AVR_ABSLLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16a	 ;  At line number 362
	.long	.LASF361	 ;  The macro: "__BUILTIN_AVR_ABSHK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16b	 ;  At line number 363
	.long	.LASF362	 ;  The macro: "__BUILTIN_AVR_ABSK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16c	 ;  At line number 364
	.long	.LASF363	 ;  The macro: "__BUILTIN_AVR_ABSLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16d	 ;  At line number 365
	.long	.LASF364	 ;  The macro: "__BUILTIN_AVR_ABSLLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16e	 ;  At line number 366
	.long	.LASF365	 ;  The macro: "__BUILTIN_AVR_ROUNDHR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16f	 ;  At line number 367
	.long	.LASF366	 ;  The macro: "__BUILTIN_AVR_ROUNDR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x170	 ;  At line number 368
	.long	.LASF367	 ;  The macro: "__BUILTIN_AVR_ROUNDLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x171	 ;  At line number 369
	.long	.LASF368	 ;  The macro: "__BUILTIN_AVR_ROUNDLLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x172	 ;  At line number 370
	.long	.LASF369	 ;  The macro: "__BUILTIN_AVR_ROUNDUHR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x173	 ;  At line number 371
	.long	.LASF370	 ;  The macro: "__BUILTIN_AVR_ROUNDUR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x174	 ;  At line number 372
	.long	.LASF371	 ;  The macro: "__BUILTIN_AVR_ROUNDULR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x175	 ;  At line number 373
	.long	.LASF372	 ;  The macro: "__BUILTIN_AVR_ROUNDULLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x176	 ;  At line number 374
	.long	.LASF373	 ;  The macro: "__BUILTIN_AVR_ROUNDHK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x177	 ;  At line number 375
	.long	.LASF374	 ;  The macro: "__BUILTIN_AVR_ROUNDK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x178	 ;  At line number 376
	.long	.LASF375	 ;  The macro: "__BUILTIN_AVR_ROUNDLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x179	 ;  At line number 377
	.long	.LASF376	 ;  The macro: "__BUILTIN_AVR_ROUNDLLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17a	 ;  At line number 378
	.long	.LASF377	 ;  The macro: "__BUILTIN_AVR_ROUNDUHK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17b	 ;  At line number 379
	.long	.LASF378	 ;  The macro: "__BUILTIN_AVR_ROUNDUK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17c	 ;  At line number 380
	.long	.LASF379	 ;  The macro: "__BUILTIN_AVR_ROUNDULK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17d	 ;  At line number 381
	.long	.LASF380	 ;  The macro: "__BUILTIN_AVR_ROUNDULLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17e	 ;  At line number 382
	.long	.LASF381	 ;  The macro: "__BUILTIN_AVR_COUNTLSHR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17f	 ;  At line number 383
	.long	.LASF382	 ;  The macro: "__BUILTIN_AVR_COUNTLSR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x180	 ;  At line number 384
	.long	.LASF383	 ;  The macro: "__BUILTIN_AVR_COUNTLSLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x181	 ;  At line number 385
	.long	.LASF384	 ;  The macro: "__BUILTIN_AVR_COUNTLSLLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x182	 ;  At line number 386
	.long	.LASF385	 ;  The macro: "__BUILTIN_AVR_COUNTLSUHR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x183	 ;  At line number 387
	.long	.LASF386	 ;  The macro: "__BUILTIN_AVR_COUNTLSUR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x184	 ;  At line number 388
	.long	.LASF387	 ;  The macro: "__BUILTIN_AVR_COUNTLSULR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x185	 ;  At line number 389
	.long	.LASF388	 ;  The macro: "__BUILTIN_AVR_COUNTLSULLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x186	 ;  At line number 390
	.long	.LASF389	 ;  The macro: "__BUILTIN_AVR_COUNTLSHK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x187	 ;  At line number 391
	.long	.LASF390	 ;  The macro: "__BUILTIN_AVR_COUNTLSK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x188	 ;  At line number 392
	.long	.LASF391	 ;  The macro: "__BUILTIN_AVR_COUNTLSLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x189	 ;  At line number 393
	.long	.LASF392	 ;  The macro: "__BUILTIN_AVR_COUNTLSLLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18a	 ;  At line number 394
	.long	.LASF393	 ;  The macro: "__BUILTIN_AVR_COUNTLSUHK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18b	 ;  At line number 395
	.long	.LASF394	 ;  The macro: "__BUILTIN_AVR_COUNTLSUK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18c	 ;  At line number 396
	.long	.LASF395	 ;  The macro: "__BUILTIN_AVR_COUNTLSULK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18d	 ;  At line number 397
	.long	.LASF396	 ;  The macro: "__BUILTIN_AVR_COUNTLSULLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18e	 ;  At line number 398
	.long	.LASF397	 ;  The macro: "__BUILTIN_AVR_BITSHR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18f	 ;  At line number 399
	.long	.LASF398	 ;  The macro: "__BUILTIN_AVR_BITSR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x190	 ;  At line number 400
	.long	.LASF399	 ;  The macro: "__BUILTIN_AVR_BITSLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x191	 ;  At line number 401
	.long	.LASF400	 ;  The macro: "__BUILTIN_AVR_BITSLLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x192	 ;  At line number 402
	.long	.LASF401	 ;  The macro: "__BUILTIN_AVR_BITSUHR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x193	 ;  At line number 403
	.long	.LASF402	 ;  The macro: "__BUILTIN_AVR_BITSUR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x194	 ;  At line number 404
	.long	.LASF403	 ;  The macro: "__BUILTIN_AVR_BITSULR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x195	 ;  At line number 405
	.long	.LASF404	 ;  The macro: "__BUILTIN_AVR_BITSULLR 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x196	 ;  At line number 406
	.long	.LASF405	 ;  The macro: "__BUILTIN_AVR_BITSHK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x197	 ;  At line number 407
	.long	.LASF406	 ;  The macro: "__BUILTIN_AVR_BITSK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x198	 ;  At line number 408
	.long	.LASF407	 ;  The macro: "__BUILTIN_AVR_BITSLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x199	 ;  At line number 409
	.long	.LASF408	 ;  The macro: "__BUILTIN_AVR_BITSLLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19a	 ;  At line number 410
	.long	.LASF409	 ;  The macro: "__BUILTIN_AVR_BITSUHK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19b	 ;  At line number 411
	.long	.LASF410	 ;  The macro: "__BUILTIN_AVR_BITSUK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19c	 ;  At line number 412
	.long	.LASF411	 ;  The macro: "__BUILTIN_AVR_BITSULK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19d	 ;  At line number 413
	.long	.LASF412	 ;  The macro: "__BUILTIN_AVR_BITSULLK 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19e	 ;  At line number 414
	.long	.LASF413	 ;  The macro: "__BUILTIN_AVR_HRBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19f	 ;  At line number 415
	.long	.LASF414	 ;  The macro: "__BUILTIN_AVR_RBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a0	 ;  At line number 416
	.long	.LASF415	 ;  The macro: "__BUILTIN_AVR_LRBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a1	 ;  At line number 417
	.long	.LASF416	 ;  The macro: "__BUILTIN_AVR_LLRBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a2	 ;  At line number 418
	.long	.LASF417	 ;  The macro: "__BUILTIN_AVR_UHRBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a3	 ;  At line number 419
	.long	.LASF418	 ;  The macro: "__BUILTIN_AVR_URBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a4	 ;  At line number 420
	.long	.LASF419	 ;  The macro: "__BUILTIN_AVR_ULRBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a5	 ;  At line number 421
	.long	.LASF420	 ;  The macro: "__BUILTIN_AVR_ULLRBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a6	 ;  At line number 422
	.long	.LASF421	 ;  The macro: "__BUILTIN_AVR_HKBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a7	 ;  At line number 423
	.long	.LASF422	 ;  The macro: "__BUILTIN_AVR_KBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a8	 ;  At line number 424
	.long	.LASF423	 ;  The macro: "__BUILTIN_AVR_LKBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a9	 ;  At line number 425
	.long	.LASF424	 ;  The macro: "__BUILTIN_AVR_LLKBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1aa	 ;  At line number 426
	.long	.LASF425	 ;  The macro: "__BUILTIN_AVR_UHKBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ab	 ;  At line number 427
	.long	.LASF426	 ;  The macro: "__BUILTIN_AVR_UKBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ac	 ;  At line number 428
	.long	.LASF427	 ;  The macro: "__BUILTIN_AVR_ULKBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ad	 ;  At line number 429
	.long	.LASF428	 ;  The macro: "__BUILTIN_AVR_ULLKBITS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ae	 ;  At line number 430
	.long	.LASF429	 ;  The macro: "__BUILTIN_AVR_ABSFX 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1af	 ;  At line number 431
	.long	.LASF430	 ;  The macro: "__BUILTIN_AVR_ROUNDFX 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b0	 ;  At line number 432
	.long	.LASF431	 ;  The macro: "__BUILTIN_AVR_COUNTLSFX 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b1	 ;  At line number 433
	.long	.LASF432	 ;  The macro: "__INT24_MAX__ 8388607L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b2	 ;  At line number 434
	.long	.LASF433	 ;  The macro: "__INT24_MIN__ (-__INT24_MAX__-1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b3	 ;  At line number 435
	.long	.LASF434	 ;  The macro: "__UINT24_MAX__ 16777215UL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b4	 ;  At line number 436
	.long	.LASF435	 ;  The macro: "__ELF__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1	 ;  At line number 1
	.long	.LASF436	 ;  The macro: "__AVR_ATmega1284P__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2	 ;  At line number 2
	.long	.LASF437	 ;  The macro: "__AVR_DEVICE_NAME__ atmega1284p"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3	 ;  At line number 3
	.long	.LASF438	 ;  The macro: "MCU 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4	 ;  At line number 4
	.long	.LASF436	 ;  The macro: "__AVR_ATmega1284P__ 1"
	.file 8 "ct-Bot.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x1c	 ;  Included from line number 28
	.uleb128 0x8	 ;  file ct-Bot.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro1
	.file 9 "include/global.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x6e	 ;  Included from line number 110
	.uleb128 0x9	 ;  file include/global.h
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF462	 ;  The macro: "GLOBAL_H_ "
	.file 10 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/lib/gcc/avr/4.9.2/include/stdint.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x3f	 ;  Included from line number 63
	.uleb128 0xa	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/lib/gcc/avr/4.9.2/include/stdint.h
	.byte	0x3	 ;  Start new file
	.uleb128 0x9	 ;  Included from line number 9
	.uleb128 0x2	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/stdint.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro2
	.byte	0x4	 ;  End file
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd	 ;  At line number 13
	.long	.LASF524	 ;  The macro: "_GCC_WRAP_STDINT_H "
	.byte	0x4	 ;  End file
	.file 11 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/math.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x40	 ;  Included from line number 64
	.uleb128 0xb	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/math.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro3
	.byte	0x4	 ;  End file
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro4
	.file 12 "include/builtins.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x76	 ;  Included from line number 118
	.uleb128 0xc	 ;  file include/builtins.h
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF582	 ;  The macro: "BUILTINS_H_ "
	.file 13 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/version.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x1f	 ;  Included from line number 31
	.uleb128 0xd	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/version.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro5
	.byte	0x4	 ;  End file
	.file 14 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/builtins.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x22	 ;  Included from line number 34
	.uleb128 0xe	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/builtins.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro6
	.byte	0x4	 ;  End file
	.byte	0x4	 ;  End file
	.file 15 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/interrupt.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x78	 ;  Included from line number 120
	.uleb128 0xf	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/interrupt.h
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24	 ;  At line number 36
	.long	.LASF593	 ;  The macro: "_AVR_INTERRUPT_H_ "
	.file 16 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/io.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x26	 ;  Included from line number 38
	.uleb128 0x10	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/io.h
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x61	 ;  At line number 97
	.long	.LASF594	 ;  The macro: "_AVR_IO_H_ "
	.file 17 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/sfr_defs.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x63	 ;  Included from line number 99
	.uleb128 0x11	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/sfr_defs.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro7
	.file 18 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/inttypes.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x7e	 ;  Included from line number 126
	.uleb128 0x12	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/inttypes.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro8
	.byte	0x4	 ;  End file
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro9
	.byte	0x4	 ;  End file
	.file 19 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/iom1284p.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0xa2	 ;  Included from line number 162
	.uleb128 0x13	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/iom1284p.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro10
	.byte	0x4	 ;  End file
	.file 20 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/portpins.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x273	 ;  Included from line number 627
	.uleb128 0x14	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/portpins.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro11
	.byte	0x4	 ;  End file
	.file 21 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/common.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x275	 ;  Included from line number 629
	.uleb128 0x15	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/common.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro12
	.byte	0x4	 ;  End file
	.file 22 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/fuse.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x27e	 ;  Included from line number 638
	.uleb128 0x16	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/fuse.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro13
	.byte	0x4	 ;  End file
	.file 23 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/lock.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x281	 ;  Included from line number 641
	.uleb128 0x17	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/lock.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro14
	.byte	0x4	 ;  End file
	.byte	0x4	 ;  End file
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro15
	.byte	0x4	 ;  End file
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro16
	.file 24 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/pgmspace.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x95	 ;  Included from line number 149
	.uleb128 0x18	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/avr/include/avr/pgmspace.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro17
	.file 25 "/usr/local/avr8-gnu-toolchain-darwin_x86_64/lib/gcc/avr/4.9.2/include/stddef.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x57	 ;  Included from line number 87
	.uleb128 0x19	 ;  file /usr/local/avr8-gnu-toolchain-darwin_x86_64/lib/gcc/avr/4.9.2/include/stddef.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro18
	.byte	0x4	 ;  End file
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro19
	.byte	0x4	 ;  End file
	.byte	0x4	 ;  End file
	.file 26 "include/bot-local.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x6f	 ;  Included from line number 111
	.uleb128 0x1a	 ;  file include/bot-local.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro20
	.file 27 "bot-local-override.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x9a	 ;  Included from line number 154
	.uleb128 0x1b	 ;  file bot-local-override.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro21
	.byte	0x4	 ;  End file
	.byte	0x4	 ;  End file
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x73	 ;  At line number 115
	.long	.LASF1935	 ;  The macro: "ARM_LINUX_BOARD"
	.file 28 "include/rc5-codes.h"
	.byte	0x3	 ;  Start new file
	.uleb128 0x7e	 ;  Included from line number 126
	.uleb128 0x1c	 ;  file include/rc5-codes.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro22
	.byte	0x4	 ;  End file
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro23
	.byte	0x4	 ;  End file
	.byte	0x3	 ;  Start new file
	.uleb128 0x1f	 ;  Included from line number 31
	.uleb128 0x3	 ;  file include/spi.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro24
	.byte	0x4	 ;  End file
	.byte	0x3	 ;  Start new file
	.uleb128 0x20	 ;  Included from line number 32
	.uleb128 0x5	 ;  file include/os_thread.h
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF2002	 ;  The macro: "_OS_THREAD_H_ "
	.byte	0x3	 ;  Start new file
	.uleb128 0x24	 ;  Included from line number 36
	.uleb128 0x4	 ;  file include/timer.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro25
	.byte	0x4	 ;  End file
	.byte	0x3	 ;  Start new file
	.uleb128 0x25	 ;  Included from line number 37
	.uleb128 0x7	 ;  file include/os_scheduler.h
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro26
	.byte	0x4	 ;  End file
	.byte	0x7	 ;  Transparent include
	.long	.Ldebug_macro27
	.byte	0x4	 ;  End file
	.byte	0x3	 ;  Start new file
	.uleb128 0x21	 ;  Included from line number 33
	.uleb128 0x6	 ;  file include/fifo.h
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e	 ;  At line number 30
	.long	.LASF2022	 ;  The macro: "_FIFO_H_ "
	.byte	0x3	 ;  Start new file
	.uleb128 0x24	 ;  Included from line number 36
	.uleb128 0x5	 ;  file include/os_thread.h
	.byte	0x4	 ;  End file
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a	 ;  At line number 42
	.long	.LASF2023	 ;  The macro: "LOG_DEBUG_FIFO(a,...) {}"
	.byte	0x4	 ;  End file
	.byte	0x4	 ;  End file
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.ctBot.h.27.dbc63b707942f981ffc05e89dd94dfea,comdat
.Ldebug_macro1:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b	 ;  At line number 27
	.long	.LASF439	 ;  The macro: "CT_BOT_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x26	 ;  At line number 38
	.long	.LASF440	 ;  The macro: "LOG_STDOUT_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28	 ;  At line number 40
	.long	.LASF441	 ;  The macro: "USE_MINILOG "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d	 ;  At line number 45
	.long	.LASF442	 ;  The macro: "BOT_2_SIM_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f	 ;  At line number 47
	.long	.LASF443	 ;  The macro: "BOT_2_BOT_PAYLOAD_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33	 ;  At line number 51
	.long	.LASF444	 ;  The macro: "DISPLAY_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x34	 ;  At line number 52
	.long	.LASF445	 ;  The macro: "KEYPAD_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35	 ;  At line number 53
	.long	.LASF446	 ;  The macro: "DISPLAY_MCU_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36	 ;  At line number 54
	.long	.LASF447	 ;  The macro: "DISPLAY_REMOTE_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c	 ;  At line number 60
	.long	.LASF448	 ;  The macro: "MEASURE_MOUSE_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45	 ;  At line number 69
	.long	.LASF449	 ;  The macro: "SPEED_CONTROL_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4c	 ;  At line number 76
	.long	.LASF450	 ;  The macro: "MAP_2_SIM_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x51	 ;  At line number 81
	.long	.LASF451	 ;  The macro: "BOT_FS_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x56	 ;  At line number 86
	.long	.LASF452	 ;  The macro: "ADC_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x57	 ;  At line number 87
	.long	.LASF453	 ;  The macro: "SHIFT_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x58	 ;  At line number 88
	.long	.LASF454	 ;  The macro: "ENA_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x59	 ;  At line number 89
	.long	.LASF455	 ;  The macro: "LED_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5a	 ;  At line number 90
	.long	.LASF456	 ;  The macro: "IR_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5b	 ;  At line number 91
	.long	.LASF457	 ;  The macro: "RC5_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x60	 ;  At line number 96
	.long	.LASF458	 ;  The macro: "BEHAVIOUR_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x61	 ;  At line number 97
	.long	.LASF459	 ;  The macro: "POS_STORE_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x62	 ;  At line number 98
	.long	.LASF460	 ;  The macro: "OS_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x65	 ;  At line number 101
	.long	.LASF461	 ;  The macro: "ARM_LINUX_BOARD "
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.40.0b15bfb741d41c43341e80778c1245bf,comdat
.Ldebug_macro2:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28	 ;  At line number 40
	.long	.LASF463	 ;  The macro: "__STDINT_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39	 ;  At line number 57
	.long	.LASF464	 ;  The macro: "__USING_MINT8 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11d	 ;  At line number 285
	.long	.LASF465	 ;  The macro: "__CONCATenate(left,right) left ## right"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11e	 ;  At line number 286
	.long	.LASF466	 ;  The macro: "__CONCAT(left,right) __CONCATenate(left, right)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12c	 ;  At line number 300
	.long	.LASF467	 ;  The macro: "INT8_MAX 0x7f"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x131	 ;  At line number 305
	.long	.LASF468	 ;  The macro: "INT8_MIN (-INT8_MAX - 1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x136	 ;  At line number 310
	.long	.LASF469	 ;  The macro: "UINT8_MAX (__CONCAT(INT8_MAX, U) * 2U + 1U)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x147	 ;  At line number 327
	.long	.LASF470	 ;  The macro: "INT16_MAX 0x7fff"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14c	 ;  At line number 332
	.long	.LASF471	 ;  The macro: "INT16_MIN (-INT16_MAX - 1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x151	 ;  At line number 337
	.long	.LASF472	 ;  The macro: "UINT16_MAX (__CONCAT(INT16_MAX, U) * 2U + 1U)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x156	 ;  At line number 342
	.long	.LASF473	 ;  The macro: "INT32_MAX 0x7fffffffL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15b	 ;  At line number 347
	.long	.LASF474	 ;  The macro: "INT32_MIN (-INT32_MAX - 1L)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x160	 ;  At line number 352
	.long	.LASF475	 ;  The macro: "UINT32_MAX (__CONCAT(INT32_MAX, U) * 2UL + 1UL)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x167	 ;  At line number 359
	.long	.LASF476	 ;  The macro: "INT64_MAX 0x7fffffffffffffffLL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16c	 ;  At line number 364
	.long	.LASF477	 ;  The macro: "INT64_MIN (-INT64_MAX - 1LL)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x171	 ;  At line number 369
	.long	.LASF478	 ;  The macro: "UINT64_MAX (__CONCAT(INT64_MAX, U) * 2ULL + 1ULL)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17b	 ;  At line number 379
	.long	.LASF479	 ;  The macro: "INT_LEAST8_MAX INT8_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x180	 ;  At line number 384
	.long	.LASF480	 ;  The macro: "INT_LEAST8_MIN INT8_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x185	 ;  At line number 389
	.long	.LASF481	 ;  The macro: "UINT_LEAST8_MAX UINT8_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18a	 ;  At line number 394
	.long	.LASF482	 ;  The macro: "INT_LEAST16_MAX INT16_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18f	 ;  At line number 399
	.long	.LASF483	 ;  The macro: "INT_LEAST16_MIN INT16_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x194	 ;  At line number 404
	.long	.LASF484	 ;  The macro: "UINT_LEAST16_MAX UINT16_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x199	 ;  At line number 409
	.long	.LASF485	 ;  The macro: "INT_LEAST32_MAX INT32_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19e	 ;  At line number 414
	.long	.LASF486	 ;  The macro: "INT_LEAST32_MIN INT32_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a3	 ;  At line number 419
	.long	.LASF487	 ;  The macro: "UINT_LEAST32_MAX UINT32_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a8	 ;  At line number 424
	.long	.LASF488	 ;  The macro: "INT_LEAST64_MAX INT64_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ad	 ;  At line number 429
	.long	.LASF489	 ;  The macro: "INT_LEAST64_MIN INT64_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b2	 ;  At line number 434
	.long	.LASF490	 ;  The macro: "UINT_LEAST64_MAX UINT64_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1bd	 ;  At line number 445
	.long	.LASF491	 ;  The macro: "INT_FAST8_MAX INT8_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c2	 ;  At line number 450
	.long	.LASF492	 ;  The macro: "INT_FAST8_MIN INT8_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c7	 ;  At line number 455
	.long	.LASF493	 ;  The macro: "UINT_FAST8_MAX UINT8_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1cc	 ;  At line number 460
	.long	.LASF494	 ;  The macro: "INT_FAST16_MAX INT16_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d1	 ;  At line number 465
	.long	.LASF495	 ;  The macro: "INT_FAST16_MIN INT16_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d6	 ;  At line number 470
	.long	.LASF496	 ;  The macro: "UINT_FAST16_MAX UINT16_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1db	 ;  At line number 475
	.long	.LASF497	 ;  The macro: "INT_FAST32_MAX INT32_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e0	 ;  At line number 480
	.long	.LASF498	 ;  The macro: "INT_FAST32_MIN INT32_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e5	 ;  At line number 485
	.long	.LASF499	 ;  The macro: "UINT_FAST32_MAX UINT32_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ea	 ;  At line number 490
	.long	.LASF500	 ;  The macro: "INT_FAST64_MAX INT64_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ef	 ;  At line number 495
	.long	.LASF501	 ;  The macro: "INT_FAST64_MIN INT64_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f4	 ;  At line number 500
	.long	.LASF502	 ;  The macro: "UINT_FAST64_MAX UINT64_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ff	 ;  At line number 511
	.long	.LASF503	 ;  The macro: "INTPTR_MAX INT16_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x204	 ;  At line number 516
	.long	.LASF504	 ;  The macro: "INTPTR_MIN INT16_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x209	 ;  At line number 521
	.long	.LASF505	 ;  The macro: "UINTPTR_MAX UINT16_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x214	 ;  At line number 532
	.long	.LASF506	 ;  The macro: "INTMAX_MAX INT64_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x219	 ;  At line number 537
	.long	.LASF507	 ;  The macro: "INTMAX_MIN INT64_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x21e	 ;  At line number 542
	.long	.LASF508	 ;  The macro: "UINTMAX_MAX UINT64_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22b	 ;  At line number 555
	.long	.LASF509	 ;  The macro: "PTRDIFF_MAX INT16_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x230	 ;  At line number 560
	.long	.LASF510	 ;  The macro: "PTRDIFF_MIN INT16_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x239	 ;  At line number 569
	.long	.LASF511	 ;  The macro: "SIG_ATOMIC_MAX INT8_MAX"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23e	 ;  At line number 574
	.long	.LASF512	 ;  The macro: "SIG_ATOMIC_MIN INT8_MIN"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x244	 ;  At line number 580
	.long	.LASF513	 ;  The macro: "SIZE_MAX (__CONCAT(INT16_MAX, U))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x261	 ;  At line number 609
	.long	.LASF514	 ;  The macro: "INT8_C(value) ((int8_t) value)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x266	 ;  At line number 614
	.long	.LASF515	 ;  The macro: "UINT8_C(value) ((uint8_t) __CONCAT(value, U))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x275	 ;  At line number 629
	.long	.LASF516	 ;  The macro: "INT16_C(value) value"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27a	 ;  At line number 634
	.long	.LASF517	 ;  The macro: "UINT16_C(value) __CONCAT(value, U)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27f	 ;  At line number 639
	.long	.LASF518	 ;  The macro: "INT32_C(value) __CONCAT(value, L)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x284	 ;  At line number 644
	.long	.LASF519	 ;  The macro: "UINT32_C(value) __CONCAT(value, UL)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28b	 ;  At line number 651
	.long	.LASF520	 ;  The macro: "INT64_C(value) __CONCAT(value, LL)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x290	 ;  At line number 656
	.long	.LASF521	 ;  The macro: "UINT64_C(value) __CONCAT(value, ULL)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x295	 ;  At line number 661
	.long	.LASF522	 ;  The macro: "INTMAX_C(value) __CONCAT(value, LL)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x29a	 ;  At line number 666
	.long	.LASF523	 ;  The macro: "UINTMAX_C(value) __CONCAT(value, ULL)"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.math.h.49.1c1843baa52bf03171fbe0490b665ed2,comdat
.Ldebug_macro3:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x31	 ;  At line number 49
	.long	.LASF525	 ;  The macro: "__MATH_H "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x47	 ;  At line number 71
	.long	.LASF526	 ;  The macro: "M_E 2.7182818284590452354"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a	 ;  At line number 74
	.long	.LASF527	 ;  The macro: "M_LOG2E 1.4426950408889634074"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4d	 ;  At line number 77
	.long	.LASF528	 ;  The macro: "M_LOG10E 0.43429448190325182765"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x50	 ;  At line number 80
	.long	.LASF529	 ;  The macro: "M_LN2 0.69314718055994530942"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x53	 ;  At line number 83
	.long	.LASF530	 ;  The macro: "M_LN10 2.30258509299404568402"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x56	 ;  At line number 86
	.long	.LASF531	 ;  The macro: "M_PI 3.14159265358979323846"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x59	 ;  At line number 89
	.long	.LASF532	 ;  The macro: "M_PI_2 1.57079632679489661923"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5c	 ;  At line number 92
	.long	.LASF533	 ;  The macro: "M_PI_4 0.78539816339744830962"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5f	 ;  At line number 95
	.long	.LASF534	 ;  The macro: "M_1_PI 0.31830988618379067154"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x62	 ;  At line number 98
	.long	.LASF535	 ;  The macro: "M_2_PI 0.63661977236758134308"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x65	 ;  At line number 101
	.long	.LASF536	 ;  The macro: "M_2_SQRTPI 1.12837916709551257390"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x68	 ;  At line number 104
	.long	.LASF537	 ;  The macro: "M_SQRT2 1.41421356237309504880"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6b	 ;  At line number 107
	.long	.LASF538	 ;  The macro: "M_SQRT1_2 0.70710678118654752440"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6e	 ;  At line number 110
	.long	.LASF539	 ;  The macro: "NAN __builtin_nan("")"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x71	 ;  At line number 113
	.long	.LASF540	 ;  The macro: "INFINITY __builtin_inf()"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x75	 ;  At line number 117
	.long	.LASF541	 ;  The macro: "__ATTR_CONST__ __attribute__((__const__))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x80	 ;  At line number 128
	.long	.LASF542	 ;  The macro: "cosf cos"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x86	 ;  At line number 134
	.long	.LASF543	 ;  The macro: "sinf sin"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8c	 ;  At line number 140
	.long	.LASF544	 ;  The macro: "tanf tan"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x93	 ;  At line number 147
	.long	.LASF545	 ;  The macro: "fabsf fabs"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9a	 ;  At line number 154
	.long	.LASF546	 ;  The macro: "fmodf fmod"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb8	 ;  At line number 184
	.long	.LASF547	 ;  The macro: "cbrtf cbrt"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc3	 ;  At line number 195
	.long	.LASF548	 ;  The macro: "hypotf hypot"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcb	 ;  At line number 203
	.long	.LASF549	 ;  The macro: "squaref square"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd2	 ;  At line number 210
	.long	.LASF550	 ;  The macro: "floorf floor"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd9	 ;  At line number 217
	.long	.LASF551	 ;  The macro: "ceilf ceil"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xeb	 ;  At line number 235
	.long	.LASF552	 ;  The macro: "frexpf frexp"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf3	 ;  At line number 243
	.long	.LASF553	 ;  The macro: "ldexpf ldexp"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf9	 ;  At line number 249
	.long	.LASF554	 ;  The macro: "expf exp"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xff	 ;  At line number 255
	.long	.LASF555	 ;  The macro: "coshf cosh"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x105	 ;  At line number 261
	.long	.LASF556	 ;  The macro: "sinhf sinh"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10b	 ;  At line number 267
	.long	.LASF557	 ;  The macro: "tanhf tanh"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x113	 ;  At line number 275
	.long	.LASF558	 ;  The macro: "acosf acos"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11b	 ;  At line number 283
	.long	.LASF559	 ;  The macro: "asinf asin"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x122	 ;  At line number 290
	.long	.LASF560	 ;  The macro: "atanf atan"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12b	 ;  At line number 299
	.long	.LASF561	 ;  The macro: "atan2f atan2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x131	 ;  At line number 305
	.long	.LASF562	 ;  The macro: "logf log"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x137	 ;  At line number 311
	.long	.LASF563	 ;  The macro: "log10f log10"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13d	 ;  At line number 317
	.long	.LASF564	 ;  The macro: "powf pow"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x144	 ;  At line number 324
	.long	.LASF565	 ;  The macro: "isnanf isnan"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14e	 ;  At line number 334
	.long	.LASF566	 ;  The macro: "isinff isinf"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x160	 ;  At line number 352
	.long	.LASF567	 ;  The macro: "isfinitef isfinite"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16f	 ;  At line number 367
	.long	.LASF568	 ;  The macro: "copysignf copysign"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x179	 ;  At line number 377
	.long	.LASF569	 ;  The macro: "signbitf signbit"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x180	 ;  At line number 384
	.long	.LASF570	 ;  The macro: "fdimf fdim"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x189	 ;  At line number 393
	.long	.LASF571	 ;  The macro: "fmaf fma"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x191	 ;  At line number 401
	.long	.LASF572	 ;  The macro: "fmaxf fmax"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x199	 ;  At line number 409
	.long	.LASF573	 ;  The macro: "fminf fmin"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a0	 ;  At line number 416
	.long	.LASF574	 ;  The macro: "truncf trunc"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ab	 ;  At line number 427
	.long	.LASF575	 ;  The macro: "roundf round"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b8	 ;  At line number 440
	.long	.LASF576	 ;  The macro: "lroundf lround"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c6	 ;  At line number 454
	.long	.LASF577	 ;  The macro: "lrintf lrint"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.global.h.73.99c4a72a6f76726cf2e623642a3822f7,comdat
.Ldebug_macro4:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x49	 ;  At line number 73
	.long	.LASF578	 ;  The macro: "True 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a	 ;  At line number 74
	.long	.LASF579	 ;  The macro: "False 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6d	 ;  At line number 109
	.long	.LASF580	 ;  The macro: "binary(var,bit) ((var >> bit) & 1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x70	 ;  At line number 112
	.long	.LASF581	 ;  The macro: "LINE_FEED "\r\n""
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.version.h.54.cceee89158cf4f97a4615a49702b3742,comdat
.Ldebug_macro5:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36	 ;  At line number 54
	.long	.LASF583	 ;  The macro: "_AVR_VERSION_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a	 ;  At line number 58
	.long	.LASF584	 ;  The macro: "__AVR_LIBC_VERSION_STRING__ "1.8.0svn""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44	 ;  At line number 68
	.long	.LASF585	 ;  The macro: "__AVR_LIBC_VERSION__ 10800UL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48	 ;  At line number 72
	.long	.LASF586	 ;  The macro: "__AVR_LIBC_DATE_STRING__ "20111229""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4c	 ;  At line number 76
	.long	.LASF587	 ;  The macro: "__AVR_LIBC_DATE_ 20111229UL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x50	 ;  At line number 80
	.long	.LASF588	 ;  The macro: "__AVR_LIBC_MAJOR__ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x54	 ;  At line number 84
	.long	.LASF589	 ;  The macro: "__AVR_LIBC_MINOR__ 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x58	 ;  At line number 88
	.long	.LASF590	 ;  The macro: "__AVR_LIBC_REVISION__ 0"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.builtins.h.39.23dfd078e57c6917050c95d32d815155,comdat
.Ldebug_macro6:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27	 ;  At line number 39
	.long	.LASF591	 ;  The macro: "_AVR_BUILTINS_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a	 ;  At line number 42
	.long	.LASF592	 ;  The macro: "__HAS_DELAY_CYCLES 1"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.36.473802ecbcb5d4d38de6c7efbfcd3c60,comdat
.Ldebug_macro7:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24	 ;  At line number 36
	.long	.LASF595	 ;  The macro: "_AVR_SFR_DEFS_H_ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x79	 ;  At line number 121
	.long	.LASF596	 ;  The macro: "_SFR_ASM_COMPAT 0"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.inttypes.h.35.cc04cc1b98ea8ee6df5d06ef77f75e42,comdat
.Ldebug_macro8:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23	 ;  At line number 35
	.long	.LASF597	 ;  The macro: "__INTTYPES_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x60	 ;  At line number 96
	.long	.LASF598	 ;  The macro: "PRId8 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x63	 ;  At line number 99
	.long	.LASF599	 ;  The macro: "PRIdLEAST8 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x66	 ;  At line number 102
	.long	.LASF600	 ;  The macro: "PRIdFAST8 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6a	 ;  At line number 106
	.long	.LASF601	 ;  The macro: "PRIi8 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6d	 ;  At line number 109
	.long	.LASF602	 ;  The macro: "PRIiLEAST8 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x70	 ;  At line number 112
	.long	.LASF603	 ;  The macro: "PRIiFAST8 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x75	 ;  At line number 117
	.long	.LASF604	 ;  The macro: "PRId16 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x78	 ;  At line number 120
	.long	.LASF605	 ;  The macro: "PRIdLEAST16 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7b	 ;  At line number 123
	.long	.LASF606	 ;  The macro: "PRIdFAST16 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7f	 ;  At line number 127
	.long	.LASF607	 ;  The macro: "PRIi16 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x82	 ;  At line number 130
	.long	.LASF608	 ;  The macro: "PRIiLEAST16 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x85	 ;  At line number 133
	.long	.LASF609	 ;  The macro: "PRIiFAST16 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8a	 ;  At line number 138
	.long	.LASF610	 ;  The macro: "PRId32 "ld""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8d	 ;  At line number 141
	.long	.LASF611	 ;  The macro: "PRIdLEAST32 "ld""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x90	 ;  At line number 144
	.long	.LASF612	 ;  The macro: "PRIdFAST32 "ld""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x94	 ;  At line number 148
	.long	.LASF613	 ;  The macro: "PRIi32 "li""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x97	 ;  At line number 151
	.long	.LASF614	 ;  The macro: "PRIiLEAST32 "li""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9a	 ;  At line number 154
	.long	.LASF615	 ;  The macro: "PRIiFAST32 "li""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xaf	 ;  At line number 175
	.long	.LASF616	 ;  The macro: "PRIdPTR PRId16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb2	 ;  At line number 178
	.long	.LASF617	 ;  The macro: "PRIiPTR PRIi16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb6	 ;  At line number 182
	.long	.LASF618	 ;  The macro: "PRIo8 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb9	 ;  At line number 185
	.long	.LASF619	 ;  The macro: "PRIoLEAST8 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbc	 ;  At line number 188
	.long	.LASF620	 ;  The macro: "PRIoFAST8 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc0	 ;  At line number 192
	.long	.LASF621	 ;  The macro: "PRIu8 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc3	 ;  At line number 195
	.long	.LASF622	 ;  The macro: "PRIuLEAST8 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc6	 ;  At line number 198
	.long	.LASF623	 ;  The macro: "PRIuFAST8 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xca	 ;  At line number 202
	.long	.LASF624	 ;  The macro: "PRIx8 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcd	 ;  At line number 205
	.long	.LASF625	 ;  The macro: "PRIxLEAST8 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd0	 ;  At line number 208
	.long	.LASF626	 ;  The macro: "PRIxFAST8 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd4	 ;  At line number 212
	.long	.LASF627	 ;  The macro: "PRIX8 "X""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd7	 ;  At line number 215
	.long	.LASF628	 ;  The macro: "PRIXLEAST8 "X""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xda	 ;  At line number 218
	.long	.LASF629	 ;  The macro: "PRIXFAST8 "X""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdf	 ;  At line number 223
	.long	.LASF630	 ;  The macro: "PRIo16 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe2	 ;  At line number 226
	.long	.LASF631	 ;  The macro: "PRIoLEAST16 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe5	 ;  At line number 229
	.long	.LASF632	 ;  The macro: "PRIoFAST16 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe9	 ;  At line number 233
	.long	.LASF633	 ;  The macro: "PRIu16 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xec	 ;  At line number 236
	.long	.LASF634	 ;  The macro: "PRIuLEAST16 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xef	 ;  At line number 239
	.long	.LASF635	 ;  The macro: "PRIuFAST16 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf3	 ;  At line number 243
	.long	.LASF636	 ;  The macro: "PRIx16 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf6	 ;  At line number 246
	.long	.LASF637	 ;  The macro: "PRIxLEAST16 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf9	 ;  At line number 249
	.long	.LASF638	 ;  The macro: "PRIxFAST16 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfd	 ;  At line number 253
	.long	.LASF639	 ;  The macro: "PRIX16 "X""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x100	 ;  At line number 256
	.long	.LASF640	 ;  The macro: "PRIXLEAST16 "X""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x103	 ;  At line number 259
	.long	.LASF641	 ;  The macro: "PRIXFAST16 "X""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x108	 ;  At line number 264
	.long	.LASF642	 ;  The macro: "PRIo32 "lo""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10b	 ;  At line number 267
	.long	.LASF643	 ;  The macro: "PRIoLEAST32 "lo""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10e	 ;  At line number 270
	.long	.LASF644	 ;  The macro: "PRIoFAST32 "lo""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x112	 ;  At line number 274
	.long	.LASF645	 ;  The macro: "PRIu32 "lu""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x115	 ;  At line number 277
	.long	.LASF646	 ;  The macro: "PRIuLEAST32 "lu""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x118	 ;  At line number 280
	.long	.LASF647	 ;  The macro: "PRIuFAST32 "lu""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11c	 ;  At line number 284
	.long	.LASF648	 ;  The macro: "PRIx32 "lx""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11f	 ;  At line number 287
	.long	.LASF649	 ;  The macro: "PRIxLEAST32 "lx""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x122	 ;  At line number 290
	.long	.LASF650	 ;  The macro: "PRIxFAST32 "lx""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x126	 ;  At line number 294
	.long	.LASF651	 ;  The macro: "PRIX32 "lX""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x129	 ;  At line number 297
	.long	.LASF652	 ;  The macro: "PRIXLEAST32 "lX""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12c	 ;  At line number 300
	.long	.LASF653	 ;  The macro: "PRIXFAST32 "lX""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14a	 ;  At line number 330
	.long	.LASF654	 ;  The macro: "PRIoPTR PRIo16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14d	 ;  At line number 333
	.long	.LASF655	 ;  The macro: "PRIuPTR PRIu16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x150	 ;  At line number 336
	.long	.LASF656	 ;  The macro: "PRIxPTR PRIx16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x153	 ;  At line number 339
	.long	.LASF657	 ;  The macro: "PRIXPTR PRIX16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x165	 ;  At line number 357
	.long	.LASF658	 ;  The macro: "SCNd16 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x168	 ;  At line number 360
	.long	.LASF659	 ;  The macro: "SCNdLEAST16 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16b	 ;  At line number 363
	.long	.LASF660	 ;  The macro: "SCNdFAST16 "d""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16f	 ;  At line number 367
	.long	.LASF661	 ;  The macro: "SCNi16 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x172	 ;  At line number 370
	.long	.LASF662	 ;  The macro: "SCNiLEAST16 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x175	 ;  At line number 373
	.long	.LASF663	 ;  The macro: "SCNiFAST16 "i""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17a	 ;  At line number 378
	.long	.LASF664	 ;  The macro: "SCNd32 "ld""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17d	 ;  At line number 381
	.long	.LASF665	 ;  The macro: "SCNdLEAST32 "ld""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x180	 ;  At line number 384
	.long	.LASF666	 ;  The macro: "SCNdFAST32 "ld""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x184	 ;  At line number 388
	.long	.LASF667	 ;  The macro: "SCNi32 "li""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x187	 ;  At line number 391
	.long	.LASF668	 ;  The macro: "SCNiLEAST32 "li""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18a	 ;  At line number 394
	.long	.LASF669	 ;  The macro: "SCNiFAST32 "li""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19e	 ;  At line number 414
	.long	.LASF670	 ;  The macro: "SCNdPTR SCNd16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a1	 ;  At line number 417
	.long	.LASF671	 ;  The macro: "SCNiPTR SCNi16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b5	 ;  At line number 437
	.long	.LASF672	 ;  The macro: "SCNo16 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b8	 ;  At line number 440
	.long	.LASF673	 ;  The macro: "SCNoLEAST16 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1bb	 ;  At line number 443
	.long	.LASF674	 ;  The macro: "SCNoFAST16 "o""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1bf	 ;  At line number 447
	.long	.LASF675	 ;  The macro: "SCNu16 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c2	 ;  At line number 450
	.long	.LASF676	 ;  The macro: "SCNuLEAST16 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c5	 ;  At line number 453
	.long	.LASF677	 ;  The macro: "SCNuFAST16 "u""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c9	 ;  At line number 457
	.long	.LASF678	 ;  The macro: "SCNx16 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1cc	 ;  At line number 460
	.long	.LASF679	 ;  The macro: "SCNxLEAST16 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1cf	 ;  At line number 463
	.long	.LASF680	 ;  The macro: "SCNxFAST16 "x""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d4	 ;  At line number 468
	.long	.LASF681	 ;  The macro: "SCNo32 "lo""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d7	 ;  At line number 471
	.long	.LASF682	 ;  The macro: "SCNoLEAST32 "lo""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1da	 ;  At line number 474
	.long	.LASF683	 ;  The macro: "SCNoFAST32 "lo""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1de	 ;  At line number 478
	.long	.LASF684	 ;  The macro: "SCNu32 "lu""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e1	 ;  At line number 481
	.long	.LASF685	 ;  The macro: "SCNuLEAST32 "lu""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e4	 ;  At line number 484
	.long	.LASF686	 ;  The macro: "SCNuFAST32 "lu""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e8	 ;  At line number 488
	.long	.LASF687	 ;  The macro: "SCNx32 "lx""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1eb	 ;  At line number 491
	.long	.LASF688	 ;  The macro: "SCNxLEAST32 "lx""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ee	 ;  At line number 494
	.long	.LASF689	 ;  The macro: "SCNxFAST32 "lx""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x207	 ;  At line number 519
	.long	.LASF690	 ;  The macro: "SCNoPTR SCNo16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20a	 ;  At line number 522
	.long	.LASF691	 ;  The macro: "SCNuPTR SCNu16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20d	 ;  At line number 525
	.long	.LASF692	 ;  The macro: "SCNxPTR SCNx16"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.128.38ceebe2fb099c106e85a566519e0f1a,comdat
.Ldebug_macro9:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x80	 ;  At line number 128
	.long	.LASF693	 ;  The macro: "_MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x81	 ;  At line number 129
	.long	.LASF694	 ;  The macro: "_MMIO_WORD(mem_addr) (*(volatile uint16_t *)(mem_addr))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x82	 ;  At line number 130
	.long	.LASF695	 ;  The macro: "_MMIO_DWORD(mem_addr) (*(volatile uint32_t *)(mem_addr))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xac	 ;  At line number 172
	.long	.LASF696	 ;  The macro: "__SFR_OFFSET 0x20"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb0	 ;  At line number 176
	.long	.LASF697	 ;  The macro: "_SFR_MEM8(mem_addr) _MMIO_BYTE(mem_addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb1	 ;  At line number 177
	.long	.LASF698	 ;  The macro: "_SFR_MEM16(mem_addr) _MMIO_WORD(mem_addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb2	 ;  At line number 178
	.long	.LASF699	 ;  The macro: "_SFR_MEM32(mem_addr) _MMIO_DWORD(mem_addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb3	 ;  At line number 179
	.long	.LASF700	 ;  The macro: "_SFR_IO8(io_addr) _MMIO_BYTE((io_addr) + __SFR_OFFSET)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb4	 ;  At line number 180
	.long	.LASF701	 ;  The macro: "_SFR_IO16(io_addr) _MMIO_WORD((io_addr) + __SFR_OFFSET)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb6	 ;  At line number 182
	.long	.LASF702	 ;  The macro: "_SFR_MEM_ADDR(sfr) ((uint16_t) &(sfr))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb7	 ;  At line number 183
	.long	.LASF703	 ;  The macro: "_SFR_IO_ADDR(sfr) (_SFR_MEM_ADDR(sfr) - __SFR_OFFSET)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb8	 ;  At line number 184
	.long	.LASF704	 ;  The macro: "_SFR_IO_REG_P(sfr) (_SFR_MEM_ADDR(sfr) < 0x40 + __SFR_OFFSET)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xba	 ;  At line number 186
	.long	.LASF705	 ;  The macro: "_SFR_ADDR(sfr) _SFR_MEM_ADDR(sfr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbe	 ;  At line number 190
	.long	.LASF706	 ;  The macro: "_SFR_BYTE(sfr) _MMIO_BYTE(_SFR_ADDR(sfr))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbf	 ;  At line number 191
	.long	.LASF707	 ;  The macro: "_SFR_WORD(sfr) _MMIO_WORD(_SFR_ADDR(sfr))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc0	 ;  At line number 192
	.long	.LASF708	 ;  The macro: "_SFR_DWORD(sfr) _MMIO_DWORD(_SFR_ADDR(sfr))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd0	 ;  At line number 208
	.long	.LASF709	 ;  The macro: "_BV(bit) (1 << (bit))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd5	 ;  At line number 213
	.long	.LASF710	 ;  The macro: "_VECTOR(N) __vector_ ## N"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xea	 ;  At line number 234
	.long	.LASF711	 ;  The macro: "bit_is_set(sfr,bit) (_SFR_BYTE(sfr) & _BV(bit))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf5	 ;  At line number 245
	.long	.LASF712	 ;  The macro: "bit_is_clear(sfr,bit) (!(_SFR_BYTE(sfr) & _BV(bit)))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfe	 ;  At line number 254
	.long	.LASF713	 ;  The macro: "loop_until_bit_is_set(sfr,bit) do { } while (bit_is_clear(sfr, bit))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x107	 ;  At line number 263
	.long	.LASF714	 ;  The macro: "loop_until_bit_is_clear(sfr,bit) do { } while (bit_is_set(sfr, bit))"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.iom1284p.h.43.7c484a654d2447b40e4e93b55737d804,comdat
.Ldebug_macro10:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b	 ;  At line number 43
	.long	.LASF715	 ;  The macro: "_AVR_IOXXX_H_ "iom1284p.h""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32	 ;  At line number 50
	.long	.LASF716	 ;  The macro: "_AVR_IOM1284P_H_ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x37	 ;  At line number 55
	.long	.LASF717	 ;  The macro: "PINA _SFR_IO8(0x00)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38	 ;  At line number 56
	.long	.LASF718	 ;  The macro: "PINA0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39	 ;  At line number 57
	.long	.LASF719	 ;  The macro: "PINA1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a	 ;  At line number 58
	.long	.LASF720	 ;  The macro: "PINA2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b	 ;  At line number 59
	.long	.LASF721	 ;  The macro: "PINA3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c	 ;  At line number 60
	.long	.LASF722	 ;  The macro: "PINA4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d	 ;  At line number 61
	.long	.LASF723	 ;  The macro: "PINA5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e	 ;  At line number 62
	.long	.LASF724	 ;  The macro: "PINA6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f	 ;  At line number 63
	.long	.LASF725	 ;  The macro: "PINA7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x41	 ;  At line number 65
	.long	.LASF726	 ;  The macro: "DDRA _SFR_IO8(0x01)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x42	 ;  At line number 66
	.long	.LASF727	 ;  The macro: "DDA0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43	 ;  At line number 67
	.long	.LASF728	 ;  The macro: "DDA1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44	 ;  At line number 68
	.long	.LASF729	 ;  The macro: "DDA2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45	 ;  At line number 69
	.long	.LASF730	 ;  The macro: "DDA3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x46	 ;  At line number 70
	.long	.LASF731	 ;  The macro: "DDA4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x47	 ;  At line number 71
	.long	.LASF732	 ;  The macro: "DDA5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48	 ;  At line number 72
	.long	.LASF733	 ;  The macro: "DDA6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x49	 ;  At line number 73
	.long	.LASF734	 ;  The macro: "DDA7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4b	 ;  At line number 75
	.long	.LASF735	 ;  The macro: "PORTA _SFR_IO8(0x02)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4c	 ;  At line number 76
	.long	.LASF736	 ;  The macro: "PORTA0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4d	 ;  At line number 77
	.long	.LASF737	 ;  The macro: "PORTA1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4e	 ;  At line number 78
	.long	.LASF738	 ;  The macro: "PORTA2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4f	 ;  At line number 79
	.long	.LASF739	 ;  The macro: "PORTA3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x50	 ;  At line number 80
	.long	.LASF740	 ;  The macro: "PORTA4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x51	 ;  At line number 81
	.long	.LASF741	 ;  The macro: "PORTA5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x52	 ;  At line number 82
	.long	.LASF742	 ;  The macro: "PORTA6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x53	 ;  At line number 83
	.long	.LASF743	 ;  The macro: "PORTA7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x55	 ;  At line number 85
	.long	.LASF744	 ;  The macro: "PINB _SFR_IO8(0x03)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x56	 ;  At line number 86
	.long	.LASF745	 ;  The macro: "PINB0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x57	 ;  At line number 87
	.long	.LASF746	 ;  The macro: "PINB1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x58	 ;  At line number 88
	.long	.LASF747	 ;  The macro: "PINB2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x59	 ;  At line number 89
	.long	.LASF748	 ;  The macro: "PINB3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5a	 ;  At line number 90
	.long	.LASF749	 ;  The macro: "PINB4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5b	 ;  At line number 91
	.long	.LASF750	 ;  The macro: "PINB5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5c	 ;  At line number 92
	.long	.LASF751	 ;  The macro: "PINB6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5d	 ;  At line number 93
	.long	.LASF752	 ;  The macro: "PINB7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5f	 ;  At line number 95
	.long	.LASF753	 ;  The macro: "DDRB _SFR_IO8(0x04)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x60	 ;  At line number 96
	.long	.LASF754	 ;  The macro: "DDB0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x61	 ;  At line number 97
	.long	.LASF755	 ;  The macro: "DDB1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x62	 ;  At line number 98
	.long	.LASF756	 ;  The macro: "DDB2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x63	 ;  At line number 99
	.long	.LASF757	 ;  The macro: "DDB3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x64	 ;  At line number 100
	.long	.LASF758	 ;  The macro: "DDB4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x65	 ;  At line number 101
	.long	.LASF759	 ;  The macro: "DDB5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x66	 ;  At line number 102
	.long	.LASF760	 ;  The macro: "DDB6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x67	 ;  At line number 103
	.long	.LASF761	 ;  The macro: "DDB7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x69	 ;  At line number 105
	.long	.LASF762	 ;  The macro: "PORTB _SFR_IO8(0x05)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6a	 ;  At line number 106
	.long	.LASF763	 ;  The macro: "PORTB0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6b	 ;  At line number 107
	.long	.LASF764	 ;  The macro: "PORTB1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6c	 ;  At line number 108
	.long	.LASF765	 ;  The macro: "PORTB2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6d	 ;  At line number 109
	.long	.LASF766	 ;  The macro: "PORTB3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6e	 ;  At line number 110
	.long	.LASF767	 ;  The macro: "PORTB4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6f	 ;  At line number 111
	.long	.LASF768	 ;  The macro: "PORTB5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x70	 ;  At line number 112
	.long	.LASF769	 ;  The macro: "PORTB6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x71	 ;  At line number 113
	.long	.LASF770	 ;  The macro: "PORTB7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x73	 ;  At line number 115
	.long	.LASF771	 ;  The macro: "PINC _SFR_IO8(0x06)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x74	 ;  At line number 116
	.long	.LASF772	 ;  The macro: "PINC0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x75	 ;  At line number 117
	.long	.LASF773	 ;  The macro: "PINC1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x76	 ;  At line number 118
	.long	.LASF774	 ;  The macro: "PINC2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x77	 ;  At line number 119
	.long	.LASF775	 ;  The macro: "PINC3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x78	 ;  At line number 120
	.long	.LASF776	 ;  The macro: "PINC4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x79	 ;  At line number 121
	.long	.LASF777	 ;  The macro: "PINC5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7a	 ;  At line number 122
	.long	.LASF778	 ;  The macro: "PINC6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7b	 ;  At line number 123
	.long	.LASF779	 ;  The macro: "PINC7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7d	 ;  At line number 125
	.long	.LASF780	 ;  The macro: "DDRC _SFR_IO8(0x07)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7e	 ;  At line number 126
	.long	.LASF781	 ;  The macro: "DDC0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7f	 ;  At line number 127
	.long	.LASF782	 ;  The macro: "DDC1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x80	 ;  At line number 128
	.long	.LASF783	 ;  The macro: "DDC2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x81	 ;  At line number 129
	.long	.LASF784	 ;  The macro: "DDC3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x82	 ;  At line number 130
	.long	.LASF785	 ;  The macro: "DDC4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x83	 ;  At line number 131
	.long	.LASF786	 ;  The macro: "DDC5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x84	 ;  At line number 132
	.long	.LASF787	 ;  The macro: "DDC6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x85	 ;  At line number 133
	.long	.LASF788	 ;  The macro: "DDC7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x87	 ;  At line number 135
	.long	.LASF789	 ;  The macro: "PORTC _SFR_IO8(0x08)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x88	 ;  At line number 136
	.long	.LASF790	 ;  The macro: "PORTC0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x89	 ;  At line number 137
	.long	.LASF791	 ;  The macro: "PORTC1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8a	 ;  At line number 138
	.long	.LASF792	 ;  The macro: "PORTC2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8b	 ;  At line number 139
	.long	.LASF793	 ;  The macro: "PORTC3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8c	 ;  At line number 140
	.long	.LASF794	 ;  The macro: "PORTC4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8d	 ;  At line number 141
	.long	.LASF795	 ;  The macro: "PORTC5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8e	 ;  At line number 142
	.long	.LASF796	 ;  The macro: "PORTC6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8f	 ;  At line number 143
	.long	.LASF797	 ;  The macro: "PORTC7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x91	 ;  At line number 145
	.long	.LASF798	 ;  The macro: "PIND _SFR_IO8(0x09)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x92	 ;  At line number 146
	.long	.LASF799	 ;  The macro: "PIND0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x93	 ;  At line number 147
	.long	.LASF800	 ;  The macro: "PIND1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x94	 ;  At line number 148
	.long	.LASF801	 ;  The macro: "PIND2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x95	 ;  At line number 149
	.long	.LASF802	 ;  The macro: "PIND3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x96	 ;  At line number 150
	.long	.LASF803	 ;  The macro: "PIND4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x97	 ;  At line number 151
	.long	.LASF804	 ;  The macro: "PIND5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x98	 ;  At line number 152
	.long	.LASF805	 ;  The macro: "PIND6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x99	 ;  At line number 153
	.long	.LASF806	 ;  The macro: "PIND7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9b	 ;  At line number 155
	.long	.LASF807	 ;  The macro: "DDRD _SFR_IO8(0x0A)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9c	 ;  At line number 156
	.long	.LASF808	 ;  The macro: "DDD0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9d	 ;  At line number 157
	.long	.LASF809	 ;  The macro: "DDD1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9e	 ;  At line number 158
	.long	.LASF810	 ;  The macro: "DDD2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9f	 ;  At line number 159
	.long	.LASF811	 ;  The macro: "DDD3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa0	 ;  At line number 160
	.long	.LASF812	 ;  The macro: "DDD4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa1	 ;  At line number 161
	.long	.LASF813	 ;  The macro: "DDD5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa2	 ;  At line number 162
	.long	.LASF814	 ;  The macro: "DDD6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa3	 ;  At line number 163
	.long	.LASF815	 ;  The macro: "DDD7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa5	 ;  At line number 165
	.long	.LASF816	 ;  The macro: "PORTD _SFR_IO8(0x0B)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa6	 ;  At line number 166
	.long	.LASF817	 ;  The macro: "PORTD0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa7	 ;  At line number 167
	.long	.LASF818	 ;  The macro: "PORTD1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa8	 ;  At line number 168
	.long	.LASF819	 ;  The macro: "PORTD2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa9	 ;  At line number 169
	.long	.LASF820	 ;  The macro: "PORTD3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xaa	 ;  At line number 170
	.long	.LASF821	 ;  The macro: "PORTD4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xab	 ;  At line number 171
	.long	.LASF822	 ;  The macro: "PORTD5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xac	 ;  At line number 172
	.long	.LASF823	 ;  The macro: "PORTD6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xad	 ;  At line number 173
	.long	.LASF824	 ;  The macro: "PORTD7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xaf	 ;  At line number 175
	.long	.LASF825	 ;  The macro: "TIFR0 _SFR_IO8(0x15)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb0	 ;  At line number 176
	.long	.LASF826	 ;  The macro: "TOV0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb1	 ;  At line number 177
	.long	.LASF827	 ;  The macro: "OCF0A 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb2	 ;  At line number 178
	.long	.LASF828	 ;  The macro: "OCF0B 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb4	 ;  At line number 180
	.long	.LASF829	 ;  The macro: "TIFR1 _SFR_IO8(0x16)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb5	 ;  At line number 181
	.long	.LASF830	 ;  The macro: "TOV1 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb6	 ;  At line number 182
	.long	.LASF831	 ;  The macro: "OCF1A 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb7	 ;  At line number 183
	.long	.LASF832	 ;  The macro: "OCF1B 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb8	 ;  At line number 184
	.long	.LASF833	 ;  The macro: "ICF1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xba	 ;  At line number 186
	.long	.LASF834	 ;  The macro: "TIFR2 _SFR_IO8(0x17)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbb	 ;  At line number 187
	.long	.LASF835	 ;  The macro: "TOV2 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbc	 ;  At line number 188
	.long	.LASF836	 ;  The macro: "OCF2A 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbd	 ;  At line number 189
	.long	.LASF837	 ;  The macro: "OCF2B 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbf	 ;  At line number 191
	.long	.LASF838	 ;  The macro: "TIFR3 _SFR_IO8(0x18)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc0	 ;  At line number 192
	.long	.LASF839	 ;  The macro: "TOV3 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc1	 ;  At line number 193
	.long	.LASF840	 ;  The macro: "OCF3A 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc2	 ;  At line number 194
	.long	.LASF841	 ;  The macro: "OCF3B 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc3	 ;  At line number 195
	.long	.LASF842	 ;  The macro: "ICF3 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc5	 ;  At line number 197
	.long	.LASF843	 ;  The macro: "PCIFR _SFR_IO8(0x1B)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc6	 ;  At line number 198
	.long	.LASF844	 ;  The macro: "PCIF0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc7	 ;  At line number 199
	.long	.LASF845	 ;  The macro: "PCIF1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc8	 ;  At line number 200
	.long	.LASF846	 ;  The macro: "PCIF2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc9	 ;  At line number 201
	.long	.LASF847	 ;  The macro: "PCIF3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcb	 ;  At line number 203
	.long	.LASF848	 ;  The macro: "EIFR _SFR_IO8(0x1C)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcc	 ;  At line number 204
	.long	.LASF849	 ;  The macro: "INTF0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcd	 ;  At line number 205
	.long	.LASF850	 ;  The macro: "INTF1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xce	 ;  At line number 206
	.long	.LASF851	 ;  The macro: "INTF2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd0	 ;  At line number 208
	.long	.LASF852	 ;  The macro: "EIMSK _SFR_IO8(0x1D)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd1	 ;  At line number 209
	.long	.LASF853	 ;  The macro: "INT0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd2	 ;  At line number 210
	.long	.LASF854	 ;  The macro: "INT1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd3	 ;  At line number 211
	.long	.LASF855	 ;  The macro: "INT2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd5	 ;  At line number 213
	.long	.LASF856	 ;  The macro: "GPIOR0 _SFR_IO8(0x1E)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd6	 ;  At line number 214
	.long	.LASF857	 ;  The macro: "GPIOR00 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd7	 ;  At line number 215
	.long	.LASF858	 ;  The macro: "GPIOR01 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd8	 ;  At line number 216
	.long	.LASF859	 ;  The macro: "GPIOR02 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd9	 ;  At line number 217
	.long	.LASF860	 ;  The macro: "GPIOR03 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xda	 ;  At line number 218
	.long	.LASF861	 ;  The macro: "GPIOR04 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdb	 ;  At line number 219
	.long	.LASF862	 ;  The macro: "GPIOR05 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdc	 ;  At line number 220
	.long	.LASF863	 ;  The macro: "GPIOR06 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdd	 ;  At line number 221
	.long	.LASF864	 ;  The macro: "GPIOR07 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdf	 ;  At line number 223
	.long	.LASF865	 ;  The macro: "EECR _SFR_IO8(0x1F)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe0	 ;  At line number 224
	.long	.LASF866	 ;  The macro: "EERE 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe1	 ;  At line number 225
	.long	.LASF867	 ;  The macro: "EEPE 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe2	 ;  At line number 226
	.long	.LASF868	 ;  The macro: "EEMPE 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe3	 ;  At line number 227
	.long	.LASF869	 ;  The macro: "EERIE 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe4	 ;  At line number 228
	.long	.LASF870	 ;  The macro: "EEPM0 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe5	 ;  At line number 229
	.long	.LASF871	 ;  The macro: "EEPM1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe7	 ;  At line number 231
	.long	.LASF872	 ;  The macro: "EEDR _SFR_IO8(0x20)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe8	 ;  At line number 232
	.long	.LASF873	 ;  The macro: "EEDR0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe9	 ;  At line number 233
	.long	.LASF874	 ;  The macro: "EEDR1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xea	 ;  At line number 234
	.long	.LASF875	 ;  The macro: "EEDR2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xeb	 ;  At line number 235
	.long	.LASF876	 ;  The macro: "EEDR3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xec	 ;  At line number 236
	.long	.LASF877	 ;  The macro: "EEDR4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xed	 ;  At line number 237
	.long	.LASF878	 ;  The macro: "EEDR5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xee	 ;  At line number 238
	.long	.LASF879	 ;  The macro: "EEDR6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xef	 ;  At line number 239
	.long	.LASF880	 ;  The macro: "EEDR7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf1	 ;  At line number 241
	.long	.LASF881	 ;  The macro: "EEAR _SFR_IO16(0x21)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf3	 ;  At line number 243
	.long	.LASF882	 ;  The macro: "EEARL _SFR_IO8(0x21)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf4	 ;  At line number 244
	.long	.LASF883	 ;  The macro: "EEAR0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf5	 ;  At line number 245
	.long	.LASF884	 ;  The macro: "EEAR1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf6	 ;  At line number 246
	.long	.LASF885	 ;  The macro: "EEAR2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf7	 ;  At line number 247
	.long	.LASF886	 ;  The macro: "EEAR3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf8	 ;  At line number 248
	.long	.LASF887	 ;  The macro: "EEAR4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf9	 ;  At line number 249
	.long	.LASF888	 ;  The macro: "EEAR5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfa	 ;  At line number 250
	.long	.LASF889	 ;  The macro: "EEAR6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfb	 ;  At line number 251
	.long	.LASF890	 ;  The macro: "EEAR7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfd	 ;  At line number 253
	.long	.LASF891	 ;  The macro: "EEARH _SFR_IO8(0x22)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfe	 ;  At line number 254
	.long	.LASF892	 ;  The macro: "EEAR8 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xff	 ;  At line number 255
	.long	.LASF893	 ;  The macro: "EEAR9 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x100	 ;  At line number 256
	.long	.LASF894	 ;  The macro: "EEAR10 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x101	 ;  At line number 257
	.long	.LASF895	 ;  The macro: "EEAR11 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x103	 ;  At line number 259
	.long	.LASF896	 ;  The macro: "GTCCR _SFR_IO8(0x23)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x104	 ;  At line number 260
	.long	.LASF897	 ;  The macro: "PSRSYNC 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x105	 ;  At line number 261
	.long	.LASF898	 ;  The macro: "PSRASY 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x106	 ;  At line number 262
	.long	.LASF899	 ;  The macro: "TSM 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x108	 ;  At line number 264
	.long	.LASF900	 ;  The macro: "TCCR0A _SFR_IO8(0x24)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x109	 ;  At line number 265
	.long	.LASF901	 ;  The macro: "WGM00 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10a	 ;  At line number 266
	.long	.LASF902	 ;  The macro: "WGM01 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10b	 ;  At line number 267
	.long	.LASF903	 ;  The macro: "COM0B0 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10c	 ;  At line number 268
	.long	.LASF904	 ;  The macro: "COM0B1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10d	 ;  At line number 269
	.long	.LASF905	 ;  The macro: "COM0A0 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10e	 ;  At line number 270
	.long	.LASF906	 ;  The macro: "COM0A1 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x110	 ;  At line number 272
	.long	.LASF907	 ;  The macro: "TCCR0B _SFR_IO8(0x25)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x111	 ;  At line number 273
	.long	.LASF908	 ;  The macro: "CS00 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x112	 ;  At line number 274
	.long	.LASF909	 ;  The macro: "CS01 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x113	 ;  At line number 275
	.long	.LASF910	 ;  The macro: "CS02 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x114	 ;  At line number 276
	.long	.LASF911	 ;  The macro: "WGM02 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x115	 ;  At line number 277
	.long	.LASF912	 ;  The macro: "FOC0B 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x116	 ;  At line number 278
	.long	.LASF913	 ;  The macro: "FOC0A 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x118	 ;  At line number 280
	.long	.LASF914	 ;  The macro: "TCNT0 _SFR_IO8(0x26)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x119	 ;  At line number 281
	.long	.LASF915	 ;  The macro: "TCNT0_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11a	 ;  At line number 282
	.long	.LASF916	 ;  The macro: "TCNT0_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11b	 ;  At line number 283
	.long	.LASF917	 ;  The macro: "TCNT0_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11c	 ;  At line number 284
	.long	.LASF918	 ;  The macro: "TCNT0_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11d	 ;  At line number 285
	.long	.LASF919	 ;  The macro: "TCNT0_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11e	 ;  At line number 286
	.long	.LASF920	 ;  The macro: "TCNT0_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x11f	 ;  At line number 287
	.long	.LASF921	 ;  The macro: "TCNT0_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x120	 ;  At line number 288
	.long	.LASF922	 ;  The macro: "TCNT0_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x122	 ;  At line number 290
	.long	.LASF923	 ;  The macro: "OCR0A _SFR_IO8(0x27)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x123	 ;  At line number 291
	.long	.LASF924	 ;  The macro: "OCR0A_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x124	 ;  At line number 292
	.long	.LASF925	 ;  The macro: "OCR0A_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x125	 ;  At line number 293
	.long	.LASF926	 ;  The macro: "OCR0A_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x126	 ;  At line number 294
	.long	.LASF927	 ;  The macro: "OCR0A_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x127	 ;  At line number 295
	.long	.LASF928	 ;  The macro: "OCR0A_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x128	 ;  At line number 296
	.long	.LASF929	 ;  The macro: "OCR0A_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x129	 ;  At line number 297
	.long	.LASF930	 ;  The macro: "OCR0A_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12a	 ;  At line number 298
	.long	.LASF931	 ;  The macro: "OCR0A_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12c	 ;  At line number 300
	.long	.LASF932	 ;  The macro: "OCR0B _SFR_IO8(0x28)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12d	 ;  At line number 301
	.long	.LASF933	 ;  The macro: "OCR0B_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12e	 ;  At line number 302
	.long	.LASF934	 ;  The macro: "OCR0B_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12f	 ;  At line number 303
	.long	.LASF935	 ;  The macro: "OCR0B_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x130	 ;  At line number 304
	.long	.LASF936	 ;  The macro: "OCR0B_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x131	 ;  At line number 305
	.long	.LASF937	 ;  The macro: "OCR0B_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x132	 ;  At line number 306
	.long	.LASF938	 ;  The macro: "OCR0B_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x133	 ;  At line number 307
	.long	.LASF939	 ;  The macro: "OCR0B_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x134	 ;  At line number 308
	.long	.LASF940	 ;  The macro: "OCR0B_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x136	 ;  At line number 310
	.long	.LASF941	 ;  The macro: "GPIOR1 _SFR_IO8(0x2A)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x137	 ;  At line number 311
	.long	.LASF942	 ;  The macro: "GPIOR10 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x138	 ;  At line number 312
	.long	.LASF943	 ;  The macro: "GPIOR11 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x139	 ;  At line number 313
	.long	.LASF944	 ;  The macro: "GPIOR12 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13a	 ;  At line number 314
	.long	.LASF945	 ;  The macro: "GPIOR13 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13b	 ;  At line number 315
	.long	.LASF946	 ;  The macro: "GPIOR14 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13c	 ;  At line number 316
	.long	.LASF947	 ;  The macro: "GPIOR15 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13d	 ;  At line number 317
	.long	.LASF948	 ;  The macro: "GPIOR16 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x13e	 ;  At line number 318
	.long	.LASF949	 ;  The macro: "GPIOR17 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x140	 ;  At line number 320
	.long	.LASF950	 ;  The macro: "GPIOR2 _SFR_IO8(0x2B)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x141	 ;  At line number 321
	.long	.LASF951	 ;  The macro: "GPIOR20 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x142	 ;  At line number 322
	.long	.LASF952	 ;  The macro: "GPIOR21 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x143	 ;  At line number 323
	.long	.LASF953	 ;  The macro: "GPIOR22 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x144	 ;  At line number 324
	.long	.LASF954	 ;  The macro: "GPIOR23 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x145	 ;  At line number 325
	.long	.LASF955	 ;  The macro: "GPIOR24 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x146	 ;  At line number 326
	.long	.LASF956	 ;  The macro: "GPIOR25 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x147	 ;  At line number 327
	.long	.LASF957	 ;  The macro: "GPIOR26 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x148	 ;  At line number 328
	.long	.LASF958	 ;  The macro: "GPIOR27 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14a	 ;  At line number 330
	.long	.LASF959	 ;  The macro: "SPCR _SFR_IO8(0x2C)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14b	 ;  At line number 331
	.long	.LASF960	 ;  The macro: "SPR0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14c	 ;  At line number 332
	.long	.LASF961	 ;  The macro: "SPR1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14d	 ;  At line number 333
	.long	.LASF962	 ;  The macro: "CPHA 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14e	 ;  At line number 334
	.long	.LASF963	 ;  The macro: "CPOL 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x14f	 ;  At line number 335
	.long	.LASF964	 ;  The macro: "MSTR 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x150	 ;  At line number 336
	.long	.LASF965	 ;  The macro: "DORD 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x151	 ;  At line number 337
	.long	.LASF966	 ;  The macro: "SPE 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x152	 ;  At line number 338
	.long	.LASF967	 ;  The macro: "SPIE 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x154	 ;  At line number 340
	.long	.LASF968	 ;  The macro: "SPSR _SFR_IO8(0x2D)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x155	 ;  At line number 341
	.long	.LASF969	 ;  The macro: "SPI2X 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x156	 ;  At line number 342
	.long	.LASF970	 ;  The macro: "WCOL 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x157	 ;  At line number 343
	.long	.LASF971	 ;  The macro: "SPIF 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x159	 ;  At line number 345
	.long	.LASF972	 ;  The macro: "SPDR _SFR_IO8(0x2E)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15a	 ;  At line number 346
	.long	.LASF973	 ;  The macro: "SPDR0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15b	 ;  At line number 347
	.long	.LASF974	 ;  The macro: "SPDR1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15c	 ;  At line number 348
	.long	.LASF975	 ;  The macro: "SPDR2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15d	 ;  At line number 349
	.long	.LASF976	 ;  The macro: "SPDR3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15e	 ;  At line number 350
	.long	.LASF977	 ;  The macro: "SPDR4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x15f	 ;  At line number 351
	.long	.LASF978	 ;  The macro: "SPDR5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x160	 ;  At line number 352
	.long	.LASF979	 ;  The macro: "SPDR6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x161	 ;  At line number 353
	.long	.LASF980	 ;  The macro: "SPDR7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x163	 ;  At line number 355
	.long	.LASF981	 ;  The macro: "ACSR _SFR_IO8(0x30)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x164	 ;  At line number 356
	.long	.LASF982	 ;  The macro: "ACIS0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x165	 ;  At line number 357
	.long	.LASF983	 ;  The macro: "ACIS1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x166	 ;  At line number 358
	.long	.LASF984	 ;  The macro: "ACIC 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x167	 ;  At line number 359
	.long	.LASF985	 ;  The macro: "ACIE 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x168	 ;  At line number 360
	.long	.LASF986	 ;  The macro: "ACI 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x169	 ;  At line number 361
	.long	.LASF987	 ;  The macro: "ACO 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16a	 ;  At line number 362
	.long	.LASF988	 ;  The macro: "ACBG 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16b	 ;  At line number 363
	.long	.LASF989	 ;  The macro: "ACD 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16d	 ;  At line number 365
	.long	.LASF990	 ;  The macro: "OCDR _SFR_IO8(0x31)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16e	 ;  At line number 366
	.long	.LASF991	 ;  The macro: "OCDR0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x16f	 ;  At line number 367
	.long	.LASF992	 ;  The macro: "OCDR1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x170	 ;  At line number 368
	.long	.LASF993	 ;  The macro: "OCDR2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x171	 ;  At line number 369
	.long	.LASF994	 ;  The macro: "OCDR3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x172	 ;  At line number 370
	.long	.LASF995	 ;  The macro: "OCDR4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x173	 ;  At line number 371
	.long	.LASF996	 ;  The macro: "OCDR5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x174	 ;  At line number 372
	.long	.LASF997	 ;  The macro: "OCDR6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x175	 ;  At line number 373
	.long	.LASF998	 ;  The macro: "OCDR7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x177	 ;  At line number 375
	.long	.LASF999	 ;  The macro: "SMCR _SFR_IO8(0x33)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x178	 ;  At line number 376
	.long	.LASF1000	 ;  The macro: "SE 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x179	 ;  At line number 377
	.long	.LASF1001	 ;  The macro: "SM0 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17a	 ;  At line number 378
	.long	.LASF1002	 ;  The macro: "SM1 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17b	 ;  At line number 379
	.long	.LASF1003	 ;  The macro: "SM2 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17d	 ;  At line number 381
	.long	.LASF1004	 ;  The macro: "MCUSR _SFR_IO8(0x34)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17e	 ;  At line number 382
	.long	.LASF1005	 ;  The macro: "PORF 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17f	 ;  At line number 383
	.long	.LASF1006	 ;  The macro: "EXTRF 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x180	 ;  At line number 384
	.long	.LASF1007	 ;  The macro: "BORF 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x181	 ;  At line number 385
	.long	.LASF1008	 ;  The macro: "WDRF 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x182	 ;  At line number 386
	.long	.LASF1009	 ;  The macro: "JTRF 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x184	 ;  At line number 388
	.long	.LASF1010	 ;  The macro: "MCUCR _SFR_IO8(0x35)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x185	 ;  At line number 389
	.long	.LASF1011	 ;  The macro: "IVCE 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x186	 ;  At line number 390
	.long	.LASF1012	 ;  The macro: "IVSEL 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x187	 ;  At line number 391
	.long	.LASF1013	 ;  The macro: "PUD 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x188	 ;  At line number 392
	.long	.LASF1014	 ;  The macro: "BODSE 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x189	 ;  At line number 393
	.long	.LASF1015	 ;  The macro: "BODS 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18a	 ;  At line number 394
	.long	.LASF1016	 ;  The macro: "JTD 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18c	 ;  At line number 396
	.long	.LASF1017	 ;  The macro: "SPMCSR _SFR_IO8(0x37)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18d	 ;  At line number 397
	.long	.LASF1018	 ;  The macro: "SPMEN 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18e	 ;  At line number 398
	.long	.LASF1019	 ;  The macro: "PGERS 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x18f	 ;  At line number 399
	.long	.LASF1020	 ;  The macro: "PGWRT 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x190	 ;  At line number 400
	.long	.LASF1021	 ;  The macro: "BLBSET 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x191	 ;  At line number 401
	.long	.LASF1022	 ;  The macro: "RWWSRE 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x192	 ;  At line number 402
	.long	.LASF1023	 ;  The macro: "SIGRD 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x193	 ;  At line number 403
	.long	.LASF1024	 ;  The macro: "RWWSB 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x194	 ;  At line number 404
	.long	.LASF1025	 ;  The macro: "SPMIE 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x196	 ;  At line number 406
	.long	.LASF1026	 ;  The macro: "RAMPZ _SFR_IO8(0x3B)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x197	 ;  At line number 407
	.long	.LASF1027	 ;  The macro: "RAMPZ0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x199	 ;  At line number 409
	.long	.LASF1028	 ;  The macro: "WDTCSR _SFR_MEM8(0x60)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19a	 ;  At line number 410
	.long	.LASF1029	 ;  The macro: "WDP0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19b	 ;  At line number 411
	.long	.LASF1030	 ;  The macro: "WDP1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19c	 ;  At line number 412
	.long	.LASF1031	 ;  The macro: "WDP2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19d	 ;  At line number 413
	.long	.LASF1032	 ;  The macro: "WDE 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19e	 ;  At line number 414
	.long	.LASF1033	 ;  The macro: "WDCE 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x19f	 ;  At line number 415
	.long	.LASF1034	 ;  The macro: "WDP3 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a0	 ;  At line number 416
	.long	.LASF1035	 ;  The macro: "WDIE 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a1	 ;  At line number 417
	.long	.LASF1036	 ;  The macro: "WDIF 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a3	 ;  At line number 419
	.long	.LASF1037	 ;  The macro: "CLKPR _SFR_MEM8(0x61)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a4	 ;  At line number 420
	.long	.LASF1038	 ;  The macro: "CLKPS0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a5	 ;  At line number 421
	.long	.LASF1039	 ;  The macro: "CLKPS1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a6	 ;  At line number 422
	.long	.LASF1040	 ;  The macro: "CLKPS2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a7	 ;  At line number 423
	.long	.LASF1041	 ;  The macro: "CLKPS3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a8	 ;  At line number 424
	.long	.LASF1042	 ;  The macro: "CLKPCE 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1aa	 ;  At line number 426
	.long	.LASF1043	 ;  The macro: "PRR0 _SFR_MEM8(0x64)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ab	 ;  At line number 427
	.long	.LASF1044	 ;  The macro: "PRADC 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ac	 ;  At line number 428
	.long	.LASF1045	 ;  The macro: "PRUSART0 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ad	 ;  At line number 429
	.long	.LASF1046	 ;  The macro: "PRSPI 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ae	 ;  At line number 430
	.long	.LASF1047	 ;  The macro: "PRTIM1 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1af	 ;  At line number 431
	.long	.LASF1048	 ;  The macro: "PRUSART1 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b0	 ;  At line number 432
	.long	.LASF1049	 ;  The macro: "PRTIM0 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b1	 ;  At line number 433
	.long	.LASF1050	 ;  The macro: "PRTIM2 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b2	 ;  At line number 434
	.long	.LASF1051	 ;  The macro: "PRTWI 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b4	 ;  At line number 436
	.long	.LASF1052	 ;  The macro: "__AVR_HAVE_PRR0 ((1<<PRADC)|(1<<PRSPI)|(1<<PRTIM1)|(1<<PRUSART0)|(1<<PRUSART1)|(1<<PRTIM0)|(1<<PRTIM2)|(1<<PRTWI))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b5	 ;  At line number 437
	.long	.LASF1053	 ;  The macro: "__AVR_HAVE_PRR0_PRADC "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b6	 ;  At line number 438
	.long	.LASF1054	 ;  The macro: "__AVR_HAVE_PRR0_PRSPI "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b7	 ;  At line number 439
	.long	.LASF1055	 ;  The macro: "__AVR_HAVE_PRR0_PRTIM1 "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b8	 ;  At line number 440
	.long	.LASF1056	 ;  The macro: "__AVR_HAVE_PRR0_PRUSART0 "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b9	 ;  At line number 441
	.long	.LASF1057	 ;  The macro: "__AVR_HAVE_PRR0_PRUSART1 "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ba	 ;  At line number 442
	.long	.LASF1058	 ;  The macro: "__AVR_HAVE_PRR0_PRTIM0 "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1bb	 ;  At line number 443
	.long	.LASF1059	 ;  The macro: "__AVR_HAVE_PRR0_PRTIM2 "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1bc	 ;  At line number 444
	.long	.LASF1060	 ;  The macro: "__AVR_HAVE_PRR0_PRTWI "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1be	 ;  At line number 446
	.long	.LASF1061	 ;  The macro: "PRR1 _SFR_MEM8(0x65)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1bf	 ;  At line number 447
	.long	.LASF1062	 ;  The macro: "PRTIM3 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c1	 ;  At line number 449
	.long	.LASF1063	 ;  The macro: "__AVR_HAVE_PRR1 (1<<PRTIM3)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c2	 ;  At line number 450
	.long	.LASF1064	 ;  The macro: "__AVR_HAVE_PRR1_PRTIM3 "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c4	 ;  At line number 452
	.long	.LASF1065	 ;  The macro: "OSCCAL _SFR_MEM8(0x66)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c5	 ;  At line number 453
	.long	.LASF1066	 ;  The macro: "CAL0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c6	 ;  At line number 454
	.long	.LASF1067	 ;  The macro: "CAL1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c7	 ;  At line number 455
	.long	.LASF1068	 ;  The macro: "CAL2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c8	 ;  At line number 456
	.long	.LASF1069	 ;  The macro: "CAL3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c9	 ;  At line number 457
	.long	.LASF1070	 ;  The macro: "CAL4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ca	 ;  At line number 458
	.long	.LASF1071	 ;  The macro: "CAL5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1cb	 ;  At line number 459
	.long	.LASF1072	 ;  The macro: "CAL6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1cc	 ;  At line number 460
	.long	.LASF1073	 ;  The macro: "CAL7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ce	 ;  At line number 462
	.long	.LASF1074	 ;  The macro: "PCICR _SFR_MEM8(0x68)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1cf	 ;  At line number 463
	.long	.LASF1075	 ;  The macro: "PCIE0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d0	 ;  At line number 464
	.long	.LASF1076	 ;  The macro: "PCIE1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d1	 ;  At line number 465
	.long	.LASF1077	 ;  The macro: "PCIE2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d2	 ;  At line number 466
	.long	.LASF1078	 ;  The macro: "PCIE3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d4	 ;  At line number 468
	.long	.LASF1079	 ;  The macro: "EICRA _SFR_MEM8(0x69)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d5	 ;  At line number 469
	.long	.LASF1080	 ;  The macro: "ISC00 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d6	 ;  At line number 470
	.long	.LASF1081	 ;  The macro: "ISC01 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d7	 ;  At line number 471
	.long	.LASF1082	 ;  The macro: "ISC10 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d8	 ;  At line number 472
	.long	.LASF1083	 ;  The macro: "ISC11 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d9	 ;  At line number 473
	.long	.LASF1084	 ;  The macro: "ISC20 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1da	 ;  At line number 474
	.long	.LASF1085	 ;  The macro: "ISC21 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1dc	 ;  At line number 476
	.long	.LASF1086	 ;  The macro: "PCMSK0 _SFR_MEM8(0x6B)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1dd	 ;  At line number 477
	.long	.LASF1087	 ;  The macro: "PCINT0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1de	 ;  At line number 478
	.long	.LASF1088	 ;  The macro: "PCINT1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1df	 ;  At line number 479
	.long	.LASF1089	 ;  The macro: "PCINT2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e0	 ;  At line number 480
	.long	.LASF1090	 ;  The macro: "PCINT3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e1	 ;  At line number 481
	.long	.LASF1091	 ;  The macro: "PCINT4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e2	 ;  At line number 482
	.long	.LASF1092	 ;  The macro: "PCINT5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e3	 ;  At line number 483
	.long	.LASF1093	 ;  The macro: "PCINT6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e4	 ;  At line number 484
	.long	.LASF1094	 ;  The macro: "PCINT7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e6	 ;  At line number 486
	.long	.LASF1095	 ;  The macro: "PCMSK1 _SFR_MEM8(0x6C)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e7	 ;  At line number 487
	.long	.LASF1096	 ;  The macro: "PCINT8 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e8	 ;  At line number 488
	.long	.LASF1097	 ;  The macro: "PCINT9 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e9	 ;  At line number 489
	.long	.LASF1098	 ;  The macro: "PCINT10 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ea	 ;  At line number 490
	.long	.LASF1099	 ;  The macro: "PCINT11 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1eb	 ;  At line number 491
	.long	.LASF1100	 ;  The macro: "PCINT12 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ec	 ;  At line number 492
	.long	.LASF1101	 ;  The macro: "PCINT13 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ed	 ;  At line number 493
	.long	.LASF1102	 ;  The macro: "PCINT14 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ee	 ;  At line number 494
	.long	.LASF1103	 ;  The macro: "PCINT15 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f0	 ;  At line number 496
	.long	.LASF1104	 ;  The macro: "PCMSK2 _SFR_MEM8(0x6D)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f1	 ;  At line number 497
	.long	.LASF1105	 ;  The macro: "PCINT16 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f2	 ;  At line number 498
	.long	.LASF1106	 ;  The macro: "PCINT17 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f3	 ;  At line number 499
	.long	.LASF1107	 ;  The macro: "PCINT18 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f4	 ;  At line number 500
	.long	.LASF1108	 ;  The macro: "PCINT19 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f5	 ;  At line number 501
	.long	.LASF1109	 ;  The macro: "PCINT20 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f6	 ;  At line number 502
	.long	.LASF1110	 ;  The macro: "PCINT21 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f7	 ;  At line number 503
	.long	.LASF1111	 ;  The macro: "PCINT22 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f8	 ;  At line number 504
	.long	.LASF1112	 ;  The macro: "PCINT23 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1fa	 ;  At line number 506
	.long	.LASF1113	 ;  The macro: "TIMSK0 _SFR_MEM8(0x6E)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1fb	 ;  At line number 507
	.long	.LASF1114	 ;  The macro: "TOIE0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1fc	 ;  At line number 508
	.long	.LASF1115	 ;  The macro: "OCIE0A 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1fd	 ;  At line number 509
	.long	.LASF1116	 ;  The macro: "OCIE0B 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ff	 ;  At line number 511
	.long	.LASF1117	 ;  The macro: "TIMSK1 _SFR_MEM8(0x6F)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x200	 ;  At line number 512
	.long	.LASF1118	 ;  The macro: "TOIE1 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x201	 ;  At line number 513
	.long	.LASF1119	 ;  The macro: "OCIE1A 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x202	 ;  At line number 514
	.long	.LASF1120	 ;  The macro: "OCIE1B 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x203	 ;  At line number 515
	.long	.LASF1121	 ;  The macro: "ICIE1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x205	 ;  At line number 517
	.long	.LASF1122	 ;  The macro: "TIMSK2 _SFR_MEM8(0x70)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x206	 ;  At line number 518
	.long	.LASF1123	 ;  The macro: "TOIE2 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x207	 ;  At line number 519
	.long	.LASF1124	 ;  The macro: "OCIE2A 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x208	 ;  At line number 520
	.long	.LASF1125	 ;  The macro: "OCIE2B 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20a	 ;  At line number 522
	.long	.LASF1126	 ;  The macro: "TIMSK3 _SFR_MEM8(0x71)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20b	 ;  At line number 523
	.long	.LASF1127	 ;  The macro: "TOIE3 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20c	 ;  At line number 524
	.long	.LASF1128	 ;  The macro: "OCIE3A 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20d	 ;  At line number 525
	.long	.LASF1129	 ;  The macro: "OCIE3B 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20e	 ;  At line number 526
	.long	.LASF1130	 ;  The macro: "ICIE3 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x210	 ;  At line number 528
	.long	.LASF1131	 ;  The macro: "PCMSK3 _SFR_MEM8(0x73)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x211	 ;  At line number 529
	.long	.LASF1132	 ;  The macro: "PCINT24 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x212	 ;  At line number 530
	.long	.LASF1133	 ;  The macro: "PCINT25 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x213	 ;  At line number 531
	.long	.LASF1134	 ;  The macro: "PCINT26 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x214	 ;  At line number 532
	.long	.LASF1135	 ;  The macro: "PCINT27 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x215	 ;  At line number 533
	.long	.LASF1136	 ;  The macro: "PCINT28 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x216	 ;  At line number 534
	.long	.LASF1137	 ;  The macro: "PCINT29 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x217	 ;  At line number 535
	.long	.LASF1138	 ;  The macro: "PCINT30 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x218	 ;  At line number 536
	.long	.LASF1139	 ;  The macro: "PCINT31 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x21b	 ;  At line number 539
	.long	.LASF1140	 ;  The macro: "ADC _SFR_MEM16(0x78)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x21d	 ;  At line number 541
	.long	.LASF1141	 ;  The macro: "ADCW _SFR_MEM16(0x78)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x21f	 ;  At line number 543
	.long	.LASF1142	 ;  The macro: "ADCL _SFR_MEM8(0x78)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x220	 ;  At line number 544
	.long	.LASF1143	 ;  The macro: "ADCL0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x221	 ;  At line number 545
	.long	.LASF1144	 ;  The macro: "ADCL1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x222	 ;  At line number 546
	.long	.LASF1145	 ;  The macro: "ADCL2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x223	 ;  At line number 547
	.long	.LASF1146	 ;  The macro: "ADCL3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x224	 ;  At line number 548
	.long	.LASF1147	 ;  The macro: "ADCL4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x225	 ;  At line number 549
	.long	.LASF1148	 ;  The macro: "ADCL5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x226	 ;  At line number 550
	.long	.LASF1149	 ;  The macro: "ADCL6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x227	 ;  At line number 551
	.long	.LASF1150	 ;  The macro: "ADCL7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x229	 ;  At line number 553
	.long	.LASF1151	 ;  The macro: "ADCH _SFR_MEM8(0x79)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22a	 ;  At line number 554
	.long	.LASF1152	 ;  The macro: "ADCH0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22b	 ;  At line number 555
	.long	.LASF1153	 ;  The macro: "ADCH1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22c	 ;  At line number 556
	.long	.LASF1154	 ;  The macro: "ADCH2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22d	 ;  At line number 557
	.long	.LASF1155	 ;  The macro: "ADCH3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22e	 ;  At line number 558
	.long	.LASF1156	 ;  The macro: "ADCH4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22f	 ;  At line number 559
	.long	.LASF1157	 ;  The macro: "ADCH5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x230	 ;  At line number 560
	.long	.LASF1158	 ;  The macro: "ADCH6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x231	 ;  At line number 561
	.long	.LASF1159	 ;  The macro: "ADCH7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x233	 ;  At line number 563
	.long	.LASF1160	 ;  The macro: "ADCSRA _SFR_MEM8(0x7A)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x234	 ;  At line number 564
	.long	.LASF1161	 ;  The macro: "ADPS0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x235	 ;  At line number 565
	.long	.LASF1162	 ;  The macro: "ADPS1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x236	 ;  At line number 566
	.long	.LASF1163	 ;  The macro: "ADPS2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x237	 ;  At line number 567
	.long	.LASF1164	 ;  The macro: "ADIE 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x238	 ;  At line number 568
	.long	.LASF1165	 ;  The macro: "ADIF 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x239	 ;  At line number 569
	.long	.LASF1166	 ;  The macro: "ADATE 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23a	 ;  At line number 570
	.long	.LASF1167	 ;  The macro: "ADSC 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23b	 ;  At line number 571
	.long	.LASF1168	 ;  The macro: "ADEN 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23d	 ;  At line number 573
	.long	.LASF1169	 ;  The macro: "ADCSRB _SFR_MEM8(0x7B)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23e	 ;  At line number 574
	.long	.LASF1170	 ;  The macro: "ADTS0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23f	 ;  At line number 575
	.long	.LASF1171	 ;  The macro: "ADTS1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x240	 ;  At line number 576
	.long	.LASF1172	 ;  The macro: "ADTS2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x241	 ;  At line number 577
	.long	.LASF1173	 ;  The macro: "ACME 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x243	 ;  At line number 579
	.long	.LASF1174	 ;  The macro: "ADMUX _SFR_MEM8(0x7C)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x244	 ;  At line number 580
	.long	.LASF1175	 ;  The macro: "MUX0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x245	 ;  At line number 581
	.long	.LASF1176	 ;  The macro: "MUX1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x246	 ;  At line number 582
	.long	.LASF1177	 ;  The macro: "MUX2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x247	 ;  At line number 583
	.long	.LASF1178	 ;  The macro: "MUX3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x248	 ;  At line number 584
	.long	.LASF1179	 ;  The macro: "MUX4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x249	 ;  At line number 585
	.long	.LASF1180	 ;  The macro: "ADLAR 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24a	 ;  At line number 586
	.long	.LASF1181	 ;  The macro: "REFS0 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24b	 ;  At line number 587
	.long	.LASF1182	 ;  The macro: "REFS1 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24d	 ;  At line number 589
	.long	.LASF1183	 ;  The macro: "DIDR0 _SFR_MEM8(0x7E)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24e	 ;  At line number 590
	.long	.LASF1184	 ;  The macro: "ADC0D 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24f	 ;  At line number 591
	.long	.LASF1185	 ;  The macro: "ADC1D 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x250	 ;  At line number 592
	.long	.LASF1186	 ;  The macro: "ADC2D 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x251	 ;  At line number 593
	.long	.LASF1187	 ;  The macro: "ADC3D 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x252	 ;  At line number 594
	.long	.LASF1188	 ;  The macro: "ADC4D 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x253	 ;  At line number 595
	.long	.LASF1189	 ;  The macro: "ADC5D 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x254	 ;  At line number 596
	.long	.LASF1190	 ;  The macro: "ADC6D 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x255	 ;  At line number 597
	.long	.LASF1191	 ;  The macro: "ADC7D 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x257	 ;  At line number 599
	.long	.LASF1192	 ;  The macro: "DIDR1 _SFR_MEM8(0x7F)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x258	 ;  At line number 600
	.long	.LASF1193	 ;  The macro: "AIN0D 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x259	 ;  At line number 601
	.long	.LASF1194	 ;  The macro: "AIN1D 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x25b	 ;  At line number 603
	.long	.LASF1195	 ;  The macro: "TCCR1A _SFR_MEM8(0x80)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x25c	 ;  At line number 604
	.long	.LASF1196	 ;  The macro: "WGM10 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x25d	 ;  At line number 605
	.long	.LASF1197	 ;  The macro: "WGM11 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x25e	 ;  At line number 606
	.long	.LASF1198	 ;  The macro: "COM1B0 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x25f	 ;  At line number 607
	.long	.LASF1199	 ;  The macro: "COM1B1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x260	 ;  At line number 608
	.long	.LASF1200	 ;  The macro: "COM1A0 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x261	 ;  At line number 609
	.long	.LASF1201	 ;  The macro: "COM1A1 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x263	 ;  At line number 611
	.long	.LASF1202	 ;  The macro: "TCCR1B _SFR_MEM8(0x81)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x264	 ;  At line number 612
	.long	.LASF1203	 ;  The macro: "CS10 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x265	 ;  At line number 613
	.long	.LASF1204	 ;  The macro: "CS11 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x266	 ;  At line number 614
	.long	.LASF1205	 ;  The macro: "CS12 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x267	 ;  At line number 615
	.long	.LASF1206	 ;  The macro: "WGM12 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x268	 ;  At line number 616
	.long	.LASF1207	 ;  The macro: "WGM13 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x269	 ;  At line number 617
	.long	.LASF1208	 ;  The macro: "ICES1 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x26a	 ;  At line number 618
	.long	.LASF1209	 ;  The macro: "ICNC1 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x26c	 ;  At line number 620
	.long	.LASF1210	 ;  The macro: "TCCR1C _SFR_MEM8(0x82)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x26d	 ;  At line number 621
	.long	.LASF1211	 ;  The macro: "FOC1B 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x26e	 ;  At line number 622
	.long	.LASF1212	 ;  The macro: "FOC1A 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x270	 ;  At line number 624
	.long	.LASF1213	 ;  The macro: "TCNT1 _SFR_MEM16(0x84)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x272	 ;  At line number 626
	.long	.LASF1214	 ;  The macro: "TCNT1L _SFR_MEM8(0x84)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x273	 ;  At line number 627
	.long	.LASF1215	 ;  The macro: "TCNT1L0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x274	 ;  At line number 628
	.long	.LASF1216	 ;  The macro: "TCNT1L1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x275	 ;  At line number 629
	.long	.LASF1217	 ;  The macro: "TCNT1L2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x276	 ;  At line number 630
	.long	.LASF1218	 ;  The macro: "TCNT1L3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x277	 ;  At line number 631
	.long	.LASF1219	 ;  The macro: "TCNT1L4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x278	 ;  At line number 632
	.long	.LASF1220	 ;  The macro: "TCNT1L5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x279	 ;  At line number 633
	.long	.LASF1221	 ;  The macro: "TCNT1L6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27a	 ;  At line number 634
	.long	.LASF1222	 ;  The macro: "TCNT1L7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27c	 ;  At line number 636
	.long	.LASF1223	 ;  The macro: "TCNT1H _SFR_MEM8(0x85)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27d	 ;  At line number 637
	.long	.LASF1224	 ;  The macro: "TCNT1H0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27e	 ;  At line number 638
	.long	.LASF1225	 ;  The macro: "TCNT1H1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27f	 ;  At line number 639
	.long	.LASF1226	 ;  The macro: "TCNT1H2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x280	 ;  At line number 640
	.long	.LASF1227	 ;  The macro: "TCNT1H3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x281	 ;  At line number 641
	.long	.LASF1228	 ;  The macro: "TCNT1H4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x282	 ;  At line number 642
	.long	.LASF1229	 ;  The macro: "TCNT1H5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x283	 ;  At line number 643
	.long	.LASF1230	 ;  The macro: "TCNT1H6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x284	 ;  At line number 644
	.long	.LASF1231	 ;  The macro: "TCNT1H7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x286	 ;  At line number 646
	.long	.LASF1232	 ;  The macro: "ICR1 _SFR_MEM16(0x86)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x288	 ;  At line number 648
	.long	.LASF1233	 ;  The macro: "ICR1L _SFR_MEM8(0x86)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x289	 ;  At line number 649
	.long	.LASF1234	 ;  The macro: "ICR1L0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28a	 ;  At line number 650
	.long	.LASF1235	 ;  The macro: "ICR1L1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28b	 ;  At line number 651
	.long	.LASF1236	 ;  The macro: "ICR1L2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28c	 ;  At line number 652
	.long	.LASF1237	 ;  The macro: "ICR1L3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28d	 ;  At line number 653
	.long	.LASF1238	 ;  The macro: "ICR1L4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28e	 ;  At line number 654
	.long	.LASF1239	 ;  The macro: "ICR1L5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28f	 ;  At line number 655
	.long	.LASF1240	 ;  The macro: "ICR1L6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x290	 ;  At line number 656
	.long	.LASF1241	 ;  The macro: "ICR1L7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x292	 ;  At line number 658
	.long	.LASF1242	 ;  The macro: "ICR1H _SFR_MEM8(0x87)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x293	 ;  At line number 659
	.long	.LASF1243	 ;  The macro: "ICR1H0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x294	 ;  At line number 660
	.long	.LASF1244	 ;  The macro: "ICR1H1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x295	 ;  At line number 661
	.long	.LASF1245	 ;  The macro: "ICR1H2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x296	 ;  At line number 662
	.long	.LASF1246	 ;  The macro: "ICR1H3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x297	 ;  At line number 663
	.long	.LASF1247	 ;  The macro: "ICR1H4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x298	 ;  At line number 664
	.long	.LASF1248	 ;  The macro: "ICR1H5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x299	 ;  At line number 665
	.long	.LASF1249	 ;  The macro: "ICR1H6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x29a	 ;  At line number 666
	.long	.LASF1250	 ;  The macro: "ICR1H7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x29c	 ;  At line number 668
	.long	.LASF1251	 ;  The macro: "OCR1A _SFR_MEM16(0x88)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x29e	 ;  At line number 670
	.long	.LASF1252	 ;  The macro: "OCR1AL _SFR_MEM8(0x88)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x29f	 ;  At line number 671
	.long	.LASF1253	 ;  The macro: "OCR1AL0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a0	 ;  At line number 672
	.long	.LASF1254	 ;  The macro: "OCR1AL1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a1	 ;  At line number 673
	.long	.LASF1255	 ;  The macro: "OCR1AL2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a2	 ;  At line number 674
	.long	.LASF1256	 ;  The macro: "OCR1AL3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a3	 ;  At line number 675
	.long	.LASF1257	 ;  The macro: "OCR1AL4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a4	 ;  At line number 676
	.long	.LASF1258	 ;  The macro: "OCR1AL5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a5	 ;  At line number 677
	.long	.LASF1259	 ;  The macro: "OCR1AL6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a6	 ;  At line number 678
	.long	.LASF1260	 ;  The macro: "OCR1AL7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a8	 ;  At line number 680
	.long	.LASF1261	 ;  The macro: "OCR1AH _SFR_MEM8(0x89)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a9	 ;  At line number 681
	.long	.LASF1262	 ;  The macro: "OCR1AH0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2aa	 ;  At line number 682
	.long	.LASF1263	 ;  The macro: "OCR1AH1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ab	 ;  At line number 683
	.long	.LASF1264	 ;  The macro: "OCR1AH2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ac	 ;  At line number 684
	.long	.LASF1265	 ;  The macro: "OCR1AH3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ad	 ;  At line number 685
	.long	.LASF1266	 ;  The macro: "OCR1AH4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ae	 ;  At line number 686
	.long	.LASF1267	 ;  The macro: "OCR1AH5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2af	 ;  At line number 687
	.long	.LASF1268	 ;  The macro: "OCR1AH6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b0	 ;  At line number 688
	.long	.LASF1269	 ;  The macro: "OCR1AH7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b2	 ;  At line number 690
	.long	.LASF1270	 ;  The macro: "OCR1B _SFR_MEM16(0x8A)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b4	 ;  At line number 692
	.long	.LASF1271	 ;  The macro: "OCR1BL _SFR_MEM8(0x8A)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b5	 ;  At line number 693
	.long	.LASF1253	 ;  The macro: "OCR1AL0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b6	 ;  At line number 694
	.long	.LASF1254	 ;  The macro: "OCR1AL1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b7	 ;  At line number 695
	.long	.LASF1255	 ;  The macro: "OCR1AL2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b8	 ;  At line number 696
	.long	.LASF1256	 ;  The macro: "OCR1AL3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b9	 ;  At line number 697
	.long	.LASF1257	 ;  The macro: "OCR1AL4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ba	 ;  At line number 698
	.long	.LASF1258	 ;  The macro: "OCR1AL5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2bb	 ;  At line number 699
	.long	.LASF1259	 ;  The macro: "OCR1AL6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2bc	 ;  At line number 700
	.long	.LASF1260	 ;  The macro: "OCR1AL7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2be	 ;  At line number 702
	.long	.LASF1272	 ;  The macro: "OCR1BH _SFR_MEM8(0x8B)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2bf	 ;  At line number 703
	.long	.LASF1262	 ;  The macro: "OCR1AH0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c0	 ;  At line number 704
	.long	.LASF1263	 ;  The macro: "OCR1AH1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c1	 ;  At line number 705
	.long	.LASF1264	 ;  The macro: "OCR1AH2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c2	 ;  At line number 706
	.long	.LASF1265	 ;  The macro: "OCR1AH3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c3	 ;  At line number 707
	.long	.LASF1266	 ;  The macro: "OCR1AH4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c4	 ;  At line number 708
	.long	.LASF1267	 ;  The macro: "OCR1AH5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c5	 ;  At line number 709
	.long	.LASF1268	 ;  The macro: "OCR1AH6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c6	 ;  At line number 710
	.long	.LASF1269	 ;  The macro: "OCR1AH7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c8	 ;  At line number 712
	.long	.LASF1273	 ;  The macro: "TCCR3A _SFR_MEM8(0x90)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c9	 ;  At line number 713
	.long	.LASF1274	 ;  The macro: "WGM30 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ca	 ;  At line number 714
	.long	.LASF1275	 ;  The macro: "WGM31 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2cb	 ;  At line number 715
	.long	.LASF1276	 ;  The macro: "COM3B0 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2cc	 ;  At line number 716
	.long	.LASF1277	 ;  The macro: "COM3B1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2cd	 ;  At line number 717
	.long	.LASF1278	 ;  The macro: "COM3A0 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ce	 ;  At line number 718
	.long	.LASF1279	 ;  The macro: "COM3A1 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d0	 ;  At line number 720
	.long	.LASF1280	 ;  The macro: "TCCR3B _SFR_MEM8(0x91)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d1	 ;  At line number 721
	.long	.LASF1281	 ;  The macro: "CS30 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d2	 ;  At line number 722
	.long	.LASF1282	 ;  The macro: "CS31 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d3	 ;  At line number 723
	.long	.LASF1283	 ;  The macro: "CS32 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d4	 ;  At line number 724
	.long	.LASF1284	 ;  The macro: "WGM32 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d5	 ;  At line number 725
	.long	.LASF1285	 ;  The macro: "WGM33 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d6	 ;  At line number 726
	.long	.LASF1286	 ;  The macro: "ICES3 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d7	 ;  At line number 727
	.long	.LASF1287	 ;  The macro: "ICNC3 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d9	 ;  At line number 729
	.long	.LASF1288	 ;  The macro: "TCCR3C _SFR_MEM8(0x92)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2da	 ;  At line number 730
	.long	.LASF1289	 ;  The macro: "FOC3B 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2db	 ;  At line number 731
	.long	.LASF1290	 ;  The macro: "FOC3A 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2dd	 ;  At line number 733
	.long	.LASF1291	 ;  The macro: "TCNT3 _SFR_MEM16(0x94)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2df	 ;  At line number 735
	.long	.LASF1292	 ;  The macro: "TCNT3L _SFR_MEM8(0x94)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e0	 ;  At line number 736
	.long	.LASF1293	 ;  The macro: "TCNT3L0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e1	 ;  At line number 737
	.long	.LASF1294	 ;  The macro: "TCNT3L1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e2	 ;  At line number 738
	.long	.LASF1295	 ;  The macro: "TCNT3L2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e3	 ;  At line number 739
	.long	.LASF1296	 ;  The macro: "TCNT3L3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e4	 ;  At line number 740
	.long	.LASF1297	 ;  The macro: "TCNT3L4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e5	 ;  At line number 741
	.long	.LASF1298	 ;  The macro: "TCNT3L5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e6	 ;  At line number 742
	.long	.LASF1299	 ;  The macro: "TCNT3L6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e7	 ;  At line number 743
	.long	.LASF1300	 ;  The macro: "TCNT3L7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e9	 ;  At line number 745
	.long	.LASF1301	 ;  The macro: "TCNT3H _SFR_MEM8(0x95)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ea	 ;  At line number 746
	.long	.LASF1302	 ;  The macro: "TCNT3H0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2eb	 ;  At line number 747
	.long	.LASF1303	 ;  The macro: "TCNT3H1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ec	 ;  At line number 748
	.long	.LASF1304	 ;  The macro: "TCNT3H2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ed	 ;  At line number 749
	.long	.LASF1305	 ;  The macro: "TCNT3H3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ee	 ;  At line number 750
	.long	.LASF1306	 ;  The macro: "TCNT3H4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ef	 ;  At line number 751
	.long	.LASF1307	 ;  The macro: "TCNT3H5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f0	 ;  At line number 752
	.long	.LASF1308	 ;  The macro: "TCNT3H6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f1	 ;  At line number 753
	.long	.LASF1309	 ;  The macro: "TCNT3H7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f3	 ;  At line number 755
	.long	.LASF1310	 ;  The macro: "ICR3 _SFR_MEM16(0x96)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f5	 ;  At line number 757
	.long	.LASF1311	 ;  The macro: "ICR3L _SFR_MEM8(0x96)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f6	 ;  At line number 758
	.long	.LASF1312	 ;  The macro: "ICR3L0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f7	 ;  At line number 759
	.long	.LASF1313	 ;  The macro: "ICR3L1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f8	 ;  At line number 760
	.long	.LASF1314	 ;  The macro: "ICR3L2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f9	 ;  At line number 761
	.long	.LASF1315	 ;  The macro: "ICR3L3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2fa	 ;  At line number 762
	.long	.LASF1316	 ;  The macro: "ICR3L4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2fb	 ;  At line number 763
	.long	.LASF1317	 ;  The macro: "ICR3L5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2fc	 ;  At line number 764
	.long	.LASF1318	 ;  The macro: "ICR3L6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2fd	 ;  At line number 765
	.long	.LASF1319	 ;  The macro: "ICR3L7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ff	 ;  At line number 767
	.long	.LASF1320	 ;  The macro: "ICR3H _SFR_MEM8(0x97)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x300	 ;  At line number 768
	.long	.LASF1321	 ;  The macro: "ICR3H0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x301	 ;  At line number 769
	.long	.LASF1322	 ;  The macro: "ICR3H1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x302	 ;  At line number 770
	.long	.LASF1323	 ;  The macro: "ICR3H2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x303	 ;  At line number 771
	.long	.LASF1324	 ;  The macro: "ICR3H3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x304	 ;  At line number 772
	.long	.LASF1325	 ;  The macro: "ICR3H4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x305	 ;  At line number 773
	.long	.LASF1326	 ;  The macro: "ICR3H5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x306	 ;  At line number 774
	.long	.LASF1327	 ;  The macro: "ICR3H6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x307	 ;  At line number 775
	.long	.LASF1328	 ;  The macro: "ICR3H7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x309	 ;  At line number 777
	.long	.LASF1329	 ;  The macro: "OCR3A _SFR_MEM16(0x98)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30b	 ;  At line number 779
	.long	.LASF1330	 ;  The macro: "OCR3AL _SFR_MEM8(0x98)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30c	 ;  At line number 780
	.long	.LASF1331	 ;  The macro: "OCR3AL0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30d	 ;  At line number 781
	.long	.LASF1332	 ;  The macro: "OCR3AL1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30e	 ;  At line number 782
	.long	.LASF1333	 ;  The macro: "OCR3AL2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30f	 ;  At line number 783
	.long	.LASF1334	 ;  The macro: "OCR3AL3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x310	 ;  At line number 784
	.long	.LASF1335	 ;  The macro: "OCR3AL4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x311	 ;  At line number 785
	.long	.LASF1336	 ;  The macro: "OCR3AL5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x312	 ;  At line number 786
	.long	.LASF1337	 ;  The macro: "OCR3AL6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x313	 ;  At line number 787
	.long	.LASF1338	 ;  The macro: "OCR3AL7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x315	 ;  At line number 789
	.long	.LASF1339	 ;  The macro: "OCR3AH _SFR_MEM8(0x99)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x316	 ;  At line number 790
	.long	.LASF1340	 ;  The macro: "OCR3AH0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x317	 ;  At line number 791
	.long	.LASF1341	 ;  The macro: "OCR3AH1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x318	 ;  At line number 792
	.long	.LASF1342	 ;  The macro: "OCR3AH2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x319	 ;  At line number 793
	.long	.LASF1343	 ;  The macro: "OCR3AH3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x31a	 ;  At line number 794
	.long	.LASF1344	 ;  The macro: "OCR3AH4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x31b	 ;  At line number 795
	.long	.LASF1345	 ;  The macro: "OCR3AH5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x31c	 ;  At line number 796
	.long	.LASF1346	 ;  The macro: "OCR3AH6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x31d	 ;  At line number 797
	.long	.LASF1347	 ;  The macro: "OCR3AH7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x31f	 ;  At line number 799
	.long	.LASF1348	 ;  The macro: "OCR3B _SFR_MEM16(0x9A)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x321	 ;  At line number 801
	.long	.LASF1349	 ;  The macro: "OCR3BL _SFR_MEM8(0x9A)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x322	 ;  At line number 802
	.long	.LASF1331	 ;  The macro: "OCR3AL0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x323	 ;  At line number 803
	.long	.LASF1332	 ;  The macro: "OCR3AL1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x324	 ;  At line number 804
	.long	.LASF1333	 ;  The macro: "OCR3AL2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x325	 ;  At line number 805
	.long	.LASF1334	 ;  The macro: "OCR3AL3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x326	 ;  At line number 806
	.long	.LASF1335	 ;  The macro: "OCR3AL4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x327	 ;  At line number 807
	.long	.LASF1336	 ;  The macro: "OCR3AL5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x328	 ;  At line number 808
	.long	.LASF1337	 ;  The macro: "OCR3AL6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x329	 ;  At line number 809
	.long	.LASF1338	 ;  The macro: "OCR3AL7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32b	 ;  At line number 811
	.long	.LASF1350	 ;  The macro: "OCR3BH _SFR_MEM8(0x9B)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32c	 ;  At line number 812
	.long	.LASF1340	 ;  The macro: "OCR3AH0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32d	 ;  At line number 813
	.long	.LASF1341	 ;  The macro: "OCR3AH1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32e	 ;  At line number 814
	.long	.LASF1342	 ;  The macro: "OCR3AH2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32f	 ;  At line number 815
	.long	.LASF1343	 ;  The macro: "OCR3AH3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x330	 ;  At line number 816
	.long	.LASF1344	 ;  The macro: "OCR3AH4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x331	 ;  At line number 817
	.long	.LASF1345	 ;  The macro: "OCR3AH5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x332	 ;  At line number 818
	.long	.LASF1346	 ;  The macro: "OCR3AH6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x333	 ;  At line number 819
	.long	.LASF1347	 ;  The macro: "OCR3AH7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x335	 ;  At line number 821
	.long	.LASF1351	 ;  The macro: "TCCR2A _SFR_MEM8(0xB0)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x336	 ;  At line number 822
	.long	.LASF1352	 ;  The macro: "WGM20 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x337	 ;  At line number 823
	.long	.LASF1353	 ;  The macro: "WGM21 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x338	 ;  At line number 824
	.long	.LASF1354	 ;  The macro: "COM2B0 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x339	 ;  At line number 825
	.long	.LASF1355	 ;  The macro: "COM2B1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33a	 ;  At line number 826
	.long	.LASF1356	 ;  The macro: "COM2A0 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33b	 ;  At line number 827
	.long	.LASF1357	 ;  The macro: "COM2A1 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33d	 ;  At line number 829
	.long	.LASF1358	 ;  The macro: "TCCR2B _SFR_MEM8(0xB1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33e	 ;  At line number 830
	.long	.LASF1359	 ;  The macro: "CS20 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33f	 ;  At line number 831
	.long	.LASF1360	 ;  The macro: "CS21 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x340	 ;  At line number 832
	.long	.LASF1361	 ;  The macro: "CS22 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x341	 ;  At line number 833
	.long	.LASF1362	 ;  The macro: "WGM22 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x342	 ;  At line number 834
	.long	.LASF1363	 ;  The macro: "FOC2B 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x343	 ;  At line number 835
	.long	.LASF1364	 ;  The macro: "FOC2A 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x345	 ;  At line number 837
	.long	.LASF1365	 ;  The macro: "TCNT2 _SFR_MEM8(0xB2)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x346	 ;  At line number 838
	.long	.LASF1366	 ;  The macro: "TCNT2_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x347	 ;  At line number 839
	.long	.LASF1367	 ;  The macro: "TCNT2_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x348	 ;  At line number 840
	.long	.LASF1368	 ;  The macro: "TCNT2_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x349	 ;  At line number 841
	.long	.LASF1369	 ;  The macro: "TCNT2_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x34a	 ;  At line number 842
	.long	.LASF1370	 ;  The macro: "TCNT2_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x34b	 ;  At line number 843
	.long	.LASF1371	 ;  The macro: "TCNT2_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x34c	 ;  At line number 844
	.long	.LASF1372	 ;  The macro: "TCNT2_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x34d	 ;  At line number 845
	.long	.LASF1373	 ;  The macro: "TCNT2_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x34f	 ;  At line number 847
	.long	.LASF1374	 ;  The macro: "OCR2A _SFR_MEM8(0xB3)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x350	 ;  At line number 848
	.long	.LASF1375	 ;  The macro: "OCR2_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x351	 ;  At line number 849
	.long	.LASF1376	 ;  The macro: "OCR2_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x352	 ;  At line number 850
	.long	.LASF1377	 ;  The macro: "OCR2_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x353	 ;  At line number 851
	.long	.LASF1378	 ;  The macro: "OCR2_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x354	 ;  At line number 852
	.long	.LASF1379	 ;  The macro: "OCR2_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x355	 ;  At line number 853
	.long	.LASF1380	 ;  The macro: "OCR2_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x356	 ;  At line number 854
	.long	.LASF1381	 ;  The macro: "OCR2_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x357	 ;  At line number 855
	.long	.LASF1382	 ;  The macro: "OCR2_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x359	 ;  At line number 857
	.long	.LASF1383	 ;  The macro: "OCR2B _SFR_MEM8(0xB4)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35a	 ;  At line number 858
	.long	.LASF1375	 ;  The macro: "OCR2_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35b	 ;  At line number 859
	.long	.LASF1376	 ;  The macro: "OCR2_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35c	 ;  At line number 860
	.long	.LASF1377	 ;  The macro: "OCR2_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35d	 ;  At line number 861
	.long	.LASF1378	 ;  The macro: "OCR2_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35e	 ;  At line number 862
	.long	.LASF1379	 ;  The macro: "OCR2_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35f	 ;  At line number 863
	.long	.LASF1380	 ;  The macro: "OCR2_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x360	 ;  At line number 864
	.long	.LASF1381	 ;  The macro: "OCR2_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x361	 ;  At line number 865
	.long	.LASF1382	 ;  The macro: "OCR2_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x363	 ;  At line number 867
	.long	.LASF1384	 ;  The macro: "ASSR _SFR_MEM8(0xB6)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x364	 ;  At line number 868
	.long	.LASF1385	 ;  The macro: "TCR2BUB 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x365	 ;  At line number 869
	.long	.LASF1386	 ;  The macro: "TCR2AUB 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x366	 ;  At line number 870
	.long	.LASF1387	 ;  The macro: "OCR2BUB 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x367	 ;  At line number 871
	.long	.LASF1388	 ;  The macro: "OCR2AUB 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x368	 ;  At line number 872
	.long	.LASF1389	 ;  The macro: "TCN2UB 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x369	 ;  At line number 873
	.long	.LASF1390	 ;  The macro: "AS2 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36a	 ;  At line number 874
	.long	.LASF1391	 ;  The macro: "EXCLK 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36c	 ;  At line number 876
	.long	.LASF1392	 ;  The macro: "TWBR _SFR_MEM8(0xB8)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36d	 ;  At line number 877
	.long	.LASF1393	 ;  The macro: "TWBR0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36e	 ;  At line number 878
	.long	.LASF1394	 ;  The macro: "TWBR1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36f	 ;  At line number 879
	.long	.LASF1395	 ;  The macro: "TWBR2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x370	 ;  At line number 880
	.long	.LASF1396	 ;  The macro: "TWBR3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x371	 ;  At line number 881
	.long	.LASF1397	 ;  The macro: "TWBR4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x372	 ;  At line number 882
	.long	.LASF1398	 ;  The macro: "TWBR5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x373	 ;  At line number 883
	.long	.LASF1399	 ;  The macro: "TWBR6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x374	 ;  At line number 884
	.long	.LASF1400	 ;  The macro: "TWBR7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x376	 ;  At line number 886
	.long	.LASF1401	 ;  The macro: "TWSR _SFR_MEM8(0xB9)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x377	 ;  At line number 887
	.long	.LASF1402	 ;  The macro: "TWPS0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x378	 ;  At line number 888
	.long	.LASF1403	 ;  The macro: "TWPS1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x379	 ;  At line number 889
	.long	.LASF1404	 ;  The macro: "TWS3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x37a	 ;  At line number 890
	.long	.LASF1405	 ;  The macro: "TWS4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x37b	 ;  At line number 891
	.long	.LASF1406	 ;  The macro: "TWS5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x37c	 ;  At line number 892
	.long	.LASF1407	 ;  The macro: "TWS6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x37d	 ;  At line number 893
	.long	.LASF1408	 ;  The macro: "TWS7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x37f	 ;  At line number 895
	.long	.LASF1409	 ;  The macro: "TWAR _SFR_MEM8(0xBA)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x380	 ;  At line number 896
	.long	.LASF1410	 ;  The macro: "TWGCE 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x381	 ;  At line number 897
	.long	.LASF1411	 ;  The macro: "TWA0 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x382	 ;  At line number 898
	.long	.LASF1412	 ;  The macro: "TWA1 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x383	 ;  At line number 899
	.long	.LASF1413	 ;  The macro: "TWA2 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x384	 ;  At line number 900
	.long	.LASF1414	 ;  The macro: "TWA3 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x385	 ;  At line number 901
	.long	.LASF1415	 ;  The macro: "TWA4 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x386	 ;  At line number 902
	.long	.LASF1416	 ;  The macro: "TWA5 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x387	 ;  At line number 903
	.long	.LASF1417	 ;  The macro: "TWA6 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x389	 ;  At line number 905
	.long	.LASF1418	 ;  The macro: "TWDR _SFR_MEM8(0xBB)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38a	 ;  At line number 906
	.long	.LASF1419	 ;  The macro: "TWD0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38b	 ;  At line number 907
	.long	.LASF1420	 ;  The macro: "TWD1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38c	 ;  At line number 908
	.long	.LASF1421	 ;  The macro: "TWD2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38d	 ;  At line number 909
	.long	.LASF1422	 ;  The macro: "TWD3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38e	 ;  At line number 910
	.long	.LASF1423	 ;  The macro: "TWD4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38f	 ;  At line number 911
	.long	.LASF1424	 ;  The macro: "TWD5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x390	 ;  At line number 912
	.long	.LASF1425	 ;  The macro: "TWD6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x391	 ;  At line number 913
	.long	.LASF1426	 ;  The macro: "TWD7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x393	 ;  At line number 915
	.long	.LASF1427	 ;  The macro: "TWCR _SFR_MEM8(0xBC)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x394	 ;  At line number 916
	.long	.LASF1428	 ;  The macro: "TWIE 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x395	 ;  At line number 917
	.long	.LASF1429	 ;  The macro: "TWEN 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x396	 ;  At line number 918
	.long	.LASF1430	 ;  The macro: "TWWC 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x397	 ;  At line number 919
	.long	.LASF1431	 ;  The macro: "TWSTO 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x398	 ;  At line number 920
	.long	.LASF1432	 ;  The macro: "TWSTA 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x399	 ;  At line number 921
	.long	.LASF1433	 ;  The macro: "TWEA 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39a	 ;  At line number 922
	.long	.LASF1434	 ;  The macro: "TWINT 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39c	 ;  At line number 924
	.long	.LASF1435	 ;  The macro: "TWAMR _SFR_MEM8(0xBD)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39d	 ;  At line number 925
	.long	.LASF1436	 ;  The macro: "TWAM0 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39e	 ;  At line number 926
	.long	.LASF1437	 ;  The macro: "TWAM1 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39f	 ;  At line number 927
	.long	.LASF1438	 ;  The macro: "TWAM2 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a0	 ;  At line number 928
	.long	.LASF1439	 ;  The macro: "TWAM3 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a1	 ;  At line number 929
	.long	.LASF1440	 ;  The macro: "TWAM4 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a2	 ;  At line number 930
	.long	.LASF1441	 ;  The macro: "TWAM5 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a3	 ;  At line number 931
	.long	.LASF1442	 ;  The macro: "TWAM6 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a5	 ;  At line number 933
	.long	.LASF1443	 ;  The macro: "UCSR0A _SFR_MEM8(0xC0)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a6	 ;  At line number 934
	.long	.LASF1444	 ;  The macro: "MPCM0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a7	 ;  At line number 935
	.long	.LASF1445	 ;  The macro: "U2X0 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a8	 ;  At line number 936
	.long	.LASF1446	 ;  The macro: "UPE0 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a9	 ;  At line number 937
	.long	.LASF1447	 ;  The macro: "DOR0 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3aa	 ;  At line number 938
	.long	.LASF1448	 ;  The macro: "FE0 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ab	 ;  At line number 939
	.long	.LASF1449	 ;  The macro: "UDRE0 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ac	 ;  At line number 940
	.long	.LASF1450	 ;  The macro: "TXC0 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ad	 ;  At line number 941
	.long	.LASF1451	 ;  The macro: "RXC0 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3af	 ;  At line number 943
	.long	.LASF1452	 ;  The macro: "UCSR0B _SFR_MEM8(0xC1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b0	 ;  At line number 944
	.long	.LASF1453	 ;  The macro: "TXB80 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b1	 ;  At line number 945
	.long	.LASF1454	 ;  The macro: "RXB80 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b2	 ;  At line number 946
	.long	.LASF1455	 ;  The macro: "UCSZ02 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b3	 ;  At line number 947
	.long	.LASF1456	 ;  The macro: "TXEN0 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b4	 ;  At line number 948
	.long	.LASF1457	 ;  The macro: "RXEN0 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b5	 ;  At line number 949
	.long	.LASF1458	 ;  The macro: "UDRIE0 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b6	 ;  At line number 950
	.long	.LASF1459	 ;  The macro: "TXCIE0 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b7	 ;  At line number 951
	.long	.LASF1460	 ;  The macro: "RXCIE0 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b9	 ;  At line number 953
	.long	.LASF1461	 ;  The macro: "UCSR0C _SFR_MEM8(0xC2)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ba	 ;  At line number 954
	.long	.LASF1462	 ;  The macro: "UCPOL0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3bb	 ;  At line number 955
	.long	.LASF1463	 ;  The macro: "UCSZ00 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3bc	 ;  At line number 956
	.long	.LASF1464	 ;  The macro: "UCSZ01 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3bd	 ;  At line number 957
	.long	.LASF1465	 ;  The macro: "USBS0 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3be	 ;  At line number 958
	.long	.LASF1466	 ;  The macro: "UPM00 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3bf	 ;  At line number 959
	.long	.LASF1467	 ;  The macro: "UPM01 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c0	 ;  At line number 960
	.long	.LASF1468	 ;  The macro: "UMSEL00 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c1	 ;  At line number 961
	.long	.LASF1469	 ;  The macro: "UMSEL01 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c3	 ;  At line number 963
	.long	.LASF1470	 ;  The macro: "UBRR0 _SFR_MEM16(0xC4)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c5	 ;  At line number 965
	.long	.LASF1471	 ;  The macro: "UBRR0L _SFR_MEM8(0xC4)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c6	 ;  At line number 966
	.long	.LASF1472	 ;  The macro: "UBRR0_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c7	 ;  At line number 967
	.long	.LASF1473	 ;  The macro: "UBRR0_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c8	 ;  At line number 968
	.long	.LASF1474	 ;  The macro: "UBRR0_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c9	 ;  At line number 969
	.long	.LASF1475	 ;  The macro: "UBRR0_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ca	 ;  At line number 970
	.long	.LASF1476	 ;  The macro: "UBRR0_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3cb	 ;  At line number 971
	.long	.LASF1477	 ;  The macro: "UBRR0_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3cc	 ;  At line number 972
	.long	.LASF1478	 ;  The macro: "UBRR0_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3cd	 ;  At line number 973
	.long	.LASF1479	 ;  The macro: "UBRR0_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3cf	 ;  At line number 975
	.long	.LASF1480	 ;  The macro: "UBRR0H _SFR_MEM8(0xC5)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d0	 ;  At line number 976
	.long	.LASF1481	 ;  The macro: "UBRR0_8 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d1	 ;  At line number 977
	.long	.LASF1482	 ;  The macro: "UBRR0_9 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d2	 ;  At line number 978
	.long	.LASF1483	 ;  The macro: "UBRR0_10 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d3	 ;  At line number 979
	.long	.LASF1484	 ;  The macro: "UBRR0_11 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d5	 ;  At line number 981
	.long	.LASF1485	 ;  The macro: "UDR0 _SFR_MEM8(0xC6)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d6	 ;  At line number 982
	.long	.LASF1486	 ;  The macro: "UDR0_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d7	 ;  At line number 983
	.long	.LASF1487	 ;  The macro: "UDR0_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d8	 ;  At line number 984
	.long	.LASF1488	 ;  The macro: "UDR0_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d9	 ;  At line number 985
	.long	.LASF1489	 ;  The macro: "UDR0_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3da	 ;  At line number 986
	.long	.LASF1490	 ;  The macro: "UDR0_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3db	 ;  At line number 987
	.long	.LASF1491	 ;  The macro: "UDR0_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3dc	 ;  At line number 988
	.long	.LASF1492	 ;  The macro: "UDR0_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3dd	 ;  At line number 989
	.long	.LASF1493	 ;  The macro: "UDR0_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3df	 ;  At line number 991
	.long	.LASF1494	 ;  The macro: "UCSR1A _SFR_MEM8(0xC8)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e0	 ;  At line number 992
	.long	.LASF1495	 ;  The macro: "MPCM1 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e1	 ;  At line number 993
	.long	.LASF1496	 ;  The macro: "U2X1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e2	 ;  At line number 994
	.long	.LASF1497	 ;  The macro: "UPE1 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e3	 ;  At line number 995
	.long	.LASF1498	 ;  The macro: "DOR1 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e4	 ;  At line number 996
	.long	.LASF1499	 ;  The macro: "FE1 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e5	 ;  At line number 997
	.long	.LASF1500	 ;  The macro: "UDRE1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e6	 ;  At line number 998
	.long	.LASF1501	 ;  The macro: "TXC1 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e7	 ;  At line number 999
	.long	.LASF1502	 ;  The macro: "RXC1 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e9	 ;  At line number 1001
	.long	.LASF1503	 ;  The macro: "UCSR1B _SFR_MEM8(0xC9)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ea	 ;  At line number 1002
	.long	.LASF1504	 ;  The macro: "TXB81 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3eb	 ;  At line number 1003
	.long	.LASF1505	 ;  The macro: "RXB81 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ec	 ;  At line number 1004
	.long	.LASF1506	 ;  The macro: "UCSZ12 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ed	 ;  At line number 1005
	.long	.LASF1507	 ;  The macro: "TXEN1 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ee	 ;  At line number 1006
	.long	.LASF1508	 ;  The macro: "RXEN1 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ef	 ;  At line number 1007
	.long	.LASF1509	 ;  The macro: "UDRIE1 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f0	 ;  At line number 1008
	.long	.LASF1510	 ;  The macro: "TXCIE1 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f1	 ;  At line number 1009
	.long	.LASF1511	 ;  The macro: "RXCIE1 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f3	 ;  At line number 1011
	.long	.LASF1512	 ;  The macro: "UCSR1C _SFR_MEM8(0xCA)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f4	 ;  At line number 1012
	.long	.LASF1513	 ;  The macro: "UCPOL1 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f5	 ;  At line number 1013
	.long	.LASF1514	 ;  The macro: "UCSZ10 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f6	 ;  At line number 1014
	.long	.LASF1515	 ;  The macro: "UCSZ11 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f7	 ;  At line number 1015
	.long	.LASF1516	 ;  The macro: "USBS1 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f8	 ;  At line number 1016
	.long	.LASF1517	 ;  The macro: "UPM10 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f9	 ;  At line number 1017
	.long	.LASF1518	 ;  The macro: "UPM11 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3fa	 ;  At line number 1018
	.long	.LASF1519	 ;  The macro: "UMSEL10 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3fb	 ;  At line number 1019
	.long	.LASF1520	 ;  The macro: "UMSEL11 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3fd	 ;  At line number 1021
	.long	.LASF1521	 ;  The macro: "UBRR1 _SFR_MEM16(0xCC)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3ff	 ;  At line number 1023
	.long	.LASF1522	 ;  The macro: "UBRR1L _SFR_MEM8(0xCC)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x400	 ;  At line number 1024
	.long	.LASF1523	 ;  The macro: "UBRR1_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x401	 ;  At line number 1025
	.long	.LASF1524	 ;  The macro: "UBRR1_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x402	 ;  At line number 1026
	.long	.LASF1525	 ;  The macro: "UBRR1_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x403	 ;  At line number 1027
	.long	.LASF1526	 ;  The macro: "UBRR1_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x404	 ;  At line number 1028
	.long	.LASF1527	 ;  The macro: "UBRR1_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x405	 ;  At line number 1029
	.long	.LASF1528	 ;  The macro: "UBRR1_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x406	 ;  At line number 1030
	.long	.LASF1529	 ;  The macro: "UBRR1_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x407	 ;  At line number 1031
	.long	.LASF1530	 ;  The macro: "UBRR1_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x409	 ;  At line number 1033
	.long	.LASF1531	 ;  The macro: "UBRR1H _SFR_MEM8(0xCD)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x40a	 ;  At line number 1034
	.long	.LASF1532	 ;  The macro: "UBRR1_8 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x40b	 ;  At line number 1035
	.long	.LASF1533	 ;  The macro: "UBRR1_9 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x40c	 ;  At line number 1036
	.long	.LASF1534	 ;  The macro: "UBRR1_10 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x40d	 ;  At line number 1037
	.long	.LASF1535	 ;  The macro: "UBRR1_11 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x40f	 ;  At line number 1039
	.long	.LASF1536	 ;  The macro: "UDR1 _SFR_MEM8(0xCE)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x410	 ;  At line number 1040
	.long	.LASF1537	 ;  The macro: "UDR1_0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x411	 ;  At line number 1041
	.long	.LASF1538	 ;  The macro: "UDR1_1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x412	 ;  At line number 1042
	.long	.LASF1539	 ;  The macro: "UDR1_2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x413	 ;  At line number 1043
	.long	.LASF1540	 ;  The macro: "UDR1_3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x414	 ;  At line number 1044
	.long	.LASF1541	 ;  The macro: "UDR1_4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x415	 ;  At line number 1045
	.long	.LASF1542	 ;  The macro: "UDR1_5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x416	 ;  At line number 1046
	.long	.LASF1543	 ;  The macro: "UDR1_6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x417	 ;  At line number 1047
	.long	.LASF1544	 ;  The macro: "UDR1_7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x41d	 ;  At line number 1053
	.long	.LASF1545	 ;  The macro: "INT0_vect_num 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x41e	 ;  At line number 1054
	.long	.LASF1546	 ;  The macro: "INT0_vect _VECTOR(1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x420	 ;  At line number 1056
	.long	.LASF1547	 ;  The macro: "INT1_vect_num 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x421	 ;  At line number 1057
	.long	.LASF1548	 ;  The macro: "INT1_vect _VECTOR(2)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x423	 ;  At line number 1059
	.long	.LASF1549	 ;  The macro: "INT2_vect_num 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x424	 ;  At line number 1060
	.long	.LASF1550	 ;  The macro: "INT2_vect _VECTOR(3)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x426	 ;  At line number 1062
	.long	.LASF1551	 ;  The macro: "PCINT0_vect_num 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x427	 ;  At line number 1063
	.long	.LASF1552	 ;  The macro: "PCINT0_vect _VECTOR(4)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x429	 ;  At line number 1065
	.long	.LASF1553	 ;  The macro: "PCINT1_vect_num 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x42a	 ;  At line number 1066
	.long	.LASF1554	 ;  The macro: "PCINT1_vect _VECTOR(5)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x42c	 ;  At line number 1068
	.long	.LASF1555	 ;  The macro: "PCINT2_vect_num 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x42d	 ;  At line number 1069
	.long	.LASF1556	 ;  The macro: "PCINT2_vect _VECTOR(6)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x42f	 ;  At line number 1071
	.long	.LASF1557	 ;  The macro: "PCINT3_vect_num 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x430	 ;  At line number 1072
	.long	.LASF1558	 ;  The macro: "PCINT3_vect _VECTOR(7)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x432	 ;  At line number 1074
	.long	.LASF1559	 ;  The macro: "WDT_vect_num 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x433	 ;  At line number 1075
	.long	.LASF1560	 ;  The macro: "WDT_vect _VECTOR(8)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x435	 ;  At line number 1077
	.long	.LASF1561	 ;  The macro: "TIMER2_COMPA_vect_num 9"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x436	 ;  At line number 1078
	.long	.LASF1562	 ;  The macro: "TIMER2_COMPA_vect _VECTOR(9)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x438	 ;  At line number 1080
	.long	.LASF1563	 ;  The macro: "TIMER2_COMPB_vect_num 10"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x439	 ;  At line number 1081
	.long	.LASF1564	 ;  The macro: "TIMER2_COMPB_vect _VECTOR(10)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43b	 ;  At line number 1083
	.long	.LASF1565	 ;  The macro: "TIMER2_OVF_vect_num 11"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43c	 ;  At line number 1084
	.long	.LASF1566	 ;  The macro: "TIMER2_OVF_vect _VECTOR(11)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43e	 ;  At line number 1086
	.long	.LASF1567	 ;  The macro: "TIMER1_CAPT_vect_num 12"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43f	 ;  At line number 1087
	.long	.LASF1568	 ;  The macro: "TIMER1_CAPT_vect _VECTOR(12)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x441	 ;  At line number 1089
	.long	.LASF1569	 ;  The macro: "TIMER1_COMPA_vect_num 13"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x442	 ;  At line number 1090
	.long	.LASF1570	 ;  The macro: "TIMER1_COMPA_vect _VECTOR(13)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x444	 ;  At line number 1092
	.long	.LASF1571	 ;  The macro: "TIMER1_COMPB_vect_num 14"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x445	 ;  At line number 1093
	.long	.LASF1572	 ;  The macro: "TIMER1_COMPB_vect _VECTOR(14)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x447	 ;  At line number 1095
	.long	.LASF1573	 ;  The macro: "TIMER1_OVF_vect_num 15"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x448	 ;  At line number 1096
	.long	.LASF1574	 ;  The macro: "TIMER1_OVF_vect _VECTOR(15)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44a	 ;  At line number 1098
	.long	.LASF1575	 ;  The macro: "TIMER0_COMPA_vect_num 16"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44b	 ;  At line number 1099
	.long	.LASF1576	 ;  The macro: "TIMER0_COMPA_vect _VECTOR(16)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44d	 ;  At line number 1101
	.long	.LASF1577	 ;  The macro: "TIMER0_COMPB_vect_num 17"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44e	 ;  At line number 1102
	.long	.LASF1578	 ;  The macro: "TIMER0_COMPB_vect _VECTOR(17)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x450	 ;  At line number 1104
	.long	.LASF1579	 ;  The macro: "TIMER0_OVF_vect_num 18"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x451	 ;  At line number 1105
	.long	.LASF1580	 ;  The macro: "TIMER0_OVF_vect _VECTOR(18)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x453	 ;  At line number 1107
	.long	.LASF1581	 ;  The macro: "SPI_STC_vect_num 19"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x454	 ;  At line number 1108
	.long	.LASF1582	 ;  The macro: "SPI_STC_vect _VECTOR(19)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x456	 ;  At line number 1110
	.long	.LASF1583	 ;  The macro: "USART0_RX_vect_num 20"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x457	 ;  At line number 1111
	.long	.LASF1584	 ;  The macro: "USART0_RX_vect _VECTOR(20)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x459	 ;  At line number 1113
	.long	.LASF1585	 ;  The macro: "USART0_UDRE_vect_num 21"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45a	 ;  At line number 1114
	.long	.LASF1586	 ;  The macro: "USART0_UDRE_vect _VECTOR(21)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45c	 ;  At line number 1116
	.long	.LASF1587	 ;  The macro: "USART0_TX_vect_num 22"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45d	 ;  At line number 1117
	.long	.LASF1588	 ;  The macro: "USART0_TX_vect _VECTOR(22)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45f	 ;  At line number 1119
	.long	.LASF1589	 ;  The macro: "ANALOG_COMP_vect_num 23"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x460	 ;  At line number 1120
	.long	.LASF1590	 ;  The macro: "ANALOG_COMP_vect _VECTOR(23)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x462	 ;  At line number 1122
	.long	.LASF1591	 ;  The macro: "ADC_vect_num 24"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x463	 ;  At line number 1123
	.long	.LASF1592	 ;  The macro: "ADC_vect _VECTOR(24)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x465	 ;  At line number 1125
	.long	.LASF1593	 ;  The macro: "EE_READY_vect_num 25"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x466	 ;  At line number 1126
	.long	.LASF1594	 ;  The macro: "EE_READY_vect _VECTOR(25)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x468	 ;  At line number 1128
	.long	.LASF1595	 ;  The macro: "TWI_vect_num 26"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x469	 ;  At line number 1129
	.long	.LASF1596	 ;  The macro: "TWI_vect _VECTOR(26)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x46b	 ;  At line number 1131
	.long	.LASF1597	 ;  The macro: "SPM_READY_vect_num 27"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x46c	 ;  At line number 1132
	.long	.LASF1598	 ;  The macro: "SPM_READY_vect _VECTOR(27)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x46e	 ;  At line number 1134
	.long	.LASF1599	 ;  The macro: "USART1_RX_vect_num 28"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x46f	 ;  At line number 1135
	.long	.LASF1600	 ;  The macro: "USART1_RX_vect _VECTOR(28)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x471	 ;  At line number 1137
	.long	.LASF1601	 ;  The macro: "USART1_UDRE_vect_num 29"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x472	 ;  At line number 1138
	.long	.LASF1602	 ;  The macro: "USART1_UDRE_vect _VECTOR(29)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x474	 ;  At line number 1140
	.long	.LASF1603	 ;  The macro: "USART1_TX_vect_num 30"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x475	 ;  At line number 1141
	.long	.LASF1604	 ;  The macro: "USART1_TX_vect _VECTOR(30)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x477	 ;  At line number 1143
	.long	.LASF1605	 ;  The macro: "TIMER3_CAPT_vect_num 31"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x478	 ;  At line number 1144
	.long	.LASF1606	 ;  The macro: "TIMER3_CAPT_vect _VECTOR(31)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x47a	 ;  At line number 1146
	.long	.LASF1607	 ;  The macro: "TIMER3_COMPA_vect_num 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x47b	 ;  At line number 1147
	.long	.LASF1608	 ;  The macro: "TIMER3_COMPA_vect _VECTOR(32)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x47d	 ;  At line number 1149
	.long	.LASF1609	 ;  The macro: "TIMER3_COMPB_vect_num 33"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x47e	 ;  At line number 1150
	.long	.LASF1610	 ;  The macro: "TIMER3_COMPB_vect _VECTOR(33)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x480	 ;  At line number 1152
	.long	.LASF1611	 ;  The macro: "TIMER3_OVF_vect_num 34"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x481	 ;  At line number 1153
	.long	.LASF1612	 ;  The macro: "TIMER3_OVF_vect _VECTOR(34)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x483	 ;  At line number 1155
	.long	.LASF1613	 ;  The macro: "_VECTORS_SIZE (35 * 4)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x487	 ;  At line number 1159
	.long	.LASF1614	 ;  The macro: "SPM_PAGESIZE 256"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x488	 ;  At line number 1160
	.long	.LASF1615	 ;  The macro: "RAMSTART (0x100)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x489	 ;  At line number 1161
	.long	.LASF1616	 ;  The macro: "RAMEND 0x40FF"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48a	 ;  At line number 1162
	.long	.LASF1617	 ;  The macro: "XRAMSIZE 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48b	 ;  At line number 1163
	.long	.LASF1618	 ;  The macro: "XRAMEND RAMEND"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48c	 ;  At line number 1164
	.long	.LASF1619	 ;  The macro: "E2END 0xFFF"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48d	 ;  At line number 1165
	.long	.LASF1620	 ;  The macro: "E2PAGESIZE 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48e	 ;  At line number 1166
	.long	.LASF1621	 ;  The macro: "FLASHEND 0x1FFFF"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x492	 ;  At line number 1170
	.long	.LASF1622	 ;  The macro: "FUSE_MEMORY_SIZE 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x495	 ;  At line number 1173
	.long	.LASF1623	 ;  The macro: "FUSE_CKSEL0 (unsigned char)~_BV(0)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x496	 ;  At line number 1174
	.long	.LASF1624	 ;  The macro: "FUSE_CKSEL1 (unsigned char)~_BV(1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x497	 ;  At line number 1175
	.long	.LASF1625	 ;  The macro: "FUSE_CKSEL2 (unsigned char)~_BV(2)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x498	 ;  At line number 1176
	.long	.LASF1626	 ;  The macro: "FUSE_CKSEL3 (unsigned char)~_BV(3)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x499	 ;  At line number 1177
	.long	.LASF1627	 ;  The macro: "FUSE_SUT0 (unsigned char)~_BV(4)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x49a	 ;  At line number 1178
	.long	.LASF1628	 ;  The macro: "FUSE_SUT1 (unsigned char)~_BV(5)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x49b	 ;  At line number 1179
	.long	.LASF1629	 ;  The macro: "FUSE_CKOUT (unsigned char)~_BV(6)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x49c	 ;  At line number 1180
	.long	.LASF1630	 ;  The macro: "FUSE_CKDIV8 (unsigned char)~_BV(7)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x49d	 ;  At line number 1181
	.long	.LASF1631	 ;  The macro: "LFUSE_DEFAULT (FUSE_CKSEL0 & FUSE_CKSEL2 & FUSE_CKSEL3 & FUSE_SUT0 & FUSE_SUT1 & FUSE_CKDIV8)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a0	 ;  At line number 1184
	.long	.LASF1632	 ;  The macro: "FUSE_BOOTRST (unsigned char)~_BV(0)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a1	 ;  At line number 1185
	.long	.LASF1633	 ;  The macro: "FUSE_BOOTSZ0 (unsigned char)~_BV(1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a2	 ;  At line number 1186
	.long	.LASF1634	 ;  The macro: "FUSE_BOOTSZ1 (unsigned char)~_BV(2)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a3	 ;  At line number 1187
	.long	.LASF1635	 ;  The macro: "FUSE_EESAVE (unsigned char)~_BV(3)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a4	 ;  At line number 1188
	.long	.LASF1636	 ;  The macro: "FUSE_WDTON (unsigned char)~_BV(4)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a5	 ;  At line number 1189
	.long	.LASF1637	 ;  The macro: "FUSE_SPIEN (unsigned char)~_BV(5)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a6	 ;  At line number 1190
	.long	.LASF1638	 ;  The macro: "FUSE_JTAGEN (unsigned char)~_BV(6)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a7	 ;  At line number 1191
	.long	.LASF1639	 ;  The macro: "FUSE_OCDEN (unsigned char)~_BV(7)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a8	 ;  At line number 1192
	.long	.LASF1640	 ;  The macro: "HFUSE_DEFAULT (FUSE_BOOTSZ0 & FUSE_SPIEN & FUSE_JTAGEN)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4ab	 ;  At line number 1195
	.long	.LASF1641	 ;  The macro: "FUSE_BODLEVEL0 (unsigned char)~_BV(0)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4ac	 ;  At line number 1196
	.long	.LASF1642	 ;  The macro: "FUSE_BODLEVEL1 (unsigned char)~_BV(1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4ad	 ;  At line number 1197
	.long	.LASF1643	 ;  The macro: "FUSE_BODLEVEL2 (unsigned char)~_BV(2)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4ae	 ;  At line number 1198
	.long	.LASF1644	 ;  The macro: "EFUSE_DEFAULT (0xFF)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4b2	 ;  At line number 1202
	.long	.LASF1645	 ;  The macro: "__LOCK_BITS_EXIST "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4b3	 ;  At line number 1203
	.long	.LASF1646	 ;  The macro: "__BOOT_LOCK_BITS_0_EXIST "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4b4	 ;  At line number 1204
	.long	.LASF1647	 ;  The macro: "__BOOT_LOCK_BITS_1_EXIST "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4b8	 ;  At line number 1208
	.long	.LASF1648	 ;  The macro: "SIGNATURE_0 0x1E"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4b9	 ;  At line number 1209
	.long	.LASF1649	 ;  The macro: "SIGNATURE_1 0x97"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4ba	 ;  At line number 1210
	.long	.LASF1650	 ;  The macro: "SIGNATURE_2 0x05"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4bc	 ;  At line number 1212
	.long	.LASF1651	 ;  The macro: "SLEEP_MODE_IDLE (0x00<<1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4bd	 ;  At line number 1213
	.long	.LASF1652	 ;  The macro: "SLEEP_MODE_ADC (0x01<<1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4be	 ;  At line number 1214
	.long	.LASF1653	 ;  The macro: "SLEEP_MODE_PWR_DOWN (0x02<<1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4bf	 ;  At line number 1215
	.long	.LASF1654	 ;  The macro: "SLEEP_MODE_PWR_SAVE (0x03<<1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4c0	 ;  At line number 1216
	.long	.LASF1655	 ;  The macro: "SLEEP_MODE_STANDBY (0x06<<1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4c1	 ;  At line number 1217
	.long	.LASF1656	 ;  The macro: "SLEEP_MODE_EXT_STANDBY (0x07<<1)"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.portpins.h.34.ea328448b55f2ce92efd2518b51bb214,comdat
.Ldebug_macro11:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22	 ;  At line number 34
	.long	.LASF1657	 ;  The macro: "_AVR_PORTPINS_H_ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d	 ;  At line number 45
	.long	.LASF1658	 ;  The macro: "PORT7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e	 ;  At line number 46
	.long	.LASF1659	 ;  The macro: "PORT6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f	 ;  At line number 47
	.long	.LASF1660	 ;  The macro: "PORT5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30	 ;  At line number 48
	.long	.LASF1661	 ;  The macro: "PORT4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x31	 ;  At line number 49
	.long	.LASF1662	 ;  The macro: "PORT3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32	 ;  At line number 50
	.long	.LASF1663	 ;  The macro: "PORT2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33	 ;  At line number 51
	.long	.LASF1664	 ;  The macro: "PORT1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x34	 ;  At line number 52
	.long	.LASF1665	 ;  The macro: "PORT0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x37	 ;  At line number 55
	.long	.LASF1666	 ;  The macro: "DD7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38	 ;  At line number 56
	.long	.LASF1667	 ;  The macro: "DD6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39	 ;  At line number 57
	.long	.LASF1668	 ;  The macro: "DD5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a	 ;  At line number 58
	.long	.LASF1669	 ;  The macro: "DD4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b	 ;  At line number 59
	.long	.LASF1670	 ;  The macro: "DD3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c	 ;  At line number 60
	.long	.LASF1671	 ;  The macro: "DD2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d	 ;  At line number 61
	.long	.LASF1672	 ;  The macro: "DD1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e	 ;  At line number 62
	.long	.LASF1673	 ;  The macro: "DD0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x41	 ;  At line number 65
	.long	.LASF1674	 ;  The macro: "PIN7 7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x42	 ;  At line number 66
	.long	.LASF1675	 ;  The macro: "PIN6 6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43	 ;  At line number 67
	.long	.LASF1676	 ;  The macro: "PIN5 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44	 ;  At line number 68
	.long	.LASF1677	 ;  The macro: "PIN4 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45	 ;  At line number 69
	.long	.LASF1678	 ;  The macro: "PIN3 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x46	 ;  At line number 70
	.long	.LASF1679	 ;  The macro: "PIN2 2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x47	 ;  At line number 71
	.long	.LASF1680	 ;  The macro: "PIN1 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x48	 ;  At line number 72
	.long	.LASF1681	 ;  The macro: "PIN0 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x51	 ;  At line number 81
	.long	.LASF1682	 ;  The macro: "PA0 PORTA0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x56	 ;  At line number 86
	.long	.LASF1683	 ;  The macro: "PA1 PORTA1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5b	 ;  At line number 91
	.long	.LASF1684	 ;  The macro: "PA2 PORTA2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x60	 ;  At line number 96
	.long	.LASF1685	 ;  The macro: "PA3 PORTA3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x65	 ;  At line number 101
	.long	.LASF1686	 ;  The macro: "PA4 PORTA4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6a	 ;  At line number 106
	.long	.LASF1687	 ;  The macro: "PA5 PORTA5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6f	 ;  At line number 111
	.long	.LASF1688	 ;  The macro: "PA6 PORTA6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x74	 ;  At line number 116
	.long	.LASF1689	 ;  The macro: "PA7 PORTA7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7c	 ;  At line number 124
	.long	.LASF1690	 ;  The macro: "PB0 PORTB0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x81	 ;  At line number 129
	.long	.LASF1691	 ;  The macro: "PB1 PORTB1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x86	 ;  At line number 134
	.long	.LASF1692	 ;  The macro: "PB2 PORTB2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8b	 ;  At line number 139
	.long	.LASF1693	 ;  The macro: "PB3 PORTB3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x90	 ;  At line number 144
	.long	.LASF1694	 ;  The macro: "PB4 PORTB4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x95	 ;  At line number 149
	.long	.LASF1695	 ;  The macro: "PB5 PORTB5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9a	 ;  At line number 154
	.long	.LASF1696	 ;  The macro: "PB6 PORTB6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x9f	 ;  At line number 159
	.long	.LASF1697	 ;  The macro: "PB7 PORTB7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa7	 ;  At line number 167
	.long	.LASF1698	 ;  The macro: "PC0 PORTC0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xac	 ;  At line number 172
	.long	.LASF1699	 ;  The macro: "PC1 PORTC1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb1	 ;  At line number 177
	.long	.LASF1700	 ;  The macro: "PC2 PORTC2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb6	 ;  At line number 182
	.long	.LASF1701	 ;  The macro: "PC3 PORTC3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbb	 ;  At line number 187
	.long	.LASF1702	 ;  The macro: "PC4 PORTC4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc0	 ;  At line number 192
	.long	.LASF1703	 ;  The macro: "PC5 PORTC5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc5	 ;  At line number 197
	.long	.LASF1704	 ;  The macro: "PC6 PORTC6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xca	 ;  At line number 202
	.long	.LASF1705	 ;  The macro: "PC7 PORTC7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd2	 ;  At line number 210
	.long	.LASF1706	 ;  The macro: "PD0 PORTD0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd7	 ;  At line number 215
	.long	.LASF1707	 ;  The macro: "PD1 PORTD1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdc	 ;  At line number 220
	.long	.LASF1708	 ;  The macro: "PD2 PORTD2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe1	 ;  At line number 225
	.long	.LASF1709	 ;  The macro: "PD3 PORTD3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe6	 ;  At line number 230
	.long	.LASF1710	 ;  The macro: "PD4 PORTD4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xeb	 ;  At line number 235
	.long	.LASF1711	 ;  The macro: "PD5 PORTD5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf0	 ;  At line number 240
	.long	.LASF1712	 ;  The macro: "PD6 PORTD6"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf5	 ;  At line number 245
	.long	.LASF1713	 ;  The macro: "PD7 PORTD7"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.common.h.35.e6803e1b460b38cc94de7c54f91d1094,comdat
.Ldebug_macro12:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23	 ;  At line number 35
	.long	.LASF1714	 ;  The macro: "_AVR_COMMON_H "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x51	 ;  At line number 81
	.long	.LASF1715	 ;  The macro: "SPL _SFR_IO8(0x3D)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x59	 ;  At line number 89
	.long	.LASF1716	 ;  The macro: "SP _SFR_IO16(0x3D)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5c	 ;  At line number 92
	.long	.LASF1717	 ;  The macro: "SPH _SFR_IO8(0x3E)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x67	 ;  At line number 103
	.long	.LASF1718	 ;  The macro: "SREG _SFR_IO8(0x3F)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6e	 ;  At line number 110
	.long	.LASF1719	 ;  The macro: "SREG_C (0)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x71	 ;  At line number 113
	.long	.LASF1720	 ;  The macro: "SREG_Z (1)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x74	 ;  At line number 116
	.long	.LASF1721	 ;  The macro: "SREG_N (2)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x77	 ;  At line number 119
	.long	.LASF1722	 ;  The macro: "SREG_V (3)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7a	 ;  At line number 122
	.long	.LASF1723	 ;  The macro: "SREG_S (4)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7d	 ;  At line number 125
	.long	.LASF1724	 ;  The macro: "SREG_H (5)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x80	 ;  At line number 128
	.long	.LASF1725	 ;  The macro: "SREG_T (6)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x83	 ;  At line number 131
	.long	.LASF1726	 ;  The macro: "SREG_I (7)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd7	 ;  At line number 215
	.long	.LASF1727	 ;  The macro: "XL r26"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd8	 ;  At line number 216
	.long	.LASF1728	 ;  The macro: "XH r27"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd9	 ;  At line number 217
	.long	.LASF1729	 ;  The macro: "YL r28"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xda	 ;  At line number 218
	.long	.LASF1730	 ;  The macro: "YH r29"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdc	 ;  At line number 220
	.long	.LASF1731	 ;  The macro: "ZL r30"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xdd	 ;  At line number 221
	.long	.LASF1732	 ;  The macro: "ZH r31"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe2	 ;  At line number 226
	.long	.LASF1733	 ;  The macro: "AVR_STATUS_REG SREG"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe6	 ;  At line number 230
	.long	.LASF1734	 ;  The macro: "AVR_STATUS_ADDR _SFR_IO_ADDR(SREG)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xec	 ;  At line number 236
	.long	.LASF1735	 ;  The macro: "AVR_STACK_POINTER_REG SP"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf0	 ;  At line number 240
	.long	.LASF1736	 ;  The macro: "AVR_STACK_POINTER_ADDR _SFR_IO_ADDR(SP)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf6	 ;  At line number 246
	.long	.LASF1737	 ;  The macro: "_HAVE_AVR_STACK_POINTER_HI 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xf7	 ;  At line number 247
	.long	.LASF1738	 ;  The macro: "AVR_STACK_POINTER_HI_REG SPH"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfb	 ;  At line number 251
	.long	.LASF1739	 ;  The macro: "AVR_STACK_POINTER_HI_ADDR _SFR_IO_ADDR(SPH)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x101	 ;  At line number 257
	.long	.LASF1740	 ;  The macro: "AVR_STACK_POINTER_LO_REG SPL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x105	 ;  At line number 261
	.long	.LASF1741	 ;  The macro: "AVR_STACK_POINTER_LO_ADDR _SFR_IO_ADDR(SPL)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x129	 ;  At line number 297
	.long	.LASF1742	 ;  The macro: "AVR_RAMPZ_REG RAMPZ"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x12d	 ;  At line number 301
	.long	.LASF1743	 ;  The macro: "AVR_RAMPZ_ADDR _SFR_IO_ADDR(RAMPZ)"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.fuse.h.36.5c373c650020c0efef2cbaa98ea802c3,comdat
.Ldebug_macro13:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24	 ;  At line number 36
	.long	.LASF1744	 ;  The macro: "_AVR_FUSE_H_ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xe2	 ;  At line number 226
	.long	.LASF1745	 ;  The macro: "FUSEMEM __attribute__((__used__, __section__ (".fuse")))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x10b	 ;  At line number 267
	.long	.LASF1746	 ;  The macro: "FUSES __fuse_t __fuse FUSEMEM"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.lock.h.36.f40126c031c14ca4311c8dcce861c2c3,comdat
.Ldebug_macro14:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24	 ;  At line number 36
	.long	.LASF1747	 ;  The macro: "_AVR_LOCK_H_ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbe	 ;  At line number 190
	.long	.LASF1748	 ;  The macro: "LOCKMEM __attribute__((__used__, __section__ (".lock")))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc2	 ;  At line number 194
	.long	.LASF1749	 ;  The macro: "LOCKBITS unsigned char __lock LOCKMEM"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xca	 ;  At line number 202
	.long	.LASF1750	 ;  The macro: "LB_MODE_1 (0xFF)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcb	 ;  At line number 203
	.long	.LASF1751	 ;  The macro: "LB_MODE_2 (0xFE)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xcc	 ;  At line number 204
	.long	.LASF1752	 ;  The macro: "LB_MODE_3 (0xFC)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd0	 ;  At line number 208
	.long	.LASF1753	 ;  The macro: "BLB0_MODE_1 (0xFF)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd1	 ;  At line number 209
	.long	.LASF1754	 ;  The macro: "BLB0_MODE_2 (0xFB)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd2	 ;  At line number 210
	.long	.LASF1755	 ;  The macro: "BLB0_MODE_3 (0xF3)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd3	 ;  At line number 211
	.long	.LASF1756	 ;  The macro: "BLB0_MODE_4 (0xF7)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd7	 ;  At line number 215
	.long	.LASF1757	 ;  The macro: "BLB1_MODE_1 (0xFF)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd8	 ;  At line number 216
	.long	.LASF1758	 ;  The macro: "BLB1_MODE_2 (0xEF)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xd9	 ;  At line number 217
	.long	.LASF1759	 ;  The macro: "BLB1_MODE_3 (0xCF)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xda	 ;  At line number 218
	.long	.LASF1760	 ;  The macro: "BLB1_MODE_4 (0xDF)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xed	 ;  At line number 237
	.long	.LASF1761	 ;  The macro: "LOCKBITS_DEFAULT (0xFF)"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.42.e9c19dd455e13223da6c845d430999c9,comdat
.Ldebug_macro15:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a	 ;  At line number 42
	.long	.LASF1762	 ;  The macro: "__STRINGIFY(x) #x"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x51	 ;  At line number 81
	.long	.LASF1763	 ;  The macro: "sei() __asm__ __volatile__ ("sei" ::: "memory")"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x63	 ;  At line number 99
	.long	.LASF1764	 ;  The macro: "cli() __asm__ __volatile__ ("cli" ::: "memory")"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x81	 ;  At line number 129
	.long	.LASF1765	 ;  The macro: "__INTR_ATTRS used, externally_visible"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8b	 ;  At line number 139
	.long	.LASF1766	 ;  The macro: "ISR(vector,...) void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xa4	 ;  At line number 164
	.long	.LASF1767	 ;  The macro: "SIGNAL(vector) void vector (void) __attribute__ ((signal, __INTR_ATTRS)); void vector (void)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbc	 ;  At line number 188
	.long	.LASF1768	 ;  The macro: "EMPTY_INTERRUPT(vector) void vector (void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void) { __asm__ __volatile__ ("reti" ::); }"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xef	 ;  At line number 239
	.long	.LASF1769	 ;  The macro: "ISR_ALIAS(vector,tgt) void vector (void) __attribute__((signal, naked, __INTR_ATTRS)); void vector (void) { asm volatile ("jmp " __STRINGIFY(tgt) ::); }"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x108	 ;  At line number 264
	.long	.LASF1770	 ;  The macro: "reti() __asm__ __volatile__ ("reti" ::)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x118	 ;  At line number 280
	.long	.LASF1771	 ;  The macro: "BADISR_vect __vector_default"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x150	 ;  At line number 336
	.long	.LASF1772	 ;  The macro: "ISR_BLOCK "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x151	 ;  At line number 337
	.long	.LASF1773	 ;  The macro: "ISR_NOBLOCK __attribute__((interrupt))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x152	 ;  At line number 338
	.long	.LASF1774	 ;  The macro: "ISR_NAKED __attribute__((naked))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x153	 ;  At line number 339
	.long	.LASF1775	 ;  The macro: "ISR_ALIASOF(v) __attribute__((alias(__STRINGIFY(v))))"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.global.h.122.0ef419df37f2b22a4eb53f96d9af7a51,comdat
.Ldebug_macro16:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7a	 ;  At line number 122
	.long	.LASF1776	 ;  The macro: "NEW_AVR_LIB "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x85	 ;  At line number 133
	.long	.LASF1777	 ;  The macro: "PACKED __attribute__ ((packed))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8e	 ;  At line number 142
	.long	.LASF1778	 ;  The macro: "PACKED_FORCE __attribute__ ((packed))"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.83.f733e4c5dcfb33a192ad6b47d9b443d0,comdat
.Ldebug_macro17:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x53	 ;  At line number 83
	.long	.LASF1779	 ;  The macro: "__PGMSPACE_H_ 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x55	 ;  At line number 85
	.long	.LASF1780	 ;  The macro: "__need_size_t "
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.184.f740e675efc82b9790b2d86753673cd5,comdat
.Ldebug_macro18:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb8	 ;  At line number 184
	.long	.LASF1781	 ;  The macro: "__size_t__ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xb9	 ;  At line number 185
	.long	.LASF1782	 ;  The macro: "__SIZE_T__ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xba	 ;  At line number 186
	.long	.LASF1783	 ;  The macro: "_SIZE_T "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbb	 ;  At line number 187
	.long	.LASF1784	 ;  The macro: "_SYS_SIZE_T_H "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbc	 ;  At line number 188
	.long	.LASF1785	 ;  The macro: "_T_SIZE_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbd	 ;  At line number 189
	.long	.LASF1786	 ;  The macro: "_T_SIZE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbe	 ;  At line number 190
	.long	.LASF1787	 ;  The macro: "__SIZE_T "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xbf	 ;  At line number 191
	.long	.LASF1788	 ;  The macro: "_SIZE_T_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc0	 ;  At line number 192
	.long	.LASF1789	 ;  The macro: "_BSD_SIZE_T_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc1	 ;  At line number 193
	.long	.LASF1790	 ;  The macro: "_SIZE_T_DEFINED_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc2	 ;  At line number 194
	.long	.LASF1791	 ;  The macro: "_SIZE_T_DEFINED "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc3	 ;  At line number 195
	.long	.LASF1792	 ;  The macro: "_BSD_SIZE_T_DEFINED_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc4	 ;  At line number 196
	.long	.LASF1793	 ;  The macro: "_SIZE_T_DECLARED "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc5	 ;  At line number 197
	.long	.LASF1794	 ;  The macro: "___int_size_t_h "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc6	 ;  At line number 198
	.long	.LASF1795	 ;  The macro: "_GCC_SIZE_T "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xc7	 ;  At line number 199
	.long	.LASF1796	 ;  The macro: "_SIZET_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xce	 ;  At line number 206
	.long	.LASF1797	 ;  The macro: "__size_t "
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xea	 ;  At line number 234
	.long	.LASF1798	 ;  The macro: "__need_size_t"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x198	 ;  At line number 408
	.long	.LASF1799	 ;  The macro: "__need_NULL"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.95.74ca09cc50b61f0ea28c4d9de1f31d01,comdat
.Ldebug_macro19:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5f	 ;  At line number 95
	.long	.LASF1800	 ;  The macro: "__ATTR_PROGMEM__ __attribute__((__progmem__))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x63	 ;  At line number 99
	.long	.LASF1801	 ;  The macro: "__ATTR_PURE__ __attribute__((__pure__))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6d	 ;  At line number 109
	.long	.LASF1802	 ;  The macro: "PROGMEM __ATTR_PROGMEM__"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x176	 ;  At line number 374
	.long	.LASF1803	 ;  The macro: "PGM_P const char *"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x17a	 ;  At line number 378
	.long	.LASF1804	 ;  The macro: "PGM_VOID_P const void *"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x194	 ;  At line number 404
	.long	.LASF1805	 ;  The macro: "PSTR(s) (__extension__({static const char __c[] PROGMEM = (s); &__c[0];}))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x197	 ;  At line number 407
	.long	.LASF1806	 ;  The macro: "__LPM_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %0, r0" "\n\t" : "=r" (__result) : "z" (__addr16) : "r0" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1a6	 ;  At line number 422
	.long	.LASF1807	 ;  The macro: "__LPM_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint8_t __result; __asm__ ( "ld %0, z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1b3	 ;  At line number 435
	.long	.LASF1808	 ;  The macro: "__LPM_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c0	 ;  At line number 448
	.long	.LASF1809	 ;  The macro: "__LPM_word_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d2	 ;  At line number 466
	.long	.LASF1810	 ;  The macro: "__LPM_word_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint16_t __result; __asm__ ( "ld %A0, z+" "\n\t" "ld %B0, z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e0	 ;  At line number 480
	.long	.LASF1811	 ;  The macro: "__LPM_word_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( "lpm %A0, Z+" "\n\t" "lpm %B0, Z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1ee	 ;  At line number 494
	.long	.LASF1812	 ;  The macro: "__LPM_dword_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %C0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %D0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x206	 ;  At line number 518
	.long	.LASF1813	 ;  The macro: "__LPM_dword_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint32_t __result; __asm__ ( "ld %A0, z+" "\n\t" "ld %B0, z+" "\n\t" "ld %C0, z+" "\n\t" "ld %D0, z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x216	 ;  At line number 534
	.long	.LASF1814	 ;  The macro: "__LPM_dword_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile__ ( "lpm %A0, Z+" "\n\t" "lpm %B0, Z+" "\n\t" "lpm %C0, Z+" "\n\t" "lpm %D0, Z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x226	 ;  At line number 550
	.long	.LASF1815	 ;  The macro: "__LPM_float_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); float __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %C0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %D0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23e	 ;  At line number 574
	.long	.LASF1816	 ;  The macro: "__LPM_float_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; float __result; __asm__ ( "ld %A0, z+" "\n\t" "ld %B0, z+" "\n\t" "ld %C0, z+" "\n\t" "ld %D0, z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x24e	 ;  At line number 590
	.long	.LASF1817	 ;  The macro: "__LPM_float_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); float __result; __asm__ __volatile__ ( "lpm %A0, Z+" "\n\t" "lpm %B0, Z+" "\n\t" "lpm %C0, Z+" "\n\t" "lpm %D0, Z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x25f	 ;  At line number 607
	.long	.LASF1818	 ;  The macro: "__LPM(addr) __LPM_enhanced__(addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x260	 ;  At line number 608
	.long	.LASF1819	 ;  The macro: "__LPM_word(addr) __LPM_word_enhanced__(addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x261	 ;  At line number 609
	.long	.LASF1820	 ;  The macro: "__LPM_dword(addr) __LPM_dword_enhanced__(addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x262	 ;  At line number 610
	.long	.LASF1821	 ;  The macro: "__LPM_float(addr) __LPM_float_enhanced__(addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27e	 ;  At line number 638
	.long	.LASF1822	 ;  The macro: "pgm_read_byte_near(address_short) __LPM((uint16_t)(address_short))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x286	 ;  At line number 646
	.long	.LASF1823	 ;  The macro: "pgm_read_word_near(address_short) __LPM_word((uint16_t)(address_short))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28e	 ;  At line number 654
	.long	.LASF1824	 ;  The macro: "pgm_read_dword_near(address_short) __LPM_dword((uint16_t)(address_short))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x297	 ;  At line number 663
	.long	.LASF1825	 ;  The macro: "pgm_read_float_near(address_short) __LPM_float((uint16_t)(address_short))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a0	 ;  At line number 672
	.long	.LASF1826	 ;  The macro: "pgm_read_ptr_near(address_short) (void*)__LPM_word((uint16_t)(address_short))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2ab	 ;  At line number 683
	.long	.LASF1827	 ;  The macro: "__ELPM_classic__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint8_t __result; __asm__ __volatile__ ( "out %2, %C1" "\n\t" "mov r31, %B1" "\n\t" "mov r30, %A1" "\n\t" "elpm" "\n\t" "mov %0, r0" "\n\t" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r0", "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2be	 ;  At line number 702
	.long	.LASF1828	 ;  The macro: "__ELPM_enhanced__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint8_t __result; __asm__ __volatile__ ( "out %2, %C1" "\n\t" "movw r30, %1" "\n\t" "elpm %0, Z+" "\n\t" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2cf	 ;  At line number 719
	.long	.LASF1829	 ;  The macro: "__ELPM_xmega__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint8_t __result; __asm__ __volatile__ ( "in __tmp_reg__, %2" "\n\t" "out %2, %C1" "\n\t" "movw r30, %1" "\n\t" "elpm %0, Z+" "\n\t" "out %2, __tmp_reg__" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2e2	 ;  At line number 738
	.long	.LASF1830	 ;  The macro: "__ELPM_word_classic__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint16_t __result; __asm__ __volatile__ ( "out %2, %C1" "\n\t" "mov r31, %B1" "\n\t" "mov r30, %A1" "\n\t" "elpm" "\n\t" "mov %A0, r0" "\n\t" "in r0, %2" "\n\t" "adiw r30, 1" "\n\t" "adc r0, __zero_reg__" "\n\t" "out %2, r0" "\n\t" "elpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r0", "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2fb	 ;  At line number 763
	.long	.LASF1831	 ;  The macro: "__ELPM_word_enhanced__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint16_t __result; __asm__ __volatile__ ( "out %2, %C1" "\n\t" "movw r30, %1" "\n\t" "elpm %A0, Z+" "\n\t" "elpm %B0, Z" "\n\t" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30d	 ;  At line number 781
	.long	.LASF1832	 ;  The macro: "__ELPM_word_xmega__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint16_t __result; __asm__ __volatile__ ( "in __tmp_reg__, %2" "\n\t" "out %2, %C1" "\n\t" "movw r30, %1" "\n\t" "elpm %A0, Z+" "\n\t" "elpm %B0, Z" "\n\t" "out %2, __tmp_reg__" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x321	 ;  At line number 801
	.long	.LASF1833	 ;  The macro: "__ELPM_dword_classic__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint32_t __result; __asm__ __volatile__ ( "out %2, %C1" "\n\t" "mov r31, %B1" "\n\t" "mov r30, %A1" "\n\t" "elpm" "\n\t" "mov %A0, r0" "\n\t" "in r0, %2" "\n\t" "adiw r30, 1" "\n\t" "adc r0, __zero_reg__" "\n\t" "out %2, r0" "\n\t" "elpm" "\n\t" "mov %B0, r0" "\n\t" "in r0, %2" "\n\t" "adiw r30, 1" "\n\t" "adc r0, __zero_reg__" "\n\t" "out %2, r0" "\n\t" "elpm" "\n\t" "mov %C0, r0" "\n\t" "in r0, %2" "\n\t" "adiw r30, 1" "\n\t" "adc r0, __zero_reg__" "\n\t" "out %2, r0" "\n\t" "elpm" "\n\t" "mov %D0, r0" "\n\t" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r0", "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x346	 ;  At line number 838
	.long	.LASF1834	 ;  The macro: "__ELPM_dword_enhanced__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint32_t __result; __asm__ __volatile__ ( "out %2, %C1" "\n\t" "movw r30, %1" "\n\t" "elpm %A0, Z+" "\n\t" "elpm %B0, Z+" "\n\t" "elpm %C0, Z+" "\n\t" "elpm %D0, Z" "\n\t" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x35a	 ;  At line number 858
	.long	.LASF1835	 ;  The macro: "__ELPM_dword_xmega__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint32_t __result; __asm__ __volatile__ ( "in __tmp_reg__, %2" "\n\t" "out %2, %C1" "\n\t" "movw r30, %1" "\n\t" "elpm %A0, Z+" "\n\t" "elpm %B0, Z+" "\n\t" "elpm %C0, Z+" "\n\t" "elpm %D0, Z" "\n\t" "out %2, __tmp_reg__" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x370	 ;  At line number 880
	.long	.LASF1836	 ;  The macro: "__ELPM_float_classic__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); float __result; __asm__ __volatile__ ( "out %2, %C1" "\n\t" "mov r31, %B1" "\n\t" "mov r30, %A1" "\n\t" "elpm" "\n\t" "mov %A0, r0" "\n\t" "in r0, %2" "\n\t" "adiw r30, 1" "\n\t" "adc r0, __zero_reg__" "\n\t" "out %2, r0" "\n\t" "elpm" "\n\t" "mov %B0, r0" "\n\t" "in r0, %2" "\n\t" "adiw r30, 1" "\n\t" "adc r0, __zero_reg__" "\n\t" "out %2, r0" "\n\t" "elpm" "\n\t" "mov %C0, r0" "\n\t" "in r0, %2" "\n\t" "adiw r30, 1" "\n\t" "adc r0, __zero_reg__" "\n\t" "out %2, r0" "\n\t" "elpm" "\n\t" "mov %D0, r0" "\n\t" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r0", "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x395	 ;  At line number 917
	.long	.LASF1837	 ;  The macro: "__ELPM_float_enhanced__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); float __result; __asm__ __volatile__ ( "out %2, %C1" "\n\t" "movw r30, %1" "\n\t" "elpm %A0, Z+" "\n\t" "elpm %B0, Z+" "\n\t" "elpm %C0, Z+" "\n\t" "elpm %D0, Z" "\n\t" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a9	 ;  At line number 937
	.long	.LASF1838	 ;  The macro: "__ELPM_float_xmega__(addr) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); float __result; __asm__ __volatile__ ( "in __tmp_reg__, %2" "\n\t" "out %2, %C1" "\n\t" "movw r30, %1" "\n\t" "elpm %A0, Z+" "\n\t" "elpm %B0, Z+" "\n\t" "elpm %C0, Z+" "\n\t" "elpm %D0, Z" "\n\t" "out %2, __tmp_reg__" : "=r" (__result) : "r" (__addr32), "I" (_SFR_IO_ADDR(RAMPZ)) : "r30", "r31" ); __result; }))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3cf	 ;  At line number 975
	.long	.LASF1839	 ;  The macro: "__ELPM(addr) __ELPM_enhanced__(addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d0	 ;  At line number 976
	.long	.LASF1840	 ;  The macro: "__ELPM_word(addr) __ELPM_word_enhanced__(addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d1	 ;  At line number 977
	.long	.LASF1841	 ;  The macro: "__ELPM_dword(addr) __ELPM_dword_enhanced__(addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d2	 ;  At line number 978
	.long	.LASF1842	 ;  The macro: "__ELPM_float(addr) __ELPM_float_enhanced__(addr)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e7	 ;  At line number 999
	.long	.LASF1843	 ;  The macro: "pgm_read_byte_far(address_long) __ELPM((uint32_t)(address_long))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f0	 ;  At line number 1008
	.long	.LASF1844	 ;  The macro: "pgm_read_word_far(address_long) __ELPM_word((uint32_t)(address_long))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f9	 ;  At line number 1017
	.long	.LASF1845	 ;  The macro: "pgm_read_dword_far(address_long) __ELPM_dword((uint32_t)(address_long))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x402	 ;  At line number 1026
	.long	.LASF1846	 ;  The macro: "pgm_read_float_far(address_long) __ELPM_float((uint32_t)(address_long))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x40b	 ;  At line number 1035
	.long	.LASF1847	 ;  The macro: "pgm_read_ptr_far(address_long) (void*)__ELPM_word((uint32_t)(address_long))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x416	 ;  At line number 1046
	.long	.LASF1848	 ;  The macro: "pgm_read_byte(address_short) pgm_read_byte_near(address_short)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x41f	 ;  At line number 1055
	.long	.LASF1849	 ;  The macro: "pgm_read_word(address_short) pgm_read_word_near(address_short)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x428	 ;  At line number 1064
	.long	.LASF1850	 ;  The macro: "pgm_read_dword(address_short) pgm_read_dword_near(address_short)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x431	 ;  At line number 1073
	.long	.LASF1851	 ;  The macro: "pgm_read_float(address_short) pgm_read_float_near(address_short)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43a	 ;  At line number 1082
	.long	.LASF1852	 ;  The macro: "pgm_read_ptr(address_short) pgm_read_ptr_near(address_short)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45d	 ;  At line number 1117
	.long	.LASF1853	 ;  The macro: "pgm_get_far_address(var) ({ uint_farptr_t tmp; __asm__ __volatile__( "ldi	%A0, lo8(%1)" "\n\t" "ldi	%B0, hi8(%1)" "\n\t" "ldi	%C0, hh8(%1)" "\n\t" "clr	%D0" "\n\t" : "=d" (tmp) : "p" (&(var)) ); tmp; })"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.botlocal.h.29.066b12b963c7871bab5ef4afcaabc115,comdat
.Ldebug_macro20:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1d	 ;  At line number 29
	.long	.LASF1854	 ;  The macro: "BOTLOCAL_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22	 ;  At line number 34
	.long	.LASF1855	 ;  The macro: "BOT_DIAMETER 120"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x23	 ;  At line number 35
	.long	.LASF1856	 ;  The macro: "ENCODER_MARKS 60"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2a	 ;  At line number 42
	.long	.LASF1857	 ;  The macro: "WHEEL_DIAMETER 56.7"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b	 ;  At line number 43
	.long	.LASF1858	 ;  The macro: "WHEEL_PERIMETER 178.1283"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c	 ;  At line number 44
	.long	.LASF1859	 ;  The macro: "WHEEL_TO_WHEEL_DIAMETER 97.2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f	 ;  At line number 47
	.long	.LASF1860	 ;  The macro: "DISTSENSOR_POS_FW 47"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x30	 ;  At line number 48
	.long	.LASF1861	 ;  The macro: "DISTSENSOR_POS_SW 32"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32	 ;  At line number 50
	.long	.LASF1862	 ;  The macro: "BORDERSENSOR_POS_FW DISTSENSOR_POS_FW"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x33	 ;  At line number 51
	.long	.LASF1863	 ;  The macro: "BORDERSENSOR_POS_SW (DISTSENSOR_POS_SW + 5)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x39	 ;  At line number 57
	.long	.LASF1864	 ;  The macro: "PID_Kp 70"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a	 ;  At line number 58
	.long	.LASF1865	 ;  The macro: "PID_Ki 10"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b	 ;  At line number 59
	.long	.LASF1866	 ;  The macro: "PID_Kd 20"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c	 ;  At line number 60
	.long	.LASF1867	 ;  The macro: "PID_Ta 1"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d	 ;  At line number 61
	.long	.LASF1868	 ;  The macro: "PID_SHIFT 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e	 ;  At line number 62
	.long	.LASF1869	 ;  The macro: "PID_TIME 333"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f	 ;  At line number 63
	.long	.LASF1870	 ;  The macro: "PID_SPEED_THRESHOLD BOT_SPEED_FOLLOW"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x40	 ;  At line number 64
	.long	.LASF1871	 ;  The macro: "PWMMAX 511"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x41	 ;  At line number 65
	.long	.LASF1872	 ;  The macro: "PWMMIN 0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x42	 ;  At line number 66
	.long	.LASF1873	 ;  The macro: "PWMSTART_L 100"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x43	 ;  At line number 67
	.long	.LASF1874	 ;  The macro: "PWMSTART_R 100"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x44	 ;  At line number 68
	.long	.LASF1875	 ;  The macro: "PID_START_DELAY 20"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x45	 ;  At line number 69
	.long	.LASF1876	 ;  The macro: "ENC_CORRECT_L 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x46	 ;  At line number 70
	.long	.LASF1877	 ;  The macro: "ENC_CORRECT_R 5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4d	 ;  At line number 77
	.long	.LASF1878	 ;  The macro: "MOUSE_CPI 415"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4e	 ;  At line number 78
	.long	.LASF1879	 ;  The macro: "MOUSE_FULL_TURN 1600"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x51	 ;  At line number 81
	.long	.LASF1880	 ;  The macro: "WHEEL_DISTANCE (WHEEL_TO_WHEEL_DIAMETER / 2.0f)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x52	 ;  At line number 82
	.long	.LASF1881	 ;  The macro: "STUCK_DIFF 100"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x53	 ;  At line number 83
	.long	.LASF1882	 ;  The macro: "G_SPEED 0.5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x54	 ;  At line number 84
	.long	.LASF1883	 ;  The macro: "G_POS 0.5"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x56	 ;  At line number 86
	.long	.LASF1884	 ;  The macro: "BPS_NO_DATA 0xffff"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5b	 ;  At line number 91
	.long	.LASF1885	 ;  The macro: "F_CPU 16000000UL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5f	 ;  At line number 95
	.long	.LASF1886	 ;  The macro: "UART_BAUD 115200"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x63	 ;  At line number 99
	.long	.LASF1887	 ;  The macro: "UART_LINUX_PORT "/dev/ttyAMA0""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x64	 ;  At line number 100
	.long	.LASF1888	 ;  The macro: "BOT_RESET_GPIO "/sys/class/gpio/gpio17/value""
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x67	 ;  At line number 103
	.long	.LASF1889	 ;  The macro: "EXPANSION_BOARD_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6f	 ;  At line number 111
	.long	.LASF1890	 ;  The macro: "DOOR_CLOSE 65"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x70	 ;  At line number 112
	.long	.LASF1891	 ;  The macro: "DOOR_OPEN 185"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x72	 ;  At line number 114
	.long	.LASF1892	 ;  The macro: "CAM_LEFT 10"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x73	 ;  At line number 115
	.long	.LASF1893	 ;  The macro: "CAM_RIGHT 250"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x74	 ;  At line number 116
	.long	.LASF1894	 ;  The macro: "CAM_CENTER 120"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7a	 ;  At line number 122
	.long	.LASF1895	 ;  The macro: "BORDER_DANGEROUS 0x3A0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7d	 ;  At line number 125
	.long	.LASF1896	 ;  The macro: "COL_CLOSEST 200"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7e	 ;  At line number 126
	.long	.LASF1897	 ;  The macro: "COL_NEAR 300"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7f	 ;  At line number 127
	.long	.LASF1898	 ;  The macro: "COL_FAR 400"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x82	 ;  At line number 130
	.long	.LASF1899	 ;  The macro: "OPTIMAL_DISTANCE (int16_t)(BOT_DIAMETER * 1.25f)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x83	 ;  At line number 131
	.long	.LASF1900	 ;  The macro: "ADJUST_DISTANCE 10"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x84	 ;  At line number 132
	.long	.LASF1901	 ;  The macro: "IGNORE_DISTANCE 240"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x85	 ;  At line number 133
	.long	.LASF1902	 ;  The macro: "GROUND_GOAL 0x221"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x86	 ;  At line number 134
	.long	.LASF1903	 ;  The macro: "STARTPAD1 0x2B2"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x87	 ;  At line number 135
	.long	.LASF1904	 ;  The macro: "STARTPAD2 0x332"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x8f	 ;  At line number 143
	.long	.LASF1905	 ;  The macro: "LINE_SENSE 0x200"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x93	 ;  At line number 147
	.long	.LASF1906	 ;  The macro: "MAX_PILLAR_DISTANCE 500"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x96	 ;  At line number 150
	.long	.LASF1907	 ;  The macro: "PRIO_VISIBLE_MIN 3"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x97	 ;  At line number 151
	.long	.LASF1908	 ;  The macro: "PRIO_VISIBLE_MAX 200"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.botlocaloverride.h.28.31cb0113b33f35ee5501b11d536d78b5,comdat
.Ldebug_macro21:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF1909	 ;  The macro: "INCLUDE_BOT_LOCAL_OVERRIDE_H_ "
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x1f	 ;  At line number 31
	.long	.LASF1910	 ;  The macro: "ENC_CORRECT_L"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20	 ;  At line number 32
	.long	.LASF1911	 ;  The macro: "ENC_CORRECT_L 0"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x21	 ;  At line number 33
	.long	.LASF1912	 ;  The macro: "ENC_CORRECT_R"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22	 ;  At line number 34
	.long	.LASF1913	 ;  The macro: "ENC_CORRECT_R 0"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x24	 ;  At line number 36
	.long	.LASF1914	 ;  The macro: "PWMSTART_L"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x25	 ;  At line number 37
	.long	.LASF1915	 ;  The macro: "PWMSTART_R"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x26	 ;  At line number 38
	.long	.LASF1916	 ;  The macro: "PWMSTART_L 50"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x27	 ;  At line number 39
	.long	.LASF1917	 ;  The macro: "PWMSTART_R 50"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x2b	 ;  At line number 43
	.long	.LASF1918	 ;  The macro: "F_CPU"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c	 ;  At line number 44
	.long	.LASF1919	 ;  The macro: "F_CPU 20000000UL"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x2e	 ;  At line number 46
	.long	.LASF1920	 ;  The macro: "UART_BAUD"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2f	 ;  At line number 47
	.long	.LASF1921	 ;  The macro: "UART_BAUD 500000"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x31	 ;  At line number 49
	.long	.LASF1922	 ;  The macro: "ARM_LINUX_DISPLAY"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x32	 ;  At line number 50
	.long	.LASF1923	 ;  The macro: "ARM_LINUX_DISPLAY "/dev/tty1""
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x34	 ;  At line number 52
	.long	.LASF1924	 ;  The macro: "EXPANSION_BOARD_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x35	 ;  At line number 53
	.long	.LASF1925	 ;  The macro: "EXPANSION_BOARD_MOD_AVAILABLE"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x36	 ;  At line number 54
	.long	.LASF1926	 ;  The macro: "SPI_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x38	 ;  At line number 56
	.long	.LASF1927	 ;  The macro: "BOT_2_RPI_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c	 ;  At line number 60
	.long	.LASF1928	 ;  The macro: "LOG_RPI_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3f	 ;  At line number 63
	.long	.LASF1929	 ;  The macro: "DISTSENS_TYPE_GP2Y0A60 "
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x44	 ;  At line number 68
	.long	.LASF1930	 ;  The macro: "DOOR_CLOSE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x45	 ;  At line number 69
	.long	.LASF1931	 ;  The macro: "DOOR_OPEN"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x46	 ;  At line number 70
	.long	.LASF1932	 ;  The macro: "CAM_LEFT"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x47	 ;  At line number 71
	.long	.LASF1933	 ;  The macro: "CAM_RIGHT"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x48	 ;  At line number 72
	.long	.LASF1934	 ;  The macro: "CAM_CENTER"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x49	 ;  At line number 73
	.long	.LASF1890	 ;  The macro: "DOOR_CLOSE 65"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4a	 ;  At line number 74
	.long	.LASF1891	 ;  The macro: "DOOR_OPEN 185"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4b	 ;  At line number 75
	.long	.LASF1892	 ;  The macro: "CAM_LEFT 10"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4c	 ;  At line number 76
	.long	.LASF1893	 ;  The macro: "CAM_RIGHT 250"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x4d	 ;  At line number 77
	.long	.LASF1894	 ;  The macro: "CAM_CENTER 120"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.rc5codes.h.28.bf75d17e0aa396f66b9e825d41301c8f,comdat
.Ldebug_macro22:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF1936	 ;  The macro: "RC5CODE_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1e	 ;  At line number 30
	.long	.LASF1937	 ;  The macro: "RC5_TOGGLE 0x0800"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1f	 ;  At line number 31
	.long	.LASF1938	 ;  The macro: "RC5_ADDRESS 0x07C0"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x20	 ;  At line number 32
	.long	.LASF1939	 ;  The macro: "RC5_COMMAND 0x103F"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x26	 ;  At line number 38
	.long	.LASF1940	 ;  The macro: "RC5_MASK (RC5_COMMAND)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c	 ;  At line number 60
	.long	.LASF1941	 ;  The macro: "RC_HAVE_HQ_RC_UNIVERS29_334 "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x52	 ;  At line number 82
	.long	.LASF1942	 ;  The macro: "RC5_CODE_PWR (0x118C & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x54	 ;  At line number 84
	.long	.LASF1943	 ;  The macro: "RC5_CODE_0 (0x1180 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x55	 ;  At line number 85
	.long	.LASF1944	 ;  The macro: "RC5_CODE_1 (0x1181 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x56	 ;  At line number 86
	.long	.LASF1945	 ;  The macro: "RC5_CODE_2 (0x1182 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x57	 ;  At line number 87
	.long	.LASF1946	 ;  The macro: "RC5_CODE_3 (0x1183 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x58	 ;  At line number 88
	.long	.LASF1947	 ;  The macro: "RC5_CODE_4 (0x1184 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x59	 ;  At line number 89
	.long	.LASF1948	 ;  The macro: "RC5_CODE_5 (0x1185 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5a	 ;  At line number 90
	.long	.LASF1949	 ;  The macro: "RC5_CODE_6 (0x1186 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5b	 ;  At line number 91
	.long	.LASF1950	 ;  The macro: "RC5_CODE_7 (0x1187 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5c	 ;  At line number 92
	.long	.LASF1951	 ;  The macro: "RC5_CODE_8 (0x1188 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5d	 ;  At line number 93
	.long	.LASF1952	 ;  The macro: "RC5_CODE_9 (0x1189 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5e	 ;  At line number 94
	.long	.LASF1953	 ;  The macro: "RC5_CODE_11 (0x118A & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5f	 ;  At line number 95
	.long	.LASF1954	 ;  The macro: "RC5_CODE_12 (0x11A3 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x61	 ;  At line number 97
	.long	.LASF1955	 ;  The macro: "RC5_CODE_GREEN (0x01BA & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x62	 ;  At line number 98
	.long	.LASF1956	 ;  The macro: "RC5_CODE_RED (0x01BD & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x63	 ;  At line number 99
	.long	.LASF1957	 ;  The macro: "RC5_CODE_YELLOW (0x01B1 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x64	 ;  At line number 100
	.long	.LASF1958	 ;  The macro: "RC5_CODE_BLUE (0x01B0 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x66	 ;  At line number 102
	.long	.LASF1959	 ;  The macro: "RC5_CODE_I_II (0x11AB & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x67	 ;  At line number 103
	.long	.LASF1960	 ;  The macro: "RC5_CODE_TV_VCR (0x11B8 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x69	 ;  At line number 105
	.long	.LASF1961	 ;  The macro: "RC5_CODE_DOT (0x11B7 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6b	 ;  At line number 107
	.long	.LASF1962	 ;  The macro: "RC5_CODE_PLAY (0x11B5 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6c	 ;  At line number 108
	.long	.LASF1963	 ;  The macro: "RC5_CODE_STILL (0x11A9 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6d	 ;  At line number 109
	.long	.LASF1964	 ;  The macro: "RC5_CODE_STOP (0x11B6 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6e	 ;  At line number 110
	.long	.LASF1965	 ;  The macro: "RC5_CODE_BWD (0x11B2 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6f	 ;  At line number 111
	.long	.LASF1966	 ;  The macro: "RC5_CODE_FWD (0x11B4 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x71	 ;  At line number 113
	.long	.LASF1967	 ;  The macro: "RC5_CODE_CH_PC (0x11BF & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x72	 ;  At line number 114
	.long	.LASF1968	 ;  The macro: "RC5_CODE_MUTE (0x01BF & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x74	 ;  At line number 116
	.long	.LASF1969	 ;  The macro: "RC5_VOL_PLUS (0x1190 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x75	 ;  At line number 117
	.long	.LASF1970	 ;  The macro: "RC5_VOL_MINUS (0x1191 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x77	 ;  At line number 119
	.long	.LASF1971	 ;  The macro: "RC5_CH_PLUS (0x11A0 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x78	 ;  At line number 120
	.long	.LASF1972	 ;  The macro: "RC5_CH_MINUS (0x11A1 & RC5_MASK)"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7b	 ;  At line number 123
	.long	.LASF1973	 ;  The macro: "RC5_CODE_UP RC5_CODE_STILL"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7c	 ;  At line number 124
	.long	.LASF1974	 ;  The macro: "RC5_CODE_DOWN RC5_CODE_STOP"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7d	 ;  At line number 125
	.long	.LASF1975	 ;  The macro: "RC5_CODE_LEFT RC5_CODE_BWD"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x7e	 ;  At line number 126
	.long	.LASF1976	 ;  The macro: "RC5_CODE_RIGHT RC5_CODE_FWD"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.ctBot.h.133.e95d22f90ed5f68ad909b074da6be27e,comdat
.Ldebug_macro23:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x85	 ;  At line number 133
	.long	.LASF1977	 ;  The macro: "MEASURE_MOUSE_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x86	 ;  At line number 134
	.long	.LASF1978	 ;  The macro: "MEASURE_COUPLED_AVAILABLE"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xaa	 ;  At line number 170
	.long	.LASF1979	 ;  The macro: "UART_AVAILABLE "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xab	 ;  At line number 171
	.long	.LASF1980	 ;  The macro: "COMMAND_AVAILABLE "
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xad	 ;  At line number 173
	.long	.LASF1981	 ;  The macro: "BOT_2_BOT_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xae	 ;  At line number 174
	.long	.LASF1982	 ;  The macro: "BOT_2_SIM_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xb0	 ;  At line number 176
	.long	.LASF1983	 ;  The macro: "LOG_UART_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xb1	 ;  At line number 177
	.long	.LASF1984	 ;  The macro: "BEHAVIOUR_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xb2	 ;  At line number 178
	.long	.LASF1985	 ;  The macro: "POS_STORE_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xb3	 ;  At line number 179
	.long	.LASF1986	 ;  The macro: "MAP_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xb5	 ;  At line number 181
	.long	.LASF1987	 ;  The macro: "DISPLAY_REMOTE_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xc0	 ;  At line number 192
	.long	.LASF1988	 ;  The macro: "MAP_2_SIM_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xcd	 ;  At line number 205
	.long	.LASF1989	 ;  The macro: "EEPROM_EMU_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xce	 ;  At line number 206
	.long	.LASF1990	 ;  The macro: "CREATE_TRACEFILE_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xd6	 ;  At line number 214
	.long	.LASF1991	 ;  The macro: "SPEED_LOG_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xd8	 ;  At line number 216
	.long	.LASF1986	 ;  The macro: "MAP_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xd9	 ;  At line number 217
	.long	.LASF1992	 ;  The macro: "MMC_VM_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xda	 ;  At line number 218
	.long	.LASF1993	 ;  The macro: "BOT_FS_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0xf4	 ;  At line number 244
	.long	.LASF1994	 ;  The macro: "LOG_STDOUT_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x106	 ;  At line number 262
	.long	.LASF1995	 ;  The macro: "LOG_MMC_AVAILABLE"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x121	 ;  At line number 289
	.long	.LASF1996	 ;  The macro: "LOG_AVAILABLE "
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x129	 ;  At line number 297
	.long	.LASF1986	 ;  The macro: "MAP_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x134	 ;  At line number 308
	.long	.LASF1988	 ;  The macro: "MAP_2_SIM_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x138	 ;  At line number 312
	.long	.LASF1997	 ;  The macro: "BOT_2_BOT_PAYLOAD_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x159	 ;  At line number 345
	.long	.LASF1995	 ;  The macro: "LOG_MMC_AVAILABLE"
	.byte	0x6	 ;  Undefine macro indirect
	.uleb128 0x15d	 ;  At line number 349
	.long	.LASF1995	 ;  The macro: "LOG_MMC_AVAILABLE"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.spi.h.28.5bb5f8161abfec90d94a4b88224293cc,comdat
.Ldebug_macro24:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF1998	 ;  The macro: "SPI_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2b	 ;  At line number 43
	.long	.LASF1999	 ;  The macro: "SPI_SPEED_MAX {{0, 0, 1}}"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2c	 ;  At line number 44
	.long	.LASF2000	 ;  The macro: "SPI_SPEED_4MHZ {{0, 0, 0}}"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x2d	 ;  At line number 45
	.long	.LASF2001	 ;  The macro: "SPI_SPEED_250KHZ {{0, 1, 0}}"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.timer.h.28.845822d0ae398396726095578f136d20,comdat
.Ldebug_macro25:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF2003	 ;  The macro: "TIMER_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22	 ;  At line number 34
	.long	.LASF2004	 ;  The macro: "TICKS_TO_MS(ticks) ((ticks) * (TIMER_STEPS / 8) / (1000 / 8))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x28	 ;  At line number 40
	.long	.LASF2005	 ;  The macro: "MS_TO_TICKS(ms) ((ms) * (1000 / 8) / (TIMER_STEPS / 8))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6a	 ;  At line number 106
	.long	.LASF2006	 ;  The macro: "TIMER_GET_TICKCOUNT_8 tickCount.u8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6b	 ;  At line number 107
	.long	.LASF2007	 ;  The macro: "TIMER_GET_TICKCOUNT_16 timer_get_tickcount_16()"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x6c	 ;  At line number 108
	.long	.LASF2008	 ;  The macro: "TIMER_GET_TICKCOUNT_32 timer_get_tickcount_32()"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x92	 ;  At line number 146
	.long	.LASF2009	 ;  The macro: "TIMER_2_CLOCK 5619"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x95	 ;  At line number 149
	.long	.LASF2010	 ;  The macro: "TIMER_STEPS 176"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0xfa	 ;  At line number 250
	.long	.LASF2011	 ;  The macro: "TIMER_MEASURE_TIME(__code) uint16_t __us = 0; { uint32_t start = TIMER_GET_TICKCOUNT_32; int8_t start_reg = (int8_t) TCNT2; { __code; } uint8_t sreg = SREG; __builtin_avr_cli(); int8_t end_reg = (int8_t) TCNT2; uint32_t end = TIMER_GET_TICKCOUNT_32; SREG = sreg; uint16_t diff = (uint16_t) (end - start) * 176U; int8_t diff_reg = (int8_t) ((float)(end_reg - start_reg) * 3.2f); if (diff_reg < 0) { diff_reg = (int8_t) (diff_reg + 55); } uint8_t diff_r = (uint8_t) diff_reg; __us = diff + (uint16_t) diff_r; LOG_DEBUG("%u us", __us); display_cursor(4, 1); display_printf("%4u us", __us); }"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.os_scheduler.h.28.701ed8759a930fe1f7b3f5b21c28e815,comdat
.Ldebug_macro26:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x1c	 ;  At line number 28
	.long	.LASF2012	 ;  The macro: "_OS_SCHEDULER_H_ "
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x22	 ;  At line number 34
	.long	.LASF2013	 ;  The macro: "OS_TIME_SLICE 10"
	.byte	0	 ;  End compilation unit
	.section	.debug_macro,"G",@progbits,wm4.os_thread.h.58.1e62cc39496ef1298f6ff4bccbae0b5f,comdat
.Ldebug_macro27:
	.word	0x4	 ;  DWARF macro version number
	.byte	0	 ;  Flags: 32-bit
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3a	 ;  At line number 58
	.long	.LASF2014	 ;  The macro: "OS_MAX_THREADS 4"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3b	 ;  At line number 59
	.long	.LASF2015	 ;  The macro: "OS_KERNEL_STACKSIZE 36"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3c	 ;  At line number 60
	.long	.LASF2016	 ;  The macro: "OS_IDLE_STACKSIZE 64"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3d	 ;  At line number 61
	.long	.LASF2017	 ;  The macro: "OS_CONTEXT_SIZE 19"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x3e	 ;  At line number 62
	.long	.LASF2018	 ;  The macro: "OS_DELAYED_FUNC_CNT 8"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5a	 ;  At line number 90
	.long	.LASF2019	 ;  The macro: "OS_TASK_ATTR __attribute__((OS_task))"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x5b	 ;  At line number 91
	.long	.LASF2020	 ;  The macro: "OS_SIGNAL_INITIALIZER {0}"
	.byte	0x5	 ;  Define macro indirect
	.uleb128 0x85	 ;  At line number 133
	.long	.LASF2021	 ;  The macro: "os_enterCS() { os_scheduling_allowed = 0; __asm__ __volatile__("":::"memory"); }"
	.byte	0	 ;  End compilation unit
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1267:
	.string	"OCR1AH5 5"
.LASF2023:
	.string	"LOG_DEBUG_FIFO(a,...) {}"
.LASF253:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF456:
	.string	"IR_AVAILABLE "
.LASF244:
	.string	"__UACCUM_FBIT__ 16"
.LASF1832:
	.ascii	"__ELPM_word_xmega__(addr) (__extension__({ uint32_t __addr32"
	.ascii	" = (uint32_t)(addr); uint16_t __resu"
	.string	"lt; __asm__ __volatile__ ( \"in __tmp_reg__, %2\" \"\\n\\t\" \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, Z\" \"\\n\\t\" \"out %2, __tmp_reg__\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
.LASF213:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF150:
	.string	"__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
.LASF726:
	.string	"DDRA _SFR_IO8(0x01)"
.LASF1524:
	.string	"UBRR1_1 1"
.LASF1323:
	.string	"ICR3H2 2"
.LASF1728:
	.string	"XH r27"
.LASF1835:
	.ascii	"__ELPM_dword_xmega__(addr) (__extension__({ uint32_t __addr3"
	.ascii	"2 = (uint32_t)(addr); uint32_t __result; __asm__ __volatile_"
	.ascii	"_ ( \"in __tmp_reg__, "
	.string	"%2\" \"\\n\\t\" \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, Z+\" \"\\n\\t\" \"elpm %C0, Z+\" \"\\n\\t\" \"elpm %D0, Z\" \"\\n\\t\" \"out %2, __tmp_reg__\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
.LASF1940:
	.string	"RC5_MASK (RC5_COMMAND)"
.LASF708:
	.string	"_SFR_DWORD(sfr) _MMIO_DWORD(_SFR_ADDR(sfr))"
.LASF956:
	.string	"GPIOR25 5"
.LASF1314:
	.string	"ICR3L2 2"
.LASF576:
	.string	"lroundf lround"
.LASF469:
	.string	"UINT8_MAX (__CONCAT(INT8_MAX, U) * 2U + 1U)"
.LASF1177:
	.string	"MUX2 2"
.LASF836:
	.string	"OCF2A 1"
.LASF1223:
	.string	"TCNT1H _SFR_MEM8(0x85)"
.LASF245:
	.string	"__UACCUM_IBIT__ 16"
.LASF962:
	.string	"CPHA 2"
.LASF1249:
	.string	"ICR1H6 6"
.LASF1289:
	.string	"FOC3B 6"
.LASF1775:
	.string	"ISR_ALIASOF(v) __attribute__((alias(__STRINGIFY(v))))"
.LASF1428:
	.string	"TWIE 0"
.LASF106:
	.string	"__UINT16_C(c) c ## U"
.LASF881:
	.string	"EEAR _SFR_IO16(0x21)"
.LASF628:
	.string	"PRIXLEAST8 \"X\""
.LASF686:
	.string	"SCNuFAST32 \"lu\""
.LASF119:
	.string	"__INTPTR_MAX__ 32767"
.LASF1077:
	.string	"PCIE2 2"
.LASF1677:
	.string	"PIN4 4"
.LASF131:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF976:
	.string	"SPDR3 3"
.LASF1512:
	.string	"UCSR1C _SFR_MEM8(0xCA)"
.LASF570:
	.string	"fdimf fdim"
.LASF1825:
	.string	"pgm_read_float_near(address_short) __LPM_float((uint16_t)(address_short))"
.LASF1007:
	.string	"BORF 2"
.LASF748:
	.string	"PINB3 3"
.LASF1455:
	.string	"UCSZ02 2"
.LASF1432:
	.string	"TWSTA 5"
.LASF1109:
	.string	"PCINT20 4"
.LASF1053:
	.string	"__AVR_HAVE_PRR0_PRADC "
.LASF1103:
	.string	"PCINT15 7"
.LASF2004:
	.string	"TICKS_TO_MS(ticks) ((ticks) * (TIMER_STEPS / 8) / (1000 / 8))"
.LASF1543:
	.string	"UDR1_6 6"
.LASF594:
	.string	"_AVR_IO_H_ "
.LASF504:
	.string	"INTPTR_MIN INT16_MIN"
.LASF538:
	.string	"M_SQRT1_2 0.70710678118654752440"
.LASF677:
	.string	"SCNuFAST16 \"u\""
.LASF1259:
	.string	"OCR1AL6 6"
.LASF472:
	.string	"UINT16_MAX (__CONCAT(INT16_MAX, U) * 2U + 1U)"
.LASF465:
	.string	"__CONCATenate(left,right) left ## right"
.LASF1013:
	.string	"PUD 4"
.LASF1207:
	.string	"WGM13 4"
.LASF466:
	.string	"__CONCAT(left,right) __CONCATenate(left, right)"
.LASF2077:
	.string	"Debug-MCU-m1284p"
.LASF0:
	.string	"__STDC__ 1"
.LASF37:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF1556:
	.string	"PCINT2_vect _VECTOR(6)"
.LASF225:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF1037:
	.string	"CLKPR _SFR_MEM8(0x61)"
.LASF589:
	.string	"__AVR_LIBC_MINOR__ 8"
.LASF1188:
	.string	"ADC4D 4"
.LASF291:
	.string	"__SA_FBIT__ 15"
.LASF183:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF301:
	.string	"__UDA_FBIT__ 32"
.LASF1367:
	.string	"TCNT2_1 1"
.LASF1965:
	.string	"RC5_CODE_BWD (0x11B2 & RC5_MASK)"
.LASF839:
	.string	"TOV3 0"
.LASF1638:
	.string	"FUSE_JTAGEN (unsigned char)~_BV(6)"
.LASF267:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF47:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF1241:
	.string	"ICR1L7 7"
.LASF983:
	.string	"ACIS1 1"
.LASF1477:
	.string	"UBRR0_5 5"
.LASF942:
	.string	"GPIOR10 0"
.LASF331:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF868:
	.string	"EEMPE 2"
.LASF1760:
	.string	"BLB1_MODE_4 (0xDF)"
.LASF1522:
	.string	"UBRR1L _SFR_MEM8(0xCC)"
.LASF664:
	.string	"SCNd32 \"ld\""
.LASF292:
	.string	"__SA_IBIT__ 16"
.LASF560:
	.string	"atanf atan"
.LASF148:
	.string	"__DBL_MIN__ ((double)1.17549435e-38L)"
.LASF302:
	.string	"__UDA_IBIT__ 32"
.LASF1221:
	.string	"TCNT1L6 6"
.LASF435:
	.string	"__ELF__ 1"
.LASF780:
	.string	"DDRC _SFR_IO8(0x07)"
.LASF16:
	.string	"__SIZEOF_LONG__ 4"
.LASF625:
	.string	"PRIxLEAST8 \"x\""
.LASF1747:
	.string	"_AVR_LOCK_H_ 1"
.LASF1560:
	.string	"WDT_vect _VECTOR(8)"
.LASF2003:
	.string	"TIMER_H_ "
.LASF1211:
	.string	"FOC1B 6"
.LASF2056:
	.string	"ddrb"
.LASF1663:
	.string	"PORT2 2"
.LASF609:
	.string	"PRIiFAST16 \"i\""
.LASF1403:
	.string	"TWPS1 1"
.LASF842:
	.string	"ICF3 5"
.LASF1300:
	.string	"TCNT3L7 7"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF438:
	.string	"MCU 1"
.LASF812:
	.string	"DDD4 4"
.LASF1905:
	.string	"LINE_SENSE 0x200"
.LASF1076:
	.string	"PCIE1 1"
.LASF55:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF795:
	.string	"PORTC5 5"
.LASF142:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF1348:
	.string	"OCR3B _SFR_MEM16(0x9A)"
.LASF1424:
	.string	"TWD5 5"
.LASF585:
	.string	"__AVR_LIBC_VERSION__ 10800UL"
.LASF190:
	.string	"__SFRACT_IBIT__ 0"
.LASF506:
	.string	"INTMAX_MAX INT64_MAX"
.LASF1517:
	.string	"UPM10 4"
.LASF546:
	.string	"fmodf fmod"
.LASF1856:
	.string	"ENCODER_MARKS 60"
.LASF64:
	.string	"__INTPTR_TYPE__ int"
.LASF275:
	.string	"__DQ_FBIT__ 63"
.LASF152:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF248:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF2006:
	.string	"TIMER_GET_TICKCOUNT_8 tickCount.u8"
.LASF1883:
	.string	"G_POS 0.5"
.LASF388:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF1886:
	.string	"UART_BAUD 115200"
.LASF1147:
	.string	"ADCL4 4"
.LASF501:
	.string	"INT_FAST64_MIN INT64_MIN"
.LASF1389:
	.string	"TCN2UB 4"
.LASF490:
	.string	"UINT_LEAST64_MAX UINT64_MAX"
.LASF543:
	.string	"sinf sin"
.LASF446:
	.string	"DISPLAY_MCU_AVAILABLE "
.LASF97:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF1891:
	.string	"DOOR_OPEN 185"
.LASF176:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1419:
	.string	"TWD0 0"
.LASF1504:
	.string	"TXB81 0"
.LASF611:
	.string	"PRIdLEAST32 \"ld\""
.LASF357:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF1932:
	.string	"CAM_LEFT"
.LASF1131:
	.string	"PCMSK3 _SFR_MEM8(0x73)"
.LASF1186:
	.string	"ADC2D 2"
.LASF574:
	.string	"truncf trunc"
.LASF1346:
	.string	"OCR3AH6 6"
.LASF1890:
	.string	"DOOR_CLOSE 65"
.LASF265:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF508:
	.string	"UINTMAX_MAX UINT64_MAX"
.LASF1528:
	.string	"UBRR1_5 5"
.LASF1160:
	.string	"ADCSRA _SFR_MEM8(0x7A)"
.LASF459:
	.string	"POS_STORE_AVAILABLE "
.LASF1022:
	.string	"RWWSRE 4"
.LASF1301:
	.string	"TCNT3H _SFR_MEM8(0x95)"
.LASF1551:
	.string	"PCINT0_vect_num 4"
.LASF1928:
	.string	"LOG_RPI_AVAILABLE "
.LASF470:
	.string	"INT16_MAX 0x7fff"
.LASF1761:
	.string	"LOCKBITS_DEFAULT (0xFF)"
.LASF1781:
	.string	"__size_t__ "
.LASF497:
	.string	"INT_FAST32_MAX INT32_MAX"
.LASF1863:
	.string	"BORDERSENSOR_POS_SW (DISTSENSOR_POS_SW + 5)"
.LASF1409:
	.string	"TWAR _SFR_MEM8(0xBA)"
.LASF534:
	.string	"M_1_PI 0.31830988618379067154"
.LASF939:
	.string	"OCR0B_6 6"
.LASF461:
	.string	"ARM_LINUX_BOARD "
.LASF1208:
	.string	"ICES1 6"
.LASF196:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF803:
	.string	"PIND4 4"
.LASF676:
	.string	"SCNuLEAST16 \"u\""
.LASF1071:
	.string	"CAL5 5"
.LASF1313:
	.string	"ICR3L1 1"
.LASF1591:
	.string	"ADC_vect_num 24"
.LASF1733:
	.string	"AVR_STATUS_REG SREG"
.LASF1012:
	.string	"IVSEL 1"
.LASF893:
	.string	"EEAR9 1"
.LASF1357:
	.string	"COM2A1 7"
.LASF1393:
	.string	"TWBR0 0"
.LASF182:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF1382:
	.string	"OCR2_7 7"
.LASF763:
	.string	"PORTB0 0"
.LASF1634:
	.string	"FUSE_BOOTSZ1 (unsigned char)~_BV(2)"
.LASF1293:
	.string	"TCNT3L0 0"
.LASF758:
	.string	"DDB4 4"
.LASF691:
	.string	"SCNuPTR SCNu16"
.LASF2054:
	.string	"signal"
.LASF741:
	.string	"PORTA5 5"
.LASF817:
	.string	"PORTD0 0"
.LASF1745:
	.string	"FUSEMEM __attribute__((__used__, __section__ (\".fuse\")))"
.LASF1401:
	.string	"TWSR _SFR_MEM8(0xB9)"
.LASF1305:
	.string	"TCNT3H3 3"
.LASF1034:
	.string	"WDP3 5"
.LASF989:
	.string	"ACD 7"
.LASF610:
	.string	"PRId32 \"ld\""
.LASF1589:
	.string	"ANALOG_COMP_vect_num 23"
.LASF998:
	.string	"OCDR7 7"
.LASF950:
	.string	"GPIOR2 _SFR_IO8(0x2B)"
.LASF1471:
	.string	"UBRR0L _SFR_MEM8(0xC4)"
.LASF1457:
	.string	"RXEN0 4"
.LASF1774:
	.string	"ISR_NAKED __attribute__((naked))"
.LASF143:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF1338:
	.string	"OCR3AL7 7"
.LASF304:
	.string	"__UTA_IBIT__ 16"
.LASF1404:
	.string	"TWS3 3"
.LASF556:
	.string	"sinhf sinh"
.LASF595:
	.string	"_AVR_SFR_DEFS_H_ 1"
.LASF655:
	.string	"PRIuPTR PRIu16"
.LASF1626:
	.string	"FUSE_CKSEL3 (unsigned char)~_BV(3)"
.LASF4:
	.string	"__GNUC_PATCHLEVEL__ 2"
.LASF1155:
	.string	"ADCH3 3"
.LASF1268:
	.string	"OCR1AH6 6"
.LASF268:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF1924:
	.string	"EXPANSION_BOARD_AVAILABLE"
.LASF309:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF61:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF340:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF715:
	.string	"_AVR_IOXXX_H_ \"iom1284p.h\""
.LASF2000:
	.string	"SPI_SPEED_4MHZ {{0, 0, 0}}"
.LASF62:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF1091:
	.string	"PCINT4 4"
.LASF15:
	.string	"__SIZEOF_INT__ 2"
.LASF1184:
	.string	"ADC0D 0"
.LASF1813:
	.ascii	"__LPM_dword_tiny__(addr) (__ext"
	.string	"ension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint32_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1946:
	.string	"RC5_CODE_3 (0x1183 & RC5_MASK)"
.LASF957:
	.string	"GPIOR26 6"
.LASF1080:
	.string	"ISC00 0"
.LASF856:
	.string	"GPIOR0 _SFR_IO8(0x1E)"
.LASF264:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF1839:
	.string	"__ELPM(addr) __ELPM_enhanced__(addr)"
.LASF1621:
	.string	"FLASHEND 0x1FFFF"
.LASF2037:
	.string	"data"
.LASF330:
	.string	"__AVR_HAVE_ELPMX__ 1"
.LASF1792:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF398:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF519:
	.string	"UINT32_C(value) __CONCAT(value, UL)"
.LASF1250:
	.string	"ICR1H7 7"
.LASF1383:
	.string	"OCR2B _SFR_MEM8(0xB4)"
.LASF1850:
	.string	"pgm_read_dword(address_short) pgm_read_dword_near(address_short)"
.LASF1945:
	.string	"RC5_CODE_2 (0x1182 & RC5_MASK)"
.LASF2055:
	.string	"fifo_t"
.LASF1730:
	.string	"YH r29"
.LASF320:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF1078:
	.string	"PCIE3 3"
.LASF1676:
	.string	"PIN5 5"
.LASF1230:
	.string	"TCNT1H6 6"
.LASF977:
	.string	"SPDR4 4"
.LASF273:
	.string	"__SQ_FBIT__ 31"
.LASF2002:
	.string	"_OS_THREAD_H_ "
.LASF1833:
	.ascii	"__ELPM_dword_classic__(addr) (__extension__({ uint32_t __add"
	.ascii	"r32 = (uint32_t)(addr); uint32_t __result; __asm__ __volatil"
	.ascii	"e__ ( \"out %2, %C1\" \"\\n\\t\" \"mov r31, %B1\" \"\\n\\t\""
	.ascii	" \"mov r30, %A1\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %A0, "
	.ascii	"r0\" \"\\n\\t\" \"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\"
	.ascii	"n\\t\" \"adc r0, __zero_reg__\" \"\\n\\t\" \"out %2, r0\" \""
	.ascii	"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"in"
	.ascii	" r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r0, __"
	.ascii	"zero_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"el"
	.string	"pm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r0, __zero_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r0\", \"r30\", \"r31\" ); __result; }))"
.LASF511:
	.string	"SIG_ATOMIC_MAX INT8_MAX"
.LASF325:
	.string	"__AVR__ 1"
.LASF749:
	.string	"PINB4 4"
.LASF1618:
	.string	"XRAMEND RAMEND"
.LASF1032:
	.string	"WDE 3"
.LASF1105:
	.string	"PCINT16 0"
.LASF731:
	.string	"DDA4 4"
.LASF1124:
	.string	"OCIE2A 1"
.LASF1161:
	.string	"ADPS0 0"
.LASF1108:
	.string	"PCINT19 3"
.LASF1384:
	.string	"ASSR _SFR_MEM8(0xB6)"
.LASF1060:
	.string	"__AVR_HAVE_PRR0_PRTWI "
.LASF269:
	.string	"__QQ_FBIT__ 7"
.LASF1411:
	.string	"TWA0 1"
.LASF1260:
	.string	"OCR1AL7 7"
.LASF420:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF586:
	.string	"__AVR_LIBC_DATE_STRING__ \"20111229\""
.LASF1955:
	.string	"RC5_CODE_GREEN (0x01BA & RC5_MASK)"
.LASF1559:
	.string	"WDT_vect_num 8"
.LASF103:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF24:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF1982:
	.string	"BOT_2_SIM_AVAILABLE"
.LASF1943:
	.string	"RC5_CODE_0 (0x1180 & RC5_MASK)"
.LASF419:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF646:
	.string	"PRIuLEAST32 \"lu\""
.LASF1257:
	.string	"OCR1AL4 4"
.LASF1696:
	.string	"PB6 PORTB6"
.LASF1658:
	.string	"PORT7 7"
.LASF1156:
	.string	"ADCH4 4"
.LASF1682:
	.string	"PA0 PORTA0"
.LASF1017:
	.string	"SPMCSR _SFR_IO8(0x37)"
.LASF1368:
	.string	"TCNT2_2 2"
.LASF986:
	.string	"ACI 4"
.LASF81:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF1844:
	.string	"pgm_read_word_far(address_long) __ELPM_word((uint32_t)(address_long))"
.LASF36:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF1673:
	.string	"DD0 0"
.LASF533:
	.string	"M_PI_4 0.78539816339744830962"
.LASF943:
	.string	"GPIOR11 1"
.LASF303:
	.string	"__UTA_FBIT__ 48"
.LASF1805:
	.string	"PSTR(s) (__extension__({static const char __c[] PROGMEM = (s); &__c[0];}))"
.LASF1151:
	.string	"ADCH _SFR_MEM8(0x79)"
.LASF896:
	.string	"GTCCR _SFR_IO8(0x23)"
.LASF863:
	.string	"GPIOR06 6"
.LASF513:
	.string	"SIZE_MAX (__CONCAT(INT16_MAX, U))"
.LASF1222:
	.string	"TCNT1L7 7"
.LASF600:
	.string	"PRIdFAST8 \"d\""
.LASF692:
	.string	"SCNxPTR SCNx16"
.LASF635:
	.string	"PRIuFAST16 \"u\""
.LASF723:
	.string	"PINA5 5"
.LASF1766:
	.string	"ISR(vector,...) void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
.LASF230:
	.string	"__SACCUM_IBIT__ 8"
.LASF575:
	.string	"roundf round"
.LASF960:
	.string	"SPR0 0"
.LASF1773:
	.string	"ISR_NOBLOCK __attribute__((interrupt))"
.LASF1058:
	.string	"__AVR_HAVE_PRR0_PRTIM0 "
.LASF2043:
	.string	"nextSchedule"
.LASF1991:
	.string	"SPEED_LOG_AVAILABLE"
.LASF1162:
	.string	"ADPS1 1"
.LASF2065:
	.string	"dummy_signal"
.LASF503:
	.string	"INTPTR_MAX INT16_MAX"
.LASF818:
	.string	"PORTD1 1"
.LASF813:
	.string	"DDD5 5"
.LASF1132:
	.string	"PCINT24 0"
.LASF2063:
	.string	"tickCount"
.LASF796:
	.string	"PORTC6 6"
.LASF1608:
	.string	"TIMER3_COMPA_vect _VECTOR(32)"
.LASF2029:
	.string	"long int"
.LASF1425:
	.string	"TWD6 6"
.LASF1322:
	.string	"ICR3H1 1"
.LASF873:
	.string	"EEDR0 0"
.LASF898:
	.string	"PSRASY 1"
.LASF1824:
	.string	"pgm_read_dword_near(address_short) __LPM_dword((uint16_t)(address_short))"
.LASF972:
	.string	"SPDR _SFR_IO8(0x2E)"
.LASF96:
	.string	"__INT8_C(c) c"
.LASF488:
	.string	"INT_LEAST64_MAX INT64_MAX"
.LASF1585:
	.string	"USART0_UDRE_vect_num 21"
.LASF1930:
	.string	"DOOR_CLOSE"
.LASF1148:
	.string	"ADCL5 5"
.LASF2017:
	.string	"OS_CONTEXT_SIZE 19"
.LASF1302:
	.string	"TCNT3H0 0"
.LASF1374:
	.string	"OCR2A _SFR_MEM8(0xB3)"
.LASF1026:
	.string	"RAMPZ _SFR_IO8(0x3B)"
.LASF510:
	.string	"PTRDIFF_MIN INT16_MIN"
.LASF707:
	.string	"_SFR_WORD(sfr) _MMIO_WORD(_SFR_ADDR(sfr))"
.LASF1654:
	.string	"SLEEP_MODE_PWR_SAVE (0x03<<1)"
.LASF130:
	.string	"__FLT_MAX_EXP__ 128"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF170:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF1686:
	.string	"PA4 PORTA4"
.LASF1795:
	.string	"_GCC_SIZE_T "
.LASF1571:
	.string	"TIMER1_COMPB_vect_num 14"
.LASF555:
	.string	"coshf cosh"
.LASF1709:
	.string	"PD3 PORTD3"
.LASF140:
	.string	"__DBL_MANT_DIG__ 24"
.LASF1530:
	.string	"UBRR1_7 7"
.LASF299:
	.string	"__USA_FBIT__ 16"
.LASF665:
	.string	"SCNdLEAST32 \"ld\""
.LASF1347:
	.string	"OCR3AH7 7"
.LASF326:
	.string	"AVR 1"
.LASF643:
	.string	"PRIoLEAST32 \"lo\""
.LASF429:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF718:
	.string	"PINA0 0"
.LASF1887:
	.string	"UART_LINUX_PORT \"/dev/ttyAMA0\""
.LASF762:
	.string	"PORTB _SFR_IO8(0x05)"
.LASF745:
	.string	"PINB0 0"
.LASF1957:
	.string	"RC5_CODE_YELLOW (0x01B1 & RC5_MASK)"
.LASF1472:
	.string	"UBRR0_0 0"
.LASF478:
	.string	"UINT64_MAX (__CONCAT(INT64_MAX, U) * 2ULL + 1ULL)"
.LASF424:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF1849:
	.string	"pgm_read_word(address_short) pgm_read_word_near(address_short)"
.LASF122:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF156:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF2059:
	.string	"SPI_SlaveInit"
.LASF940:
	.string	"OCR0B_7 7"
.LASF1281:
	.string	"CS30 0"
.LASF804:
	.string	"PIND5 5"
.LASF1599:
	.string	"USART1_RX_vect_num 28"
.LASF1072:
	.string	"CAL6 6"
.LASF403:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF1645:
	.string	"__LOCK_BITS_EXIST "
.LASF648:
	.string	"PRIx32 \"lx\""
.LASF1944:
	.string	"RC5_CODE_1 (0x1181 & RC5_MASK)"
.LASF210:
	.string	"__LFRACT_IBIT__ 0"
.LASF781:
	.string	"DDC0 0"
.LASF1860:
	.string	"DISTSENSOR_POS_FW 47"
.LASF1394:
	.string	"TWBR1 1"
.LASF584:
	.string	"__AVR_LIBC_VERSION_STRING__ \"1.8.0svn\""
.LASF1622:
	.string	"FUSE_MEMORY_SIZE 3"
.LASF764:
	.string	"PORTB1 1"
.LASF440:
	.string	"LOG_STDOUT_AVAILABLE "
.LASF1294:
	.string	"TCNT3L1 1"
.LASF759:
	.string	"DDB5 5"
.LASF1717:
	.string	"SPH _SFR_IO8(0x3E)"
.LASF852:
	.string	"EIMSK _SFR_IO8(0x1D)"
.LASF1130:
	.string	"ICIE3 5"
.LASF924:
	.string	"OCR0A_0 0"
.LASF1809:
	.ascii	"__LPM_word_classic__(addr) (__ex"
	.string	"tension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF827:
	.string	"OCF0A 1"
.LASF807:
	.string	"DDRD _SFR_IO8(0x0A)"
.LASF899:
	.string	"TSM 7"
.LASF1574:
	.string	"TIMER1_OVF_vect _VECTOR(15)"
.LASF270:
	.string	"__QQ_IBIT__ 0"
.LASF651:
	.string	"PRIX32 \"lX\""
.LASF1838:
	.ascii	"__ELPM_float_xmega__(addr) (__extension__({ uint32_t __addr3"
	.ascii	"2 = (uint32_t)(addr); float __result; __asm__ __volatile__ ("
	.ascii	" \"in __tmp_reg__, "
	.string	"%2\" \"\\n\\t\" \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, Z+\" \"\\n\\t\" \"elpm %C0, Z+\" \"\\n\\t\" \"elpm %D0, Z\" \"\\n\\t\" \"out %2, __tmp_reg__\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
.LASF1989:
	.string	"EEPROM_EMU_AVAILABLE"
.LASF474:
	.string	"INT32_MIN (-INT32_MAX - 1L)"
.LASF1508:
	.string	"RXEN1 4"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF1520:
	.string	"UMSEL11 7"
.LASF1405:
	.string	"TWS4 4"
.LASF1531:
	.string	"UBRR1H _SFR_MEM8(0xCD)"
.LASF1853:
	.string	"pgm_get_far_address(var) ({ uint_farptr_t tmp; __asm__ __volatile__( \"ldi\t%A0, lo8(%1)\" \"\\n\\t\" \"ldi\t%B0, hi8(%1)\" \"\\n\\t\" \"ldi\t%C0, hh8(%1)\" \"\\n\\t\" \"clr\t%D0\" \"\\n\\t\" : \"=d\" (tmp) : \"p\" (&(var)) ); tmp; })"
.LASF360:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF1269:
	.string	"OCR1AH7 7"
.LASF593:
	.string	"_AVR_INTERRUPT_H_ "
.LASF592:
	.string	"__HAS_DELAY_CYCLES 1"
.LASF551:
	.string	"ceilf ceil"
.LASF1014:
	.string	"BODSE 5"
.LASF380:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF318:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF1970:
	.string	"RC5_VOL_MINUS (0x1191 & RC5_MASK)"
.LASF1092:
	.string	"PCINT5 5"
.LASF427:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF958:
	.string	"GPIOR27 7"
.LASF221:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF1375:
	.string	"OCR2_0 0"
.LASF1888:
	.string	"BOT_RESET_GPIO \"/sys/class/gpio/gpio17/value\""
.LASF375:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF499:
	.string	"UINT_FAST32_MAX UINT32_MAX"
.LASF1179:
	.string	"MUX4 4"
.LASF1044:
	.string	"PRADC 0"
.LASF404:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF206:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF433:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF582:
	.string	"BUILTINS_H_ "
.LASF1710:
	.string	"PD4 PORTD4"
.LASF984:
	.string	"ACIC 2"
.LASF1785:
	.string	"_T_SIZE_ "
.LASF129:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF1594:
	.string	"EE_READY_vect _VECTOR(25)"
.LASF1998:
	.string	"SPI_H_ "
.LASF1675:
	.string	"PIN6 6"
.LASF1231:
	.string	"TCNT1H7 7"
.LASF978:
	.string	"SPDR5 5"
.LASF2050:
	.string	"pwrite"
.LASF772:
	.string	"PINC0 0"
.LASF505:
	.string	"UINTPTR_MAX UINT16_MAX"
.LASF286:
	.string	"__UDQ_IBIT__ 0"
.LASF1554:
	.string	"PCINT1_vect _VECTOR(5)"
.LASF1329:
	.string	"OCR3A _SFR_MEM16(0x98)"
.LASF231:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF1203:
	.string	"CS10 0"
.LASF883:
	.string	"EEAR0 0"
.LASF750:
	.string	"PINB5 5"
.LASF1877:
	.string	"ENC_CORRECT_R 5"
.LASF1111:
	.string	"PCINT22 6"
.LASF833:
	.string	"ICF1 5"
.LASF516:
	.string	"INT16_C(value) value"
.LASF261:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF727:
	.string	"DDA0 0"
.LASF608:
	.string	"PRIiLEAST16 \"i\""
.LASF173:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF988:
	.string	"ACBG 6"
.LASF1352:
	.string	"WGM20 0"
.LASF1331:
	.string	"OCR3AL0 0"
.LASF623:
	.string	"PRIuFAST8 \"u\""
.LASF530:
	.string	"M_LN10 2.30258509299404568402"
.LASF629:
	.string	"PRIXFAST8 \"X\""
.LASF1563:
	.string	"TIMER2_COMPB_vect_num 10"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF1744:
	.string	"_AVR_FUSE_H_ 1"
.LASF1743:
	.string	"AVR_RAMPZ_ADDR _SFR_IO_ADDR(RAMPZ)"
.LASF1195:
	.string	"TCCR1A _SFR_MEM8(0x80)"
.LASF612:
	.string	"PRIdFAST32 \"ld\""
.LASF702:
	.string	"_SFR_MEM_ADDR(sfr) ((uint16_t) &(sfr))"
.LASF1769:
	.string	"ISR_ALIAS(vector,tgt) void vector (void) __attribute__((signal, naked, __INTR_ATTRS)); void vector (void) { asm volatile (\"jmp \" __STRINGIFY(tgt) ::); }"
.LASF1487:
	.string	"UDR0_1 1"
.LASF1488:
	.string	"UDR0_2 2"
.LASF2068:
	.string	"spi_out_buf"
.LASF234:
	.string	"__USACCUM_FBIT__ 8"
.LASF1703:
	.string	"PC5 PORTC5"
.LASF1369:
	.string	"TCNT2_3 3"
.LASF317:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF46:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF203:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF869:
	.string	"EERIE 3"
.LASF1672:
	.string	"DD1 1"
.LASF1027:
	.string	"RAMPZ0 0"
.LASF104:
	.string	"__UINT8_C(c) c"
.LASF1361:
	.string	"CS22 2"
.LASF1544:
	.string	"UDR1_7 7"
.LASF944:
	.string	"GPIOR12 2"
.LASF1667:
	.string	"DD6 6"
.LASF1252:
	.string	"OCR1AL _SFR_MEM8(0x88)"
.LASF1521:
	.string	"UBRR1 _SFR_MEM16(0xCC)"
.LASF307:
	.string	"__GNUC_GNU_INLINE__ 1"
.LASF667:
	.string	"SCNi32 \"li\""
.LASF864:
	.string	"GPIOR07 7"
.LASF537:
	.string	"M_SQRT2 1.41421356237309504880"
.LASF1861:
	.string	"DISTSENSOR_POS_SW 32"
.LASF217:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF1829:
	.ascii	"__ELPM_xmega__(addr) (__extension__({ uint32_t __addr32 = (u"
	.ascii	"int32_t)"
	.string	"(addr); uint8_t __result; __asm__ __volatile__ ( \"in __tmp_reg__, %2\" \"\\n\\t\" \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %0, Z+\" \"\\n\\t\" \"out %2, __tmp_reg__\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
.LASF1025:
	.string	"SPMIE 7"
.LASF498:
	.string	"INT_FAST32_MIN INT32_MIN"
.LASF147:
	.string	"__DBL_MAX__ ((double)3.40282347e+38L)"
.LASF226:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF1018:
	.string	"SPMEN 0"
.LASF337:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF362:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF1789:
	.string	"_BSD_SIZE_T_ "
.LASF961:
	.string	"SPR1 1"
.LASF428:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF2025:
	.string	"unsigned char"
.LASF704:
	.string	"_SFR_IO_REG_P(sfr) (_SFR_MEM_ADDR(sfr) < 0x40 + __SFR_OFFSET)"
.LASF391:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF74:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF30:
	.string	"__SIZEOF_POINTER__ 2"
.LASF1448:
	.string	"FE0 4"
.LASF697:
	.string	"_SFR_MEM8(mem_addr) _MMIO_BYTE(mem_addr)"
.LASF1480:
	.string	"UBRR0H _SFR_MEM8(0xC5)"
.LASF1956:
	.string	"RC5_CODE_RED (0x01BD & RC5_MASK)"
.LASF819:
	.string	"PORTD2 2"
.LASF25:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF814:
	.string	"DDD6 6"
.LASF1729:
	.string	"YL r28"
.LASF105:
	.string	"__UINT_LEAST16_MAX__ 65535U"
.LASF1879:
	.string	"MOUSE_FULL_TURN 1600"
.LASF1972:
	.string	"RC5_CH_MINUS (0x11A1 & RC5_MASK)"
.LASF846:
	.string	"PCIF2 2"
.LASF797:
	.string	"PORTC7 7"
.LASF1778:
	.string	"PACKED_FORCE __attribute__ ((packed))"
.LASF1426:
	.string	"TWD7 7"
.LASF1114:
	.string	"TOIE0 0"
.LASF127:
	.string	"__FLT_DIG__ 6"
.LASF401:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF874:
	.string	"EEDR1 1"
.LASF1936:
	.string	"RC5CODE_H_ "
.LASF101:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF1116:
	.string	"OCIE0B 2"
.LASF1534:
	.string	"UBRR1_10 2"
.LASF1199:
	.string	"COM1B1 5"
.LASF257:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF220:
	.string	"__LLFRACT_IBIT__ 0"
.LASF1625:
	.string	"FUSE_CKSEL2 (unsigned char)~_BV(2)"
.LASF901:
	.string	"WGM00 0"
.LASF1303:
	.string	"TCNT3H1 1"
.LASF742:
	.string	"PORTA6 6"
.LASF769:
	.string	"PORTB6 6"
.LASF1066:
	.string	"CAL0 0"
.LASF823:
	.string	"PORTD6 6"
.LASF1892:
	.string	"CAM_LEFT 10"
.LASF1889:
	.string	"EXPANSION_BOARD_AVAILABLE "
.LASF214:
	.string	"__ULFRACT_FBIT__ 32"
.LASF22:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF1846:
	.string	"pgm_read_float_far(address_long) __ELPM_float((uint32_t)(address_long))"
.LASF1532:
	.string	"UBRR1_8 0"
.LASF1539:
	.string	"UDR1_2 2"
.LASF1969:
	.string	"RC5_VOL_PLUS (0x1190 & RC5_MASK)"
.LASF599:
	.string	"PRIdLEAST8 \"d\""
.LASF186:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF444:
	.string	"DISPLAY_AVAILABLE "
.LASF2067:
	.string	"spi_in_buf"
.LASF1894:
	.string	"CAM_CENTER 120"
.LASF1925:
	.string	"EXPANSION_BOARD_MOD_AVAILABLE"
.LASF1988:
	.string	"MAP_2_SIM_AVAILABLE"
.LASF843:
	.string	"PCIFR _SFR_IO8(0x1B)"
.LASF1980:
	.string	"COMMAND_AVAILABLE "
.LASF116:
	.string	"__UINT_FAST16_MAX__ 65535U"
.LASF1529:
	.string	"UBRR1_6 6"
.LASF1473:
	.string	"UBRR0_1 1"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF1002:
	.string	"SM1 2"
.LASF413:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF1827:
	.ascii	"__ELPM_classic__(addr) (__extension__({ uint32_t __addr32 = "
	.ascii	"("
	.string	"uint32_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"out %2, %C1\" \"\\n\\t\" \"mov r31, %B1\" \"\\n\\t\" \"mov r30, %A1\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r0\", \"r30\", \"r31\" ); __result; }))"
.LASF1603:
	.string	"USART1_TX_vect_num 30"
.LASF710:
	.string	"_VECTOR(N) __vector_ ## N"
.LASF189:
	.string	"__SFRACT_FBIT__ 7"
.LASF373:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF1847:
	.string	"pgm_read_ptr_far(address_long) (void*)__ELPM_word((uint32_t)(address_long))"
.LASF1282:
	.string	"CS31 1"
.LASF284:
	.string	"__USQ_IBIT__ 0"
.LASF837:
	.string	"OCF2B 2"
.LASF1570:
	.string	"TIMER1_COMPA_vect _VECTOR(13)"
.LASF1073:
	.string	"CAL7 7"
.LASF1315:
	.string	"ICR3L3 3"
.LASF1553:
	.string	"PCINT1_vect_num 5"
.LASF17:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF598:
	.string	"PRId8 \"d\""
.LASF630:
	.string	"PRIo16 \"o\""
.LASF782:
	.string	"DDC1 1"
.LASF51:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF1395:
	.string	"TWBR2 2"
.LASF1878:
	.string	"MOUSE_CPI 415"
.LASF1106:
	.string	"PCINT17 1"
.LASF765:
	.string	"PORTB2 2"
.LASF1295:
	.string	"TCNT3L2 2"
.LASF760:
	.string	"DDB6 6"
.LASF925:
	.string	"OCR0A_1 1"
.LASF1446:
	.string	"UPE0 2"
.LASF1777:
	.string	"PACKED __attribute__ ((packed))"
.LASF828:
	.string	"OCF0B 2"
.LASF1090:
	.string	"PCINT3 3"
.LASF338:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF1881:
	.string	"STUCK_DIFF 100"
.LASF1165:
	.string	"ADIF 4"
.LASF1086:
	.string	"PCMSK0 _SFR_MEM8(0x6B)"
.LASF1233:
	.string	"ICR1L _SFR_MEM8(0x86)"
.LASF93:
	.string	"__UINT32_MAX__ 4294967295UL"
.LASF1831:
	.ascii	"__ELPM_word_enhanced__(addr) (__extension__({ uin"
	.string	"t32_t __addr32 = (uint32_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
.LASF1273:
	.string	"TCCR3A _SFR_MEM8(0x90)"
.LASF1959:
	.string	"RC5_CODE_I_II (0x11AB & RC5_MASK)"
.LASF512:
	.string	"SIG_ATOMIC_MIN INT8_MIN"
.LASF1987:
	.string	"DISPLAY_REMOTE_AVAILABLE"
.LASF1550:
	.string	"INT2_vect _VECTOR(3)"
.LASF1494:
	.string	"UCSR1A _SFR_MEM8(0xC8)"
.LASF1637:
	.string	"FUSE_SPIEN (unsigned char)~_BV(5)"
.LASF979:
	.string	"SPDR6 6"
.LASF354:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF2040:
	.string	"os_signal_t"
.LASF126:
	.string	"__FLT_MANT_DIG__ 24"
.LASF2042:
	.string	"stack"
.LASF1093:
	.string	"PCINT6 6"
.LASF254:
	.string	"__ULACCUM_FBIT__ 32"
.LASF1214:
	.string	"TCNT1L _SFR_MEM8(0x84)"
.LASF111:
	.string	"__INT_FAST8_MAX__ 127"
.LASF557:
	.string	"tanhf tanh"
.LASF626:
	.string	"PRIxFAST8 \"x\""
.LASF1406:
	.string	"TWS5 5"
.LASF449:
	.string	"SPEED_CONTROL_AVAILABLE "
.LASF2058:
	.string	"SPI_MasterInit"
.LASF659:
	.string	"SCNdLEAST16 \"d\""
.LASF1548:
	.string	"INT1_vect _VECTOR(2)"
.LASF1278:
	.string	"COM3A0 6"
.LASF1562:
	.string	"TIMER2_COMPA_vect _VECTOR(9)"
.LASF1859:
	.string	"WHEEL_TO_WHEEL_DIAMETER 97.2"
.LASF395:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF550:
	.string	"floorf floor"
.LASF255:
	.string	"__ULACCUM_IBIT__ 32"
.LASF844:
	.string	"PCIF0 0"
.LASF1806:
	.string	"__LPM_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) : \"r0\" ); __result; }))"
.LASF2049:
	.string	"pread"
.LASF1897:
	.string	"COL_NEAR 300"
.LASF171:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF128:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF773:
	.string	"PINC1 1"
.LASF118:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF1800:
	.string	"__ATTR_PROGMEM__ __attribute__((__progmem__))"
.LASF28:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1204:
	.string	"CS11 1"
.LASF110:
	.string	"__UINT64_C(c) c ## ULL"
.LASF884:
	.string	"EEAR1 1"
.LASF200:
	.string	"__FRACT_IBIT__ 0"
.LASF125:
	.string	"__FLT_RADIX__ 2"
.LASF1112:
	.string	"PCINT23 7"
.LASF321:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF991:
	.string	"OCDR0 0"
.LASF1163:
	.string	"ADPS2 2"
.LASF169:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF389:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF728:
	.string	"DDA1 1"
.LASF853:
	.string	"INT0 0"
.LASF1584:
	.string	"USART0_RX_vect _VECTOR(20)"
.LASF688:
	.string	"SCNxLEAST32 \"lx\""
.LASF1353:
	.string	"WGM21 1"
.LASF92:
	.string	"__UINT16_MAX__ 65535U"
.LASF1779:
	.string	"__PGMSPACE_H_ 1"
.LASF1413:
	.string	"TWA2 3"
.LASF1973:
	.string	"RC5_CODE_UP RC5_CODE_STILL"
.LASF604:
	.string	"PRId16 \"d\""
.LASF363:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF2016:
	.string	"OS_IDLE_STACKSIZE 64"
.LASF897:
	.string	"PSRSYNC 0"
.LASF1690:
	.string	"PB0 PORTB0"
.LASF891:
	.string	"EEARH _SFR_IO8(0x22)"
.LASF300:
	.string	"__USA_IBIT__ 16"
.LASF243:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF700:
	.string	"_SFR_IO8(io_addr) _MMIO_BYTE((io_addr) + __SFR_OFFSET)"
.LASF252:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF705:
	.string	"_SFR_ADDR(sfr) _SFR_MEM_ADDR(sfr)"
.LASF816:
	.string	"PORTD _SFR_IO8(0x0B)"
.LASF1082:
	.string	"ISC10 2"
.LASF1158:
	.string	"ADCH6 6"
.LASF1370:
	.string	"TCNT2_4 4"
.LASF174:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF90:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF72:
	.string	"__INT_MAX__ 32767"
.LASF1485:
	.string	"UDR0 _SFR_MEM8(0xC6)"
.LASF146:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF1635:
	.string	"FUSE_EESAVE (unsigned char)~_BV(3)"
.LASF2046:
	.string	"Tcb_t"
.LASF1671:
	.string	"DD2 2"
.LASF60:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF945:
	.string	"GPIOR13 3"
.LASF1173:
	.string	"ACME 6"
.LASF353:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF569:
	.string	"signbitf signbit"
.LASF1981:
	.string	"BOT_2_BOT_AVAILABLE"
.LASF1095:
	.string	"PCMSK1 _SFR_MEM8(0x6C)"
.LASF485:
	.string	"INT_LEAST32_MAX INT32_MAX"
.LASF2048:
	.string	"size"
.LASF1632:
	.string	"FUSE_BOOTRST (unsigned char)~_BV(0)"
.LASF500:
	.string	"INT_FAST64_MAX INT64_MAX"
.LASF1752:
	.string	"LB_MODE_3 (0xFC)"
.LASF285:
	.string	"__UDQ_FBIT__ 64"
.LASF1623:
	.string	"FUSE_CKSEL0 (unsigned char)~_BV(0)"
.LASF1588:
	.string	"USART0_TX_vect _VECTOR(22)"
.LASF805:
	.string	"PIND6 6"
.LASF1950:
	.string	"RC5_CODE_7 (0x1187 & RC5_MASK)"
.LASF601:
	.string	"PRIi8 \"i\""
.LASF1841:
	.string	"__ELPM_dword(addr) __ELPM_dword_enhanced__(addr)"
.LASF1020:
	.string	"PGWRT 2"
.LASF2036:
	.string	"spi2x"
.LASF1750:
	.string	"LB_MODE_1 (0xFF)"
.LASF1499:
	.string	"FE1 4"
.LASF1869:
	.string	"PID_TIME 333"
.LASF1742:
	.string	"AVR_RAMPZ_REG RAMPZ"
.LASF1691:
	.string	"PB1 PORTB1"
.LASF820:
	.string	"PORTD3 3"
.LASF815:
	.string	"DDD7 7"
.LASF1822:
	.string	"pgm_read_byte_near(address_short) __LPM((uint16_t)(address_short))"
.LASF719:
	.string	"PINA1 1"
.LASF1748:
	.string	"LOCKMEM __attribute__((__used__, __section__ (\".lock\")))"
.LASF1167:
	.string	"ADSC 6"
.LASF544:
	.string	"tanf tan"
.LASF1684:
	.string	"PA2 PORTA2"
.LASF1118:
	.string	"TOIE1 0"
.LASF1751:
	.string	"LB_MODE_2 (0xFE)"
.LASF1324:
	.string	"ICR3H3 3"
.LASF201:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF1628:
	.string	"FUSE_SUT1 (unsigned char)~_BV(5)"
.LASF1647:
	.string	"__BOOT_LOCK_BITS_1_EXIST "
.LASF489:
	.string	"INT_LEAST64_MIN INT64_MIN"
.LASF650:
	.string	"PRIxFAST32 \"lx\""
.LASF1311:
	.string	"ICR3L _SFR_MEM8(0x96)"
.LASF1150:
	.string	"ADCL7 7"
.LASF315:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF902:
	.string	"WGM01 1"
.LASF1304:
	.string	"TCNT3H2 2"
.LASF1555:
	.string	"PCINT2_vect_num 6"
.LASF1772:
	.string	"ISR_BLOCK "
.LASF430:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF1514:
	.string	"UCSZ10 1"
.LASF281:
	.string	"__UHQ_FBIT__ 16"
.LASF2026:
	.string	"uint8_t"
.LASF1605:
	.string	"TIMER3_CAPT_vect_num 31"
.LASF1567:
	.string	"TIMER1_CAPT_vect_num 12"
.LASF1533:
	.string	"UBRR1_9 1"
.LASF1907:
	.string	"PRIO_VISIBLE_MIN 3"
.LASF495:
	.string	"INT_FAST16_MIN INT16_MIN"
.LASF1706:
	.string	"PD0 PORTD0"
.LASF1884:
	.string	"BPS_NO_DATA 0xffff"
.LASF1143:
	.string	"ADCL0 0"
.LASF184:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF1461:
	.string	"UCSR0C _SFR_MEM8(0xC2)"
.LASF2012:
	.string	"_OS_SCHEDULER_H_ "
.LASF1292:
	.string	"TCNT3L _SFR_MEM8(0x94)"
.LASF400:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF1764:
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
.LASF1636:
	.string	"FUSE_WDTON (unsigned char)~_BV(4)"
.LASF1699:
	.string	"PC1 PORTC1"
.LASF1436:
	.string	"TWAM0 1"
.LASF905:
	.string	"COM0A0 6"
.LASF332:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF751:
	.string	"PINB6 6"
.LASF907:
	.string	"TCCR0B _SFR_IO8(0x25)"
.LASF347:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF746:
	.string	"PINB1 1"
.LASF1692:
	.string	"PB2 PORTB2"
.LASF416:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF541:
	.string	"__ATTR_CONST__ __attribute__((__const__))"
.LASF658:
	.string	"SCNd16 \"d\""
.LASF1931:
	.string	"DOOR_OPEN"
.LASF1003:
	.string	"SM2 3"
.LASF1685:
	.string	"PA3 PORTA3"
.LASF99:
	.string	"__INT_LEAST32_MAX__ 2147483647L"
.LASF1962:
	.string	"RC5_CODE_PLAY (0x11B5 & RC5_MASK)"
.LASF1614:
	.string	"SPM_PAGESIZE 256"
.LASF1283:
	.string	"CS32 2"
.LASF1170:
	.string	"ADTS0 0"
.LASF806:
	.string	"PIND7 7"
.LASF454:
	.string	"ENA_AVAILABLE "
.LASF1316:
	.string	"ICR3L4 4"
.LASF352:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF393:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF679:
	.string	"SCNxLEAST16 \"x\""
.LASF351:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF199:
	.string	"__FRACT_FBIT__ 15"
.LASF1431:
	.string	"TWSTO 4"
.LASF783:
	.string	"DDC2 2"
.LASF919:
	.string	"TCNT0_4 4"
.LASF1396:
	.string	"TWBR3 3"
.LASF1780:
	.string	"__need_size_t "
.LASF766:
	.string	"PORTB3 3"
.LASF698:
	.string	"_SFR_MEM16(mem_addr) _MMIO_WORD(mem_addr)"
.LASF1296:
	.string	"TCNT3L3 3"
.LASF761:
	.string	"DDB7 7"
.LASF1864:
	.string	"PID_Kp 70"
.LASF926:
	.string	"OCR0A_2 2"
.LASF1497:
	.string	"UPE1 2"
.LASF1707:
	.string	"PD1 PORTD1"
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF1582:
	.string	"SPI_STC_vect _VECTOR(19)"
.LASF396:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF1867:
	.string	"PID_Ta 1"
.LASF319:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1700:
	.string	"PC2 PORTC2"
.LASF1788:
	.string	"_SIZE_T_ "
.LASF422:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF83:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF1407:
	.string	"TWS6 6"
.LASF564:
	.string	"powf pow"
.LASF1189:
	.string	"ADC5D 5"
.LASF1693:
	.string	"PB3 PORTB3"
.LASF1339:
	.string	"OCR3AH _SFR_MEM8(0x99)"
.LASF1798:
	.string	"__need_size_t"
.LASF1190:
	.string	"ADC6D 6"
.LASF1903:
	.string	"STARTPAD1 0x2B2"
.LASF227:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF361:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF1960:
	.string	"RC5_CODE_TV_VCR (0x11B8 & RC5_MASK)"
.LASF288:
	.string	"__UTQ_IBIT__ 0"
.LASF547:
	.string	"cbrtf cbrt"
.LASF218:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF289:
	.string	"__HA_FBIT__ 7"
.LASF1094:
	.string	"PCINT7 7"
.LASF678:
	.string	"SCNx16 \"x\""
.LASF246:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF397:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF66:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF642:
	.string	"PRIo32 \"lo\""
.LASF1630:
	.string	"FUSE_CKDIV8 (unsigned char)~_BV(7)"
.LASF185:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF1643:
	.string	"FUSE_BODLEVEL2 (unsigned char)~_BV(2)"
.LASF669:
	.string	"SCNiFAST32 \"li\""
.LASF462:
	.string	"GLOBAL_H_ "
.LASF1762:
	.string	"__STRINGIFY(x) #x"
.LASF175:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF121:
	.string	"__GCC_IEC_559 0"
.LASF1079:
	.string	"EICRA _SFR_MEM8(0x69)"
.LASF139:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF1511:
	.string	"RXCIE1 7"
.LASF524:
	.string	"_GCC_WRAP_STDINT_H "
.LASF680:
	.string	"SCNxFAST16 \"x\""
.LASF985:
	.string	"ACIE 3"
.LASF845:
	.string	"PCIF1 1"
.LASF328:
	.string	"__AVR_HAVE_RAMPZ__ 1"
.LASF1:
	.string	"__STDC_HOSTED__ 1"
.LASF1450:
	.string	"TXC0 6"
.LASF744:
	.string	"PINB _SFR_IO8(0x03)"
.LASF1708:
	.string	"PD2 PORTD2"
.LASF674:
	.string	"SCNoFAST16 \"o\""
.LASF452:
	.string	"ADC_AVAILABLE "
.LASF1010:
	.string	"MCUCR _SFR_IO8(0x35)"
.LASF1263:
	.string	"OCR1AH1 1"
.LASF980:
	.string	"SPDR7 7"
.LASF774:
	.string	"PINC2 2"
.LASF1515:
	.string	"UCSZ11 2"
.LASF1701:
	.string	"PC3 PORTC3"
.LASF1358:
	.string	"TCCR2B _SFR_MEM8(0xB1)"
.LASF1205:
	.string	"CS12 2"
.LASF262:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF885:
	.string	"EEAR2 2"
.LASF100:
	.string	"__INT32_C(c) c ## L"
.LASF159:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF1064:
	.string	"__AVR_HAVE_PRR1_PRTIM3 "
.LASF1979:
	.string	"UART_AVAILABLE "
.LASF27:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF8:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF992:
	.string	"OCDR1 1"
.LASF1808:
	.string	"__LPM_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm %0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF1631:
	.string	"LFUSE_DEFAULT (FUSE_CKSEL0 & FUSE_CKSEL2 & FUSE_CKSEL3 & FUSE_SUT0 & FUSE_SUT1 & FUSE_CKDIV8)"
.LASF849:
	.string	"INTF0 0"
.LASF964:
	.string	"MSTR 4"
.LASF854:
	.string	"INT1 1"
.LASF2007:
	.string	"TIMER_GET_TICKCOUNT_16 timer_get_tickcount_16()"
.LASF59:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF239:
	.string	"__ACCUM_FBIT__ 15"
.LASF1362:
	.string	"WGM22 3"
.LASF647:
	.string	"PRIuFAST32 \"lu\""
.LASF1414:
	.string	"TWA3 4"
.LASF1616:
	.string	"RAMEND 0x40FF"
.LASF445:
	.string	"KEYPAD_AVAILABLE "
.LASF135:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF282:
	.string	"__UHQ_IBIT__ 0"
.LASF108:
	.string	"__UINT32_C(c) c ## UL"
.LASF699:
	.string	"_SFR_MEM32(mem_addr) _MMIO_DWORD(mem_addr)"
.LASF1627:
	.string	"FUSE_SUT0 (unsigned char)~_BV(4)"
.LASF1807:
	.string	"__LPM_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint8_t __result; __asm__ ( \"ld %0, z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF232:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF2075:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=2 -mno-skip-bug -mmcu=avr51 -g3 -O0 -Os -fmessage-length=0"
.LASF1489:
	.string	"UDR0_3 3"
.LASF561:
	.string	"atan2f atan2"
.LASF439:
	.string	"CT_BOT_H_ "
.LASF1083:
	.string	"ISC11 3"
.LASF1458:
	.string	"UDRIE0 5"
.LASF1159:
	.string	"ADCH7 7"
.LASF240:
	.string	"__ACCUM_IBIT__ 16"
.LASF711:
	.string	"bit_is_set(sfr,bit) (_SFR_BYTE(sfr) & _BV(bit))"
.LASF1801:
	.string	"__ATTR_PURE__ __attribute__((__pure__))"
.LASF838:
	.string	"TIFR3 _SFR_IO8(0x18)"
.LASF339:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF514:
	.string	"INT8_C(value) ((int8_t) value)"
.LASF1697:
	.string	"PB7 PORTB7"
.LASF1462:
	.string	"UCPOL0 0"
.LASF571:
	.string	"fmaf fma"
.LASF712:
	.string	"bit_is_clear(sfr,bit) (!(_SFR_BYTE(sfr) & _BV(bit)))"
.LASF1251:
	.string	"OCR1A _SFR_MEM16(0x88)"
.LASF1653:
	.string	"SLEEP_MODE_PWR_DOWN (0x02<<1)"
.LASF2041:
	.string	"value"
.LASF1914:
	.string	"PWMSTART_L"
.LASF1830:
	.ascii	"__ELPM_word_classic__(addr) (__extension__({ uint32_t __addr"
	.ascii	"32 = (uint32_t)(addr); uint16_t __result; __asm__ __volatile"
	.ascii	"__ ( \"out %2, %C1\" \"\\n\\t\" \"mov r31, %B1\" \"\\n\\t\" "
	.ascii	"\"mov r30, %A1\" \"\\n\\t\" \"el"
	.string	"pm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r0, __zero_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r0\", \"r30\", \"r31\" ); __result; }))"
.LASF682:
	.string	"SCNoLEAST32 \"lo\""
.LASF1243:
	.string	"ICR1H0 0"
.LASF1915:
	.string	"PWMSTART_R"
.LASF406:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF1650:
	.string	"SIGNATURE_2 0x05"
.LASF1451:
	.string	"RXC0 7"
.LASF6:
	.string	"__ATOMIC_RELAXED 0"
.LASF1768:
	.string	"EMPTY_INTERRUPT(vector) void vector (void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void) { __asm__ __volatile__ (\"reti\" ::); }"
.LASF941:
	.string	"GPIOR1 _SFR_IO8(0x2A)"
.LASF1364:
	.string	"FOC2A 7"
.LASF1874:
	.string	"PWMSTART_R 100"
.LASF509:
	.string	"PTRDIFF_MAX INT16_MAX"
.LASF1713:
	.string	"PD7 PORTD7"
.LASF1963:
	.string	"RC5_CODE_STILL (0x11A9 & RC5_MASK)"
.LASF44:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF418:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF821:
	.string	"PORTD4 4"
.LASF1820:
	.string	"__LPM_dword(addr) __LPM_dword_enhanced__(addr)"
.LASF202:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF720:
	.string	"PINA2 2"
.LASF1597:
	.string	"SPM_READY_vect_num 27"
.LASF1537:
	.string	"UDR1_0 0"
.LASF1123:
	.string	"TOIE2 0"
.LASF1503:
	.string	"UCSR1B _SFR_MEM8(0xC9)"
.LASF1325:
	.string	"ICR3H4 4"
.LASF876:
	.string	"EEDR3 3"
.LASF1253:
	.string	"OCR1AL0 0"
.LASF1212:
	.string	"FOC1A 7"
.LASF205:
	.string	"__UFRACT_IBIT__ 0"
.LASF1573:
	.string	"TIMER1_OVF_vect_num 15"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF1535:
	.string	"UBRR1_11 3"
.LASF73:
	.string	"__LONG_MAX__ 2147483647L"
.LASF2014:
	.string	"OS_MAX_THREADS 4"
.LASF1651:
	.string	"SLEEP_MODE_IDLE (0x00<<1)"
.LASF436:
	.string	"__AVR_ATmega1284P__ 1"
.LASF911:
	.string	"WGM02 3"
.LASF1410:
	.string	"TWGCE 0"
.LASF743:
	.string	"PORTA7 7"
.LASF1427:
	.string	"TWCR _SFR_MEM8(0xBC)"
.LASF829:
	.string	"TIFR1 _SFR_IO8(0x16)"
.LASF1665:
	.string	"PORT0 0"
.LASF824:
	.string	"PORTD7 7"
.LASF1646:
	.string	"__BOOT_LOCK_BITS_0_EXIST "
.LASF1045:
	.string	"PRUSART0 1"
.LASF963:
	.string	"CPOL 3"
.LASF482:
	.string	"INT_LEAST16_MAX INT16_MAX"
.LASF1721:
	.string	"SREG_N (2)"
.LASF450:
	.string	"MAP_2_SIM_AVAILABLE "
.LASF1038:
	.string	"CLKPS0 0"
.LASF1474:
	.string	"UBRR0_2 2"
.LASF1834:
	.ascii	"__ELPM_dword_enhanced__(addr) (__extension__({ uint32_t __ad"
	.ascii	"dr32 = (uint32_t)(addr); uint32_t "
	.string	"__result; __asm__ __volatile__ ( \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, Z+\" \"\\n\\t\" \"elpm %C0, Z+\" \"\\n\\t\" \"elpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
.LASF1351:
	.string	"TCCR2A _SFR_MEM8(0xB0)"
.LASF9:
	.string	"__ATOMIC_RELEASE 3"
.LASF1035:
	.string	"WDIE 6"
.LASF1437:
	.string	"TWAM1 2"
.LASF68:
	.string	"__GXX_ABI_VERSION 1002"
.LASF542:
	.string	"cosf cos"
.LASF1765:
	.string	"__INTR_ATTRS used, externally_visible"
.LASF1578:
	.string	"TIMER0_COMPB_vect _VECTOR(17)"
.LASF1215:
	.string	"TCNT1L0 0"
.LASF1074:
	.string	"PCICR _SFR_MEM8(0x68)"
.LASF45:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF57:
	.string	"__INT_FAST16_TYPE__ int"
.LASF1024:
	.string	"RWWSB 6"
.LASF529:
	.string	"M_LN2 0.69314718055994530942"
.LASF1475:
	.string	"UBRR0_3 3"
.LASF1823:
	.string	"pgm_read_word_near(address_short) __LPM_word((uint16_t)(address_short))"
.LASF1592:
	.string	"ADC_vect _VECTOR(24)"
.LASF1794:
	.string	"___int_size_t_h "
.LASF1178:
	.string	"MUX3 3"
.LASF685:
	.string	"SCNuLEAST32 \"lu\""
.LASF1802:
	.string	"PROGMEM __ATTR_PROGMEM__"
.LASF614:
	.string	"PRIiLEAST32 \"li\""
.LASF1978:
	.string	"MEASURE_COUPLED_AVAILABLE"
.LASF322:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF579:
	.string	"False 0"
.LASF913:
	.string	"FOC0A 7"
.LASF1171:
	.string	"ADTS1 1"
.LASF1354:
	.string	"COM2B0 4"
.LASF1181:
	.string	"REFS0 6"
.LASF1852:
	.string	"pgm_read_ptr(address_short) pgm_read_ptr_near(address_short)"
.LASF1954:
	.string	"RC5_CODE_12 (0x11A3 & RC5_MASK)"
.LASF784:
	.string	"DDC3 3"
.LASF2060:
	.string	"SPI_MasterTransmit"
.LASF1397:
	.string	"TWBR4 4"
.LASF1519:
	.string	"UMSEL10 6"
.LASF767:
	.string	"PORTB4 4"
.LASF1698:
	.string	"PC0 PORTC0"
.LASF1297:
	.string	"TCNT3L4 4"
.LASF48:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1180:
	.string	"ADLAR 5"
.LASF927:
	.string	"OCR0A_3 3"
.LASF738:
	.string	"PORTA2 2"
.LASF1909:
	.string	"INCLUDE_BOT_LOCAL_OVERRIDE_H_ "
.LASF1842:
	.string	"__ELPM_float(addr) __ELPM_float_enhanced__(addr)"
.LASF1641:
	.string	"FUSE_BODLEVEL0 (unsigned char)~_BV(0)"
.LASF209:
	.string	"__LFRACT_FBIT__ 31"
.LASF349:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF1191:
	.string	"ADC7D 7"
.LASF263:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF237:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF1408:
	.string	"TWS7 7"
.LASF437:
	.string	"__AVR_DEVICE_NAME__ atmega1284p"
.LASF1648:
	.string	"SIGNATURE_0 0x1E"
.LASF2072:
	.string	"spi_out_fifo"
.LASF553:
	.string	"ldexpf ldexp"
.LASF2005:
	.string	"MS_TO_TICKS(ms) ((ms) * (1000 / 8) / (TIMER_STEPS / 8))"
.LASF1157:
	.string	"ADCH5 5"
.LASF1340:
	.string	"OCR3AH0 0"
.LASF1812:
	.ascii	"__LPM_dword_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile"
	.ascii	"__ ( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1096:
	.string	"PCINT8 0"
.LASF238:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF1213:
	.string	"TCNT1 _SFR_MEM16(0x84)"
.LASF928:
	.string	"OCR0A_4 4"
.LASF198:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF82:
	.string	"__INTMAX_C(c) c ## LL"
.LASF251:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF410:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF63:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF443:
	.string	"BOT_2_BOT_PAYLOAD_AVAILABLE "
.LASF1984:
	.string	"BEHAVIOUR_AVAILABLE"
.LASF1000:
	.string	"SE 0"
.LASF621:
	.string	"PRIu8 \"u\""
.LASF496:
	.string	"UINT_FAST16_MAX UINT16_MAX"
.LASF208:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF933:
	.string	"OCR0B_0 0"
.LASF1899:
	.string	"OPTIMAL_DISTANCE (int16_t)(BOT_DIAMETER * 1.25f)"
.LASF1501:
	.string	"TXC1 6"
.LASF2019:
	.string	"OS_TASK_ATTR __attribute__((OS_task))"
.LASF160:
	.string	"__DECIMAL_DIG__ 9"
.LASF870:
	.string	"EEPM0 4"
.LASF1320:
	.string	"ICR3H _SFR_MEM8(0x97)"
.LASF411:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF775:
	.string	"PINC3 3"
.LASF1506:
	.string	"UCSZ12 2"
.LASF455:
	.string	"LED_AVAILABLE "
.LASF1602:
	.string	"USART1_UDRE_vect _VECTOR(29)"
.LASF716:
	.string	"_AVR_IOM1284P_H_ 1"
.LASF1138:
	.string	"PCINT30 6"
.LASF1133:
	.string	"PCINT25 1"
.LASF1376:
	.string	"OCR2_1 1"
.LASF886:
	.string	"EEAR3 3"
.LASF917:
	.string	"TCNT0_2 2"
.LASF696:
	.string	"__SFR_OFFSET 0x20"
.LASF627:
	.string	"PRIX8 \"X\""
.LASF993:
	.string	"OCDR2 2"
.LASF1731:
	.string	"ZL r30"
.LASF463:
	.string	"__STDINT_H_ "
.LASF730:
	.string	"DDA3 3"
.LASF1858:
	.string	"WHEEL_PERIMETER 178.1283"
.LASF855:
	.string	"INT2 2"
.LASF274:
	.string	"__SQ_IBIT__ 0"
.LASF426:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF1412:
	.string	"TWA1 2"
.LASF1415:
	.string	"TWA4 5"
.LASF1332:
	.string	"OCR3AL1 1"
.LASF1388:
	.string	"OCR2AUB 3"
.LASF1460:
	.string	"RXCIE0 7"
.LASF1763:
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
.LASF1904:
	.string	"STARTPAD2 0x332"
.LASF661:
	.string	"SCNi16 \"i\""
.LASF1624:
	.string	"FUSE_CKSEL1 (unsigned char)~_BV(1)"
.LASF1882:
	.string	"G_SPEED 0.5"
.LASF1674:
	.string	"PIN7 7"
.LASF49:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF1262:
	.string	"OCR1AH0 0"
.LASF591:
	.string	"_AVR_BUILTINS_H_ "
.LASF364:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF1949:
	.string	"RC5_CODE_6 (0x1186 & RC5_MASK)"
.LASF552:
	.string	"frexpf frexp"
.LASF191:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF640:
	.string	"PRIXLEAST16 \"X\""
.LASF1704:
	.string	"PC6 PORTC6"
.LASF1732:
	.string	"ZH r31"
.LASF249:
	.string	"__LACCUM_FBIT__ 31"
.LASF1509:
	.string	"UDRIE1 5"
.LASF1985:
	.string	"POS_STORE_AVAILABLE"
.LASF632:
	.string	"PRIoFAST16 \"o\""
.LASF256:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF1372:
	.string	"TCNT2_6 6"
.LASF1456:
	.string	"TXEN0 3"
.LASF341:
	.string	"__WITH_AVRLIBC__ 1"
.LASF166:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF1923:
	.string	"ARM_LINUX_DISPLAY \"/dev/tty1\""
.LASF951:
	.string	"GPIOR20 0"
.LASF379:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF1669:
	.string	"DD4 4"
.LASF1606:
	.string	"TIMER3_CAPT_vect _VECTOR(31)"
.LASF947:
	.string	"GPIOR15 5"
.LASF1893:
	.string	"CAM_RIGHT 250"
.LASF1873:
	.string	"PWMSTART_L 100"
.LASF1629:
	.string	"FUSE_CKOUT (unsigned char)~_BV(6)"
.LASF1937:
	.string	"RC5_TOGGLE 0x0800"
.LASF1546:
	.string	"INT0_vect _VECTOR(1)"
.LASF1015:
	.string	"BODS 6"
.LASF2008:
	.string	"TIMER_GET_TICKCOUNT_32 timer_get_tickcount_32()"
.LASF266:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF631:
	.string	"PRIoLEAST16 \"o\""
.LASF1549:
	.string	"INT2_vect_num 3"
.LASF2066:
	.string	"sizetype"
.LASF1502:
	.string	"RXC1 7"
.LASF1922:
	.string	"ARM_LINUX_DISPLAY"
.LASF343:
	.string	"__FLASH1 1"
.LASF1644:
	.string	"EFUSE_DEFAULT (0xFF)"
.LASF457:
	.string	"RC5_AVAILABLE "
.LASF1799:
	.string	"__need_NULL"
.LASF2011:
	.ascii	"TIMER_MEASURE_TIME(__code) uint16_t __us = 0; { uint32_t sta"
	.ascii	"rt = TIMER_GET_TICKCOUNT_32; int8_t start_reg = (int8_t) TCN"
	.ascii	"T2; { __code; } uint8_t sreg = SREG; __builtin_avr_cli(); in"
	.ascii	"t8_t end_reg = (int8_t) TCNT2; uint32_t end = TIMER_GET_TICK"
	.ascii	"COUNT_32; SREG = sreg; uint16_t diff = (uint16_t) (end - sta"
	.ascii	"rt) * 176U; int8_t diff_reg = (i"
	.string	"nt8_t) ((float)(end_reg - start_reg) * 3.2f); if (diff_reg < 0) { diff_reg = (int8_t) (diff_reg + 55); } uint8_t diff_r = (uint8_t) diff_reg; __us = diff + (uint16_t) diff_r; LOG_DEBUG(\"%u us\", __us); display_cursor(4, 1); display_printf(\"%4u us\", __us); }"
.LASF1363:
	.string	"FOC2B 6"
.LASF752:
	.string	"PINB7 7"
.LASF1224:
	.string	"TCNT1H0 0"
.LASF502:
	.string	"UINT_FAST64_MAX UINT64_MAX"
.LASF233:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF1911:
	.string	"ENC_CORRECT_L 0"
.LASF473:
	.string	"INT32_MAX 0x7fffffffL"
.LASF822:
	.string	"PORTD5 5"
.LASF1876:
	.string	"ENC_CORRECT_L 5"
.LASF968:
	.string	"SPSR _SFR_IO8(0x2D)"
.LASF721:
	.string	"PINA3 3"
.LASF525:
	.string	"__MATH_H "
.LASF1098:
	.string	"PCINT10 2"
.LASF2024:
	.string	"signed char"
.LASF1538:
	.string	"UDR1_1 1"
.LASF1518:
	.string	"UPM11 5"
.LASF1127:
	.string	"TOIE3 0"
.LASF522:
	.string	"INTMAX_C(value) __CONCAT(value, LL)"
.LASF877:
	.string	"EEDR4 4"
.LASF1254:
	.string	"OCR1AL1 1"
.LASF1009:
	.string	"JTRF 4"
.LASF1454:
	.string	"RXB80 1"
.LASF1620:
	.string	"E2PAGESIZE 8"
.LASF1826:
	.string	"pgm_read_ptr_near(address_short) (void*)__LPM_word((uint16_t)(address_short))"
.LASF378:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF141:
	.string	"__DBL_DIG__ 6"
.LASF491:
	.string	"INT_FAST8_MAX INT8_MAX"
.LASF1306:
	.string	"TCNT3H4 4"
.LASF1843:
	.string	"pgm_read_byte_far(address_long) __ELPM((uint32_t)(address_long))"
.LASF657:
	.string	"PRIXPTR PRIX16"
.LASF222:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF1664:
	.string	"PORT1 1"
.LASF23:
	.string	"__CHAR_BIT__ 8"
.LASF35:
	.string	"__INTMAX_TYPE__ long long int"
.LASF1048:
	.string	"PRUSART1 4"
.LASF694:
	.string	"_MMIO_WORD(mem_addr) (*(volatile uint16_t *)(mem_addr))"
.LASF1187:
	.string	"ADC3D 3"
.LASF1039:
	.string	"CLKPS1 1"
.LASF1821:
	.string	"__LPM_float(addr) __LPM_float_enhanced__(addr)"
.LASF164:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF2047:
	.string	"count"
.LASF88:
	.string	"__INT16_MAX__ 32767"
.LASF1236:
	.string	"ICR1L2 2"
.LASF1291:
	.string	"TCNT3 _SFR_MEM16(0x94)"
.LASF1036:
	.string	"WDIF 7"
.LASF1438:
	.string	"TWAM2 3"
.LASF1919:
	.string	"F_CPU 20000000UL"
.LASF1056:
	.string	"__AVR_HAVE_PRR0_PRUSART0 "
.LASF1851:
	.string	"pgm_read_float(address_short) pgm_read_float_near(address_short)"
.LASF1113:
	.string	"TIMSK0 _SFR_MEM8(0x6E)"
.LASF857:
	.string	"GPIOR00 0"
.LASF1759:
	.string	"BLB1_MODE_3 (0xCF)"
.LASF786:
	.string	"DDC5 5"
.LASF1216:
	.string	"TCNT1L1 1"
.LASF67:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF1568:
	.string	"TIMER1_CAPT_vect _VECTOR(12)"
.LASF479:
	.string	"INT_LEAST8_MAX INT8_MAX"
.LASF1476:
	.string	"UBRR0_4 4"
.LASF1757:
	.string	"BLB1_MODE_1 (0xFF)"
.LASF588:
	.string	"__AVR_LIBC_MAJOR__ 1"
.LASF548:
	.string	"hypotf hypot"
.LASF1033:
	.string	"WDCE 4"
.LASF223:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF1607:
	.string	"TIMER3_COMPA_vect_num 32"
.LASF1579:
	.string	"TIMER0_OVF_vect_num 18"
.LASF1459:
	.string	"TXCIE0 6"
.LASF1005:
	.string	"PORF 0"
.LASF912:
	.string	"FOC0B 6"
.LASF622:
	.string	"PRIuLEAST8 \"u\""
.LASF1172:
	.string	"ADTS2 2"
.LASF1552:
	.string	"PCINT0_vect _VECTOR(4)"
.LASF1355:
	.string	"COM2B1 5"
.LASF1028:
	.string	"WDTCSR _SFR_MEM8(0x60)"
.LASF1465:
	.string	"USBS0 3"
.LASF1926:
	.string	"SPI_AVAILABLE "
.LASF432:
	.string	"__INT24_MAX__ 8388607L"
.LASF1580:
	.string	"TIMER0_OVF_vect _VECTOR(18)"
.LASF790:
	.string	"PORTC0 0"
.LASF545:
	.string	"fabsf fabs"
.LASF785:
	.string	"DDC4 4"
.LASF1110:
	.string	"PCINT21 5"
.LASF453:
	.string	"SHIFT_AVAILABLE "
.LASF1398:
	.string	"TWBR5 5"
.LASF177:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF768:
	.string	"PORTB5 5"
.LASF1298:
	.string	"TCNT3L5 5"
.LASF1430:
	.string	"TWWC 3"
.LASF434:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF409:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF1466:
	.string	"UPM00 4"
.LASF113:
	.string	"__INT_FAST32_MAX__ 2147483647L"
.LASF165:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF1350:
	.string	"OCR3BH _SFR_MEM8(0x9B)"
.LASF684:
	.string	"SCNu32 \"lu\""
.LASF1776:
	.string	"NEW_AVR_LIB "
.LASF1771:
	.string	"BADISR_vect __vector_default"
.LASF1896:
	.string	"COL_CLOSEST 200"
.LASF1581:
	.string	"SPI_STC_vect_num 19"
.LASF1803:
	.string	"PGM_P const char *"
.LASF1929:
	.string	"DISTSENS_TYPE_GP2Y0A60 "
.LASF314:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF1482:
	.string	"UBRR0_9 1"
.LASF13:
	.string	"__OPTIMIZE__ 1"
.LASF1770:
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
.LASF1341:
	.string	"OCR3AH1 1"
.LASF1587:
	.string	"USART0_TX_vect_num 22"
.LASF1097:
	.string	"PCINT9 1"
.LASF532:
	.string	"M_PI_2 1.57079632679489661923"
.LASF1185:
	.string	"ADC1D 1"
.LASF1971:
	.string	"RC5_CH_PLUS (0x11A0 & RC5_MASK)"
.LASF197:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF1125:
	.string	"OCIE2B 2"
.LASF1129:
	.string	"OCIE3B 2"
.LASF1326:
	.string	"ICR3H5 5"
.LASF335:
	.string	"__AVR_MEGA__ 1"
.LASF69:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF1377:
	.string	"OCR2_2 2"
.LASF1317:
	.string	"ICR3L5 5"
.LASF1997:
	.string	"BOT_2_BOT_PAYLOAD_AVAILABLE"
.LASF717:
	.string	"PINA _SFR_IO8(0x00)"
.LASF1229:
	.string	"TCNT1H5 5"
.LASF377:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF1649:
	.string	"SIGNATURE_1 0x97"
.LASF1209:
	.string	"ICNC1 7"
.LASF1536:
	.string	"UDR1 _SFR_MEM8(0xCE)"
.LASF1714:
	.string	"_AVR_COMMON_H "
.LASF847:
	.string	"PCIF3 3"
.LASF934:
	.string	"OCR0B_1 1"
.LASF207:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF283:
	.string	"__USQ_FBIT__ 32"
.LASF358:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF871:
	.string	"EEPM1 5"
.LASF305:
	.string	"__REGISTER_PREFIX__ "
.LASF776:
	.string	"PINC4 4"
.LASF549:
	.string	"squaref square"
.LASF1977:
	.string	"MEASURE_MOUSE_AVAILABLE"
.LASF587:
	.string	"__AVR_LIBC_DATE_ 20111229UL"
.LASF417:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF1139:
	.string	"PCINT31 7"
.LASF1134:
	.string	"PCINT26 2"
.LASF1128:
	.string	"OCIE3A 1"
.LASF887:
	.string	"EEAR4 4"
.LASF918:
	.string	"TCNT0_3 3"
.LASF994:
	.string	"OCDR3 3"
.LASF736:
	.string	"PORTA0 0"
.LASF1019:
	.string	"PGERS 1"
.LASF851:
	.string	"INTF2 2"
.LASF84:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF181:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF58:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF733:
	.string	"DDA6 6"
.LASF431:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF260:
	.string	"__LLACCUM_IBIT__ 16"
.LASF247:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF1416:
	.string	"TWA5 6"
.LASF1948:
	.string	"RC5_CODE_5 (0x1185 & RC5_MASK)"
.LASF1183:
	.string	"DIDR0 _SFR_MEM8(0x7E)"
.LASF596:
	.string	"_SFR_ASM_COMPAT 0"
.LASF1333:
	.string	"OCR3AL2 2"
.LASF619:
	.string	"PRIoLEAST8 \"o\""
.LASF618:
	.string	"PRIo8 \"o\""
.LASF464:
	.string	"__USING_MINT8 0"
.LASF1749:
	.string	"LOCKBITS unsigned char __lock LOCKMEM"
.LASF1445:
	.string	"U2X0 1"
.LASF1468:
	.string	"UMSEL00 6"
.LASF151:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF483:
	.string	"INT_LEAST16_MIN INT16_MIN"
.LASF1491:
	.string	"UDR0_5 5"
.LASF577:
	.string	"lrintf lrint"
.LASF981:
	.string	"ACSR _SFR_IO8(0x30)"
.LASF1902:
	.string	"GROUND_GOAL 0x221"
.LASF1490:
	.string	"UDR0_4 4"
.LASF660:
	.string	"SCNdFAST16 \"d\""
.LASF1321:
	.string	"ICR3H0 0"
.LASF1373:
	.string	"TCNT2_7 7"
.LASF1986:
	.string	"MAP_AVAILABLE"
.LASF32:
	.string	"__PTRDIFF_TYPE__ int"
.LASF1140:
	.string	"ADC _SFR_MEM16(0x78)"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF952:
	.string	"GPIOR21 1"
.LASF1668:
	.string	"DD5 5"
.LASF990:
	.string	"OCDR _SFR_IO8(0x31)"
.LASF948:
	.string	"GPIOR16 6"
.LASF1513:
	.string	"UCPOL1 0"
.LASF1996:
	.string	"LOG_AVAILABLE "
.LASF1724:
	.string	"SREG_H (5)"
.LASF2013:
	.string	"OS_TIME_SLICE 10"
.LASF1245:
	.string	"ICR1H2 2"
.LASF1390:
	.string	"AS2 5"
.LASF959:
	.string	"SPCR _SFR_IO8(0x2C)"
.LASF117:
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
.LASF1659:
	.string	"PORT6 6"
.LASF946:
	.string	"GPIOR14 4"
.LASF1275:
	.string	"WGM31 1"
.LASF2020:
	.string	"OS_SIGNAL_INITIALIZER {0}"
.LASF645:
	.string	"PRIu32 \"lu\""
.LASF287:
	.string	"__UTQ_FBIT__ 128"
.LASF1811:
	.string	"__LPM_word_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1435:
	.string	"TWAMR _SFR_MEM8(0xBD)"
.LASF1225:
	.string	"TCNT1H1 1"
.LASF1115:
	.string	"OCIE0A 1"
.LASF2070:
	.string	"spi_out_idx"
.LASF1790:
	.string	"_SIZE_T_DEFINED_ "
.LASF87:
	.string	"__INT8_MAX__ 127"
.LASF771:
	.string	"PINC _SFR_IO8(0x06)"
.LASF894:
	.string	"EEAR10 2"
.LASF840:
	.string	"OCF3A 1"
.LASF494:
	.string	"INT_FAST16_MAX INT16_MAX"
.LASF1392:
	.string	"TWBR _SFR_MEM8(0xB8)"
.LASF722:
	.string	"PINA4 4"
.LASF1099:
	.string	"PCINT11 3"
.LASF1740:
	.string	"AVR_STACK_POINTER_LO_REG SPL"
.LASF1052:
	.string	"__AVR_HAVE_PRR0 ((1<<PRADC)|(1<<PRSPI)|(1<<PRTIM1)|(1<<PRUSART0)|(1<<PRUSART1)|(1<<PRTIM0)|(1<<PRTIM2)|(1<<PRTWI))"
.LASF1901:
	.string	"IGNORE_DISTANCE 240"
.LASF1119:
	.string	"OCIE1A 1"
.LASF279:
	.string	"__UQQ_FBIT__ 8"
.LASF1371:
	.string	"TCNT2_5 5"
.LASF1049:
	.string	"PRTIM0 5"
.LASF1327:
	.string	"ICR3H6 6"
.LASF878:
	.string	"EEDR5 5"
.LASF1255:
	.string	"OCR1AL2 2"
.LASF2057:
	.string	"spcr"
.LASF1734:
	.string	"AVR_STATUS_ADDR _SFR_IO_ADDR(SREG)"
.LASF1330:
	.string	"OCR3AL _SFR_MEM8(0x98)"
.LASF1505:
	.string	"RXB81 1"
.LASF2030:
	.string	"uint32_t"
.LASF348:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF1787:
	.string	"__SIZE_T "
.LASF1976:
	.string	"RC5_CODE_RIGHT RC5_CODE_FWD"
.LASF1063:
	.string	"__AVR_HAVE_PRR1 (1<<PRTIM3)"
.LASF1006:
	.string	"EXTRF 1"
.LASF1307:
	.string	"TCNT3H5 5"
.LASF38:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF229:
	.string	"__SACCUM_FBIT__ 7"
.LASF1854:
	.string	"BOTLOCAL_H_ "
.LASF535:
	.string	"M_2_PI 0.63661977236758134308"
.LASF407:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF138:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1271:
	.string	"OCR1BL _SFR_MEM8(0x8A)"
.LASF154:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF581:
	.string	"LINE_FEED \"\\r\\n\""
.LASF563:
	.string	"log10f log10"
.LASF1040:
	.string	"CLKPS2 2"
.LASF259:
	.string	"__LLACCUM_FBIT__ 47"
.LASF136:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF1237:
	.string	"ICR1L3 3"
.LASF1600:
	.string	"USART1_RX_vect _VECTOR(28)"
.LASF865:
	.string	"EECR _SFR_IO8(0x1F)"
.LASF475:
	.string	"UINT32_MAX (__CONCAT(INT32_MAX, U) * 2UL + 1UL)"
.LASF1439:
	.string	"TWAM3 4"
.LASF1746:
	.string	"FUSES __fuse_t __fuse FUSEMEM"
.LASF1011:
	.string	"IVCE 0"
.LASF858:
	.string	"GPIOR01 1"
.LASF1047:
	.string	"PRTIM1 3"
.LASF1217:
	.string	"TCNT1L2 2"
.LASF633:
	.string	"PRIu16 \"u\""
.LASF1880:
	.string	"WHEEL_DISTANCE (WHEEL_TO_WHEEL_DIAMETER / 2.0f)"
.LASF355:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF1642:
	.string	"FUSE_BODLEVEL1 (unsigned char)~_BV(1)"
.LASF834:
	.string	"TIFR2 _SFR_IO8(0x17)"
.LASF567:
	.string	"isfinitef isfinite"
.LASF1168:
	.string	"ADEN 7"
.LASF653:
	.string	"PRIXFAST32 \"lX\""
.LASF1218:
	.string	"TCNT1L3 3"
.LASF1753:
	.string	"BLB0_MODE_1 (0xFF)"
.LASF2031:
	.string	"long unsigned int"
.LASF644:
	.string	"PRIoFAST32 \"lo\""
.LASF1958:
	.string	"RC5_CODE_BLUE (0x01B0 & RC5_MASK)"
.LASF392:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF1193:
	.string	"AIN0D 0"
.LASF531:
	.string	"M_PI 3.14159265358979323846"
.LASF14:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF1941:
	.string	"RC_HAVE_HQ_RC_UNIVERS29_334 "
.LASF402:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF412:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF1061:
	.string	"PRR1 _SFR_MEM8(0x65)"
.LASF808:
	.string	"DDD0 0"
.LASF1319:
	.string	"ICR3L7 7"
.LASF1918:
	.string	"F_CPU"
.LASF791:
	.string	"PORTC1 1"
.LASF211:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF2069:
	.string	"spi_in_idx"
.LASF1420:
	.string	"TWD1 1"
.LASF1016:
	.string	"JTD 7"
.LASF1655:
	.string	"SLEEP_MODE_STANDBY (0x06<<1)"
.LASF1399:
	.string	"TWBR6 6"
.LASF372:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF906:
	.string	"COM0A1 7"
.LASF831:
	.string	"OCF1A 1"
.LASF1299:
	.string	"TCNT3L6 6"
.LASF1639:
	.string	"FUSE_OCDEN (unsigned char)~_BV(7)"
.LASF929:
	.string	"OCR0A_5 5"
.LASF1467:
	.string	"UPM01 5"
.LASF441:
	.string	"USE_MINILOG "
.LASF316:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF158:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF484:
	.string	"UINT_LEAST16_MAX UINT16_MAX"
.LASF515:
	.string	"UINT8_C(value) ((uint8_t) __CONCAT(value, U))"
.LASF568:
	.string	"copysignf copysign"
.LASF1828:
	.ascii	"__ELPM_enhanced__(add"
	.string	"r) (__extension__({ uint32_t __addr32 = (uint32_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %0, Z+\" \"\\n\\t\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
.LASF540:
	.string	"INFINITY __builtin_inf()"
.LASF673:
	.string	"SCNoLEAST16 \"o\""
.LASF1577:
	.string	"TIMER0_COMPB_vect_num 17"
.LASF1200:
	.string	"COM1A0 6"
.LASF342:
	.string	"__FLASH 1"
.LASF1900:
	.string	"ADJUST_DISTANCE 10"
.LASF1715:
	.string	"SPL _SFR_IO8(0x3D)"
.LASF1525:
	.string	"UBRR1_2 2"
.LASF701:
	.string	"_SFR_IO16(io_addr) _MMIO_WORD((io_addr) + __SFR_OFFSET)"
.LASF1342:
	.string	"OCR3AH2 2"
.LASF394:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF825:
	.string	"TIFR0 _SFR_IO8(0x15)"
.LASF1149:
	.string	"ADCL6 6"
.LASF408:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF75:
	.string	"__WCHAR_MAX__ 32767"
.LASF1286:
	.string	"ICES3 6"
.LASF603:
	.string	"PRIiFAST8 \"i\""
.LASF167:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF1866:
	.string	"PID_Kd 20"
.LASF1210:
	.string	"TCCR1C _SFR_MEM8(0x82)"
.LASF1783:
	.string	"_SIZE_T "
.LASF559:
	.string	"asinf asin"
.LASF2045:
	.string	"wait_for"
.LASF1964:
	.string	"RC5_CODE_STOP (0x11B6 & RC5_MASK)"
.LASF687:
	.string	"SCNx32 \"lx\""
.LASF935:
	.string	"OCR0B_2 2"
.LASF1449:
	.string	"UDRE0 5"
.LASF168:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF799:
	.string	"PIND0 0"
.LASF2027:
	.string	"uint16_t"
.LASF1067:
	.string	"CAL1 1"
.LASF656:
	.string	"PRIxPTR PRIx16"
.LASF1359:
	.string	"CS20 0"
.LASF112:
	.string	"__INT_FAST16_MAX__ 32767"
.LASF777:
	.string	"PINC5 5"
.LASF224:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF276:
	.string	"__DQ_IBIT__ 0"
.LASF1966:
	.string	"RC5_CODE_FWD (0x11B4 & RC5_MASK)"
.LASF1135:
	.string	"PCINT27 3"
.LASF1433:
	.string	"TWEA 6"
.LASF888:
	.string	"EEAR5 5"
.LASF605:
	.string	"PRIdLEAST16 \"d\""
.LASF89:
	.string	"__INT32_MAX__ 2147483647L"
.LASF754:
	.string	"DDB0 0"
.LASF1791:
	.string	"_SIZE_T_DEFINED "
.LASF995:
	.string	"OCDR4 4"
.LASF737:
	.string	"PORTA1 1"
.LASF1274:
	.string	"WGM30 0"
.LASF1117:
	.string	"TIMSK1 _SFR_MEM8(0x6F)"
.LASF732:
	.string	"DDA5 5"
.LASF280:
	.string	"__UQQ_IBIT__ 0"
.LASF376:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF675:
	.string	"SCNu16 \"u\""
.LASF1855:
	.string	"BOT_DIAMETER 120"
.LASF1417:
	.string	"TWA6 7"
.LASF683:
	.string	"SCNoFAST32 \"lo\""
.LASF1857:
	.string	"WHEEL_DIAMETER 56.7"
.LASF1975:
	.string	"RC5_CODE_LEFT RC5_CODE_BWD"
.LASF1334:
	.string	"OCR3AL3 3"
.LASF1613:
	.string	"_VECTORS_SIZE (35 * 4)"
.LASF1797:
	.string	"__size_t "
.LASF2081:
	.string	"os_schedule"
.LASF1496:
	.string	"U2X1 1"
.LASF1264:
	.string	"OCR1AH2 2"
.LASF1469:
	.string	"UMSEL01 7"
.LASF1492:
	.string	"UDR0_6 6"
.LASF1612:
	.string	"TIMER3_OVF_vect _VECTOR(34)"
.LASF1885:
	.string	"F_CPU 16000000UL"
.LASF1718:
	.string	"SREG _SFR_IO8(0x3F)"
.LASF1043:
	.string	"PRR0 _SFR_MEM8(0x64)"
.LASF1523:
	.string	"UBRR1_0 0"
.LASF987:
	.string	"ACO 5"
.LASF1087:
	.string	"PCINT0 0"
.LASF1683:
	.string	"PA1 PORTA1"
.LASF1164:
	.string	"ADIE 3"
.LASF241:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF970:
	.string	"WCOL 6"
.LASF70:
	.string	"__SCHAR_MAX__ 127"
.LASF953:
	.string	"GPIOR22 2"
.LASF405:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF26:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF492:
	.string	"INT_FAST8_MIN INT8_MIN"
.LASF949:
	.string	"GPIOR17 7"
.LASF1240:
	.string	"ICR1L6 6"
.LASF1837:
	.ascii	"__ELPM_float_enhanced__(addr) (__extension__({ uint32_t __ad"
	.ascii	"dr32 = (uint32_t)(addr); float "
	.string	"__result; __asm__ __volatile__ ( \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, Z+\" \"\\n\\t\" \"elpm %C0, Z+\" \"\\n\\t\" \"elpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
.LASF649:
	.string	"PRIxLEAST32 \"lx\""
.LASF2009:
	.string	"TIMER_2_CLOCK 5619"
.LASF1815:
	.ascii	"__LPM_float_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); float __result; __asm__ __volatile__ "
	.ascii	"( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1246:
	.string	"ICR1H3 3"
.LASF1004:
	.string	"MCUSR _SFR_IO8(0x34)"
.LASF86:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF1444:
	.string	"MPCM0 0"
.LASF613:
	.string	"PRIi32 \"li\""
.LASF1470:
	.string	"UBRR0 _SFR_MEM16(0xC4)"
.LASF1680:
	.string	"PIN1 1"
.LASF1226:
	.string	"TCNT1H2 2"
.LASF973:
	.string	"SPDR0 0"
.LASF374:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF53:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF1999:
	.string	"SPI_SPEED_MAX {{0, 0, 1}}"
.LASF969:
	.string	"SPI2X 0"
.LASF652:
	.string	"PRIXLEAST32 \"lX\""
.LASF132:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF895:
	.string	"EEAR11 3"
.LASF42:
	.string	"__INT32_TYPE__ long int"
.LASF841:
	.string	"OCF3B 2"
.LASF606:
	.string	"PRIdFAST16 \"d\""
.LASF566:
	.string	"isinff isinf"
.LASF487:
	.string	"UINT_LEAST32_MAX UINT32_MAX"
.LASF235:
	.string	"__USACCUM_IBIT__ 8"
.LASF1100:
	.string	"PCINT12 4"
.LASF480:
	.string	"INT_LEAST8_MIN INT8_MIN"
.LASF1540:
	.string	"UDR1_3 3"
.LASF1604:
	.string	"USART1_TX_vect _VECTOR(30)"
.LASF1120:
	.string	"OCIE1B 2"
.LASF2078:
	.string	"SPI_MasterReceive"
.LASF216:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF1328:
	.string	"ICR3H7 7"
.LASF879:
	.string	"EEDR6 6"
.LASF1256:
	.string	"OCR1AL3 3"
.LASF713:
	.string	"loop_until_bit_is_set(sfr,bit) do { } while (bit_is_clear(sfr, bit))"
.LASF41:
	.string	"__INT16_TYPE__ int"
.LASF1196:
	.string	"WGM10 0"
.LASF1202:
	.string	"TCCR1B _SFR_MEM8(0x81)"
.LASF1741:
	.string	"AVR_STACK_POINTER_LO_ADDR _SFR_IO_ADDR(SPL)"
.LASF65:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF1308:
	.string	"TCNT3H6 6"
.LASF1993:
	.string	"BOT_FS_AVAILABLE"
.LASF1590:
	.string	"ANALOG_COMP_vect _VECTOR(23)"
.LASF1662:
	.string	"PORT3 3"
.LASF1122:
	.string	"TIMSK2 _SFR_MEM8(0x70)"
.LASF1152:
	.string	"ADCH0 0"
.LASF134:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF914:
	.string	"TCNT0 _SFR_IO8(0x26)"
.LASF1953:
	.string	"RC5_CODE_11 (0x118A & RC5_MASK)"
.LASF528:
	.string	"M_LOG10E 0.43429448190325182765"
.LASF1244:
	.string	"ICR1H1 1"
.LASF1234:
	.string	"ICR1L0 0"
.LASF1041:
	.string	"CLKPS3 3"
.LASF826:
	.string	"TOV0 0"
.LASF2038:
	.string	"spi_speed_t"
.LASF1235:
	.string	"ICR1L1 1"
.LASF866:
	.string	"EERE 0"
.LASF1238:
	.string	"ICR1L4 4"
.LASF1065:
	.string	"OSCCAL _SFR_MEM8(0x66)"
.LASF670:
	.string	"SCNdPTR SCNd16"
.LASF1440:
	.string	"TWAM4 5"
.LASF1583:
	.string	"USART0_RX_vect_num 20"
.LASF1633:
	.string	"FUSE_BOOTSZ0 (unsigned char)~_BV(1)"
.LASF1566:
	.string	"TIMER2_OVF_vect _VECTOR(11)"
.LASF1908:
	.string	"PRIO_VISIBLE_MAX 200"
.LASF520:
	.string	"INT64_C(value) __CONCAT(value, LL)"
.LASF859:
	.string	"GPIOR02 2"
.LASF1104:
	.string	"PCMSK2 _SFR_MEM8(0x6D)"
.LASF1050:
	.string	"PRTIM2 6"
.LASF1840:
	.string	"__ELPM_word(addr) __ELPM_word_enhanced__(addr)"
.LASF1288:
	.string	"TCCR3C _SFR_MEM8(0x92)"
.LASF1547:
	.string	"INT1_vect_num 2"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF1478:
	.string	"UBRR0_6 6"
.LASF293:
	.string	"__DA_FBIT__ 31"
.LASF693:
	.string	"_MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))"
.LASF1951:
	.string	"RC5_CODE_8 (0x1188 & RC5_MASK)"
.LASF616:
	.string	"PRIdPTR PRId16"
.LASF1452:
	.string	"UCSR0B _SFR_MEM8(0xC1)"
.LASF308:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF1819:
	.string	"__LPM_word(addr) __LPM_word_enhanced__(addr)"
.LASF179:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF1870:
	.string	"PID_SPEED_THRESHOLD BOT_SPEED_FOLLOW"
.LASF809:
	.string	"DDD1 1"
.LASF1516:
	.string	"USBS1 3"
.LASF2001:
	.string	"SPI_SPEED_250KHZ {{0, 1, 0}}"
.LASF425:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF792:
	.string	"PORTC2 2"
.LASF294:
	.string	"__DA_IBIT__ 32"
.LASF787:
	.string	"DDC6 6"
.LASF1421:
	.string	"TWD2 2"
.LASF277:
	.string	"__TQ_FBIT__ 127"
.LASF467:
	.string	"INT8_MAX 0x7f"
.LASF1418:
	.string	"TWDR _SFR_MEM8(0xBB)"
.LASF334:
	.string	"__AVR_HAVE_MUL__ 1"
.LASF770:
	.string	"PORTB7 7"
.LASF29:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF638:
	.string	"PRIxFAST16 \"x\""
.LASF95:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF1400:
	.string	"TWBR7 7"
.LASF930:
	.string	"OCR0A_6 6"
.LASF1279:
	.string	"COM3A1 7"
.LASF1144:
	.string	"ADCL1 1"
.LASF1995:
	.string	"LOG_MMC_AVAILABLE"
.LASF390:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF215:
	.string	"__ULFRACT_IBIT__ 0"
.LASF1042:
	.string	"CLKPCE 7"
.LASF80:
	.string	"__SIZE_MAX__ 65535U"
.LASF1201:
	.string	"COM1A1 7"
.LASF637:
	.string	"PRIxLEAST16 \"x\""
.LASF583:
	.string	"_AVR_VERSION_H_ "
.LASF448:
	.string	"MEASURE_MOUSE_AVAILABLE "
.LASF20:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF1526:
	.string	"UBRR1_3 3"
.LASF1343:
	.string	"OCR3AH3 3"
.LASF507:
	.string	"INTMAX_MIN INT64_MIN"
.LASF421:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF636:
	.string	"PRIx16 \"x\""
.LASF663:
	.string	"SCNiFAST16 \"i\""
.LASF1174:
	.string	"ADMUX _SFR_MEM8(0x7C)"
.LASF1242:
	.string	"ICR1H _SFR_MEM8(0x87)"
.LASF867:
	.string	"EEPE 1"
.LASF1057:
	.string	"__AVR_HAVE_PRR0_PRUSART1 "
.LASF1276:
	.string	"COM3B0 4"
.LASF2061:
	.string	"speed"
.LASF1657:
	.string	"_AVR_PORTPINS_H_ 1"
.LASF832:
	.string	"OCF1B 2"
.LASF1738:
	.string	"AVR_STACK_POINTER_HI_REG SPH"
.LASF527:
	.string	"M_LOG2E 1.4426950408889634074"
.LASF1318:
	.string	"ICR3L6 6"
.LASF1378:
	.string	"OCR2_3 3"
.LASF107:
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
.LASF578:
	.string	"True 1"
.LASF1287:
	.string	"ICNC3 7"
.LASF1192:
	.string	"DIDR1 _SFR_MEM8(0x7F)"
.LASF1345:
	.string	"OCR3AH5 5"
.LASF1141:
	.string	"ADCW _SFR_MEM16(0x78)"
.LASF1510:
	.string	"TXCIE1 6"
.LASF1917:
	.string	"PWMSTART_R 50"
.LASF1722:
	.string	"SREG_V (3)"
.LASF999:
	.string	"SMCR _SFR_IO8(0x33)"
.LASF1500:
	.string	"UDRE1 5"
.LASF572:
	.string	"fmaxf fmax"
.LASF800:
	.string	"PIND1 1"
.LASF115:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF1068:
	.string	"CAL2 2"
.LASF597:
	.string	"__INTTYPES_H_ "
.LASF1872:
	.string	"PWMMIN 0"
.LASF1360:
	.string	"CS21 1"
.LASF916:
	.string	"TCNT0_1 1"
.LASF778:
	.string	"PINC6 6"
.LASF615:
	.string	"PRIiFAST32 \"li\""
.LASF1935:
	.string	"ARM_LINUX_BOARD"
.LASF1136:
	.string	"PCINT28 4"
.LASF1379:
	.string	"OCR2_4 4"
.LASF889:
	.string	"EEAR6 6"
.LASF920:
	.string	"TCNT0_5 5"
.LASF539:
	.string	"NAN __builtin_nan(\"\")"
.LASF755:
	.string	"DDB1 1"
.LASF1845:
	.string	"pgm_read_dword_far(address_long) __ELPM_dword((uint32_t)(address_long))"
.LASF996:
	.string	"OCDR5 5"
.LASF1272:
	.string	"OCR1BH _SFR_MEM8(0x8B)"
.LASF415:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF2079:
	.string	"SPI_SlaveSendReceive"
.LASF1804:
	.string	"PGM_VOID_P const void *"
.LASF12:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF2010:
	.string	"TIMER_STEPS 176"
.LASF1029:
	.string	"WDP0 0"
.LASF580:
	.string	"binary(var,bit) ((var >> bit) & 1)"
.LASF1280:
	.string	"TCCR3B _SFR_MEM8(0x91)"
.LASF1495:
	.string	"MPCM1 0"
.LASF10:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF1335:
	.string	"OCR3AL4 4"
.LASF554:
	.string	"expf exp"
.LASF1507:
	.string	"TXEN1 3"
.LASF1796:
	.string	"_SIZET_ "
.LASF753:
	.string	"DDRB _SFR_IO8(0x04)"
.LASF40:
	.string	"__INT8_TYPE__ signed char"
.LASF517:
	.string	"UINT16_C(value) __CONCAT(value, U)"
.LASF1265:
	.string	"OCR1AH3 3"
.LASF1084:
	.string	"ISC20 4"
.LASF78:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF1493:
	.string	"UDR0_7 7"
.LASF1695:
	.string	"PB5 PORTB5"
.LASF350:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF848:
	.string	"EIFR _SFR_IO8(0x1C)"
.LASF1126:
	.string	"TIMSK3 _SFR_MEM8(0x71)"
.LASF1920:
	.string	"UART_BAUD"
.LASF1088:
	.string	"PCINT1 1"
.LASF33:
	.string	"__WCHAR_TYPE__ int"
.LASF242:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF954:
	.string	"GPIOR23 3"
.LASF1270:
	.string	"OCR1B _SFR_MEM16(0x8A)"
.LASF1001:
	.string	"SM0 1"
.LASF1666:
	.string	"DD7 7"
.LASF1913:
	.string	"ENC_CORRECT_R 0"
.LASF2071:
	.string	"spi_in_fifo"
.LASF2051:
	.string	"read2end"
.LASF590:
	.string	"__AVR_LIBC_REVISION__ 0"
.LASF1961:
	.string	"RC5_CODE_DOT (0x11B7 & RC5_MASK)"
.LASF1175:
	.string	"MUX0 0"
.LASF296:
	.string	"__TA_IBIT__ 16"
.LASF2064:
	.string	"os_thread_running"
.LASF1247:
	.string	"ICR1H4 4"
.LASF1754:
	.string	"BLB0_MODE_2 (0xFB)"
.LASF662:
	.string	"SCNiLEAST16 \"i\""
.LASF344:
	.string	"__MEMX 1"
.LASF862:
	.string	"GPIOR05 5"
.LASF56:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF624:
	.string	"PRIx8 \"x\""
.LASF2039:
	.string	"tickCount_t"
.LASF1075:
	.string	"PCIE0 0"
.LASF1679:
	.string	"PIN2 2"
.LASF1227:
	.string	"TCNT1H3 3"
.LASF974:
	.string	"SPDR1 1"
.LASF1727:
	.string	"XL r26"
.LASF536:
	.string	"M_2_SQRTPI 1.12837916709551257390"
.LASF1387:
	.string	"OCR2BUB 2"
.LASF1463:
	.string	"UCSZ00 1"
.LASF668:
	.string	"SCNiLEAST32 \"li\""
.LASF562:
	.string	"logf log"
.LASF909:
	.string	"CS01 1"
.LASF306:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1023:
	.string	"SIGRD 5"
.LASF724:
	.string	"PINA6 6"
.LASF1895:
	.string	"BORDER_DANGEROUS 0x3A0"
.LASF1101:
	.string	"PCINT13 5"
.LASF1541:
	.string	"UDR1_4 4"
.LASF250:
	.string	"__LACCUM_IBIT__ 32"
.LASF1933:
	.string	"CAM_RIGHT"
.LASF1871:
	.string	"PWMMAX 511"
.LASF1818:
	.string	"__LPM(addr) __LPM_enhanced__(addr)"
.LASF880:
	.string	"EEDR7 7"
.LASF1194:
	.string	"AIN1D 1"
.LASF178:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF98:
	.string	"__INT16_C(c) c"
.LASF1434:
	.string	"TWINT 7"
.LASF1197:
	.string	"WGM11 1"
.LASF932:
	.string	"OCR0B _SFR_IO8(0x28)"
.LASF558:
	.string	"acosf acos"
.LASF850:
	.string	"INTF1 1"
.LASF634:
	.string	"PRIuLEAST16 \"u\""
.LASF967:
	.string	"SPIE 7"
.LASF1309:
	.string	"TCNT3H7 7"
.LASF1486:
	.string	"UDR0_0 0"
.LASF565:
	.string	"isnanf isnan"
.LASF2033:
	.string	"long long unsigned int"
.LASF18:
	.string	"__SIZEOF_SHORT__ 2"
.LASF1661:
	.string	"PORT4 4"
.LASF1385:
	.string	"TCR2BUB 0"
.LASF144:
	.string	"__DBL_MAX_EXP__ 128"
.LASF1153:
	.string	"ADCH1 1"
.LASF481:
	.string	"UINT_LEAST8_MAX UINT8_MAX"
.LASF313:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF1898:
	.string	"COL_FAR 400"
.LASF830:
	.string	"TOV1 0"
.LASF908:
	.string	"CS00 0"
.LASF965:
	.string	"DORD 5"
.LASF1483:
	.string	"UBRR0_10 2"
.LASF903:
	.string	"COM0B0 4"
.LASF1239:
	.string	"ICR1L5 5"
.LASF336:
	.string	"__AVR_HAVE_JMP_CALL__ 1"
.LASF1723:
	.string	"SREG_S (4)"
.LASF1441:
	.string	"TWAM5 6"
.LASF1062:
	.string	"PRTIM3 0"
.LASF1694:
	.string	"PB4 PORTB4"
.LASF399:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF860:
	.string	"GPIOR03 3"
.LASF1219:
	.string	"TCNT1L4 4"
.LASF1619:
	.string	"E2END 0xFFF"
.LASF1687:
	.string	"PA5 PORTA5"
.LASF1479:
	.string	"UBRR0_7 7"
.LASF923:
	.string	"OCR0A _SFR_IO8(0x27)"
.LASF94:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF1968:
	.string	"RC5_CODE_MUTE (0x01BF & RC5_MASK)"
.LASF109:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF1983:
	.string	"LOG_UART_AVAILABLE"
.LASF2022:
	.string	"_FIFO_H_ "
.LASF1615:
	.string	"RAMSTART (0x100)"
.LASF1786:
	.string	"_T_SIZE "
.LASF77:
	.string	"__WINT_MAX__ 32767"
.LASF114:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF1198:
	.string	"COM1B0 4"
.LASF2073:
	.string	"spi_signal"
.LASF451:
	.string	"BOT_FS_AVAILABLE "
.LASF295:
	.string	"__TA_FBIT__ 47"
.LASF1386:
	.string	"TCR2AUB 1"
.LASF193:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF11:
	.string	"__ATOMIC_CONSUME 1"
.LASF1601:
	.string	"USART1_UDRE_vect_num 29"
.LASF793:
	.string	"PORTC3 3"
.LASF788:
	.string	"DDC7 7"
.LASF1349:
	.string	"OCR3BL _SFR_MEM8(0x9A)"
.LASF1755:
	.string	"BLB0_MODE_3 (0xF3)"
.LASF194:
	.string	"__USFRACT_FBIT__ 8"
.LASF1447:
	.string	"DOR0 3"
.LASF1059:
	.string	"__AVR_HAVE_PRR0_PRTIM2 "
.LASF1595:
	.string	"TWI_vect_num 26"
.LASF329:
	.string	"__AVR_HAVE_ELPM__ 1"
.LASF620:
	.string	"PRIoFAST8 \"o\""
.LASF931:
	.string	"OCR0A_7 7"
.LASF312:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF236:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF79:
	.string	"__PTRDIFF_MAX__ 32767"
.LASF219:
	.string	"__LLFRACT_FBIT__ 63"
.LASF1702:
	.string	"PC4 PORTC4"
.LASF323:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF1793:
	.string	"_SIZE_T_DECLARED "
.LASF1927:
	.string	"BOT_2_RPI_AVAILABLE "
.LASF2034:
	.string	"spr0"
.LASF2035:
	.string	"spr1"
.LASF671:
	.string	"SCNiPTR SCNi16"
.LASF798:
	.string	"PIND _SFR_IO8(0x09)"
.LASF423:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF1810:
	.string	"__LPM_word_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint16_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF2076:
	.string	"../mcu/spi.c"
.LASF447:
	.string	"DISPLAY_REMOTE_AVAILABLE "
.LASF1527:
	.string	"UBRR1_4 4"
.LASF1688:
	.string	"PA6 PORTA6"
.LASF162:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF1344:
	.string	"OCR3AH4 4"
.LASF102:
	.string	"__INT64_C(c) c ## LL"
.LASF54:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF1609:
	.string	"TIMER3_COMPB_vect_num 33"
.LASF1990:
	.string	"CREATE_TRACEFILE_AVAILABLE"
.LASF414:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF666:
	.string	"SCNdFAST32 \"ld\""
.LASF458:
	.string	"BEHAVIOUR_AVAILABLE "
.LASF161:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF1575:
	.string	"TIMER0_COMPA_vect_num 16"
.LASF1277:
	.string	"COM3B1 5"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF706:
	.string	"_SFR_BYTE(sfr) _MMIO_BYTE(_SFR_ADDR(sfr))"
.LASF1942:
	.string	"RC5_CODE_PWR (0x118C & RC5_MASK)"
.LASF518:
	.string	"INT32_C(value) __CONCAT(value, L)"
.LASF1862:
	.string	"BORDERSENSOR_POS_FW DISTSENSOR_POS_FW"
.LASF900:
	.string	"TCCR0A _SFR_IO8(0x24)"
.LASF5:
	.string	"__VERSION__ \"4.9.2\""
.LASF356:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF1967:
	.string	"RC5_CODE_CH_PC (0x11BF & RC5_MASK)"
.LASF872:
	.string	"EEDR _SFR_IO8(0x20)"
.LASF1617:
	.string	"XRAMSIZE 0"
.LASF915:
	.string	"TCNT0_0 0"
.LASF617:
	.string	"PRIiPTR PRIi16"
.LASF937:
	.string	"OCR0B_4 4"
.LASF703:
	.string	"_SFR_IO_ADDR(sfr) (_SFR_MEM_ADDR(sfr) - __SFR_OFFSET)"
.LASF801:
	.string	"PIND2 2"
.LASF1069:
	.string	"CAL3 3"
.LASF43:
	.string	"__INT64_TYPE__ long long int"
.LASF1758:
	.string	"BLB1_MODE_2 (0xEF)"
.LASF639:
	.string	"PRIX16 \"X\""
.LASF172:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF779:
	.string	"PINC7 7"
.LASF672:
	.string	"SCNo16 \"o\""
.LASF1681:
	.string	"PIN0 0"
.LASF1670:
	.string	"DD3 3"
.LASF966:
	.string	"SPE 6"
.LASF1137:
	.string	"PCINT29 5"
.LASF1380:
	.string	"OCR2_5 5"
.LASF890:
	.string	"EEAR7 7"
.LASF921:
	.string	"TCNT0_6 6"
.LASF71:
	.string	"__SHRT_MAX__ 32767"
.LASF756:
	.string	"DDB2 2"
.LASF1008:
	.string	"WDRF 3"
.LASF1443:
	.string	"UCSR0A _SFR_MEM8(0xC0)"
.LASF2074:
	.string	"spi_in_data"
.LASF997:
	.string	"OCDR6 6"
.LASF739:
	.string	"PORTA3 3"
.LASF145:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF1284:
	.string	"WGM32 3"
.LASF734:
	.string	"DDA7 7"
.LASF1689:
	.string	"PA7 PORTA7"
.LASF290:
	.string	"__HA_IBIT__ 8"
.LASF1030:
	.string	"WDP1 1"
.LASF1938:
	.string	"RC5_ADDRESS 0x07C0"
.LASF468:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF1716:
	.string	"SP _SFR_IO16(0x3D)"
.LASF1992:
	.string	"MMC_VM_AVAILABLE"
.LASF1576:
	.string	"TIMER0_COMPA_vect _VECTOR(16)"
.LASF1336:
	.string	"OCR3AL5 5"
.LASF1422:
	.string	"TWD3 3"
.LASF272:
	.string	"__HQ_IBIT__ 0"
.LASF607:
	.string	"PRIi16 \"i\""
.LASF1154:
	.string	"ADCH2 2"
.LASF2032:
	.string	"long long int"
.LASF1739:
	.string	"AVR_STACK_POINTER_HI_ADDR _SFR_IO_ADDR(SPH)"
.LASF123:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF1266:
	.string	"OCR1AH4 4"
.LASF1085:
	.string	"ISC21 5"
.LASF1865:
	.string	"PID_Ki 10"
.LASF1145:
	.string	"ADCL2 2"
.LASF85:
	.string	"__SIG_ATOMIC_MAX__ 127"
.LASF681:
	.string	"SCNo32 \"lo\""
.LASF1817:
	.ascii	"__LPM_float_enhanc"
	.string	"ed__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); float __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF297:
	.string	"__UHA_FBIT__ 8"
.LASF1089:
	.string	"PCINT2 2"
.LASF228:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF1711:
	.string	"PD5 PORTD5"
.LASF188:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF1391:
	.string	"EXCLK 6"
.LASF1736:
	.string	"AVR_STACK_POINTER_ADDR _SFR_IO_ADDR(SP)"
.LASF955:
	.string	"GPIOR24 4"
.LASF1586:
	.string	"USART0_UDRE_vect _VECTOR(21)"
.LASF133:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF91:
	.string	"__UINT8_MAX__ 255"
.LASF1611:
	.string	"TIMER3_OVF_vect_num 34"
.LASF1910:
	.string	"ENC_CORRECT_L"
.LASF1176:
	.string	"MUX1 1"
.LASF1182:
	.string	"REFS1 7"
.LASF1046:
	.string	"PRSPI 2"
.LASF1248:
	.string	"ICR1H5 5"
.LASF258:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF875:
	.string	"EEDR2 2"
.LASF1290:
	.string	"FOC3A 7"
.LASF1232:
	.string	"ICR1 _SFR_MEM16(0x86)"
.LASF1610:
	.string	"TIMER3_COMPB_vect _VECTOR(33)"
.LASF486:
	.string	"INT_LEAST32_MIN INT32_MIN"
.LASF521:
	.string	"UINT64_C(value) __CONCAT(value, ULL)"
.LASF1678:
	.string	"PIN3 3"
.LASF1228:
	.string	"TCNT1H4 4"
.LASF975:
	.string	"SPDR2 2"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF1021:
	.string	"BLBSET 3"
.LASF477:
	.string	"INT64_MIN (-INT64_MAX - 1LL)"
.LASF1561:
	.string	"TIMER2_COMPA_vect_num 9"
.LASF641:
	.string	"PRIXFAST16 \"X\""
.LASF1596:
	.string	"TWI_vect _VECTOR(26)"
.LASF747:
	.string	"PINB2 2"
.LASF1464:
	.string	"UCSZ01 2"
.LASF153:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1814:
	.ascii	"__LPM_dword_enhanced_"
	.string	"_(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF910:
	.string	"CS02 2"
.LASF1557:
	.string	"PCINT3_vect_num 7"
.LASF725:
	.string	"PINA7 7"
.LASF1107:
	.string	"PCINT18 2"
.LASF1102:
	.string	"PCINT14 6"
.LASF1542:
	.string	"UDR1_5 5"
.LASF195:
	.string	"__USFRACT_IBIT__ 0"
.LASF2044:
	.string	"lastSchedule"
.LASF1598:
	.string	"SPM_READY_vect _VECTOR(27)"
.LASF1656:
	.string	"SLEEP_MODE_EXT_STANDBY (0x07<<1)"
.LASF1952:
	.string	"RC5_CODE_9 (0x1189 & RC5_MASK)"
.LASF124:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1258:
	.string	"OCR1AL5 5"
.LASF709:
	.string	"_BV(bit) (1 << (bit))"
.LASF1947:
	.string	"RC5_CODE_4 (0x1184 & RC5_MASK)"
.LASF1712:
	.string	"PD6 PORTD6"
.LASF735:
	.string	"PORTA _SFR_IO8(0x02)"
.LASF1206:
	.string	"WGM12 3"
.LASF1912:
	.string	"ENC_CORRECT_R"
.LASF1974:
	.string	"RC5_CODE_DOWN RC5_CODE_STOP"
.LASF345:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF971:
	.string	"SPIF 7"
.LASF192:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF1705:
	.string	"PC7 PORTC7"
.LASF2:
	.string	"__GNUC__ 4"
.LASF2052:
	.string	"write2end"
.LASF1660:
	.string	"PORT5 5"
.LASF1166:
	.string	"ADATE 5"
.LASF1569:
	.string	"TIMER1_COMPA_vect_num 13"
.LASF1366:
	.string	"TCNT2_0 0"
.LASF2053:
	.string	"overflow"
.LASF1081:
	.string	"ISC01 1"
.LASF493:
	.string	"UINT_FAST8_MAX UINT8_MAX"
.LASF835:
	.string	"TOV2 0"
.LASF327:
	.string	"__AVR_ARCH__ 51"
.LASF21:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF1484:
	.string	"UBRR0_11 3"
.LASF904:
	.string	"COM0B1 5"
.LASF157:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF982:
	.string	"ACIS0 0"
.LASF163:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF1442:
	.string	"TWAM6 7"
.LASF1565:
	.string	"TIMER2_OVF_vect_num 11"
.LASF137:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF1725:
	.string	"SREG_T (6)"
.LASF861:
	.string	"GPIOR04 4"
.LASF1735:
	.string	"AVR_STACK_POINTER_REG SP"
.LASF1220:
	.string	"TCNT1L5 5"
.LASF1481:
	.string	"UBRR0_8 0"
.LASF1261:
	.string	"OCR1AH _SFR_MEM8(0x89)"
.LASF1916:
	.string	"PWMSTART_L 50"
.LASF1756:
	.string	"BLB0_MODE_4 (0xF7)"
.LASF1994:
	.string	"LOG_STDOUT_AVAILABLE"
.LASF278:
	.string	"__TQ_IBIT__ 0"
.LASF689:
	.string	"SCNxFAST32 \"lx\""
.LASF1564:
	.string	"TIMER2_COMPB_vect _VECTOR(10)"
.LASF936:
	.string	"OCR0B_3 3"
.LASF1402:
	.string	"TWPS0 0"
.LASF1051:
	.string	"PRTWI 7"
.LASF19:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF476:
	.string	"INT64_MAX 0x7fffffffffffffffLL"
.LASF187:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1782:
	.string	"__SIZE_T__ "
.LASF811:
	.string	"DDD3 3"
.LASF1429:
	.string	"TWEN 2"
.LASF31:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF2062:
	.string	"__vector_19"
.LASF794:
	.string	"PORTC4 4"
.LASF52:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF1921:
	.string	"UART_BAUD 500000"
.LASF1423:
	.string	"TWD4 4"
.LASF2021:
	.string	"os_enterCS() { os_scheduling_allowed = 0; __asm__ __volatile__(\"\":::\"memory\"); }"
.LASF1498:
	.string	"DOR1 3"
.LASF1572:
	.string	"TIMER1_COMPB_vect _VECTOR(14)"
.LASF1169:
	.string	"ADCSRB _SFR_MEM8(0x7B)"
.LASF155:
	.string	"__LDBL_DIG__ 6"
.LASF1054:
	.string	"__AVR_HAVE_PRR0_PRSPI "
.LASF1146:
	.string	"ADCL3 3"
.LASF471:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF1640:
	.string	"HFUSE_DEFAULT (FUSE_BOOTSZ0 & FUSE_SPIEN & FUSE_JTAGEN)"
.LASF204:
	.string	"__UFRACT_FBIT__ 16"
.LASF2028:
	.string	"unsigned int"
.LASF460:
	.string	"OS_AVAILABLE "
.LASF1906:
	.string	"MAX_PILLAR_DISTANCE 500"
.LASF1767:
	.string	"SIGNAL(vector) void vector (void) __attribute__ ((signal, __INTR_ATTRS)); void vector (void)"
.LASF324:
	.string	"__AVR 1"
.LASF573:
	.string	"fminf fmin"
.LASF1726:
	.string	"SREG_I (7)"
.LASF1453:
	.string	"TXB80 0"
.LASF1652:
	.string	"SLEEP_MODE_ADC (0x01<<1)"
.LASF1365:
	.string	"TCNT2 _SFR_MEM8(0xB2)"
.LASF1737:
	.string	"_HAVE_AVR_STACK_POINTER_HI 1"
.LASF789:
	.string	"PORTC _SFR_IO8(0x08)"
.LASF2080:
	.string	"fifo_init"
.LASF1875:
	.string	"PID_START_DELAY 20"
.LASF729:
	.string	"DDA2 2"
.LASF1848:
	.string	"pgm_read_byte(address_short) pgm_read_byte_near(address_short)"
.LASF1816:
	.ascii	"__LPM_float_tiny__(addr) (__"
	.string	"extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; float __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF298:
	.string	"__UHA_IBIT__ 8"
.LASF1719:
	.string	"SREG_C (0)"
.LASF810:
	.string	"DDD2 2"
.LASF34:
	.string	"__WINT_TYPE__ int"
.LASF1558:
	.string	"PCINT3_vect _VECTOR(7)"
.LASF523:
	.string	"UINTMAX_C(value) __CONCAT(value, ULL)"
.LASF1545:
	.string	"INT0_vect_num 1"
.LASF892:
	.string	"EEAR8 0"
.LASF120:
	.string	"__UINTPTR_MAX__ 65535U"
.LASF1593:
	.string	"EE_READY_vect_num 25"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF3:
	.string	"__GNUC_MINOR__ 9"
.LASF1720:
	.string	"SREG_Z (1)"
.LASF1310:
	.string	"ICR3 _SFR_MEM16(0x96)"
.LASF1934:
	.string	"CAM_CENTER"
.LASF442:
	.string	"BOT_2_SIM_AVAILABLE "
.LASF882:
	.string	"EEARL _SFR_IO8(0x21)"
.LASF180:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF690:
	.string	"SCNoPTR SCNo16"
.LASF938:
	.string	"OCR0B_5 5"
.LASF695:
	.string	"_MMIO_DWORD(mem_addr) (*(volatile uint32_t *)(mem_addr))"
.LASF39:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF802:
	.string	"PIND3 3"
.LASF1070:
	.string	"CAL4 4"
.LASF1312:
	.string	"ICR3L0 0"
.LASF714:
	.string	"loop_until_bit_is_clear(sfr,bit) do { } while (bit_is_set(sfr, bit))"
.LASF1142:
	.string	"ADCL _SFR_MEM8(0x78)"
.LASF271:
	.string	"__HQ_FBIT__ 15"
.LASF1055:
	.string	"__AVR_HAVE_PRR0_PRTIM1 "
.LASF602:
	.string	"PRIiLEAST8 \"i\""
.LASF1356:
	.string	"COM2A0 6"
.LASF1381:
	.string	"OCR2_6 6"
.LASF333:
	.string	"__AVR_ENHANCED__ 1"
.LASF922:
	.string	"TCNT0_7 7"
.LASF757:
	.string	"DDB3 3"
.LASF1868:
	.string	"PID_SHIFT 4"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF654:
	.string	"PRIoPTR PRIo16"
.LASF1121:
	.string	"ICIE1 5"
.LASF740:
	.string	"PORTA4 4"
.LASF1836:
	.ascii	"__ELPM_float_classic__(addr) (__extension__({ uint32_t __add"
	.ascii	"r32 = (uint32_t)(addr); float __result; __asm__ __volatile__"
	.ascii	" ( \"out %2, %C1\" \"\\n\\t\" \"mov r31, %B1\" \"\\n\\t\" \""
	.ascii	"mov r30, %A1\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %A0, r0\""
	.ascii	" \"\\n\\t\" \"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\"
	.ascii	"t\" \"adc r0, __zero_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n"
	.ascii	"\\t\" \"elpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"in r0"
	.ascii	", %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r0, __zer"
	.ascii	"o_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"el"
	.string	"pm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r0, __zero_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"r\" (__addr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r0\", \"r30\", \"r31\" ); __result; }))"
.LASF1285:
	.string	"WGM33 4"
.LASF50:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF7:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF1031:
	.string	"WDP2 2"
.LASF526:
	.string	"M_E 2.7182818284590452354"
.LASF2015:
	.string	"OS_KERNEL_STACKSIZE 36"
.LASF359:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF2018:
	.string	"OS_DELAYED_FUNC_CNT 8"
.LASF1784:
	.string	"_SYS_SIZE_T_H "
.LASF1337:
	.string	"OCR3AL6 6"
.LASF149:
	.string	"__DBL_EPSILON__ ((double)1.19209290e-7L)"
.LASF1939:
	.string	"RC5_COMMAND 0x103F"
.LASF212:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF346:
	.string	"__BUILTIN_AVR_SEI 1"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.5.0_419) 4.9.2"
.global __do_clear_bss
