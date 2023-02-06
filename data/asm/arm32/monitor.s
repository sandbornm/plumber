	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"monitor.c"
	.text
	.align	2
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	__bswap_32, %function
__bswap_32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	rev	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__bswap_32, .-__bswap_32
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	__bswap_64, %function
__bswap_64:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	strd	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	rev	r2, r3
	ldr	r3, [fp, #-8]
	rev	r3, r3
	mov	r0, r3
	mov	r1, r2
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__bswap_64, .-__bswap_64
	.comm	SML,8,4
	.align	2
	.global	initialize_spn_monitor
	.syntax unified
	.arm
	.fpu vfp
	.type	initialize_spn_monitor, %function
initialize_spn_monitor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	mov	r0, #40
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L6
	str	r2, [r3]
	ldr	r3, .L6
	mov	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, .L6
	mov	r2, #1
	strb	r2, [r3, #6]
	nop
	pop	{fp, pc}
.L7:
	.align	2
.L6:
	.word	SML
	.size	initialize_spn_monitor, .-initialize_spn_monitor
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Cleared SPN list\000"
	.align	2
.LC1:
	.ascii	"Added SPN %i to list\012\000"
	.align	2
.LC2:
	.ascii	"Removed SPN %i from list\012\000"
	.align	2
.LC3:
	.ascii	"Silenced SPN monitor\000"
	.align	2
.LC4:
	.ascii	"Activated SPN monitor\000"
	.align	2
.LC5:
	.ascii	"Full SPN monitoring activated\000"
	.align	2
.LC6:
	.ascii	"Monitor control %i not supported\012\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	process_control_frame, %function
process_control_frame:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]
	strb	r3, [fp, #-13]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r3, #4
	ldr	r3, [r3]	@ unaligned
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	bl	__bswap_32
	mov	r3, r0
	str	r3, [fp, #-20]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L9
.L11:
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L10
.L16:
	ldr	r3, .L30
	ldr	r3, [r3]
	mov	r0, r3
	bl	free
	mov	r0, #40
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L30
	str	r2, [r3]
	ldr	r3, .L30
	mov	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r0, .L30+4
	bl	puts
	b	.L8
.L15:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L18
.L20:
	ldr	r3, .L30
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	beq	.L28
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L18:
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	blt	.L20
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	add	r1, r3, #1
	ldr	r3, .L30+8
	smull	r2, r3, r3, r1
	asr	r2, r3, #2
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, r1, r3
	cmp	r2, #0
	bne	.L21
	ldr	r3, .L30
	ldr	r2, [r3]
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	add	r3, r3, #10
	lsl	r3, r3, #2
	mov	r1, r3
	mov	r0, r2
	bl	realloc
	mov	r2, r0
	ldr	r3, .L30
	str	r2, [r3]
.L21:
	ldr	r3, .L30
	ldr	r2, [r3]
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	str	r2, [r3]
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	add	r3, r3, #1
	uxth	r3, r3
	ldr	r2, .L30
	strh	r3, [r2, #4]	@ movhi
	ldr	r3, [fp, #-20]
	mov	r1, r3
	ldr	r0, .L30+12
	bl	printf
	b	.L8
.L14:
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	beq	.L29
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L23
.L26:
	ldr	r3, .L30
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L24
	ldr	r3, .L30
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	add	r0, r2, r3
	ldr	r3, .L30
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	lsl	r3, r3, #2
	add	r1, r2, r3
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	sub	r3, r2, r3
	sub	r3, r3, #1
	lsl	r3, r3, #2
	mov	r2, r3
	bl	memmove
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	sub	r3, r3, #1
	uxth	r3, r3
	ldr	r2, .L30
	strh	r3, [r2, #4]	@ movhi
	ldr	r3, .L30
	ldrh	r2, [r3, #4]
	ldr	r3, .L30+16
	umull	r1, r3, r3, r2
	lsr	r1, r3, #3
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	sub	r3, r2, r3
	uxth	r3, r3
	cmp	r3, #0
	bne	.L25
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	beq	.L25
	ldr	r3, .L30
	ldr	r2, [r3]
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	lsl	r3, r3, #2
	mov	r1, r3
	mov	r0, r2
	bl	realloc
	mov	r2, r0
	ldr	r3, .L30
	str	r2, [r3]
.L25:
	ldr	r3, [fp, #-20]
	mov	r1, r3
	ldr	r0, .L30+20
	bl	printf
	b	.L8
.L24:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L23:
	ldr	r3, .L30
	ldrh	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	blt	.L26
	b	.L29
.L13:
	ldr	r3, .L30
	mov	r2, #0
	strb	r2, [r3, #6]
	ldr	r0, .L30+24
	bl	puts
	b	.L8
.L12:
	ldr	r3, .L30
	mov	r2, #1
	strb	r2, [r3, #6]
	ldr	r0, .L30+28
	bl	puts
	b	.L8
.L10:
	ldr	r3, .L30
	mov	r2, #2
	strb	r2, [r3, #6]
	ldr	r0, .L30+32
	bl	puts
	b	.L8
.L9:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L30+36
	bl	printf
	nop
	b	.L8
.L28:
	nop
	b	.L8
.L29:
	nop
.L8:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L31:
	.align	2
.L30:
	.word	SML
	.word	.LC0
	.word	1717986919
	.word	.LC1
	.word	-858993459
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	process_control_frame, .-process_control_frame
	.section	.rodata
	.align	2
.LC7:
	.ascii	"Failed to forward data\000"
	.text
	.align	2
	.global	monitor_spns
	.syntax unified
	.arm
	.fpu vfp
	.type	monitor_spns, %function
monitor_spns:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20
	sub	sp, sp, #96
	str	r0, [fp, #-96]
	str	r1, [fp, #-100]
	str	r2, [fp, #-104]
	ldr	r3, [fp, #-100]
	ldr	r2, .L53
	cmp	r3, r2
	bne	.L33
	ldr	r0, [fp, #-104]
	bl	process_control_frame
	b	.L32
.L33:
	ldr	r3, .L53+4
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	ldr	r0, [fp, #-100]
	bl	fetch_pgn
	str	r0, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L52
	mov	r3, #0
	str	r3, [fp, #-56]
	sub	r2, fp, #56
	ldr	r3, [fp, #-48]
	mov	r0, r2
	blx	r3
	str	r0, [fp, #-52]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-28]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-76]
	ldr	r3, [fp, #-100]
	lsl	r3, r3, #8
	str	r3, [fp, #-92]
	mov	r3, #8
	strb	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-32]
	sub	r3, fp, #92
	add	r3, r3, #8
	mov	r2, #8
	mov	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r3, .L53+4
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L37
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L38
.L39:
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	ldr	r3, [r3]
	sub	r2, fp, #64
	ldr	r1, [fp, #-104]
	mov	r0, r2
	blx	r3
	ldr	r3, [fp, #-64]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L38:
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-36]
	cmp	r2, r3
	blt	.L39
	ldr	r2, [fp, #-104]
	sub	r3, fp, #84
	ldr	r0, [r2]	@ unaligned
	ldr	r1, [r2, #4]	@ unaligned
	stmia	r3!, {r0, r1}
	sub	r3, fp, #92
	mov	r2, #16
	mov	r1, r3
	ldr	r0, [fp, #-96]
	bl	write
	mov	r3, r0
	cmp	r3, #16
	beq	.L40
	ldr	r1, .L53+8
	mov	r0, #1
	bl	err
.L37:
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L41
.L49:
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L42
.L48:
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r3, .L53+4
	ldr	r2, [r3]
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3]
	cmp	r1, r3
	bne	.L43
	mov	r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	ldr	r3, [r3]
	sub	r2, fp, #116
	ldr	r1, [fp, #-104]
	mov	r0, r2
	blx	r3
	sub	r3, fp, #64
	sub	r2, fp, #116
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldrh	r3, [fp, #-60]
	cmp	r3, #0
	bne	.L44
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	strd	r2, [fp, #-28]
	b	.L45
.L44:
	ldrh	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L46
	ldr	r3, [fp, #-64]
	ldrh	r3, [r3]
	uxth	r2, r3
	mov	r3, #0
	strd	r2, [fp, #-28]
	b	.L45
.L46:
	ldrh	r3, [fp, #-60]
	cmp	r3, #2
	bne	.L47
	ldr	r3, [fp, #-64]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #0
	strd	r2, [fp, #-28]
	b	.L45
.L47:
	ldr	r3, [fp, #-64]
	ldrd	r2, [r3]
	strd	r2, [fp, #-28]
.L45:
	ldrh	r3, [fp, #-58]
	mov	r1, r3
	ldrd	r2, [fp, #-28]
	sub	ip, r1, #32
	rsb	r0, r1, #32
	lsl	r5, r3, r1
	orr	r5, r5, r2, lsl ip
	orr	r5, r5, r2, lsr r0
	lsl	r4, r2, r1
	strd	r4, [fp, #-28]
	ldrd	r0, [fp, #-76]
	ldrd	r2, [fp, #-28]
	orr	r6, r0, r2
	orr	r7, r1, r3
	strd	r6, [fp, #-76]
	ldr	r3, [fp, #-64]
	mov	r0, r3
	bl	free
.L43:
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L42:
	ldr	r3, .L53+4
	ldrh	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-44]
	cmp	r3, r2
	blt	.L48
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L41:
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-40]
	cmp	r2, r3
	blt	.L49
	ldr	r3, [fp, #-32]
	cmp	r3, #1
	bne	.L40
	ldrd	r2, [fp, #-76]
	mov	r0, r2
	mov	r1, r3
	bl	__bswap_64
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-76]
	sub	r3, fp, #84
	sub	r2, fp, #76
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	sub	r3, fp, #92
	mov	r2, #16
	mov	r1, r3
	ldr	r0, [fp, #-96]
	bl	write
	mov	r3, r0
	cmp	r3, #16
	beq	.L40
	ldr	r1, .L53+8
	mov	r0, #1
	bl	err
.L40:
	ldr	r0, [fp, #-52]
	bl	free
	b	.L32
.L51:
	nop
	b	.L32
.L52:
	nop
.L32:
	sub	sp, fp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
.L54:
	.align	2
.L53:
	.word	65518
	.word	SML
	.word	.LC7
	.size	monitor_spns, .-monitor_spns
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
