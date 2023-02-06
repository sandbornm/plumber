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
	.file	"watchdog.c"
	.text
	.local	watchdog_fd
	.comm	watchdog_fd,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"/dev/null\000"
	.align	2
.LC1:
	.ascii	"V\000"
	.align	2
.LC2:
	.ascii	"setwdtimeout\012\000"
	.text
	.align	2
	.global	setwdtimeout
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	setwdtimeout, %function
setwdtimeout:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L5
	ldr	r2, .L6
	ldr	r1, .L6+4
	mvn	r0, #99
	bl	openat
	str	r0, [fp, #-12]
	mov	r2, #1
	ldr	r1, .L6+8
	ldr	r0, [fp, #-12]
	bl	write
	sub	r3, fp, #16
	mov	r2, r3
	ldr	r1, .L6+12
	ldr	r0, [fp, #-12]
	bl	ioctl
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L4
	ldr	r0, .L6+16
	bl	perror
.L4:
	ldr	r0, [fp, #-12]
	bl	close
	b	.L1
.L5:
	nop
.L1:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L7:
	.align	2
.L6:
	.word	524289
	.word	.LC0
	.word	.LC1
	.word	-1073457402
	.word	.LC2
	.size	setwdtimeout, .-setwdtimeout
	.section	.rodata
	.align	2
.LC3:
	.ascii	"Unable to open watchdog\012\000"
	.text
	.align	2
	.global	wake_watchdog
	.syntax unified
	.arm
	.fpu vfp
	.type	wake_watchdog, %function
wake_watchdog:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	mov	r1, #1
	ldr	r0, .L11
	bl	open
	mov	r2, r0
	ldr	r3, .L11+4
	str	r2, [r3]
	ldr	r3, .L11+4
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L10
	ldr	r0, .L11+8
	bl	perror
	ldr	r3, .L11+4
	mvn	r2, #0
	str	r2, [r3]
.L10:
	nop
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	watchdog_fd
	.word	.LC3
	.size	wake_watchdog, .-wake_watchdog
	.section	.rodata
	.align	2
.LC4:
	.ascii	"\000\000"
	.align	2
.LC5:
	.ascii	"Failed to feed watchdog\012\000"
	.text
	.align	2
	.global	feed_watchdog
	.syntax unified
	.arm
	.fpu vfp
	.type	feed_watchdog, %function
feed_watchdog:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L16
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L15
	ldr	r3, .L16
	ldr	r3, [r3]
	mov	r2, #1
	ldr	r1, .L16+4
	mov	r0, r3
	bl	write
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bgt	.L15
	ldr	r0, .L16+8
	bl	perror
.L15:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L17:
	.align	2
.L16:
	.word	watchdog_fd
	.word	.LC4
	.word	.LC5
	.size	feed_watchdog, .-feed_watchdog
	.section	.rodata
	.align	2
.LC6:
	.ascii	"Error resting watchdog\012\000"
	.text
	.align	2
	.global	rest_watchdog
	.syntax unified
	.arm
	.fpu vfp
	.type	rest_watchdog, %function
rest_watchdog:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L21
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L20
	ldr	r3, .L21
	ldr	r3, [r3]
	mov	r0, r3
	bl	close
	mov	r3, r0
	cmp	r3, #0
	bge	.L20
	ldr	r0, .L21+4
	bl	perror
.L20:
	nop
	pop	{fp, pc}
.L22:
	.align	2
.L21:
	.word	watchdog_fd
	.word	.LC6
	.size	rest_watchdog, .-rest_watchdog
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
