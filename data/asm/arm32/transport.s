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
	.file	"transport.c"
	.text
	.align	2
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	__bswap_16, %function
__bswap_16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-6]	@ movhi
	rev16	r3, r3
	uxth	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	__bswap_16, .-__bswap_16
	.local	connection_infos
	.comm	connection_infos,1024,4
	.data
	.type	src, %object
	.size	src, 1
src:
	.byte	73
	.local	CTS
	.comm	CTS,16,8
	.local	num_packets
	.comm	num_packets,1,1
	.local	num_connections
	.comm	num_connections,1,1
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	delete_connection, %function
delete_connection:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L5
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L5+4
	ldr	r3, [r3, r2, lsl #2]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L4
	ldr	r3, .L5
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L5+4
	ldr	r3, [r3, r2, lsl #2]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free
	ldr	r3, .L5
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L5+4
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, #0
	str	r2, [r3, #8]
.L4:
	ldr	r3, .L5
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L5+4
	ldr	r3, [r3, r2, lsl #2]
	mov	r0, r3
	bl	free
	ldr	r3, .L5
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, .L5+4
	mov	r2, #0
	str	r2, [r3, r1, lsl #2]
	ldr	r3, .L5+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L5+8
	strb	r2, [r3]
	nop
	pop	{fp, pc}
.L6:
	.align	2
.L5:
	.word	src
	.word	connection_infos
	.word	num_connections
	.size	delete_connection, .-delete_connection
	.section	.rodata
	.align	2
.LC0:
	.ascii	"RTS mismatch detected!! Connected rejected\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	create_conn, %function
create_conn:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #16
	sub	sp, sp, #12
	mov	r3, r0
	strh	r3, [fp, #-22]	@ movhi
	ldr	r3, .L17+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L17+8
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	bne	.L8
	ldr	r3, .L17+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r4, r3
	mov	r1, #12
	mov	r0, #1
	bl	calloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L17+8
	str	r2, [r3, r4, lsl #2]
	ldr	r3, .L17+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L17+8
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L17+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L17+8
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, #0
	str	r2, [r3, #8]
.L8:
	ldrh	r2, [fp, #-22]
	ldr	r3, .L17+12
	umull	r1, r3, r3, r2
	sub	r1, r2, r3
	lsr	r1, r1, #1
	add	r3, r3, r1
	lsr	r1, r3, #2
	mov	r3, r1
	lsl	r3, r3, #3
	sub	r3, r3, r1
	sub	r3, r2, r3
	uxth	r3, r3
	cmp	r3, #0
	beq	.L9
	ldrh	r2, [fp, #-22]
	ldr	r3, .L17+12
	umull	r1, r3, r3, r2
	sub	r1, r2, r3
	lsr	r1, r1, #1
	add	r3, r3, r1
	lsr	r1, r3, #2
	mov	r3, r1
	lsl	r3, r3, #3
	sub	r3, r3, r1
	sub	r3, r2, r3
	uxth	r3, r3
	ldrh	r2, [fp, #-22]	@ movhi
	sub	r3, r2, r3
	uxth	r3, r3
	add	r3, r3, #7
	strh	r3, [fp, #-22]	@ movhi
.L9:
	ldr	r3, .L17+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d8, s15
	ldrh	r3, [fp, #-22]
	vmov	s15, r3	@ int
	vcvt.f32.u32	s14, s15
	vldr.32	s13, .L17
	vdiv.f32	s15, s14, s13
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	ceil
	vmov.f64	d7, d0
	vcmpe.f64	d8, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L16
	ldr	r0, .L17+20
	bl	puts
	bl	delete_connection
	mov	r3, #0
	b	.L12
.L16:
	ldr	r3, .L17+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L17+8
	ldr	r3, [r3, r2, lsl #2]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L13
	ldrh	r2, [fp, #-22]
	ldr	r3, .L17+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, .L17+8
	ldr	r4, [r3, r1, lsl #2]
	mov	r1, #1
	mov	r0, r2
	bl	calloc
	mov	r3, r0
	str	r3, [r4, #8]
	b	.L14
.L13:
	ldr	r3, .L17+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L17+8
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3, #8]
	ldrh	r1, [fp, #-22]
	ldr	r3, .L17+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L17+8
	ldr	r4, [r3, r0, lsl #2]
	mov	r0, r2
	bl	realloc
	mov	r3, r0
	str	r3, [r4, #8]
.L14:
	ldr	r3, .L17+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L17+24
	strb	r2, [r3]
	mov	r3, #1
.L12:
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, fp, pc}
.L18:
	.align	2
.L17:
	.word	1088421888
	.word	src
	.word	connection_infos
	.word	613566757
	.word	num_packets
	.word	.LC0
	.word	num_connections
	.size	create_conn, .-create_conn
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Recieved RTS from %d to allocate %d bytes of data f"
	.ascii	"rom %d no. of packets\012\000"
	.align	2
.LC2:
	.ascii	"could not send CTS\000"
	.align	2
.LC3:
	.ascii	"Recieved Abort from %d\012\000"
	.align	2
.LC4:
	.ascii	"Recieved packet %d from SA %02x\012\000"
	.align	2
.LC5:
	.ascii	"Arbit packet location detected! Connected closed\000"
	.align	2
.LC6:
	.ascii	"Recieved all %d packets, closing connection\012\000"
	.text
	.align	2
	.global	transport_handler
	.syntax unified
	.arm
	.fpu vfp
	.type	transport_handler, %function
transport_handler:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	sub	ip, fp, #28
	stm	ip, {r0, r1, r2, r3}
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldr	r3, [fp, #-28]
	uxtb	r2, r3
	ldr	r3, .L40
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	lsr	r3, r3, #8
	uxtb	r2, r3
	ldrb	r3, [fp, #8]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L32
	ldr	r3, [fp, #-28]
	and	r3, r3, #16711680
	cmp	r3, #15400960
	beq	.L21
	cmp	r3, #15466496
	bne	.L33
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	cmp	r3, #16
	beq	.L22
	cmp	r3, #255
	beq	.L23
	b	.L20
.L22:
	ldrh	r3, [fp, #-19]	@ unaligned
	uxth	r3, r3
	strh	r3, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-6]
	mov	r0, r3
	bl	__bswap_16
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, .L40+4
	strb	r2, [r3]
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldrh	r3, [fp, #-6]
	mov	r2, r3
	ldr	r3, .L40+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, .L40+8
	bl	printf
	ldrh	r3, [fp, #-6]
	mov	r0, r3
	bl	create_conn
	mov	r3, r0
	cmp	r3, #1
	bne	.L34
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, .L40+4
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3, #4]
	ldr	r3, .L40+16
	ldr	r3, [r3]
	bic	r3, r3, #65280
	ldr	r2, .L40
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsl	r2, r2, #8
	orr	r3, r3, r2
	ldr	r2, .L40+16
	str	r3, [r2]
	ldrb	r2, [fp, #-16]	@ zero_extendqisi2
	ldr	r3, .L40+16
	strb	r2, [r3, #9]
	sub	r3, fp, #28
	add	r3, r3, #13
	mov	r2, #3
	mov	r1, r3
	ldr	r0, .L40+20
	bl	memcpy
	mov	r2, #16
	ldr	r1, .L40+16
	ldr	r0, [fp, #4]
	bl	write
	mov	r3, r0
	cmp	r3, #16
	beq	.L34
	ldr	r1, .L40+24
	mov	r0, #1
	bl	err
.L23:
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L35
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L40+28
	bl	printf
	bl	delete_connection
	b	.L24
.L34:
	nop
	b	.L20
.L35:
	nop
.L24:
	b	.L20
.L21:
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L36
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L37
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	add	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #5]
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r0, .L40+32
	bl	printf
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L38
	ldrb	r2, [fp, #-20]	@ zero_extendqisi2
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r1, lsl #2]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r2, r3
	bls	.L30
	ldr	r0, .L40+36
	bl	puts
	bl	delete_connection
	b	.L20
.L30:
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	ldr	r1, [r3, #8]
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	sub	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	add	r0, r1, r3
	sub	r3, fp, #28
	add	r3, r3, #9
	mov	r2, #7
	mov	r1, r3
	bl	memcpy
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r1, lsl #2]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L39
	ldr	r3, .L40
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L40+12
	ldr	r3, [r3, r2, lsl #2]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L40+40
	bl	printf
	bl	delete_connection
	b	.L39
.L32:
	nop
	b	.L33
.L36:
	nop
	b	.L33
.L37:
	nop
	b	.L33
.L38:
	nop
	b	.L33
.L39:
	nop
.L20:
.L33:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L41:
	.align	2
.L40:
	.word	src
	.word	num_packets
	.word	.LC1
	.word	connection_infos
	.word	CTS
	.word	CTS+13
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	transport_handler, .-transport_handler
	.align	2
	.global	transport_setup
	.syntax unified
	.arm
	.fpu vfp
	.type	transport_setup, %function
transport_setup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L43
	mov	r2, #8
	strb	r2, [r3, #4]
	ldr	r3, .L43
	ldr	r2, .L43+4
	str	r2, [r3]
	mov	r2, #8
	mov	r1, #255
	ldr	r0, .L43+8
	bl	memset
	ldr	r3, .L43
	mov	r2, #17
	strb	r2, [r3, #8]
	ldr	r3, .L43
	mov	r2, #1
	strb	r2, [r3, #10]
	nop
	pop	{fp, pc}
.L44:
	.align	2
.L43:
	.word	CTS
	.word	-1729298615
	.word	CTS+8
	.size	transport_setup, .-transport_setup
	.align	2
	.global	transport_takedown
	.syntax unified
	.arm
	.fpu vfp
	.type	transport_takedown, %function
transport_takedown:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L46
.L48:
	ldr	r2, .L49
	ldr	r3, [fp, #-8]
	ldr	r3, [r2, r3, lsl #2]
	cmp	r3, #0
	beq	.L47
	ldr	r3, [fp, #-8]
	uxtb	r2, r3
	ldr	r3, .L49+4
	strb	r2, [r3]
	bl	delete_connection
.L47:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L46:
	ldr	r3, [fp, #-8]
	cmp	r3, #255
	ble	.L48
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L50:
	.align	2
.L49:
	.word	connection_infos
	.word	src
	.size	transport_takedown, .-transport_takedown
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
