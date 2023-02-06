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
	.file	"main.c"
	.text
	.align	2
	.arch armv6
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
	.global	conf
	.data
	.align	3
	.type	conf, %object
	.size	conf, 48
conf:
	.space	16
	.byte	127
	.space	11
	.word	1
	.word	418316032
	.byte	8
	.space	11
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Usage %s [can_interface] [-f <path to logfile>] [-w"
	.ascii	" <watchdog timeout>]\012\000"
	.text
	.align	2
	.global	usage
	.syntax unified
	.arm
	.fpu vfp
	.type	usage, %function
usage:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, .L4
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	ldr	r1, .L4+4
	mov	r0, r3
	bl	fprintf
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L5:
	.align	2
.L4:
	.word	stderr
	.word	.LC0
	.size	usage, .-usage
	.section	.rodata
	.align	2
.LC1:
	.ascii	"/tmp/challenge09.log\000"
	.align	2
.LC2:
	.ascii	"vcan0\000"
	.align	2
.LC3:
	.ascii	"can0\000"
	.align	2
.LC4:
	.ascii	"hf:w:s:\000"
	.align	2
.LC5:
	.ascii	"Failed to create socket\000"
	.align	2
.LC6:
	.ascii	"CAN Socket created\000"
	.align	2
.LC7:
	.ascii	"Forward CAN socket created\000"
	.align	2
.LC8:
	.ascii	"1000\000"
	.align	2
.LC9:
	.ascii	"Could not allocate Bumper\000"
	.align	2
.LC10:
	.ascii	"Could not allocate address pool\000"
	.align	2
.LC11:
	.ascii	"could not sent initial request\000"
	.align	2
.LC12:
	.ascii	"CAN read\000"
	.align	2
.LC13:
	.ascii	"could not data broadcast\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #256
	str	r0, [fp, #-248]
	str	r1, [fp, #-252]
	bl	wake_watchdog
	ldr	r3, .L65+8
	str	r3, [fp, #-8]
	ldr	r3, .L65+12
	str	r3, [fp, #-12]
	ldr	r3, .L65+16
	str	r3, [fp, #-16]
	b	.L7
.L14:
	ldr	r3, [fp, #-44]
	cmp	r3, #104
	beq	.L8
	ldr	r3, [fp, #-44]
	cmp	r3, #104
	bgt	.L9
	ldr	r3, [fp, #-44]
	cmp	r3, #63
	beq	.L10
	ldr	r3, [fp, #-44]
	cmp	r3, #102
	beq	.L11
	b	.L7
.L9:
	ldr	r3, [fp, #-44]
	cmp	r3, #115
	beq	.L12
	ldr	r3, [fp, #-44]
	cmp	r3, #119
	beq	.L13
	b	.L7
.L11:
	ldr	r3, .L65+20
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	b	.L7
.L12:
	ldr	r3, .L65+20
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	b	.L7
.L8:
	ldr	r3, [fp, #-252]
	ldr	r3, [r3]
	mov	r0, r3
	bl	usage
	mov	r0, #0
	bl	exit
.L13:
	ldr	r3, .L65+20
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	mov	r3, r0
	mov	r0, r3
	bl	setwdtimeout
	b	.L7
.L10:
	ldr	r3, [fp, #-252]
	ldr	r3, [r3]
	mov	r0, r3
	bl	usage
	mov	r0, #1
	bl	exit
.L7:
	ldr	r2, .L65+24
	ldr	r1, [fp, #-252]
	ldr	r0, [fp, #-248]
	bl	getopt
	str	r0, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmn	r3, #1
	bne	.L14
	ldr	r3, .L65+28
	ldr	r3, [r3]
	strb	r3, [fp, #-17]
	b	.L15
.L16:
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	lsl	r3, r3, #2
	ldr	r2, [fp, #-252]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	add	r3, r3, #1
	strb	r3, [fp, #-17]
.L15:
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	ldr	r2, [fp, #-248]
	cmp	r2, r3
	bgt	.L16
	ldr	r0, [fp, #-8]
	bl	logging_setup
	mov	r2, #1
	mov	r1, #3
	mov	r0, #29
	bl	socket
	mov	r3, r0
	str	r3, [fp, #-80]
	b	.L17
.L18:
	ldr	r0, .L65+32
	bl	puts
	ldr	r0, .L65+36
	bl	sleep
.L17:
	sub	r3, fp, #80
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	init_can
	mov	r3, r0
	cmp	r3, #0
	bne	.L18
	ldr	r0, .L65+40
	bl	puts
	mov	r2, #1
	mov	r1, #3
	mov	r0, #29
	bl	socket
	mov	r3, r0
	str	r3, [fp, #-84]
	b	.L19
.L20:
	ldr	r0, .L65+32
	bl	puts
	ldr	r0, .L65+36
	bl	sleep
.L19:
	sub	r3, fp, #84
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	init_can
	mov	r3, r0
	cmp	r3, #0
	bne	.L20
	ldr	r0, .L65+44
	bl	puts
	bl	initialize_pins
	mov	r3, #1
	str	r3, [fp, #-24]
	b	.L21
.L22:
	mov	r2, #5
	ldr	r1, .L65+48
	ldr	r0, [fp, #-24]
	bl	set_period
	mov	r1, #10
	ldr	r0, [fp, #-24]
	bl	set_duty
	mov	r1, #1
	ldr	r0, [fp, #-24]
	bl	set_power
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L21:
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	ble	.L22
	mov	r0, #20
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L23
	ldr	r1, .L65+52
	mov	r0, #1
	bl	err
.L23:
	ldr	r0, [fp, #-48]
	bl	init_bumper
	ldr	r1, .L65+80
	adr	r3, .L65
	ldrd	r2, [r3]
	strd	r2, [r1, #8]
	mov	r1, #4
	mov	r0, #254
	bl	calloc
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L24
	ldr	r1, .L65+56
	mov	r0, #1
	bl	err
.L24:
	mov	r3, #127
	str	r3, [fp, #-28]
	b	.L25
.L26:
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L25:
	ldr	r3, [fp, #-28]
	cmp	r3, #247
	ble	.L26
	ldr	r3, .L65+80
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	lsl	r3, r3, #2
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]
	mov	r0, #15
	bl	install_signal
	mov	r0, #2
	bl	install_signal
	mov	r0, #14
	bl	install_signal
	ldr	r3, [fp, #-80]
	mov	r2, #16
	ldr	r1, .L65+60
	mov	r0, r3
	bl	write
	mov	r3, r0
	cmp	r3, #16
	beq	.L27
	ldr	r1, .L65+64
	mov	r0, #1
	bl	err
.L27:
	mov	r0, #250
	bl	schedule_timer
	bl	transport_setup
	bl	initialize_spn_monitor
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	str	r3, [fp, #-56]
	sub	r3, fp, #236
	mov	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	mov	r3, #0
	strb	r3, [fp, #-29]
	mov	r3, #0
	strb	r3, [fp, #-30]
	mov	r3, #0
	strb	r3, [fp, #-31]
	mov	r3, #0
	strb	r3, [fp, #-32]
	bl	clock
	str	r0, [fp, #-36]
	b	.L28
.L63:
	bl	feed_watchdog
	sub	r3, fp, #212
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L29
.L30:
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-40]
	mov	r1, #0
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L29:
	ldr	r3, [fp, #-40]
	cmp	r3, #31
	bls	.L30
	ldr	r3, [fp, #-80]
	add	r2, r3, #31
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #5
	mov	r2, r3
	lsl	r3, r2, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r1, [r3, #-208]
	ldr	r3, [fp, #-80]
	rsbs	r0, r3, #0
	and	r3, r3, #31
	and	r0, r0, #31
	rsbpl	r3, r0, #0
	mov	r0, #1
	lsl	r3, r0, r3
	orr	r1, r1, r3
	lsl	r3, r2, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	str	r1, [r3, #-208]
	mov	r3, #0
	str	r3, [fp, #-220]
	mov	r3, #50
	str	r3, [fp, #-216]
	sub	r1, fp, #212
	sub	r3, fp, #220
	str	r3, [sp]
	mov	r3, #0
	mov	r2, #0
	ldr	r0, [fp, #-56]
	bl	select
	str	r0, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	ble	.L31
	ldr	r3, [fp, #-80]
	sub	r1, fp, #236
	mov	r2, #16
	mov	r0, r3
	bl	read
	str	r0, [fp, #-68]
	ldr	r3, [fp, #-68]
	cmp	r3, #6
	bgt	.L32
	ldr	r0, .L65+68
	bl	perror
	mov	r3, #1
	b	.L33
.L32:
	ldr	r3, [fp, #-80]
	ldr	r2, .L65+80
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	str	r2, [sp, #4]
	str	r3, [sp]
	sub	r3, fp, #236
	ldm	r3, {r0, r1, r2, r3}
	bl	transport_handler
	sub	r3, fp, #236
	ldm	r3, {r0, r1, r2, r3}
	bl	logging_handler
	ldr	r3, [fp, #-236]
	bic	r3, r3, #-536870912
	str	r3, [fp, #-236]
	ldr	r0, [fp, #-236]
	sub	ip, fp, #238
	sub	r2, fp, #244
	sub	r1, fp, #237
	sub	r3, fp, #239
	str	r3, [sp]
	mov	r3, ip
	bl	parse_J1939
	ldr	r3, [fp, #-244]
	ldr	r2, .L65+72
	cmp	r3, r2
	bne	.L34
	sub	r3, fp, #236
	add	r3, r3, #8
	ldr	r1, [fp, #-48]
	mov	r0, r3
	bl	rx_brake_routine
	b	.L35
.L34:
	ldr	r3, [fp, #-244]
	ldr	r2, .L65+76
	cmp	r3, r2
	bne	.L36
	sub	r3, fp, #236
	add	r3, r3, #8
	ldr	r1, [fp, #-48]
	mov	r0, r3
	bl	rx_signal_routine
	b	.L35
.L36:
	ldr	r3, [fp, #-244]
	cmp	r3, #60928
	bne	.L37
	ldrb	r0, [fp, #-239]	@ zero_extendqisi2
	ldr	r2, [fp, #-80]
	sub	r3, fp, #236
	add	r1, r3, #8
	ldr	r3, [fp, #-52]
	bl	rx_claim_routine
	b	.L35
.L37:
	ldr	r3, [fp, #-244]
	cmp	r3, #59904
	bne	.L35
	ldr	r3, [fp, #-80]
	ldrb	r2, [fp, #-238]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	rx_request_routine
.L35:
	ldr	r0, [fp, #-84]
	ldr	r1, [fp, #-244]
	sub	r3, fp, #236
	add	r3, r3, #8
	mov	r2, r3
	bl	monitor_spns
	sub	r3, fp, #236
	add	r3, r3, #8
	mov	r2, #8
	mov	r1, #0
	mov	r0, r3
	bl	memset
.L31:
	ldr	r0, [fp, #-48]
	bl	turn_signal_routine
	ldr	r0, [fp, #-48]
	bl	brake_routine
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-29]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L38
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3]
	strb	r3, [fp, #-29]
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L39
	mov	r3, #100
	b	.L40
.L39:
	mov	r3, #10
.L40:
	mov	r1, r3
	mov	r0, #1
	bl	set_duty
.L38:
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	ldrb	r2, [fp, #-30]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L41
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3, #1]
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L42
	mov	r3, #100
	b	.L43
.L66:
	.align	3
.L65:
	.word	201457728
	.word	285477120
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	optarg
	.word	.LC4
	.word	optind
	.word	.LC5
	.word	3000
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	conf+32
	.word	.LC11
	.word	.LC12
	.word	65265
	.word	64972
	.word	conf
	.word	-1661059072
.L42:
	mov	r3, #10
.L43:
	mov	r1, r3
	mov	r0, #1
	bl	set_duty
.L41:
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	ldrb	r2, [fp, #-31]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L44
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3, #2]
	strb	r3, [fp, #-31]
	ldrb	r3, [fp, #-31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L45
	mov	r3, #100
	b	.L46
.L45:
	mov	r3, #10
.L46:
	mov	r1, r3
	mov	r0, #1
	bl	set_duty
.L44:
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-32]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L47
	ldr	r3, [fp, #-48]
	ldrb	r3, [r3, #3]
	strb	r3, [fp, #-32]
	ldrb	r3, [fp, #-32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L48
	mov	r3, #100
	b	.L49
.L48:
	mov	r3, #10
.L49:
	mov	r1, r3
	mov	r0, #1
	bl	set_duty
.L47:
	ldr	r3, .L65+80
	ldr	r3, [r3, #28]
	cmp	r3, #1
	bne	.L50
	ldr	r3, .L65+80
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L28
	ldr	r3, .L65+80
	mov	r2, #2
	str	r2, [r3, #28]
	b	.L28
.L50:
	ldr	r3, .L65+80
	ldr	r3, [r3, #28]
	cmp	r3, #2
	bne	.L28
	mov	r3, #0
	strb	r3, [fp, #-228]
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L52
	mov	r3, #255
	b	.L53
.L52:
	mov	r3, #0
.L53:
	strb	r3, [fp, #-227]
	mov	r3, #0
	strb	r3, [fp, #-226]
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L54
	mov	r3, #255
	b	.L55
.L54:
	mov	r3, #0
.L55:
	strb	r3, [fp, #-225]
	mov	r3, #0
	strb	r3, [fp, #-224]
	ldrb	r3, [fp, #-31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L56
	mov	r3, #255
	b	.L57
.L56:
	mov	r3, #0
.L57:
	strb	r3, [fp, #-223]
	mov	r3, #0
	strb	r3, [fp, #-222]
	ldrb	r3, [fp, #-32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L58
	mov	r3, #255
	b	.L59
.L58:
	mov	r3, #0
.L59:
	strb	r3, [fp, #-221]
	ldr	r3, .L65+80
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L65+84
	orr	r3, r2, r3
	str	r3, [fp, #-236]
	mov	r3, #8
	strb	r3, [fp, #-232]
	bl	clock
	mov	r2, r0
	ldr	r3, [fp, #-36]
	sub	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vstr.64	d7, [fp, #-76]
	vldr.64	d7, [fp, #-76]
	vldr.64	d6, .L67
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L28
	ldr	r3, [fp, #-80]
	sub	r1, fp, #236
	mov	r2, #16
	mov	r0, r3
	bl	write
	mov	r3, r0
	cmp	r3, #16
	beq	.L62
	ldr	r1, .L67+8
	mov	r0, #1
	bl	err
.L62:
	bl	clock
	str	r0, [fp, #-36]
.L28:
	ldr	r3, .L67+12
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L63
	ldr	r0, [fp, #-48]
	bl	free
	ldr	r0, [fp, #-52]
	bl	free
	bl	terminate_logging_gracefully
	bl	transport_takedown
	bl	close_pins
	ldr	r3, [fp, #-80]
	mov	r0, r3
	bl	close
	bl	rest_watchdog
	mov	r3, #0
.L33:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L68:
	.align	3
.L67:
	.word	0
	.word	1090021888
	.word	.LC13
	.word	conf
	.size	main, .-main
	.align	2
	.global	init_can
	.syntax unified
	.arm
	.fpu vfp
	.type	init_can, %function
init_can:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #80
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	sub	r3, fp, #60
	mov	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	mov	r3, #0
	str	r3, [fp, #-64]
	sub	r3, fp, #36
	ldr	r1, [fp, #-76]
	mov	r0, r3
	bl	strcpy
	ldr	r3, [fp, #-72]
	ldr	r3, [r3]
	sub	r2, fp, #36
	ldr	r1, .L73
	mov	r0, r3
	bl	ioctl
	mov	r3, #29
	strh	r3, [fp, #-60]	@ movhi
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	ldr	r0, [r3]
	sub	r2, fp, #64
	mov	r3, #4
	str	r3, [sp]
	mov	r3, r2
	mov	r2, #4
	mov	r1, #101
	bl	setsockopt
	ldr	r3, [fp, #-72]
	ldr	r3, [r3]
	sub	r2, fp, #60
	mov	r1, r2
	mov	r2, #24
	mov	r0, r3
	bl	bind
	mov	r3, r0
	cmp	r3, #0
	bge	.L70
	mvn	r3, #0
	b	.L72
.L70:
	mov	r3, #0
.L72:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L74:
	.align	2
.L73:
	.word	35123
	.size	init_can, .-init_can
	.align	2
	.global	rx_brake_routine
	.syntax unified
	.arm
	.fpu vfp
	.type	rx_brake_routine, %function
rx_brake_routine:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	lsl	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	add	r3, r2, r3
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	asr	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #3
	strb	r3, [fp, #-7]
	ldrb	r3, [fp, #-7]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #5]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L76
	ldrh	r3, [fp, #-6]
	cmp	r3, #0
	beq	.L79
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L79
	ldr	r3, [fp, #-20]
	mov	r2, #1
	strb	r2, [r3, #6]
	b	.L79
.L76:
	ldr	r3, [fp, #-20]
	mov	r2, #0
	strb	r2, [r3, #6]
	ldr	r3, [fp, #-20]
	mov	r2, #0
	strb	r2, [r3, #4]
.L79:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	rx_brake_routine, .-rx_brake_routine
	.align	2
	.global	rx_signal_routine
	.syntax unified
	.arm
	.fpu vfp
	.type	rx_signal_routine, %function
rx_signal_routine:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	sub	r3, fp, #12
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	spn_2876
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #11]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	bl	free
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	rx_signal_routine, .-rx_signal_routine
	.section	.rodata
	.align	2
.LC14:
	.ascii	"\012Addresses exhausted!\012\000"
	.align	2
.LC15:
	.ascii	"could not sent claim for request\000"
	.text
	.align	2
	.global	rx_claim_routine
	.syntax unified
	.arm
	.fpu vfp
	.type	rx_claim_routine, %function
rx_claim_routine:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, r0
	strb	r3, [fp, #-13]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-12]
	sub	r3, fp, #12
	mov	r2, #8
	ldr	r1, [fp, #-20]
	mov	r0, r3
	bl	memcpy
	ldrd	r2, [fp, #-12]
	mov	r0, r2
	mov	r1, r3
	bl	__bswap_64
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-12]
	ldr	r3, .L86
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L82
	ldr	r3, .L86
	ldrd	r0, [r3, #8]
	ldrd	r2, [fp, #-12]
	cmp	r1, r3
	cmpeq	r0, r2
	bls	.L83
	ldr	r3, .L86
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	ldr	r2, [fp, #-28]
	mov	r1, #0
	mov	r0, r3
	bl	choose_new_sa
	ldr	r3, .L86
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #254
	bne	.L83
	ldr	r3, .L86
	mov	r2, #3
	str	r2, [r3, #28]
	ldr	r3, .L86+4
	ldr	r3, [r3]
	mov	r2, #22
	mov	r1, #1
	ldr	r0, .L86+8
	bl	fwrite
.L83:
	ldr	r3, .L86
	ldr	r3, [r3, #32]
	bic	r3, r3, #255
	ldr	r2, .L86
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	orr	r3, r3, r2
	orr	r3, r3, #-2147483648
	ldr	r2, .L86
	str	r3, [r2, #32]
	mov	r2, #16
	ldr	r1, .L86+12
	ldr	r0, [fp, #-24]
	bl	write
	mov	r3, r0
	cmp	r3, #16
	beq	.L85
	ldr	r1, .L86+16
	mov	r0, #1
	bl	err
.L82:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #126
	bls	.L85
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #247
	bhi	.L85
	ldr	r3, .L86
	ldrd	r0, [r3, #8]
	ldrd	r2, [fp, #-12]
	cmp	r1, r3
	cmpeq	r0, r2
	bls	.L85
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	lsl	r3, r3, #2
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]
.L85:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L87:
	.align	2
.L86:
	.word	conf
	.word	stderr
	.word	.LC14
	.word	conf+32
	.word	.LC15
	.size	rx_claim_routine, .-rx_claim_routine
	.align	2
	.global	rx_request_routine
	.syntax unified
	.arm
	.fpu vfp
	.type	rx_request_routine, %function
rx_request_routine:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, .L92
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	beq	.L89
	ldr	r3, [fp, #-12]
	cmp	r3, #255
	bne	.L91
.L89:
	mov	r2, #16
	ldr	r1, .L92+4
	ldr	r0, [fp, #-8]
	bl	write
	mov	r3, r0
	cmp	r3, #16
	beq	.L91
	ldr	r1, .L92+8
	mov	r0, #1
	bl	err
.L91:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L93:
	.align	2
.L92:
	.word	conf
	.word	conf+32
	.word	.LC15
	.size	rx_request_routine, .-rx_request_routine
	.align	2
	.global	choose_new_sa
	.syntax unified
	.arm
	.fpu vfp
	.type	choose_new_sa, %function
choose_new_sa:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r3, #255
	bgt	.L98
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L97
	ldr	r3, [fp, #-8]
	uxtb	r2, r3
	ldr	r3, .L99
	strb	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]
	b	.L94
.L97:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, .L99+4
	smull	r1, r3, r3, r2
	add	r3, r3, r2
	asr	r1, r3, #7
	asr	r3, r2, #31
	sub	r1, r1, r3
	mov	r3, r1
	lsl	r3, r3, #7
	sub	r3, r3, r1
	lsl	r3, r3, #1
	sub	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	choose_new_sa
	b	.L94
.L98:
	nop
.L94:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L100:
	.align	2
.L99:
	.word	conf
	.word	-2130574327
	.size	choose_new_sa, .-choose_new_sa
	.align	2
	.global	parse_J1939
	.syntax unified
	.arm
	.fpu vfp
	.type	parse_J1939, %function
parse_J1939:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #26
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #16
	uxtb	r3, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #8
	uxtb	r3, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #239
	ble	.L102
	ldr	r3, [fp, #-28]
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #8
	bic	r3, r3, #-16777216
	bic	r3, r3, #16515072
	ldr	r2, [fp, #-24]
	str	r3, [r2]
	b	.L103
.L102:
	ldr	r3, [fp, #-12]
	uxtb	r2, r3
	ldr	r3, [fp, #-28]
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	lsr	r2, r3, #8
	ldr	r3, .L104
	and	r3, r3, r2
	ldr	r2, [fp, #-24]
	str	r3, [r2]
.L103:
	ldr	r3, [fp, #-16]
	uxtb	r2, r3
	ldr	r3, [fp, #4]
	strb	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L105:
	.align	2
.L104:
	.word	261888
	.size	parse_J1939, .-parse_J1939
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	sighandler, %function
sighandler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	cmp	r3, #14
	beq	.L107
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	beq	.L108
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	bne	.L110
.L108:
	ldr	r3, .L111
	mov	r2, #1
	str	r2, [r3, #20]
	b	.L109
.L107:
	ldr	r3, .L111
	mov	r2, #1
	str	r2, [r3, #24]
	nop
.L109:
.L110:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L112:
	.align	2
.L111:
	.word	conf
	.size	sighandler, .-sighandler
	.section	.rodata
	.align	2
.LC16:
	.ascii	"sigaction for signal %i\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	install_signal, %function
install_signal:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #152
	str	r0, [fp, #-152]
	sub	r3, fp, #148
	mov	r2, #140
	mov	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r3, .L116
	str	r3, [fp, #-148]
	mov	r3, #4
	str	r3, [fp, #-16]
	sub	r3, fp, #148
	add	r3, r3, #4
	mov	r0, r3
	bl	sigfillset
	sub	r3, fp, #148
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-152]
	bl	sigaction
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L115
	ldr	r2, [fp, #-152]
	ldr	r1, .L116+4
	mov	r0, #1
	bl	err
.L115:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L117:
	.align	2
.L116:
	.word	sighandler
	.word	.LC16
	.size	install_signal, .-install_signal
	.section	.rodata
	.align	2
.LC17:
	.ascii	"setitimer %i msec\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	schedule_timer, %function
schedule_timer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	sub	r3, fp, #24
	mov	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-32]
	ldr	r2, .L123
	smull	r1, r2, r2, r3
	asr	r2, r2, #6
	asr	r3, r3, #31
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-32]
	ldr	r3, .L123
	smull	r2, r3, r3, r1
	asr	r2, r3, #6
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, r1, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	str	r3, [fp, #-12]
	ldr	r3, .L123+4
	mov	r2, #0
	str	r2, [r3, #24]
.L120:
	sub	r3, fp, #24
	mov	r2, #0
	mov	r1, r3
	mov	r0, #0
	bl	setitimer
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L119
	bl	__errno_location
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #4
	beq	.L120
.L119:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L122
	ldr	r2, [fp, #-32]
	ldr	r1, .L123+8
	mov	r0, #1
	bl	err
.L122:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L124:
	.align	2
.L123:
	.word	274877907
	.word	conf
	.word	.LC17
	.size	schedule_timer, .-schedule_timer
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
