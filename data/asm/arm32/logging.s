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
	.file	"logging.c"
	.text
	.local	current_frame_count
	.comm	current_frame_count,4,4
	.local	wfd
	.comm	wfd,4,4
	.data
	.align	3
	.type	mblock, %object
	.size	mblock, 96
mblock:
	.ascii	"CAN2"
	.space	70
	.ascii	"TU2"
	.ascii	"12"
	.ascii	"AMP"
	.ascii	"N/A"
	.space	11
	.local	KEY
	.comm	KEY,32,4
	.local	IV
	.comm	IV,16,4
	.text
	.align	2
	.global	reset_mblock
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	reset_mblock, %function
reset_mblock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	mov	r2, #32
	mov	r1, #0
	ldr	r0, .L2
	bl	memset
	mov	r2, #16
	mov	r1, #0
	ldr	r0, .L2+4
	bl	memset
	ldr	r3, .L2+8
	ldr	r3, [r3, #88]
	mov	r2, #32
	mov	r1, #0
	mov	r0, r3
	bl	memset
	nop
	pop	{fp, pc}
.L3:
	.align	2
.L2:
	.word	mblock+8
	.word	mblock+40
	.word	mblock
	.size	reset_mblock, .-reset_mblock
	.section	.rodata
	.align	2
.LC0:
	.ascii	"wb\000"
	.align	2
.LC1:
	.ascii	"Could not create initial descriptor for %s\000"
	.text
	.align	2
	.global	logging_setup
	.syntax unified
	.arm
	.fpu vfp
	.type	logging_setup, %function
logging_setup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r1, .L6
	ldr	r0, [fp, #-8]
	bl	fopen
	mov	r2, r0
	ldr	r3, .L6+4
	str	r2, [r3]
	ldr	r3, .L6+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L5
	ldr	r0, .L6+8
	bl	perror
.L5:
	mov	r2, #12
	mov	r1, #0
	ldr	r0, .L6+12
	bl	memset
	mov	r2, #3
	mov	r1, #0
	ldr	r0, .L6+16
	bl	memset
	mov	r2, #3
	mov	r1, #0
	ldr	r0, .L6+20
	bl	memset
	mov	r0, #32
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L6+24
	str	r2, [r3, #88]
	mov	r1, #32
	ldr	r0, .L6+28
	bl	initialize_write
	mov	r1, #16
	ldr	r0, .L6+32
	bl	initialize_write
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.word	wfd
	.word	.LC1
	.word	mblock+56
	.word	mblock+68
	.word	mblock+71
	.word	mblock
	.word	KEY
	.word	IV
	.size	logging_setup, .-logging_setup
	.section	.rodata
	.align	2
.LC2:
	.ascii	"Unable to write crypto param size to file\000"
	.align	2
.LC3:
	.ascii	"Unable to write crypto param to file\000"
	.text
	.align	2
	.global	initialize_write
	.syntax unified
	.arm
	.fpu vfp
	.type	initialize_write, %function
initialize_write:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	RAND_bytes
	mov	r3, r0
	cmp	r3, #1
	beq	.L9
	bl	handleErrors
.L9:
	ldr	r3, .L13
	ldr	r3, [r3]
	sub	r0, fp, #12
	mov	r2, #4
	mov	r1, #1
	bl	fwrite
	mov	r3, r0
	cmp	r3, #0
	bne	.L10
	ldr	r0, .L13+4
	bl	perror
.L10:
	ldr	r3, [fp, #-12]
	mov	r2, r3
	ldr	r3, .L13
	ldr	r3, [r3]
	mov	r1, #1
	ldr	r0, [fp, #-8]
	bl	fwrite
	mov	r3, r0
	cmp	r3, #0
	bne	.L12
	ldr	r0, .L13+8
	bl	perror
.L12:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L14:
	.align	2
.L13:
	.word	wfd
	.word	.LC2
	.word	.LC3
	.size	initialize_write, .-initialize_write
	.section	.rodata
	.align	2
.LC4:
	.ascii	"Could not write tag length\000"
	.align	2
.LC5:
	.ascii	"Could not write ciphertext of length\000"
	.text
	.align	2
	.global	write_encrypted
	.syntax unified
	.arm
	.fpu vfp
	.type	write_encrypted, %function
write_encrypted:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	mov	r3, #0
	str	r3, [fp, #-20]
	sub	r3, fp, #20
	mov	r0, r3
	bl	serialize
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-20]
	sub	r1, r3, #32
	sub	r3, fp, #24
	sub	r2, fp, #28
	ldr	r0, [fp, #-8]
	bl	digest_message
	ldr	r3, [fp, #-24]
	cmp	r3, #32
	beq	.L16
	bl	handleErrors
.L16:
	ldr	r3, .L19
	ldr	r3, [r3, #88]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-24]
	mov	r0, r3
	bl	memcpy
	ldr	r3, [fp, #-28]
	mov	r0, r3
	bl	free
	ldr	r0, [fp, #-8]
	bl	free
	sub	r3, fp, #20
	mov	r0, r3
	bl	serialize
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #16
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-20]
	mov	r1, r3
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	ldr	r3, .L19+4
	ldr	r2, .L19+8
	ldr	r0, [fp, #-12]
	bl	encrypt
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, .L19+12
	ldr	r3, [r3]
	sub	r0, fp, #32
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r0
	cmp	r3, #0
	bne	.L17
	ldr	r0, .L19+16
	bl	perror
.L17:
	ldr	r3, [fp, #-32]
	mov	r2, r3
	ldr	r3, .L19+12
	ldr	r3, [r3]
	mov	r1, #1
	ldr	r0, [fp, #-16]
	bl	fwrite
	mov	r3, r0
	cmp	r3, #0
	bne	.L18
	ldr	r0, .L19+20
	bl	perror
.L18:
	ldr	r0, [fp, #-12]
	bl	free
	ldr	r0, [fp, #-16]
	bl	free
	mov	r1, #16
	ldr	r0, .L19+4
	bl	initialize_write
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L20:
	.align	2
.L19:
	.word	mblock
	.word	IV
	.word	KEY
	.word	wfd
	.word	.LC4
	.word	.LC5
	.size	write_encrypted, .-write_encrypted
	.section	.rodata
	.align	2
.LC6:
	.ascii	"Could not flush CAN data log\000"
	.text
	.align	2
	.global	logging_handler
	.syntax unified
	.arm
	.fpu vfp
	.type	logging_handler, %function
logging_handler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	sub	ip, fp, #20
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, .L25
	ldr	r3, [r3]
	lsl	r3, r3, #4
	add	r3, r3, #8
	ldr	r2, .L25+4
	add	r3, r3, r2
	sub	r1, fp, #20
	mov	r2, #16
	mov	r0, r3
	bl	memcpy
	ldr	r3, .L25
	ldr	r3, [r3]
	add	r3, r3, #5
	lsl	r3, r3, #3
	ldr	r2, .L25+4
	add	r3, r3, r2
	mov	r1, #0
	mov	r0, r3
	bl	gettimeofday
	ldr	r3, .L25
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L25
	str	r3, [r2]
	ldr	r3, .L25+4
	ldr	r3, [r3, #56]
	add	r3, r3, #1
	ldr	r2, .L25+4
	str	r3, [r2, #56]
	ldr	r3, .L25
	ldr	r3, [r3]
	cmp	r3, #1
	bls	.L24
	bl	write_encrypted
	ldr	r3, .L25+8
	ldr	r3, [r3]
	mov	r0, r3
	bl	fflush
	mov	r3, r0
	cmp	r3, #0
	beq	.L23
	ldr	r0, .L25+12
	bl	perror
.L23:
	bl	reset_mblock
	ldr	r3, .L25
	mov	r2, #0
	str	r2, [r3]
.L24:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L26:
	.align	2
.L25:
	.word	current_frame_count
	.word	mblock
	.word	wfd
	.word	.LC6
	.size	logging_handler, .-logging_handler
	.align	2
	.global	serialize
	.syntax unified
	.arm
	.fpu vfp
	.type	serialize, %function
serialize:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #113
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldr	r2, .L29
	ldr	r2, [r2]
	str	r2, [r3]	@ unaligned
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #32
	ldr	r1, .L29+4
	mov	r0, r3
	bl	memcpy
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #16
	ldr	r1, .L29+8
	mov	r0, r3
	bl	memcpy
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, #12
	ldr	r1, .L29+12
	mov	r0, r3
	bl	memcpy
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, .L29
	add	r3, r3, #68
	ldrh	r1, [r3]	@ unaligned
	ldrb	r3, [r3, #2]
	strh	r1, [r2]	@ unaligned
	strb	r3, [r2, #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, .L29
	add	r3, r3, #71
	ldrh	r1, [r3]	@ unaligned
	ldrb	r3, [r3, #2]
	strh	r1, [r2]	@ unaligned
	strb	r3, [r2, #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, .L29
	add	r3, r3, #74
	ldrh	r1, [r3]	@ unaligned
	ldrb	r3, [r3, #2]
	strh	r1, [r2]	@ unaligned
	strb	r3, [r2, #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldr	r2, .L29
	ldrh	r2, [r2, #77]	@ unaligned
	uxth	r2, r2
	strh	r2, [r3]	@ unaligned
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, .L29
	add	r3, r3, #79
	ldrh	r1, [r3]	@ unaligned
	ldrb	r3, [r3, #2]
	strh	r1, [r2]	@ unaligned
	strb	r3, [r2, #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, .L29
	add	r3, r3, #82
	ldrh	r1, [r3]	@ unaligned
	ldrb	r3, [r3, #2]
	strh	r1, [r2]	@ unaligned
	strb	r3, [r2, #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r3, .L29+16
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r0, r2, r3
	ldr	r3, .L29
	ldr	r1, [r3, #88]
	ldr	r3, [fp, #-20]
	mov	r2, #32
	blx	r3
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L30:
	.align	2
.L29:
	.word	mblock
	.word	mblock+8
	.word	mblock+40
	.word	mblock+56
	.word	memcpy
	.size	serialize, .-serialize
	.align	2
	.global	terminate_logging_gracefully
	.syntax unified
	.arm
	.fpu vfp
	.type	terminate_logging_gracefully, %function
terminate_logging_gracefully:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L33
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L32
	bl	write_encrypted
.L32:
	ldr	r3, .L33+4
	ldr	r3, [r3, #88]
	mov	r0, r3
	bl	free
	ldr	r3, .L33+8
	ldr	r3, [r3]
	mov	r0, r3
	bl	fclose
	nop
	pop	{fp, pc}
.L34:
	.align	2
.L33:
	.word	current_frame_count
	.word	mblock
	.word	wfd
	.size	terminate_logging_gracefully, .-terminate_logging_gracefully
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
