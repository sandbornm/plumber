
main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <sighandler>:
   0:	e350000e 	cmp	r0, #14
   4:	0a000007 	beq	28 <sighandler+0x28>
   8:	e350000f 	cmp	r0, #15
   c:	0a000001 	beq	18 <sighandler+0x18>
  10:	e3500002 	cmp	r0, #2
  14:	112fff1e 	bxne	lr
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <sighandler+0x38>
  1c:	e3a02001 	mov	r2, #1
  20:	e5832014 	str	r2, [r3, #20]
  24:	e12fff1e 	bx	lr
  28:	e59f3008 	ldr	r3, [pc, #8]	; 38 <sighandler+0x38>
  2c:	e3a02001 	mov	r2, #1
  30:	e5832018 	str	r2, [r3, #24]
  34:	e12fff1e 	bx	lr
  38:	00000000 	.word	0x00000000

0000003c <install_signal>:
  3c:	e92d4010 	push	{r4, lr}
  40:	e24dd090 	sub	sp, sp, #144	; 0x90
  44:	e3a01000 	mov	r1, #0
  48:	e1a04000 	mov	r4, r0
  4c:	e3a02088 	mov	r2, #136	; 0x88
  50:	e28d0008 	add	r0, sp, #8
  54:	ebfffffe 	bl	0 <memset>
  58:	e59f2040 	ldr	r2, [pc, #64]	; a0 <install_signal+0x64>
  5c:	e3a03004 	mov	r3, #4
  60:	e28d0008 	add	r0, sp, #8
  64:	e58d2004 	str	r2, [sp, #4]
  68:	e58d3088 	str	r3, [sp, #136]	; 0x88
  6c:	ebfffffe 	bl	0 <sigfillset>
  70:	e1a00004 	mov	r0, r4
  74:	e28d1004 	add	r1, sp, #4
  78:	e3a02000 	mov	r2, #0
  7c:	ebfffffe 	bl	0 <sigaction>
  80:	e3500000 	cmp	r0, #0
  84:	ba000001 	blt	90 <install_signal+0x54>
  88:	e28dd090 	add	sp, sp, #144	; 0x90
  8c:	e8bd8010 	pop	{r4, pc}
  90:	e1a02004 	mov	r2, r4
  94:	e59f1008 	ldr	r1, [pc, #8]	; a4 <install_signal+0x68>
  98:	e3a00001 	mov	r0, #1
  9c:	ebfffffe 	bl	0 <err>
	...

000000a8 <usage>:
  a8:	e59f300c 	ldr	r3, [pc, #12]	; bc <usage+0x14>
  ac:	e1a02000 	mov	r2, r0
  b0:	e59f1008 	ldr	r1, [pc, #8]	; c0 <usage+0x18>
  b4:	e5930000 	ldr	r0, [r3]
  b8:	eafffffe 	b	0 <fprintf>
  bc:	00000000 	.word	0x00000000
  c0:	00000018 	.word	0x00000018

000000c4 <init_can>:
  c4:	e92d4010 	push	{r4, lr}
  c8:	e1a04000 	mov	r4, r0
  cc:	e24dd048 	sub	sp, sp, #72	; 0x48
  d0:	e3a03000 	mov	r3, #0
  d4:	e28d0028 	add	r0, sp, #40	; 0x28
  d8:	e58d3014 	str	r3, [sp, #20]
  dc:	e58d3010 	str	r3, [sp, #16]
  e0:	e58d3018 	str	r3, [sp, #24]
  e4:	e58d301c 	str	r3, [sp, #28]
  e8:	e58d3020 	str	r3, [sp, #32]
  ec:	e58d3024 	str	r3, [sp, #36]	; 0x24
  f0:	e58d300c 	str	r3, [sp, #12]
  f4:	ebfffffe 	bl	0 <strcpy>
  f8:	e28d2028 	add	r2, sp, #40	; 0x28
  fc:	e5940000 	ldr	r0, [r4]
 100:	e59f1044 	ldr	r1, [pc, #68]	; 14c <init_can+0x88>
 104:	ebfffffe 	bl	0 <ioctl>
 108:	e59d1038 	ldr	r1, [sp, #56]	; 0x38
 10c:	e3a02004 	mov	r2, #4
 110:	e3a0c01d 	mov	ip, #29
 114:	e5940000 	ldr	r0, [r4]
 118:	e28d300c 	add	r3, sp, #12
 11c:	e58d2000 	str	r2, [sp]
 120:	e58d1014 	str	r1, [sp, #20]
 124:	e3a01065 	mov	r1, #101	; 0x65
 128:	e1cdc1b0 	strh	ip, [sp, #16]
 12c:	ebfffffe 	bl	0 <setsockopt>
 130:	e28d1010 	add	r1, sp, #16
 134:	e5940000 	ldr	r0, [r4]
 138:	e3a02018 	mov	r2, #24
 13c:	ebfffffe 	bl	0 <bind>
 140:	e1a00fc0 	asr	r0, r0, #31
 144:	e28dd048 	add	sp, sp, #72	; 0x48
 148:	e8bd8010 	pop	{r4, pc}
 14c:	00008933 	.word	0x00008933

00000150 <rx_brake_routine>:
 150:	e5d03004 	ldrb	r3, [r0, #4]
 154:	e5d0c003 	ldrb	ip, [r0, #3]
 158:	e5d02002 	ldrb	r2, [r0, #2]
 15c:	e1a03143 	asr	r3, r3, #2
 160:	e2033003 	and	r3, r3, #3
 164:	e3530000 	cmp	r3, #0
 168:	13a00001 	movne	r0, #1
 16c:	03a00000 	moveq	r0, #0
 170:	e5c10005 	strb	r0, [r1, #5]
 174:	0a000008 	beq	19c <rx_brake_routine+0x4c>
 178:	e082240c 	add	r2, r2, ip, lsl #8
 17c:	e6ff2072 	uxth	r2, r2
 180:	e3520000 	cmp	r2, #0
 184:	012fff1e 	bxeq	lr
 188:	e5d13004 	ldrb	r3, [r1, #4]
 18c:	e3530000 	cmp	r3, #0
 190:	03a03001 	moveq	r3, #1
 194:	05c13006 	strbeq	r3, [r1, #6]
 198:	e12fff1e 	bx	lr
 19c:	e5c13006 	strb	r3, [r1, #6]
 1a0:	e5c13004 	strb	r3, [r1, #4]
 1a4:	e12fff1e 	bx	lr

000001a8 <rx_signal_routine>:
 1a8:	e92d4010 	push	{r4, lr}
 1ac:	e24dd008 	sub	sp, sp, #8
 1b0:	e1a04001 	mov	r4, r1
 1b4:	e1a01000 	mov	r1, r0
 1b8:	e1a0000d 	mov	r0, sp
 1bc:	ebfffffe 	bl	0 <spn_2876>
 1c0:	e59d3000 	ldr	r3, [sp]
 1c4:	e1a00003 	mov	r0, r3
 1c8:	e5d33000 	ldrb	r3, [r3]
 1cc:	e5c4300b 	strb	r3, [r4, #11]
 1d0:	e28dd008 	add	sp, sp, #8
 1d4:	e8bd4010 	pop	{r4, lr}
 1d8:	eafffffe 	b	0 <free>

000001dc <rx_claim_routine>:
 1dc:	e92d4070 	push	{r4, r5, r6, lr}
 1e0:	e1a0e000 	mov	lr, r0
 1e4:	e59f4128 	ldr	r4, [pc, #296]	; 314 <rx_claim_routine+0x138>
 1e8:	e5910000 	ldr	r0, [r1]
 1ec:	e24dd008 	sub	sp, sp, #8
 1f0:	e5911004 	ldr	r1, [r1, #4]
 1f4:	e1a0c00d 	mov	ip, sp
 1f8:	e5d45010 	ldrb	r5, [r4, #16]
 1fc:	e8ac0003 	stmia	ip!, {r0, r1}
 200:	e1a0c000 	mov	ip, r0
 204:	e6bf0f31 	rev	r0, r1
 208:	e6bf1f3c 	rev	r1, ip
 20c:	e155000e 	cmp	r5, lr
 210:	e1a0c003 	mov	ip, r3
 214:	e1cd00f0 	strd	r0, [sp]
 218:	0a00000a 	beq	248 <rx_claim_routine+0x6c>
 21c:	e24e307f 	sub	r3, lr, #127	; 0x7f
 220:	e3530078 	cmp	r3, #120	; 0x78
 224:	8a000005 	bhi	240 <rx_claim_routine+0x64>
 228:	e1c420d8 	ldrd	r2, [r4, #8]
 22c:	e1530001 	cmp	r3, r1
 230:	01520000 	cmpeq	r2, r0
 234:	86bfe07e 	sxthhi	lr, lr
 238:	83a03000 	movhi	r3, #0
 23c:	878c310e 	strhi	r3, [ip, lr, lsl #2]
 240:	e28dd008 	add	sp, sp, #8
 244:	e8bd8070 	pop	{r4, r5, r6, pc}
 248:	e1a05002 	mov	r5, r2
 24c:	e1c420d8 	ldrd	r2, [r4, #8]
 250:	e1530001 	cmp	r3, r1
 254:	01520000 	cmpeq	r2, r0
 258:	9a000010 	bls	2a0 <rx_claim_routine+0xc4>
 25c:	e59f60b4 	ldr	r6, [pc, #180]	; 318 <rx_claim_routine+0x13c>
 260:	e1a0200e 	mov	r2, lr
 264:	e3a01c01 	mov	r1, #256	; 0x100
 268:	e79c3102 	ldr	r3, [ip, r2, lsl #2]
 26c:	e08c0102 	add	r0, ip, r2, lsl #2
 270:	e3530001 	cmp	r3, #1
 274:	0a000017 	beq	2d8 <rx_claim_routine+0xfc>
 278:	e2820001 	add	r0, r2, #1
 27c:	e2511001 	subs	r1, r1, #1
 280:	e1a020a0 	lsr	r2, r0, #1
 284:	e0823296 	umull	r3, r2, r6, r2
 288:	e1a02322 	lsr	r2, r2, #6
 28c:	e0622382 	rsb	r2, r2, r2, lsl #7
 290:	e0402082 	sub	r2, r0, r2, lsl #1
 294:	1afffff3 	bne	268 <rx_claim_routine+0x8c>
 298:	e35e00fe 	cmp	lr, #254	; 0xfe
 29c:	0a000012 	beq	2ec <rx_claim_routine+0x110>
 2a0:	e5943020 	ldr	r3, [r4, #32]
 2a4:	e1a00005 	mov	r0, r5
 2a8:	e3c330ff 	bic	r3, r3, #255	; 0xff
 2ac:	e183e00e 	orr	lr, r3, lr
 2b0:	e38ee102 	orr	lr, lr, #-2147483648	; 0x80000000
 2b4:	e3a02010 	mov	r2, #16
 2b8:	e59f105c 	ldr	r1, [pc, #92]	; 31c <rx_claim_routine+0x140>
 2bc:	e584e020 	str	lr, [r4, #32]
 2c0:	ebfffffe 	bl	0 <write>
 2c4:	e3500010 	cmp	r0, #16
 2c8:	0affffdc 	beq	240 <rx_claim_routine+0x64>
 2cc:	e59f104c 	ldr	r1, [pc, #76]	; 320 <rx_claim_routine+0x144>
 2d0:	e3a00001 	mov	r0, #1
 2d4:	ebfffffe 	bl	0 <err>
 2d8:	e3a03000 	mov	r3, #0
 2dc:	e5c42010 	strb	r2, [r4, #16]
 2e0:	e5803000 	str	r3, [r0]
 2e4:	e5d4e010 	ldrb	lr, [r4, #16]
 2e8:	eaffffea 	b	298 <rx_claim_routine+0xbc>
 2ec:	e59f3030 	ldr	r3, [pc, #48]	; 324 <rx_claim_routine+0x148>
 2f0:	e3a0c003 	mov	ip, #3
 2f4:	e3a02016 	mov	r2, #22
 2f8:	e5933000 	ldr	r3, [r3]
 2fc:	e3a01001 	mov	r1, #1
 300:	e59f0020 	ldr	r0, [pc, #32]	; 328 <rx_claim_routine+0x14c>
 304:	e584c01c 	str	ip, [r4, #28]
 308:	ebfffffe 	bl	0 <fwrite>
 30c:	e5d4e010 	ldrb	lr, [r4, #16]
 310:	eaffffe2 	b	2a0 <rx_claim_routine+0xc4>
 314:	00000000 	.word	0x00000000
 318:	81020409 	.word	0x81020409
 31c:	00000020 	.word	0x00000020
 320:	0000007c 	.word	0x0000007c
 324:	00000000 	.word	0x00000000
 328:	00000064 	.word	0x00000064

0000032c <rx_request_routine>:
 32c:	e59f3030 	ldr	r3, [pc, #48]	; 364 <rx_request_routine+0x38>
 330:	e5d32010 	ldrb	r2, [r3, #16]
 334:	e35100ff 	cmp	r1, #255	; 0xff
 338:	11520001 	cmpne	r2, r1
 33c:	112fff1e 	bxne	lr
 340:	e92d4010 	push	{r4, lr}
 344:	e2831020 	add	r1, r3, #32
 348:	e3a02010 	mov	r2, #16
 34c:	ebfffffe 	bl	0 <write>
 350:	e3500010 	cmp	r0, #16
 354:	08bd8010 	popeq	{r4, pc}
 358:	e59f1008 	ldr	r1, [pc, #8]	; 368 <rx_request_routine+0x3c>
 35c:	e3a00001 	mov	r0, #1
 360:	ebfffffe 	bl	0 <err>
 364:	00000000 	.word	0x00000000
 368:	0000007c 	.word	0x0000007c

0000036c <choose_new_sa>:
 36c:	e35100ff 	cmp	r1, #255	; 0xff
 370:	c12fff1e 	bxgt	lr
 374:	e7923100 	ldr	r3, [r2, r0, lsl #2]
 378:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 37c:	e3530001 	cmp	r3, #1
 380:	e082c100 	add	ip, r2, r0, lsl #2
 384:	0a00000e 	beq	3c4 <choose_new_sa+0x58>
 388:	e59fe048 	ldr	lr, [pc, #72]	; 3d8 <choose_new_sa+0x6c>
 38c:	e2803001 	add	r3, r0, #1
 390:	e2811001 	add	r1, r1, #1
 394:	e0c0c39e 	smull	ip, r0, lr, r3
 398:	e080c003 	add	ip, r0, r3
 39c:	e1a00fc3 	asr	r0, r3, #31
 3a0:	e06003cc 	rsb	r0, r0, ip, asr #7
 3a4:	e3510c01 	cmp	r1, #256	; 0x100
 3a8:	e0600380 	rsb	r0, r0, r0, lsl #7
 3ac:	e0430080 	sub	r0, r3, r0, lsl #1
 3b0:	049df004 	popeq	{pc}		; (ldreq pc, [sp], #4)
 3b4:	e7923100 	ldr	r3, [r2, r0, lsl #2]
 3b8:	e082c100 	add	ip, r2, r0, lsl #2
 3bc:	e3530001 	cmp	r3, #1
 3c0:	1afffff1 	bne	38c <choose_new_sa+0x20>
 3c4:	e59f2010 	ldr	r2, [pc, #16]	; 3dc <choose_new_sa+0x70>
 3c8:	e3a03000 	mov	r3, #0
 3cc:	e5c20010 	strb	r0, [r2, #16]
 3d0:	e58c3000 	str	r3, [ip]
 3d4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 3d8:	81020409 	.word	0x81020409
 3dc:	00000000 	.word	0x00000000

000003e0 <parse_J1939>:
 3e0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3e4:	e1a0e820 	lsr	lr, r0, #16
 3e8:	e1a0cd20 	lsr	ip, r0, #26
 3ec:	e6efe07e 	uxtb	lr, lr
 3f0:	e35e00ef 	cmp	lr, #239	; 0xef
 3f4:	e20cc007 	and	ip, ip, #7
 3f8:	e5c1c000 	strb	ip, [r1]
 3fc:	d59fe02c 	ldrle	lr, [pc, #44]	; 430 <parse_J1939+0x50>
 400:	e1a01420 	lsr	r1, r0, #8
 404:	e59dc004 	ldr	ip, [sp, #4]
 408:	c3c114ff 	bicgt	r1, r1, #-16777216	; 0xff000000
 40c:	c3c1173f 	bicgt	r1, r1, #16515072	; 0xfc0000
 410:	c3e0e000 	mvngt	lr, #0
 414:	d00ee001 	andle	lr, lr, r1
 418:	c5c3e000 	strbgt	lr, [r3]
 41c:	d5c31000 	strble	r1, [r3]
 420:	c5821000 	strgt	r1, [r2]
 424:	d582e000 	strle	lr, [r2]
 428:	e5cc0000 	strb	r0, [ip]
 42c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 430:	0003ff00 	.word	0x0003ff00

Disassembly of section .text.startup:

00000000 <main>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e24dd0c4 	sub	sp, sp, #196	; 0xc4
   8:	e1a05000 	mov	r5, r0
   c:	e1a04001 	mov	r4, r1
  10:	ebfffffe 	bl	0 <wake_watchdog>
  14:	e59f85a4 	ldr	r8, [pc, #1444]	; 5c0 <main+0x5c0>
  18:	e59f95a4 	ldr	r9, [pc, #1444]	; 5c4 <main+0x5c4>
  1c:	e59f65a4 	ldr	r6, [pc, #1444]	; 5c8 <main+0x5c8>
  20:	e59f75a4 	ldr	r7, [pc, #1444]	; 5cc <main+0x5cc>
  24:	e1a02006 	mov	r2, r6
  28:	e1a01004 	mov	r1, r4
  2c:	e1a00005 	mov	r0, r5
  30:	ebfffffe 	bl	0 <getopt>
  34:	e3700001 	cmn	r0, #1
  38:	0a00001a 	beq	a8 <main+0xa8>
  3c:	e3500068 	cmp	r0, #104	; 0x68
  40:	0a00000f 	beq	84 <main+0x84>
  44:	da000009 	ble	70 <main+0x70>
  48:	e3500073 	cmp	r0, #115	; 0x73
  4c:	0a000013 	beq	a0 <main+0xa0>
  50:	e3500077 	cmp	r0, #119	; 0x77
  54:	1afffff2 	bne	24 <main+0x24>
  58:	e3a0200a 	mov	r2, #10
  5c:	e3a01000 	mov	r1, #0
  60:	e5970000 	ldr	r0, [r7]
  64:	ebfffffe 	bl	0 <strtol>
  68:	ebfffffe 	bl	0 <setwdtimeout>
  6c:	eaffffec 	b	24 <main+0x24>
  70:	e350003f 	cmp	r0, #63	; 0x3f
  74:	0a00018d 	beq	6b0 <main+0x6b0>
  78:	e3500066 	cmp	r0, #102	; 0x66
  7c:	05979000 	ldreq	r9, [r7]
  80:	eaffffe7 	b	24 <main+0x24>
  84:	e59f3580 	ldr	r3, [pc, #1408]	; 60c <main+0x60c>
  88:	e5942000 	ldr	r2, [r4]
  8c:	e59f157c 	ldr	r1, [pc, #1404]	; 610 <main+0x610>
  90:	e5930000 	ldr	r0, [r3]
  94:	ebfffffe 	bl	0 <fprintf>
  98:	e3a00000 	mov	r0, #0
  9c:	ebfffffe 	bl	0 <exit>
  a0:	e5978000 	ldr	r8, [r7]
  a4:	eaffffde 	b	24 <main+0x24>
  a8:	e59f3520 	ldr	r3, [pc, #1312]	; 5d0 <main+0x5d0>
  ac:	e5d33000 	ldrb	r3, [r3]
  b0:	e1550003 	cmp	r5, r3
  b4:	da00017b 	ble	6a8 <main+0x6a8>
  b8:	e2832001 	add	r2, r3, #1
  bc:	e7946103 	ldr	r6, [r4, r3, lsl #2]
  c0:	e6ef3072 	uxtb	r3, r2
  c4:	e1530005 	cmp	r3, r5
  c8:	bafffffa 	blt	b8 <main+0xb8>
  cc:	e1a00009 	mov	r0, r9
  d0:	ebfffffe 	bl	0 <logging_setup>
  d4:	e3a02001 	mov	r2, #1
  d8:	e3a01003 	mov	r1, #3
  dc:	e3a0001d 	mov	r0, #29
  e0:	ebfffffe 	bl	0 <socket>
  e4:	e59f54e8 	ldr	r5, [pc, #1256]	; 5d4 <main+0x5d4>
  e8:	e59f44e8 	ldr	r4, [pc, #1256]	; 5d8 <main+0x5d8>
  ec:	e58d0020 	str	r0, [sp, #32]
  f0:	ea000003 	b	104 <main+0x104>
  f4:	e1a00005 	mov	r0, r5
  f8:	ebfffffe 	bl	0 <puts>
  fc:	e1a00004 	mov	r0, r4
 100:	ebfffffe 	bl	0 <sleep>
 104:	e1a01006 	mov	r1, r6
 108:	e28d0020 	add	r0, sp, #32
 10c:	ebfffffe 	bl	c4 <main+0xc4>
 110:	e3500000 	cmp	r0, #0
 114:	1afffff6 	bne	f4 <main+0xf4>
 118:	e59f04bc 	ldr	r0, [pc, #1212]	; 5dc <main+0x5dc>
 11c:	ebfffffe 	bl	0 <puts>
 120:	e3a02001 	mov	r2, #1
 124:	e3a01003 	mov	r1, #3
 128:	e3a0001d 	mov	r0, #29
 12c:	ebfffffe 	bl	0 <socket>
 130:	e59f549c 	ldr	r5, [pc, #1180]	; 5d4 <main+0x5d4>
 134:	e59f449c 	ldr	r4, [pc, #1180]	; 5d8 <main+0x5d8>
 138:	e58d0024 	str	r0, [sp, #36]	; 0x24
 13c:	ea000003 	b	150 <main+0x150>
 140:	e1a00005 	mov	r0, r5
 144:	ebfffffe 	bl	0 <puts>
 148:	e1a00004 	mov	r0, r4
 14c:	ebfffffe 	bl	0 <sleep>
 150:	e1a01008 	mov	r1, r8
 154:	e28d0024 	add	r0, sp, #36	; 0x24
 158:	ebfffffe 	bl	c4 <main+0xc4>
 15c:	e3500000 	cmp	r0, #0
 160:	1afffff6 	bne	140 <main+0x140>
 164:	e58d001c 	str	r0, [sp, #28]
 168:	e59f0470 	ldr	r0, [pc, #1136]	; 5e0 <main+0x5e0>
 16c:	ebfffffe 	bl	0 <puts>
 170:	ebfffffe 	bl	0 <initialize_pins>
 174:	e59f5468 	ldr	r5, [pc, #1128]	; 5e4 <main+0x5e4>
 178:	e3a04001 	mov	r4, #1
 17c:	e3a02005 	mov	r2, #5
 180:	e1a00004 	mov	r0, r4
 184:	e1a01005 	mov	r1, r5
 188:	ebfffffe 	bl	0 <set_period>
 18c:	e1a00004 	mov	r0, r4
 190:	e3a0100a 	mov	r1, #10
 194:	ebfffffe 	bl	0 <set_duty>
 198:	e3a01001 	mov	r1, #1
 19c:	e1a00004 	mov	r0, r4
 1a0:	e0844001 	add	r4, r4, r1
 1a4:	ebfffffe 	bl	0 <set_power>
 1a8:	e3540005 	cmp	r4, #5
 1ac:	1afffff2 	bne	17c <main+0x17c>
 1b0:	e3a00014 	mov	r0, #20
 1b4:	ebfffffe 	bl	0 <malloc>
 1b8:	e2504000 	subs	r4, r0, #0
 1bc:	0a00014f 	beq	700 <main+0x700>
 1c0:	ebfffffe 	bl	0 <init_bumper>
 1c4:	e59f741c 	ldr	r7, [pc, #1052]	; 5e8 <main+0x5e8>
 1c8:	e28f3ffa 	add	r3, pc, #1000	; 0x3e8
 1cc:	e1c320d0 	ldrd	r2, [r3]
 1d0:	e3a01004 	mov	r1, #4
 1d4:	e3a000fe 	mov	r0, #254	; 0xfe
 1d8:	e1c720f8 	strd	r2, [r7, #8]
 1dc:	ebfffffe 	bl	0 <calloc>
 1e0:	e2503000 	subs	r3, r0, #0
 1e4:	e58d3018 	str	r3, [sp, #24]
 1e8:	159d2018 	ldrne	r2, [sp, #24]
 1ec:	12823f7e 	addne	r3, r2, #504	; 0x1f8
 1f0:	12821ff7 	addne	r1, r2, #988	; 0x3dc
 1f4:	13a02001 	movne	r2, #1
 1f8:	0a00013d 	beq	6f4 <main+0x6f4>
 1fc:	e5a32004 	str	r2, [r3, #4]!
 200:	e1510003 	cmp	r1, r3
 204:	1afffffc 	bne	1fc <main+0x1fc>
 208:	e5d73010 	ldrb	r3, [r7, #16]
 20c:	e59d2018 	ldr	r2, [sp, #24]
 210:	e3a05000 	mov	r5, #0
 214:	e3a0000f 	mov	r0, #15
 218:	e7825103 	str	r5, [r2, r3, lsl #2]
 21c:	ebfffffe 	bl	3c <main+0x3c>
 220:	e3a00002 	mov	r0, #2
 224:	ebfffffe 	bl	3c <main+0x3c>
 228:	e3a0000e 	mov	r0, #14
 22c:	ebfffffe 	bl	3c <main+0x3c>
 230:	e3a02010 	mov	r2, #16
 234:	e59f13b0 	ldr	r1, [pc, #944]	; 5ec <main+0x5ec>
 238:	e59d0020 	ldr	r0, [sp, #32]
 23c:	ebfffffe 	bl	0 <write>
 240:	e3500010 	cmp	r0, #16
 244:	1a000127 	bne	6e8 <main+0x6e8>
 248:	e59f33a0 	ldr	r3, [pc, #928]	; 5f0 <main+0x5f0>
 24c:	e58d5040 	str	r5, [sp, #64]	; 0x40
 250:	e58d5048 	str	r5, [sp, #72]	; 0x48
 254:	e5875018 	str	r5, [r7, #24]
 258:	e58d5044 	str	r5, [sp, #68]	; 0x44
 25c:	e58d304c 	str	r3, [sp, #76]	; 0x4c
 260:	ea000003 	b	274 <main+0x274>
 264:	ebfffffe 	bl	0 <__errno_location>
 268:	e5903000 	ldr	r3, [r0]
 26c:	e3530004 	cmp	r3, #4
 270:	1a000118 	bne	6d8 <main+0x6d8>
 274:	e3a02000 	mov	r2, #0
 278:	e1a00002 	mov	r0, r2
 27c:	e28d1040 	add	r1, sp, #64	; 0x40
 280:	ebfffffe 	bl	0 <setitimer>
 284:	e3500000 	cmp	r0, #0
 288:	bafffff5 	blt	264 <main+0x264>
 28c:	ebfffffe 	bl	0 <transport_setup>
 290:	ebfffffe 	bl	0 <initialize_spn_monitor>
 294:	e59d2020 	ldr	r2, [sp, #32]
 298:	e28d5030 	add	r5, sp, #48	; 0x30
 29c:	e3a03000 	mov	r3, #0
 2a0:	e2822001 	add	r2, r2, #1
 2a4:	e1a09003 	mov	r9, r3
 2a8:	e58d2010 	str	r2, [sp, #16]
 2ac:	e5853004 	str	r3, [r5, #4]
 2b0:	e58d3030 	str	r3, [sp, #48]	; 0x30
 2b4:	e5853008 	str	r3, [r5, #8]
 2b8:	e585300c 	str	r3, [r5, #12]
 2bc:	e1a0b003 	mov	fp, r3
 2c0:	e1a0a003 	mov	sl, r3
 2c4:	e58d300c 	str	r3, [sp, #12]
 2c8:	ebfffffe 	bl	0 <clock>
 2cc:	e58d0014 	str	r0, [sp, #20]
 2d0:	e5976014 	ldr	r6, [r7, #20]
 2d4:	e3560000 	cmp	r6, #0
 2d8:	1a0000a9 	bne	584 <main+0x584>
 2dc:	ebfffffe 	bl	0 <feed_watchdog>
 2e0:	e1a01006 	mov	r1, r6
 2e4:	e28d303c 	add	r3, sp, #60	; 0x3c
 2e8:	e28d20bc 	add	r2, sp, #188	; 0xbc
 2ec:	e5a31004 	str	r1, [r3, #4]!
 2f0:	e1530002 	cmp	r3, r2
 2f4:	1afffffc 	bne	2ec <main+0x2ec>
 2f8:	e59d3020 	ldr	r3, [sp, #32]
 2fc:	e28dc0c0 	add	ip, sp, #192	; 0xc0
 300:	e3530000 	cmp	r3, #0
 304:	e283001f 	add	r0, r3, #31
 308:	a1a00003 	movge	r0, r3
 30c:	e2732000 	rsbs	r2, r3, #0
 310:	e1a002c0 	asr	r0, r0, #5
 314:	e202201f 	and	r2, r2, #31
 318:	e08c0100 	add	r0, ip, r0, lsl #2
 31c:	e203301f 	and	r3, r3, #31
 320:	e510e080 	ldr	lr, [r0, #-128]	; 0xffffff80
 324:	52623000 	rsbpl	r3, r2, #0
 328:	e3a06001 	mov	r6, #1
 32c:	e28d2028 	add	r2, sp, #40	; 0x28
 330:	e18ee316 	orr	lr, lr, r6, lsl r3
 334:	e3a03000 	mov	r3, #0
 338:	e58d2000 	str	r2, [sp]
 33c:	e58d1028 	str	r1, [sp, #40]	; 0x28
 340:	e3a0c032 	mov	ip, #50	; 0x32
 344:	e500e080 	str	lr, [r0, #-128]	; 0xffffff80
 348:	e1a02003 	mov	r2, r3
 34c:	e28d1040 	add	r1, sp, #64	; 0x40
 350:	e59d0010 	ldr	r0, [sp, #16]
 354:	e58dc02c 	str	ip, [sp, #44]	; 0x2c
 358:	ebfffffe 	bl	0 <select>
 35c:	e3500000 	cmp	r0, #0
 360:	da000027 	ble	404 <main+0x404>
 364:	e3a02010 	mov	r2, #16
 368:	e1a01005 	mov	r1, r5
 36c:	e59d0020 	ldr	r0, [sp, #32]
 370:	ebfffffe 	bl	0 <read>
 374:	e3500006 	cmp	r0, #6
 378:	da0000c6 	ble	698 <main+0x698>
 37c:	e5d7e010 	ldrb	lr, [r7, #16]
 380:	e59dc020 	ldr	ip, [sp, #32]
 384:	e895000f 	ldm	r5, {r0, r1, r2, r3}
 388:	e88d5000 	stm	sp, {ip, lr}
 38c:	ebfffffe 	bl	0 <transport_handler>
 390:	e895000f 	ldm	r5, {r0, r1, r2, r3}
 394:	ebfffffe 	bl	0 <logging_handler>
 398:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
 39c:	e3c0020e 	bic	r0, r0, #-536870912	; 0xe0000000
 3a0:	e58d0030 	str	r0, [sp, #48]	; 0x30
 3a4:	e1a03820 	lsr	r3, r0, #16
 3a8:	e1a06420 	lsr	r6, r0, #8
 3ac:	e6ef3073 	uxtb	r3, r3
 3b0:	e35300ef 	cmp	r3, #239	; 0xef
 3b4:	da00009b 	ble	628 <main+0x628>
 3b8:	e3c664ff 	bic	r6, r6, #-16777216	; 0xff000000
 3bc:	e59f3230 	ldr	r3, [pc, #560]	; 5f4 <main+0x5f4>
 3c0:	e3c6673f 	bic	r6, r6, #16515072	; 0xfc0000
 3c4:	e1560003 	cmp	r6, r3
 3c8:	0a0000a1 	beq	654 <main+0x654>
 3cc:	e59f3224 	ldr	r3, [pc, #548]	; 5f8 <main+0x5f8>
 3d0:	e1560003 	cmp	r6, r3
 3d4:	1a0000a3 	bne	668 <main+0x668>
 3d8:	e28d8038 	add	r8, sp, #56	; 0x38
 3dc:	e1a00008 	mov	r0, r8
 3e0:	e1a01004 	mov	r1, r4
 3e4:	ebfffffe 	bl	1a8 <main+0x1a8>
 3e8:	e1a01006 	mov	r1, r6
 3ec:	e1a02008 	mov	r2, r8
 3f0:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
 3f4:	ebfffffe 	bl	0 <monitor_spns>
 3f8:	e3a03000 	mov	r3, #0
 3fc:	e5883000 	str	r3, [r8]
 400:	e5883004 	str	r3, [r8, #4]
 404:	e1a00004 	mov	r0, r4
 408:	ebfffffe 	bl	0 <turn_signal_routine>
 40c:	e1a00004 	mov	r0, r4
 410:	ebfffffe 	bl	0 <brake_routine>
 414:	e5d46000 	ldrb	r6, [r4]
 418:	e59d300c 	ldr	r3, [sp, #12]
 41c:	e1560003 	cmp	r6, r3
 420:	0a000005 	beq	43c <main+0x43c>
 424:	e3560000 	cmp	r6, #0
 428:	13a01064 	movne	r1, #100	; 0x64
 42c:	03a0100a 	moveq	r1, #10
 430:	e3a00001 	mov	r0, #1
 434:	ebfffffe 	bl	0 <set_duty>
 438:	e58d600c 	str	r6, [sp, #12]
 43c:	e5d46001 	ldrb	r6, [r4, #1]
 440:	e156000a 	cmp	r6, sl
 444:	0a000005 	beq	460 <main+0x460>
 448:	e3560000 	cmp	r6, #0
 44c:	13a01064 	movne	r1, #100	; 0x64
 450:	03a0100a 	moveq	r1, #10
 454:	e3a00001 	mov	r0, #1
 458:	ebfffffe 	bl	0 <set_duty>
 45c:	e1a0a006 	mov	sl, r6
 460:	e5d46002 	ldrb	r6, [r4, #2]
 464:	e156000b 	cmp	r6, fp
 468:	0a000005 	beq	484 <main+0x484>
 46c:	e3560000 	cmp	r6, #0
 470:	13a01064 	movne	r1, #100	; 0x64
 474:	03a0100a 	moveq	r1, #10
 478:	e3a00001 	mov	r0, #1
 47c:	ebfffffe 	bl	0 <set_duty>
 480:	e1a0b006 	mov	fp, r6
 484:	e5d46003 	ldrb	r6, [r4, #3]
 488:	e1560009 	cmp	r6, r9
 48c:	0a000005 	beq	4a8 <main+0x4a8>
 490:	e3560000 	cmp	r6, #0
 494:	13a01064 	movne	r1, #100	; 0x64
 498:	03a0100a 	moveq	r1, #10
 49c:	e3a00001 	mov	r0, #1
 4a0:	ebfffffe 	bl	0 <set_duty>
 4a4:	e1a09006 	mov	r9, r6
 4a8:	e597301c 	ldr	r3, [r7, #28]
 4ac:	e3530001 	cmp	r3, #1
 4b0:	0a00002c 	beq	568 <main+0x568>
 4b4:	e3530002 	cmp	r3, #2
 4b8:	1affff84 	bne	2d0 <main+0x2d0>
 4bc:	e5d73010 	ldrb	r3, [r7, #16]
 4c0:	e59d200c 	ldr	r2, [sp, #12]
 4c4:	e59f1130 	ldr	r1, [pc, #304]	; 5fc <main+0x5fc>
 4c8:	e2922000 	adds	r2, r2, #0
 4cc:	e1831001 	orr	r1, r3, r1
 4d0:	13a02001 	movne	r2, #1
 4d4:	e29a3000 	adds	r3, sl, #0
 4d8:	13a03001 	movne	r3, #1
 4dc:	e2622000 	rsb	r2, r2, #0
 4e0:	e58d1030 	str	r1, [sp, #48]	; 0x30
 4e4:	e29b1000 	adds	r1, fp, #0
 4e8:	13a01001 	movne	r1, #1
 4ec:	e5cd2039 	strb	r2, [sp, #57]	; 0x39
 4f0:	e2992000 	adds	r2, r9, #0
 4f4:	13a02001 	movne	r2, #1
 4f8:	e2633000 	rsb	r3, r3, #0
 4fc:	e2611000 	rsb	r1, r1, #0
 500:	e2622000 	rsb	r2, r2, #0
 504:	e5cd303b 	strb	r3, [sp, #59]	; 0x3b
 508:	e5cd103d 	strb	r1, [sp, #61]	; 0x3d
 50c:	e3a03000 	mov	r3, #0
 510:	e3a01008 	mov	r1, #8
 514:	e5cd203f 	strb	r2, [sp, #63]	; 0x3f
 518:	e5cd3038 	strb	r3, [sp, #56]	; 0x38
 51c:	e5cd303a 	strb	r3, [sp, #58]	; 0x3a
 520:	e5cd303c 	strb	r3, [sp, #60]	; 0x3c
 524:	e5cd303e 	strb	r3, [sp, #62]	; 0x3e
 528:	e5cd1034 	strb	r1, [sp, #52]	; 0x34
 52c:	ebfffffe 	bl	0 <clock>
 530:	e59d2014 	ldr	r2, [sp, #20]
 534:	e59f30c4 	ldr	r3, [pc, #196]	; 600 <main+0x600>
 538:	e0400002 	sub	r0, r0, r2
 53c:	e1500003 	cmp	r0, r3
 540:	daffff62 	ble	2d0 <main+0x2d0>
 544:	e3a02010 	mov	r2, #16
 548:	e1a01005 	mov	r1, r5
 54c:	e59d0020 	ldr	r0, [sp, #32]
 550:	ebfffffe 	bl	0 <write>
 554:	e3500010 	cmp	r0, #16
 558:	1a00005b 	bne	6cc <main+0x6cc>
 55c:	ebfffffe 	bl	0 <clock>
 560:	e58d0014 	str	r0, [sp, #20]
 564:	eaffff59 	b	2d0 <main+0x2d0>
 568:	e5973018 	ldr	r3, [r7, #24]
 56c:	e5976014 	ldr	r6, [r7, #20]
 570:	e3530000 	cmp	r3, #0
 574:	13a03002 	movne	r3, #2
 578:	1587301c 	strne	r3, [r7, #28]
 57c:	e3560000 	cmp	r6, #0
 580:	0affff55 	beq	2dc <main+0x2dc>
 584:	e1a00004 	mov	r0, r4
 588:	ebfffffe 	bl	0 <free>
 58c:	e59d0018 	ldr	r0, [sp, #24]
 590:	ebfffffe 	bl	0 <free>
 594:	ebfffffe 	bl	0 <terminate_logging_gracefully>
 598:	ebfffffe 	bl	0 <transport_takedown>
 59c:	ebfffffe 	bl	0 <close_pins>
 5a0:	e59d0020 	ldr	r0, [sp, #32]
 5a4:	ebfffffe 	bl	0 <close>
 5a8:	ebfffffe 	bl	0 <rest_watchdog>
 5ac:	e59d001c 	ldr	r0, [sp, #28]
 5b0:	e28dd0c4 	add	sp, sp, #196	; 0xc4
 5b4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 5b8:	0c020040 	.word	0x0c020040
 5bc:	11040900 	.word	0x11040900
 5c0:	000000a0 	.word	0x000000a0
 5c4:	000000a8 	.word	0x000000a8
 5c8:	000000c8 	.word	0x000000c8
	...
 5d4:	000000d0 	.word	0x000000d0
 5d8:	00000bb8 	.word	0x00000bb8
 5dc:	000000e8 	.word	0x000000e8
 5e0:	000000fc 	.word	0x000000fc
 5e4:	00000118 	.word	0x00000118
 5e8:	00000000 	.word	0x00000000
 5ec:	00000020 	.word	0x00000020
 5f0:	0003d090 	.word	0x0003d090
 5f4:	0000fef1 	.word	0x0000fef1
 5f8:	0000fdcc 	.word	0x0000fdcc
 5fc:	9cfe4000 	.word	0x9cfe4000
 600:	000186a0 	.word	0x000186a0
 604:	0000017c 	.word	0x0000017c
 608:	000000c0 	.word	0x000000c0
 60c:	00000000 	.word	0x00000000
 610:	00000018 	.word	0x00000018
 614:	00000188 	.word	0x00000188
 618:	000001a4 	.word	0x000001a4
 61c:	0000015c 	.word	0x0000015c
 620:	0000013c 	.word	0x0000013c
 624:	00000120 	.word	0x00000120
 628:	e6ef1076 	uxtb	r1, r6
 62c:	e3c664ff 	bic	r6, r6, #-16777216	; 0xff000000
 630:	e3c6673f 	bic	r6, r6, #16515072	; 0xfc0000
 634:	e6ef0070 	uxtb	r0, r0
 638:	e3c660ff 	bic	r6, r6, #255	; 0xff
 63c:	e3560cee 	cmp	r6, #60928	; 0xee00
 640:	0a00000b 	beq	674 <main+0x674>
 644:	e3560cea 	cmp	r6, #59904	; 0xea00
 648:	0a00000f 	beq	68c <main+0x68c>
 64c:	e28d8038 	add	r8, sp, #56	; 0x38
 650:	eaffff64 	b	3e8 <main+0x3e8>
 654:	e28d8038 	add	r8, sp, #56	; 0x38
 658:	e1a00008 	mov	r0, r8
 65c:	e1a01004 	mov	r1, r4
 660:	ebfffffe 	bl	150 <main+0x150>
 664:	eaffff5f 	b	3e8 <main+0x3e8>
 668:	e6ef0070 	uxtb	r0, r0
 66c:	e3a010ff 	mov	r1, #255	; 0xff
 670:	eafffff1 	b	63c <main+0x63c>
 674:	e28d8038 	add	r8, sp, #56	; 0x38
 678:	e1a01008 	mov	r1, r8
 67c:	e59d3018 	ldr	r3, [sp, #24]
 680:	e59d2020 	ldr	r2, [sp, #32]
 684:	ebfffffe 	bl	1dc <main+0x1dc>
 688:	eaffff56 	b	3e8 <main+0x3e8>
 68c:	e59d0020 	ldr	r0, [sp, #32]
 690:	ebfffffe 	bl	32c <main+0x32c>
 694:	eaffffec 	b	64c <main+0x64c>
 698:	e51f009c 	ldr	r0, [pc, #-156]	; 604 <main+0x604>
 69c:	e58d601c 	str	r6, [sp, #28]
 6a0:	ebfffffe 	bl	0 <perror>
 6a4:	eaffffc0 	b	5ac <main+0x5ac>
 6a8:	e51f60a8 	ldr	r6, [pc, #-168]	; 608 <main+0x608>
 6ac:	eafffe86 	b	cc <main+0xcc>
 6b0:	e51f30ac 	ldr	r3, [pc, #-172]	; 60c <main+0x60c>
 6b4:	e5942000 	ldr	r2, [r4]
 6b8:	e51f10b0 	ldr	r1, [pc, #-176]	; 610 <main+0x610>
 6bc:	e5930000 	ldr	r0, [r3]
 6c0:	ebfffffe 	bl	0 <fprintf>
 6c4:	e3a00001 	mov	r0, #1
 6c8:	ebfffffe 	bl	0 <exit>
 6cc:	e51f10c0 	ldr	r1, [pc, #-192]	; 614 <main+0x614>
 6d0:	e3a00001 	mov	r0, #1
 6d4:	ebfffffe 	bl	0 <err>
 6d8:	e3a020fa 	mov	r2, #250	; 0xfa
 6dc:	e51f10cc 	ldr	r1, [pc, #-204]	; 618 <main+0x618>
 6e0:	e3a00001 	mov	r0, #1
 6e4:	ebfffffe 	bl	0 <err>
 6e8:	e51f10d4 	ldr	r1, [pc, #-212]	; 61c <main+0x61c>
 6ec:	e3a00001 	mov	r0, #1
 6f0:	ebfffffe 	bl	0 <err>
 6f4:	e51f10dc 	ldr	r1, [pc, #-220]	; 620 <main+0x620>
 6f8:	e3a00001 	mov	r0, #1
 6fc:	ebfffffe 	bl	0 <err>
 700:	e51f10e4 	ldr	r1, [pc, #-228]	; 624 <main+0x624>
 704:	e3a00001 	mov	r0, #1
 708:	ebfffffe 	bl	0 <err>
