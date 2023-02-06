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
	.file	"gpio.c"
	.text
	.local	pinOL
	.comm	pinOL,20,4
	.local	pinIL
	.comm	pinIL,20,4
	.local	pinIR
	.comm	pinIR,20,4
	.local	pinOR
	.comm	pinOR,20,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"/sys/devices/platform/ocp/ocp:P8_46_pinmux/state\000"
	.align	2
.LC1:
	.ascii	"/sys/devices/platform/ocp/48304000.epwmss/48304200."
	.ascii	"pwm/pwm/pwmchip7/pwm-7:1/enable\000"
	.align	2
.LC2:
	.ascii	"/sys/devices/platform/ocp/48304000.epwmss/48304200."
	.ascii	"pwm/pwm/pwmchip7/pwm-7:1/period\000"
	.align	2
.LC3:
	.ascii	"/sys/devices/platform/ocp/48304000.epwmss/48304200."
	.ascii	"pwm/pwm/pwmchip7/pwm-7:1/polarity\000"
	.align	2
.LC4:
	.ascii	"/sys/devices/platform/ocp/48304000.epwmss/48304200."
	.ascii	"pwm/pwm/pwmchip7/pwm-7:1/duty_cycle\000"
	.align	2
.LC5:
	.ascii	"/sys/devices/platform/ocp/ocp:P8_34_pinmux/state\000"
	.align	2
.LC6:
	.ascii	"/sys/devices/platform/ocp/48302000.epwmss/48302200."
	.ascii	"pwm/pwm/pwmchip4/pwm-4:1/enable\000"
	.align	2
.LC7:
	.ascii	"/sys/devices/platform/ocp/48302000.epwmss/48302200."
	.ascii	"pwm/pwm/pwmchip4/pwm-4:1/period\000"
	.align	2
.LC8:
	.ascii	"/sys/devices/platform/ocp/48302000.epwmss/48302200."
	.ascii	"pwm/pwm/pwmchip4/pwm-4:1/polarity\000"
	.align	2
.LC9:
	.ascii	"/sys/devices/platform/ocp/48302000.epwmss/48302200."
	.ascii	"pwm/pwm/pwmchip4/pwm-4:1/duty_cycle\000"
	.align	2
.LC10:
	.ascii	"/sys/devices/platform/ocp/ocp:P8_36_pinmux/state\000"
	.align	2
.LC11:
	.ascii	"/sys/devices/platform/ocp/48302000.epwmss/48302200."
	.ascii	"pwm/pwm/pwmchip4/pwm-4:0/enable\000"
	.align	2
.LC12:
	.ascii	"/sys/devices/platform/ocp/48302000.epwmss/48302200."
	.ascii	"pwm/pwm/pwmchip4/pwm-4:0/period\000"
	.align	2
.LC13:
	.ascii	"/sys/devices/platform/ocp/48302000.epwmss/48302200."
	.ascii	"pwm/pwm/pwmchip4/pwm-4:0/polarity\000"
	.align	2
.LC14:
	.ascii	"/sys/devices/platform/ocp/48302000.epwmss/48302200."
	.ascii	"pwm/pwm/pwmchip4/pwm-4:0/duty_cycle\000"
	.align	2
.LC15:
	.ascii	"/sys/devices/platform/ocp/ocp:P8_45_pinmux/state\000"
	.align	2
.LC16:
	.ascii	"/sys/devices/platform/ocp/48304000.epwmss/48304200."
	.ascii	"pwm/pwm/pwmchip7/pwm-7:0/enable\000"
	.align	2
.LC17:
	.ascii	"/sys/devices/platform/ocp/48304000.epwmss/48304200."
	.ascii	"pwm/pwm/pwmchip7/pwm-7:0/period\000"
	.align	2
.LC18:
	.ascii	"/sys/devices/platform/ocp/48304000.epwmss/48304200."
	.ascii	"pwm/pwm/pwmchip7/pwm-7:0/polarity\000"
	.align	2
