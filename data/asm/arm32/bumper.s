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
	.file	"bumper.c"
	.text
	.align	2
	.global	init_bumper
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	init_bumper, %function
init_bumper:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-8]
	str	r2, [r3, #12]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-8]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #1]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #3]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #5]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #6]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #7]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #11]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	init_bumper, .-init_bumper
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	brake, %function
brake:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L3
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L4
	ldr	r3, [fp, #-8]
	mov	r2, #1
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
.L4:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L5
	ldr	r3, [fp, #-8]
	mov	r2, #1
	strb	r2, [r3]
.L5:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	ldr	r3, [fp, #-8]
	mov	r2, #1
	strb	r2, [r3, #3]
	b	.L10
.L3:
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L8
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3]
.L8:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L9
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #3]
.L9:
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #7]
.L10:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	brake, .-brake
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	brake_flash, %function
brake_flash:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	sub	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vstr.64	d7, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vldr.64	d6, .L16
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bgt	.L14
	b	.L15
.L14:
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #1]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #7]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L15
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #7]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #6]
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #4]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
.L15:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L17:
	.align	3
.L16:
	.word	0
	.word	1090421888
	.size	brake_flash, .-brake_flash
	.align	2
	.global	turn_signal_routine
	.syntax unified
	.arm
	.fpu vfp
	.type	turn_signal_routine, %function
turn_signal_routine:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	sub	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vstr.64	d7, [fp, #-12]
	vldr.64	d7, [fp, #-12]
	vldr.64	d6, .L27
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bgt	.L25
	b	.L26
.L25:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	cmp	r3, #14
	bne	.L21
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #10]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #3]
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3]
	b	.L22
.L21:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L23
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	strb	r2, [r3]
	b	.L22
.L23:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L24
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #3]
	b	.L22
.L24:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	cmp	r3, #15
	beq	.L22
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #10]
.L22:
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-16]
	str	r2, [r3, #16]
.L26:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L28:
	.align	3
.L27:
	.word	0
	.word	1091470464
	.size	turn_signal_routine, .-turn_signal_routine
	.align	2
	.global	brake_routine
	.syntax unified
	.arm
	.fpu vfp
	.type	brake_routine, %function
brake_routine:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L30
	ldr	r0, [fp, #-8]
	bl	brake_flash
.L30:
	ldr	r0, [fp, #-8]
	bl	brake
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	brake_routine, .-brake_routine
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
