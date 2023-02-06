
monitor.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <initialize_spn_monitor>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a00028 	mov	r0, #40	; 0x28
   8:	ebfffffe 	bl	0 <malloc>
   c:	e59f3014 	ldr	r3, [pc, #20]	; 28 <initialize_spn_monitor+0x28>
  10:	e3a01000 	mov	r1, #0
  14:	e3a02001 	mov	r2, #1
  18:	e1c310b4 	strh	r1, [r3, #4]
  1c:	e5c32006 	strb	r2, [r3, #6]
  20:	e5830000 	str	r0, [r3]
  24:	e8bd8010 	pop	{r4, pc}
  28:	00000000 	.word	0x00000000

0000002c <monitor_spns>:
  2c:	e59f3460 	ldr	r3, [pc, #1120]	; 494 <monitor_spns+0x468>
  30:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  34:	e1510003 	cmp	r1, r3
  38:	e24dd034 	sub	sp, sp, #52	; 0x34
  3c:	e1a07002 	mov	r7, r2
  40:	0a00007f 	beq	244 <monitor_spns+0x218>
  44:	e59f544c 	ldr	r5, [pc, #1100]	; 498 <monitor_spns+0x46c>
  48:	e5d53006 	ldrb	r3, [r5, #6]
  4c:	e3530000 	cmp	r3, #0
  50:	1a000001 	bne	5c <monitor_spns+0x30>
  54:	e28dd034 	add	sp, sp, #52	; 0x34
  58:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  5c:	e1a0a000 	mov	sl, r0
  60:	e1a00001 	mov	r0, r1
  64:	e1a04001 	mov	r4, r1
  68:	ebfffffe 	bl	0 <fetch_pgn>
  6c:	e2503000 	subs	r3, r0, #0
  70:	0afffff7 	beq	54 <monitor_spns+0x28>
  74:	e3a06000 	mov	r6, #0
  78:	e58d600c 	str	r6, [sp, #12]
  7c:	e28d000c 	add	r0, sp, #12
  80:	e12fff33 	blx	r3
  84:	e5d53006 	ldrb	r3, [r5, #6]
  88:	e3a02000 	mov	r2, #0
  8c:	e1a04404 	lsl	r4, r4, #8
  90:	e3530002 	cmp	r3, #2
  94:	e3a03000 	mov	r3, #0
  98:	e3a01008 	mov	r1, #8
  9c:	e1cd21f0 	strd	r2, [sp, #16]
  a0:	e58d6028 	str	r6, [sp, #40]	; 0x28
  a4:	e58d4020 	str	r4, [sp, #32]
  a8:	e58d602c 	str	r6, [sp, #44]	; 0x2c
  ac:	e5cd1024 	strb	r1, [sp, #36]	; 0x24
  b0:	e59d300c 	ldr	r3, [sp, #12]
  b4:	e58d0004 	str	r0, [sp, #4]
  b8:	0a000047 	beq	1dc <monitor_spns+0x1b0>
  bc:	e1530006 	cmp	r3, r6
  c0:	da000034 	ble	198 <monitor_spns+0x16c>
  c4:	e1a01006 	mov	r1, r6
  c8:	e1a0b000 	mov	fp, r0
  cc:	e1d520b4 	ldrh	r2, [r5, #4]
  d0:	e3520000 	cmp	r2, #0
  d4:	13a04000 	movne	r4, #0
  d8:	1a000004 	bne	f0 <monitor_spns+0xc4>
  dc:	ea000027 	b	180 <monitor_spns+0x154>
  e0:	e1d530b4 	ldrh	r3, [r5, #4]
  e4:	e2844001 	add	r4, r4, #1
  e8:	e1530004 	cmp	r3, r4
  ec:	da000022 	ble	17c <monitor_spns+0x150>
  f0:	e5953000 	ldr	r3, [r5]
  f4:	e59b2004 	ldr	r2, [fp, #4]
  f8:	e7933104 	ldr	r3, [r3, r4, lsl #2]
  fc:	e1520003 	cmp	r2, r3
 100:	1afffff6 	bne	e0 <monitor_spns+0xb4>
 104:	e59b3000 	ldr	r3, [fp]
 108:	e28d0018 	add	r0, sp, #24
 10c:	e1a01007 	mov	r1, r7
 110:	e12fff33 	blx	r3
 114:	e1dd31bc 	ldrh	r3, [sp, #28]
 118:	e59d0018 	ldr	r0, [sp, #24]
 11c:	e3530000 	cmp	r3, #0
 120:	1a000020 	bne	1a8 <monitor_spns+0x17c>
 124:	e5d02000 	ldrb	r2, [r0]
 128:	e3a03000 	mov	r3, #0
 12c:	e1dd11be 	ldrh	r1, [sp, #30]
 130:	e1a09003 	mov	r9, r3
 134:	e59dc010 	ldr	ip, [sp, #16]
 138:	e241e020 	sub	lr, r1, #32
 13c:	e1a03113 	lsl	r3, r3, r1
 140:	e1833e12 	orr	r3, r3, r2, lsl lr
 144:	e261e020 	rsb	lr, r1, #32
 148:	e1a08002 	mov	r8, r2
 14c:	e18c1112 	orr	r1, ip, r2, lsl r1
 150:	e1833e32 	orr	r3, r3, r2, lsr lr
 154:	e59d2014 	ldr	r2, [sp, #20]
 158:	e58d1010 	str	r1, [sp, #16]
 15c:	e1823003 	orr	r3, r2, r3
 160:	e58d3014 	str	r3, [sp, #20]
 164:	ebfffffe 	bl	0 <free>
 168:	e1d530b4 	ldrh	r3, [r5, #4]
 16c:	e2844001 	add	r4, r4, #1
 170:	e3a01001 	mov	r1, #1
 174:	e1530004 	cmp	r3, r4
 178:	caffffdc 	bgt	f0 <monitor_spns+0xc4>
 17c:	e59d300c 	ldr	r3, [sp, #12]
 180:	e2866001 	add	r6, r6, #1
 184:	e1530006 	cmp	r3, r6
 188:	e28bb008 	add	fp, fp, #8
 18c:	caffffce 	bgt	cc <monitor_spns+0xa0>
 190:	e3510001 	cmp	r1, #1
 194:	0a000036 	beq	274 <monitor_spns+0x248>
 198:	e59d0004 	ldr	r0, [sp, #4]
 19c:	ebfffffe 	bl	0 <free>
 1a0:	e28dd034 	add	sp, sp, #52	; 0x34
 1a4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 1a8:	e3530001 	cmp	r3, #1
 1ac:	0a000007 	beq	1d0 <monitor_spns+0x1a4>
 1b0:	e3530002 	cmp	r3, #2
 1b4:	03a09000 	moveq	r9, #0
 1b8:	05902000 	ldreq	r2, [r0]
 1bc:	01a03009 	moveq	r3, r9
 1c0:	01a08002 	moveq	r8, r2
 1c4:	01a02008 	moveq	r2, r8
 1c8:	11c020d0 	ldrdne	r2, [r0]
 1cc:	eaffffd6 	b	12c <monitor_spns+0x100>
 1d0:	e1d020b0 	ldrh	r2, [r0]
 1d4:	e3a03000 	mov	r3, #0
 1d8:	eaffffd3 	b	12c <monitor_spns+0x100>
 1dc:	e3530000 	cmp	r3, #0
 1e0:	da00000a 	ble	210 <monitor_spns+0x1e4>
 1e4:	e59d3004 	ldr	r3, [sp, #4]
 1e8:	e1a01007 	mov	r1, r7
 1ec:	e28d0018 	add	r0, sp, #24
 1f0:	e7933186 	ldr	r3, [r3, r6, lsl #3]
 1f4:	e12fff33 	blx	r3
 1f8:	e59d0018 	ldr	r0, [sp, #24]
 1fc:	ebfffffe 	bl	0 <free>
 200:	e59d300c 	ldr	r3, [sp, #12]
 204:	e2866001 	add	r6, r6, #1
 208:	e1530006 	cmp	r3, r6
 20c:	cafffff4 	bgt	1e4 <monitor_spns+0x1b8>
 210:	e5970000 	ldr	r0, [r7]
 214:	e5971004 	ldr	r1, [r7, #4]
 218:	e28d9028 	add	r9, sp, #40	; 0x28
 21c:	e3a02010 	mov	r2, #16
 220:	e8a90003 	stmia	r9!, {r0, r1}
 224:	e1a0000a 	mov	r0, sl
 228:	e28d1020 	add	r1, sp, #32
 22c:	ebfffffe 	bl	0 <write>
 230:	e3500010 	cmp	r0, #16
 234:	0affffd7 	beq	198 <monitor_spns+0x16c>
 238:	e59f125c 	ldr	r1, [pc, #604]	; 49c <monitor_spns+0x470>
 23c:	e3a00001 	mov	r0, #1
 240:	ebfffffe 	bl	0 <err>
 244:	e5d21000 	ldrb	r1, [r2]
 248:	e5924004 	ldr	r4, [r2, #4]
 24c:	e6bf4f34 	rev	r4, r4
 250:	e3510005 	cmp	r1, #5
 254:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 258:	ea00008a 	b	488 <monitor_spns+0x45c>
 25c:	000003b4 	.word	0x000003b4
 260:	0000033c 	.word	0x0000033c
 264:	000002e8 	.word	0x000002e8
 268:	000002d0 	.word	0x000002d0
 26c:	000002b8 	.word	0x000002b8
 270:	000002a0 	.word	0x000002a0
 274:	e1cd21d0 	ldrd	r2, [sp, #16]
 278:	e28d1010 	add	r1, sp, #16
 27c:	e6bf2f32 	rev	r2, r2
 280:	e6bf3f33 	rev	r3, r3
 284:	e58d2014 	str	r2, [sp, #20]
 288:	e58d3010 	str	r3, [sp, #16]
 28c:	e8910003 	ldm	r1, {r0, r1}
 290:	e28d3028 	add	r3, sp, #40	; 0x28
 294:	e3a02010 	mov	r2, #16
 298:	e8830003 	stm	r3, {r0, r1}
 29c:	eaffffe0 	b	224 <monitor_spns+0x1f8>
 2a0:	e59f31f0 	ldr	r3, [pc, #496]	; 498 <monitor_spns+0x46c>
 2a4:	e3a02002 	mov	r2, #2
 2a8:	e59f01f0 	ldr	r0, [pc, #496]	; 4a0 <monitor_spns+0x474>
 2ac:	e5c32006 	strb	r2, [r3, #6]
 2b0:	ebfffffe 	bl	0 <puts>
 2b4:	eaffff66 	b	54 <monitor_spns+0x28>
 2b8:	e59f31d8 	ldr	r3, [pc, #472]	; 498 <monitor_spns+0x46c>
 2bc:	e3a02001 	mov	r2, #1
 2c0:	e59f01dc 	ldr	r0, [pc, #476]	; 4a4 <monitor_spns+0x478>
 2c4:	e5c32006 	strb	r2, [r3, #6]
 2c8:	ebfffffe 	bl	0 <puts>
 2cc:	eaffff60 	b	54 <monitor_spns+0x28>
 2d0:	e59f31c0 	ldr	r3, [pc, #448]	; 498 <monitor_spns+0x46c>
 2d4:	e3a02000 	mov	r2, #0
 2d8:	e59f01c8 	ldr	r0, [pc, #456]	; 4a8 <monitor_spns+0x47c>
 2dc:	e5c32006 	strb	r2, [r3, #6]
 2e0:	ebfffffe 	bl	0 <puts>
 2e4:	eaffff5a 	b	54 <monitor_spns+0x28>
 2e8:	e59f51a8 	ldr	r5, [pc, #424]	; 498 <monitor_spns+0x46c>
 2ec:	e1d520b4 	ldrh	r2, [r5, #4]
 2f0:	e3520000 	cmp	r2, #0
 2f4:	0affff56 	beq	54 <monitor_spns+0x28>
 2f8:	e5951000 	ldr	r1, [r5]
 2fc:	e5913000 	ldr	r3, [r1]
 300:	e1540003 	cmp	r4, r3
 304:	1281c004 	addne	ip, r1, #4
 308:	13a03000 	movne	r3, #0
 30c:	1a000006 	bne	32c <monitor_spns+0x300>
 310:	ea000032 	b	3e0 <monitor_spns+0x3b4>
 314:	e1a0000c 	mov	r0, ip
 318:	e1a0e003 	mov	lr, r3
 31c:	e5906000 	ldr	r6, [r0]
 320:	e28cc004 	add	ip, ip, #4
 324:	e1540006 	cmp	r4, r6
 328:	0a00002f 	beq	3ec <monitor_spns+0x3c0>
 32c:	e2833001 	add	r3, r3, #1
 330:	e1530002 	cmp	r3, r2
 334:	1afffff6 	bne	314 <monitor_spns+0x2e8>
 338:	eaffff45 	b	54 <monitor_spns+0x28>
 33c:	e59f5154 	ldr	r5, [pc, #340]	; 498 <monitor_spns+0x46c>
 340:	e1d520b4 	ldrh	r2, [r5, #4]
 344:	e5950000 	ldr	r0, [r5]
 348:	e3520000 	cmp	r2, #0
 34c:	0a00000b 	beq	380 <monitor_spns+0x354>
 350:	e5903000 	ldr	r3, [r0]
 354:	e1540003 	cmp	r4, r3
 358:	0affff3d 	beq	54 <monitor_spns+0x28>
 35c:	e1a01000 	mov	r1, r0
 360:	e3a03000 	mov	r3, #0
 364:	ea000002 	b	374 <monitor_spns+0x348>
 368:	e5b1c004 	ldr	ip, [r1, #4]!
 36c:	e154000c 	cmp	r4, ip
 370:	0affff37 	beq	54 <monitor_spns+0x28>
 374:	e2833001 	add	r3, r3, #1
 378:	e1530002 	cmp	r3, r2
 37c:	1afffff9 	bne	368 <monitor_spns+0x33c>
 380:	e59f3124 	ldr	r3, [pc, #292]	; 4ac <monitor_spns+0x480>
 384:	e282c001 	add	ip, r2, #1
 388:	e0831c93 	umull	r1, r3, r3, ip
 38c:	e1a031a3 	lsr	r3, r3, #3
 390:	e0833103 	add	r3, r3, r3, lsl #2
 394:	e15c0083 	cmp	ip, r3, lsl #1
 398:	0a00002e 	beq	458 <monitor_spns+0x42c>
 39c:	e7804102 	str	r4, [r0, r2, lsl #2]
 3a0:	e1a01004 	mov	r1, r4
 3a4:	e59f0104 	ldr	r0, [pc, #260]	; 4b0 <monitor_spns+0x484>
 3a8:	e1c5c0b4 	strh	ip, [r5, #4]
 3ac:	ebfffffe 	bl	0 <printf>
 3b0:	eaffff27 	b	54 <monitor_spns+0x28>
 3b4:	e59f40dc 	ldr	r4, [pc, #220]	; 498 <monitor_spns+0x46c>
 3b8:	e5940000 	ldr	r0, [r4]
 3bc:	ebfffffe 	bl	0 <free>
 3c0:	e3a00028 	mov	r0, #40	; 0x28
 3c4:	ebfffffe 	bl	0 <malloc>
 3c8:	e3a03000 	mov	r3, #0
 3cc:	e1c430b4 	strh	r3, [r4, #4]
 3d0:	e5840000 	str	r0, [r4]
 3d4:	e59f00d8 	ldr	r0, [pc, #216]	; 4b4 <monitor_spns+0x488>
 3d8:	ebfffffe 	bl	0 <puts>
 3dc:	eaffff1c 	b	54 <monitor_spns+0x28>
 3e0:	e3a0e000 	mov	lr, #0
 3e4:	e1a0300e 	mov	r3, lr
 3e8:	e1a00001 	mov	r0, r1
 3ec:	e0422003 	sub	r2, r2, r3
 3f0:	e28ee001 	add	lr, lr, #1
 3f4:	e2422001 	sub	r2, r2, #1
 3f8:	e081110e 	add	r1, r1, lr, lsl #2
 3fc:	e1a02102 	lsl	r2, r2, #2
 400:	ebfffffe 	bl	0 <memmove>
 404:	e1d510b4 	ldrh	r1, [r5, #4]
 408:	e59f309c 	ldr	r3, [pc, #156]	; 4ac <monitor_spns+0x480>
 40c:	e2411001 	sub	r1, r1, #1
 410:	e6ff1071 	uxth	r1, r1
 414:	e2912000 	adds	r2, r1, #0
 418:	e0830193 	umull	r0, r3, r3, r1
 41c:	e1c510b4 	strh	r1, [r5, #4]
 420:	13a02001 	movne	r2, #1
 424:	e1a031a3 	lsr	r3, r3, #3
 428:	e0833103 	add	r3, r3, r3, lsl #2
 42c:	e0413083 	sub	r3, r1, r3, lsl #1
 430:	e6ff3073 	uxth	r3, r3
 434:	e3530000 	cmp	r3, #0
 438:	01a03002 	moveq	r3, r2
 43c:	13a03000 	movne	r3, #0
 440:	e3530000 	cmp	r3, #0
 444:	1a00000a 	bne	474 <monitor_spns+0x448>
 448:	e1a01004 	mov	r1, r4
 44c:	e59f0064 	ldr	r0, [pc, #100]	; 4b8 <monitor_spns+0x48c>
 450:	ebfffffe 	bl	0 <printf>
 454:	eafffefe 	b	54 <monitor_spns+0x28>
 458:	e282200a 	add	r2, r2, #10
 45c:	e1a01102 	lsl	r1, r2, #2
 460:	ebfffffe 	bl	0 <realloc>
 464:	e1d520b4 	ldrh	r2, [r5, #4]
 468:	e282c001 	add	ip, r2, #1
 46c:	e5850000 	str	r0, [r5]
 470:	eaffffc9 	b	39c <monitor_spns+0x370>
 474:	e1a01101 	lsl	r1, r1, #2
 478:	e5950000 	ldr	r0, [r5]
 47c:	ebfffffe 	bl	0 <realloc>
 480:	e5850000 	str	r0, [r5]
 484:	eaffffef 	b	448 <monitor_spns+0x41c>
 488:	e59f002c 	ldr	r0, [pc, #44]	; 4bc <monitor_spns+0x490>
 48c:	ebfffffe 	bl	0 <printf>
 490:	eafffeef 	b	54 <monitor_spns+0x28>
 494:	0000ffee 	.word	0x0000ffee
 498:	00000000 	.word	0x00000000
 49c:	000000bc 	.word	0x000000bc
 4a0:	00000078 	.word	0x00000078
 4a4:	00000060 	.word	0x00000060
 4a8:	00000048 	.word	0x00000048
 4ac:	cccccccd 	.word	0xcccccccd
 4b0:	00000014 	.word	0x00000014
 4b4:	00000000 	.word	0x00000000
 4b8:	0000002c 	.word	0x0000002c
 4bc:	00000098 	.word	0x00000098