.LC19:
	.ascii	"/sys/devices/platform/ocp/48304000.epwmss/48304200."
	.ascii	"pwm/pwm/pwmchip7/pwm-7:0/duty_cycle\000"
	.text
	.align	2
	.global	initialize_pins
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	initialize_pins, %function
initialize_pins:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	mov	r1, #2
	ldr	r0, .L2
	bl	open
	mov	r2, r0
	ldr	r3, .L2+4
	str	r2, [r3]
	mov	r1, #2
	ldr	r0, .L2+8
	bl	open
	mov	r2, r0
	ldr	r3, .L2+4
	str	r2, [r3, #16]
	mov	r1, #2
	ldr	r0, .L2+12
	bl	open
	mov	r2, r0
	ldr	r3, .L2+4
	str	r2, [r3, #4]
	mov	r1, #2
	ldr	r0, .L2+16
	bl	open
	mov	r2, r0
	ldr	r3, .L2+4
	str	r2, [r3, #12]
	mov	r1, #2
	ldr	r0, .L2+20
	bl	open
	mov	r2, r0
	ldr	r3, .L2+4
	str	r2, [r3, #8]
	mov	r1, #2
	ldr	r0, .L2+24
	bl	open
	mov	r2, r0
	ldr	r3, .L2+28
	str	r2, [r3]
	mov	r1, #2
	ldr	r0, .L2+32
	bl	open
	mov	r2, r0
	ldr	r3, .L2+28
	str	r2, [r3, #16]
	mov	r1, #2
	ldr	r0, .L2+36
	bl	open
	mov	r2, r0
	ldr	r3, .L2+28
	str	r2, [r3, #4]
	mov	r1, #2
	ldr	r0, .L2+40
	bl	open
	mov	r2, r0
	ldr	r3, .L2+28
	str	r2, [r3, #12]
	mov	r1, #2
	ldr	r0, .L2+44
	bl	open
	mov	r2, r0
	ldr	r3, .L2+28
	str	r2, [r3, #8]
	mov	r1, #2
	ldr	r0, .L2+48
	bl	open
	mov	r2, r0
	ldr	r3, .L2+52
	str	r2, [r3]
	mov	r1, #2
	ldr	r0, .L2+56
	bl	open
	mov	r2, r0
	ldr	r3, .L2+52
	str	r2, [r3, #16]
	mov	r1, #2
	ldr	r0, .L2+60
	bl	open
	mov	r2, r0
	ldr	r3, .L2+52
	str	r2, [r3, #4]
	mov	r1, #2
	ldr	r0, .L2+64
	bl	open
	mov	r2, r0
	ldr	r3, .L2+52
	str	r2, [r3, #12]
	mov	r1, #2
	ldr	r0, .L2+68
	bl	open
	mov	r2, r0
	ldr	r3, .L2+52
	str	r2, [r3, #8]
	mov	r1, #2
	ldr	r0, .L2+72
	bl	open
	mov	r2, r0
	ldr	r3, .L2+76
	str	r2, [r3]
	mov	r1, #2
	ldr	r0, .L2+80
	bl	open
	mov	r2, r0
	ldr	r3, .L2+76
	str	r2, [r3, #16]
	mov	r1, #2
	ldr	r0, .L2+84
	bl	open
	mov	r2, r0
	ldr	r3, .L2+76
	str	r2, [r3, #4]
	mov	r1, #2
	ldr	r0, .L2+88
	bl	open
	mov	r2, r0
	ldr	r3, .L2+76
	str	r2, [r3, #12]
	mov	r1, #2
	ldr	r0, .L2+92
	bl	open
	mov	r2, r0
	ldr	r3, .L2+76
	str	r2, [r3, #8]
	nop
	pop	{fp, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	pinOL
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	pinIL
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	pinIR
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	pinOR
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.size	initialize_pins, .-initialize_pins
	.align	2
	.global	close_pins
	.syntax unified
	.arm
	.fpu vfp
	.type	close_pins, %function
close_pins:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L5
	ldr	r3, [r3]
	mov	r0, r3
	bl	close
	ldr	r3, .L5
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	close
	ldr	r3, .L5
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	close
	ldr	r3, .L5
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	close
	ldr	r3, .L5
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+4
	ldr	r3, [r3]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+4
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+4
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+4
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+4
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+8
	ldr	r3, [r3]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+8
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+8
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+8
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+8
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+12
	ldr	r3, [r3]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+12
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+12
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+12
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	close
	ldr	r3, .L5+12
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	close
	nop
	pop	{fp, pc}
.L6:
	.align	2
.L5:
	.word	pinOL
	.word	pinIL
	.word	pinIR
	.word	pinOR
	.size	close_pins, .-close_pins
	.align	2
	.global	get_pin
	.syntax unified
	.arm
	.fpu vfp
	.type	get_pin, %function
get_pin:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L8
.L10:
	.word	.L13
	.word	.L12
	.word	.L11
	.word	.L9
.L13:
	ldr	r3, [fp, #-8]
	ldr	r2, .L15
	mov	ip, r3
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L7
.L12:
	ldr	r3, [fp, #-8]
	ldr	r2, .L15+4
	mov	ip, r3
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L7
.L11:
	ldr	r3, [fp, #-8]
	ldr	r2, .L15+8
	mov	ip, r3
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L7
.L9:
	ldr	r3, [fp, #-8]
	ldr	r2, .L15+12
	mov	ip, r3
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L7
.L8:
	ldr	r3, [fp, #-8]
	ldr	r2, .L15
	mov	ip, r3
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
.L7:
	ldr	r0, [fp, #-8]
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L16:
	.align	2
.L15:
	.word	pinOL
	.word	pinIL
	.word	pinIR
	.word	pinOR
	.size	get_pin, .-get_pin
	.section	.rodata
	.align	2
.LC20:
	.ascii	"1\000"
	.align	2
.LC21:
	.ascii	"0\000"
	.text
	.align	2
	.global	set_power
	.syntax unified
	.arm
	.fpu vfp
	.type	set_power, %function
set_power:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-8]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [fp, #-8]
	mov	r2, #1
	ldr	r1, .L21
	mov	r0, r3
	bl	write
	b	.L20
.L18:
	ldr	r3, [fp, #-8]
	mov	r2, #1
	ldr	r1, .L21+4
	mov	r0, r3
	bl	write
.L20:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L22:
	.align	2
.L21:
	.word	.LC20
	.word	.LC21
	.size	set_power, .-set_power
	.section	.rodata
	.align	2
.LC22:
	.ascii	"pwm\000"
	.text
	.align	2
	.global	set_state
	.syntax unified
	.arm
	.fpu vfp
	.type	set_state, %function
set_state:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-24]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-24]
	mov	r2, #3
	ldr	r1, .L24
	mov	r0, r3
	bl	write
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L25:
	.align	2
.L24:
	.word	.LC22
	.size	set_state, .-set_state
	.align	2
	.global	enable_pin
	.syntax unified
	.arm
	.fpu vfp
	.type	enable_pin, %function
enable_pin:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-8]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-8]
	mov	r2, #1
	ldr	r1, .L27
	mov	r0, r3
	bl	write
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L28:
	.align	2
.L27:
	.word	.LC20
	.size	enable_pin, .-enable_pin
	.align	2
	.global	disable_pin
	.syntax unified
	.arm
	.fpu vfp
	.type	disable_pin, %function
disable_pin:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-8]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-8]
	mov	r2, #1
	ldr	r1, .L30
	mov	r0, r3
	bl	write
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L31:
	.align	2
.L30:
	.word	.LC21
	.size	disable_pin, .-disable_pin
	.section	.rodata
	.align	2
.LC23:
	.ascii	"normal\000"
	.text
	.align	2
	.global	polarity_normal
	.syntax unified
	.arm
	.fpu vfp
	.type	polarity_normal, %function
polarity_normal:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-12]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-12]
	mov	r2, #6
	ldr	r1, .L33
	mov	r0, r3
	bl	write
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L34:
	.align	2
.L33:
	.word	.LC23
	.size	polarity_normal, .-polarity_normal
	.align	2
	.global	set_period
	.syntax unified
	.arm
	.fpu vfp
	.type	set_period, %function
set_period:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	mov	r3, r2
	strb	r3, [fp, #-37]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-20]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-20]
	ldrb	r2, [fp, #-37]	@ zero_extendqisi2
	ldr	r1, [fp, #-36]
	mov	r0, r3
	bl	write
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	set_period, .-set_period
	.align	2
	.global	get_period
	.syntax unified
	.arm
	.fpu vfp
	.type	get_period, %function
get_period:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-20]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-20]
	mov	r2, #100
	ldr	r1, [fp, #-36]
	mov	r0, r3
	bl	read
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	get_period, .-get_period
	.section	.rodata
	.align	2
.LC24:
	.ascii	"100\000"
	.align	2
.LC25:
	.ascii	"10\000"
	.text
	.align	2
	.global	set_duty
	.syntax unified
	.arm
	.fpu vfp
	.type	set_duty, %function
set_duty:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-16]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-36]
	cmp	r3, #100
	bne	.L38
	ldr	r3, [fp, #-16]
	mov	r2, #4
	ldr	r1, .L41
	mov	r0, r3
	bl	write
	b	.L40
.L38:
	ldr	r3, [fp, #-16]
	mov	r2, #3
	ldr	r1, .L41+4
	mov	r0, r3
	bl	write
.L40:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L42:
	.align	2
.L41:
	.word	.LC24
	.word	.LC25
	.size	set_duty, .-set_duty
	.align	2
	.global	get_duty
	.syntax unified
	.arm
	.fpu vfp
	.type	get_duty, %function
get_duty:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	sub	r3, fp, #24
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	get_pin
	ldr	r3, [fp, #-16]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	lseek
	ldr	r3, [fp, #-16]
	mov	r2, #100
	ldr	r1, [fp, #-36]
	mov	r0, r3
	bl	read
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	get_duty, .-get_duty
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
