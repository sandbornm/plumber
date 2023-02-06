
logging.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <reset_mblock>:
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
   8:	e3a02020 	mov	r2, #32
   c:	e3a01000 	mov	r1, #0
  10:	e59f0030 	ldr	r0, [pc, #48]	; 48 <reset_mblock+0x48>
  14:	ebfffffe 	bl	0 <memset>
  18:	e3a02010 	mov	r2, #16
  1c:	e3a01000 	mov	r1, #0
  20:	e59f0024 	ldr	r0, [pc, #36]	; 4c <reset_mblock+0x4c>
  24:	ebfffffe 	bl	0 <memset>
  28:	e59f3020 	ldr	r3, [pc, #32]	; 50 <reset_mblock+0x50>
  2c:	e5933058 	ldr	r3, [r3, #88]	; 0x58
  30:	e3a02020 	mov	r2, #32
  34:	e3a01000 	mov	r1, #0
  38:	e1a00003 	mov	r0, r3
  3c:	ebfffffe 	bl	0 <memset>
  40:	e1a00000 	nop			; (mov r0, r0)
  44:	e8bd8800 	pop	{fp, pc}
  48:	00000008 	.word	0x00000008
  4c:	00000028 	.word	0x00000028
  50:	00000000 	.word	0x00000000

00000054 <logging_setup>:
  54:	e92d4010 	push	{r4, lr}
  58:	e59f1068 	ldr	r1, [pc, #104]	; c8 <logging_setup+0x74>
  5c:	ebfffffe 	bl	0 <fopen>
  60:	e59f3064 	ldr	r3, [pc, #100]	; cc <logging_setup+0x78>
  64:	e3500000 	cmp	r0, #0
  68:	e5830030 	str	r0, [r3, #48]	; 0x30
  6c:	0a000012 	beq	bc <logging_setup+0x68>
  70:	e59f4058 	ldr	r4, [pc, #88]	; d0 <logging_setup+0x7c>
  74:	e3a03000 	mov	r3, #0
  78:	e3a00020 	mov	r0, #32
  7c:	e5c4300e 	strb	r3, [r4, #14]
  80:	e5843000 	str	r3, [r4]
  84:	e5843004 	str	r3, [r4, #4]
  88:	e5843008 	str	r3, [r4, #8]
  8c:	e1c430bc 	strh	r3, [r4, #12]
  90:	e1c430bf 	strh	r3, [r4, #15]
  94:	e5c43011 	strb	r3, [r4, #17]
  98:	ebfffffe 	bl	0 <malloc>
  9c:	e3a01020 	mov	r1, #32
  a0:	e5840020 	str	r0, [r4, #32]
  a4:	e59f0020 	ldr	r0, [pc, #32]	; cc <logging_setup+0x78>
  a8:	ebfffffe 	bl	dc <initialize_write>
  ac:	e3a01010 	mov	r1, #16
  b0:	e59f001c 	ldr	r0, [pc, #28]	; d4 <logging_setup+0x80>
  b4:	e8bd4010 	pop	{r4, lr}
  b8:	eafffffe 	b	dc <initialize_write>
  bc:	e59f0014 	ldr	r0, [pc, #20]	; d8 <logging_setup+0x84>
  c0:	ebfffffe 	bl	0 <perror>
  c4:	eaffffe9 	b	70 <logging_setup+0x1c>
	...
  d0:	00000038 	.word	0x00000038
  d4:	00000020 	.word	0x00000020
  d8:	00000004 	.word	0x00000004

000000dc <initialize_write>:
  dc:	e92d4030 	push	{r4, r5, lr}
  e0:	e24dd00c 	sub	sp, sp, #12
  e4:	e1a05000 	mov	r5, r0
  e8:	e58d1004 	str	r1, [sp, #4]
  ec:	ebfffffe 	bl	0 <RAND_bytes>
  f0:	e3500001 	cmp	r0, #1
  f4:	0a000000 	beq	fc <initialize_write+0x20>
  f8:	ebfffffe 	bl	0 <handleErrors>
  fc:	e59f4058 	ldr	r4, [pc, #88]	; 15c <initialize_write+0x80>
 100:	e3a02004 	mov	r2, #4
 104:	e3a01001 	mov	r1, #1
 108:	e5943030 	ldr	r3, [r4, #48]	; 0x30
 10c:	e08d0002 	add	r0, sp, r2
 110:	ebfffffe 	bl	0 <fwrite>
 114:	e3500000 	cmp	r0, #0
 118:	0a000008 	beq	140 <initialize_write+0x64>
 11c:	e5943030 	ldr	r3, [r4, #48]	; 0x30
 120:	e1a00005 	mov	r0, r5
 124:	e59d2004 	ldr	r2, [sp, #4]
 128:	e3a01001 	mov	r1, #1
 12c:	ebfffffe 	bl	0 <fwrite>
 130:	e3500000 	cmp	r0, #0
 134:	0a000004 	beq	14c <initialize_write+0x70>
 138:	e28dd00c 	add	sp, sp, #12
 13c:	e8bd8030 	pop	{r4, r5, pc}
 140:	e59f0018 	ldr	r0, [pc, #24]	; 160 <initialize_write+0x84>
 144:	ebfffffe 	bl	0 <perror>
 148:	eafffff3 	b	11c <initialize_write+0x40>
 14c:	e59f0010 	ldr	r0, [pc, #16]	; 164 <initialize_write+0x88>
 150:	ebfffffe 	bl	0 <perror>
 154:	e28dd00c 	add	sp, sp, #12
 158:	e8bd8030 	pop	{r4, r5, pc}
 15c:	00000000 	.word	0x00000000
 160:	00000030 	.word	0x00000030
 164:	0000005c 	.word	0x0000005c

00000168 <write_encrypted>:
 168:	e92d40f0 	push	{r4, r5, r6, r7, lr}
 16c:	e24dd01c 	sub	sp, sp, #28
 170:	e3a03000 	mov	r3, #0
 174:	e28d0008 	add	r0, sp, #8
 178:	e58d3008 	str	r3, [sp, #8]
 17c:	ebfffffe 	bl	338 <serialize>
 180:	e59d1008 	ldr	r1, [sp, #8]
 184:	e28d2010 	add	r2, sp, #16
 188:	e28d300c 	add	r3, sp, #12
 18c:	e2411020 	sub	r1, r1, #32
 190:	e1a04000 	mov	r4, r0
 194:	ebfffffe 	bl	0 <digest_message>
 198:	e59d200c 	ldr	r2, [sp, #12]
 19c:	e3520020 	cmp	r2, #32
 1a0:	0a000001 	beq	1ac <write_encrypted+0x44>
 1a4:	ebfffffe 	bl	0 <handleErrors>
 1a8:	e59d200c 	ldr	r2, [sp, #12]
 1ac:	e59f30d0 	ldr	r3, [pc, #208]	; 284 <write_encrypted+0x11c>
 1b0:	e59d1010 	ldr	r1, [sp, #16]
 1b4:	e5930058 	ldr	r0, [r3, #88]	; 0x58
 1b8:	ebfffffe 	bl	0 <memcpy>
 1bc:	e59d0010 	ldr	r0, [sp, #16]
 1c0:	ebfffffe 	bl	0 <free>
 1c4:	e1a00004 	mov	r0, r4
 1c8:	ebfffffe 	bl	0 <free>
 1cc:	e28d0008 	add	r0, sp, #8
 1d0:	ebfffffe 	bl	338 <serialize>
 1d4:	e59d7008 	ldr	r7, [sp, #8]
 1d8:	e59f40a8 	ldr	r4, [pc, #168]	; 288 <write_encrypted+0x120>
 1dc:	e1a06000 	mov	r6, r0
 1e0:	e2870010 	add	r0, r7, #16
 1e4:	ebfffffe 	bl	0 <malloc>
 1e8:	e3a0c000 	mov	ip, #0
 1ec:	e1a01007 	mov	r1, r7
 1f0:	e2843020 	add	r3, r4, #32
 1f4:	e1a02004 	mov	r2, r4
 1f8:	e58dc014 	str	ip, [sp, #20]
 1fc:	e58d0000 	str	r0, [sp]
 200:	e1a05000 	mov	r5, r0
 204:	e1a00006 	mov	r0, r6
 208:	ebfffffe 	bl	0 <encrypt>
 20c:	e5943030 	ldr	r3, [r4, #48]	; 0x30
 210:	e3a02001 	mov	r2, #1
 214:	e3a01004 	mov	r1, #4
 218:	e58d0014 	str	r0, [sp, #20]
 21c:	e28d0014 	add	r0, sp, #20
 220:	ebfffffe 	bl	0 <fwrite>
 224:	e3500000 	cmp	r0, #0
 228:	0a00000f 	beq	26c <write_encrypted+0x104>
 22c:	e5943030 	ldr	r3, [r4, #48]	; 0x30
 230:	e59d2014 	ldr	r2, [sp, #20]
 234:	e3a01001 	mov	r1, #1
 238:	e1a00005 	mov	r0, r5
 23c:	ebfffffe 	bl	0 <fwrite>
 240:	e3500000 	cmp	r0, #0
 244:	0a00000b 	beq	278 <write_encrypted+0x110>
 248:	e1a00006 	mov	r0, r6
 24c:	ebfffffe 	bl	0 <free>
 250:	e1a00005 	mov	r0, r5
 254:	ebfffffe 	bl	0 <free>
 258:	e3a01010 	mov	r1, #16
 25c:	e59f0028 	ldr	r0, [pc, #40]	; 28c <write_encrypted+0x124>
 260:	ebfffffe 	bl	dc <initialize_write>
 264:	e28dd01c 	add	sp, sp, #28
 268:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
 26c:	e59f001c 	ldr	r0, [pc, #28]	; 290 <write_encrypted+0x128>
 270:	ebfffffe 	bl	0 <perror>
 274:	eaffffec 	b	22c <write_encrypted+0xc4>
 278:	e59f0014 	ldr	r0, [pc, #20]	; 294 <write_encrypted+0x12c>
 27c:	ebfffffe 	bl	0 <perror>
 280:	eafffff0 	b	248 <write_encrypted+0xe0>
	...
 28c:	00000020 	.word	0x00000020
 290:	00000084 	.word	0x00000084
 294:	000000a0 	.word	0x000000a0

00000298 <logging_handler>:
 298:	e92d4070 	push	{r4, r5, r6, lr}
 29c:	e24dd010 	sub	sp, sp, #16
 2a0:	e59f5084 	ldr	r5, [pc, #132]	; 32c <logging_handler+0x94>
 2a4:	e1a0c00d 	mov	ip, sp
 2a8:	e59f4080 	ldr	r4, [pc, #128]	; 330 <logging_handler+0x98>
 2ac:	e5956034 	ldr	r6, [r5, #52]	; 0x34
 2b0:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 2b4:	e286e005 	add	lr, r6, #5
 2b8:	e89c000f 	ldm	ip, {r0, r1, r2, r3}
 2bc:	e084c206 	add	ip, r4, r6, lsl #4
 2c0:	e2444008 	sub	r4, r4, #8
 2c4:	e88c000f 	stm	ip, {r0, r1, r2, r3}
 2c8:	e084018e 	add	r0, r4, lr, lsl #3
 2cc:	e3a01000 	mov	r1, #0
 2d0:	ebfffffe 	bl	0 <gettimeofday>
 2d4:	e5942038 	ldr	r2, [r4, #56]	; 0x38
 2d8:	e2863001 	add	r3, r6, #1
 2dc:	e2822001 	add	r2, r2, #1
 2e0:	e3530001 	cmp	r3, #1
 2e4:	e5853034 	str	r3, [r5, #52]	; 0x34
 2e8:	e5842038 	str	r2, [r4, #56]	; 0x38
 2ec:	8a000001 	bhi	2f8 <logging_handler+0x60>
 2f0:	e28dd010 	add	sp, sp, #16
 2f4:	e8bd8070 	pop	{r4, r5, r6, pc}
 2f8:	ebfffffe 	bl	168 <write_encrypted>
 2fc:	e5950030 	ldr	r0, [r5, #48]	; 0x30
 300:	ebfffffe 	bl	0 <fflush>
 304:	e3500000 	cmp	r0, #0
 308:	1a000004 	bne	320 <logging_handler+0x88>
 30c:	ebfffffe 	bl	0 <reset_mblock>
 310:	e3a03000 	mov	r3, #0
 314:	e5853034 	str	r3, [r5, #52]	; 0x34
 318:	e28dd010 	add	sp, sp, #16
 31c:	e8bd8070 	pop	{r4, r5, r6, pc}
 320:	e59f000c 	ldr	r0, [pc, #12]	; 334 <logging_handler+0x9c>
 324:	ebfffffe 	bl	0 <perror>
 328:	eafffff7 	b	30c <logging_handler+0x74>
 32c:	00000000 	.word	0x00000000
 330:	00000008 	.word	0x00000008
 334:	000000c8 	.word	0x000000c8

00000338 <serialize>:
 338:	e92d4800 	push	{fp, lr}
 33c:	e28db004 	add	fp, sp, #4
 340:	e24dd018 	sub	sp, sp, #24
 344:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
 348:	e3a03000 	mov	r3, #0
 34c:	e50b3008 	str	r3, [fp, #-8]
 350:	e51b3008 	ldr	r3, [fp, #-8]
 354:	e2833071 	add	r3, r3, #113	; 0x71
 358:	e50b3008 	str	r3, [fp, #-8]
 35c:	e51b0008 	ldr	r0, [fp, #-8]
 360:	ebfffffe 	bl	0 <malloc>
 364:	e1a03000 	mov	r3, r0
 368:	e50b300c 	str	r3, [fp, #-12]
 36c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
 370:	e51b2008 	ldr	r2, [fp, #-8]
 374:	e5832000 	str	r2, [r3]
 378:	e3a03000 	mov	r3, #0
 37c:	e50b3010 	str	r3, [fp, #-16]
 380:	e51b200c 	ldr	r2, [fp, #-12]
 384:	e51b3010 	ldr	r3, [fp, #-16]
 388:	e0823003 	add	r3, r2, r3
 38c:	e59f21d8 	ldr	r2, [pc, #472]	; 56c <serialize+0x234>
 390:	e5922000 	ldr	r2, [r2]
 394:	e5832000 	str	r2, [r3]
 398:	e51b3010 	ldr	r3, [fp, #-16]
 39c:	e2833004 	add	r3, r3, #4
 3a0:	e50b3010 	str	r3, [fp, #-16]
 3a4:	e51b200c 	ldr	r2, [fp, #-12]
 3a8:	e51b3010 	ldr	r3, [fp, #-16]
 3ac:	e0823003 	add	r3, r2, r3
 3b0:	e3a02020 	mov	r2, #32
 3b4:	e59f11b4 	ldr	r1, [pc, #436]	; 570 <serialize+0x238>
 3b8:	e1a00003 	mov	r0, r3
 3bc:	ebfffffe 	bl	0 <memcpy>
 3c0:	e51b3010 	ldr	r3, [fp, #-16]
 3c4:	e2833020 	add	r3, r3, #32
 3c8:	e50b3010 	str	r3, [fp, #-16]
 3cc:	e51b200c 	ldr	r2, [fp, #-12]
 3d0:	e51b3010 	ldr	r3, [fp, #-16]
 3d4:	e0823003 	add	r3, r2, r3
 3d8:	e3a02010 	mov	r2, #16
 3dc:	e59f1190 	ldr	r1, [pc, #400]	; 574 <serialize+0x23c>
 3e0:	e1a00003 	mov	r0, r3
 3e4:	ebfffffe 	bl	0 <memcpy>
 3e8:	e51b3010 	ldr	r3, [fp, #-16]
 3ec:	e2833010 	add	r3, r3, #16
 3f0:	e50b3010 	str	r3, [fp, #-16]
 3f4:	e51b200c 	ldr	r2, [fp, #-12]
 3f8:	e51b3010 	ldr	r3, [fp, #-16]
 3fc:	e0823003 	add	r3, r2, r3
 400:	e3a0200c 	mov	r2, #12
 404:	e59f116c 	ldr	r1, [pc, #364]	; 578 <serialize+0x240>
 408:	e1a00003 	mov	r0, r3
 40c:	ebfffffe 	bl	0 <memcpy>
 410:	e51b3010 	ldr	r3, [fp, #-16]
 414:	e283300c 	add	r3, r3, #12
 418:	e50b3010 	str	r3, [fp, #-16]
 41c:	e51b200c 	ldr	r2, [fp, #-12]
 420:	e51b3010 	ldr	r3, [fp, #-16]
 424:	e0822003 	add	r2, r2, r3
 428:	e59f313c 	ldr	r3, [pc, #316]	; 56c <serialize+0x234>
 42c:	e2833044 	add	r3, r3, #68	; 0x44
 430:	e1d310b0 	ldrh	r1, [r3]
 434:	e5d33002 	ldrb	r3, [r3, #2]
 438:	e1c210b0 	strh	r1, [r2]
 43c:	e5c23002 	strb	r3, [r2, #2]
 440:	e51b3010 	ldr	r3, [fp, #-16]
 444:	e2833003 	add	r3, r3, #3
 448:	e50b3010 	str	r3, [fp, #-16]
 44c:	e51b200c 	ldr	r2, [fp, #-12]
 450:	e51b3010 	ldr	r3, [fp, #-16]
 454:	e0822003 	add	r2, r2, r3
 458:	e59f310c 	ldr	r3, [pc, #268]	; 56c <serialize+0x234>
 45c:	e2833047 	add	r3, r3, #71	; 0x47
 460:	e1d310b0 	ldrh	r1, [r3]
 464:	e5d33002 	ldrb	r3, [r3, #2]
 468:	e1c210b0 	strh	r1, [r2]
 46c:	e5c23002 	strb	r3, [r2, #2]
 470:	e51b3010 	ldr	r3, [fp, #-16]
 474:	e2833003 	add	r3, r3, #3
 478:	e50b3010 	str	r3, [fp, #-16]
 47c:	e51b200c 	ldr	r2, [fp, #-12]
 480:	e51b3010 	ldr	r3, [fp, #-16]
 484:	e0822003 	add	r2, r2, r3
 488:	e59f30dc 	ldr	r3, [pc, #220]	; 56c <serialize+0x234>
 48c:	e283304a 	add	r3, r3, #74	; 0x4a
 490:	e1d310b0 	ldrh	r1, [r3]
 494:	e5d33002 	ldrb	r3, [r3, #2]
 498:	e1c210b0 	strh	r1, [r2]
 49c:	e5c23002 	strb	r3, [r2, #2]
 4a0:	e51b3010 	ldr	r3, [fp, #-16]
 4a4:	e2833003 	add	r3, r3, #3
 4a8:	e50b3010 	str	r3, [fp, #-16]
 4ac:	e51b200c 	ldr	r2, [fp, #-12]
 4b0:	e51b3010 	ldr	r3, [fp, #-16]
 4b4:	e0823003 	add	r3, r2, r3
 4b8:	e59f20ac 	ldr	r2, [pc, #172]	; 56c <serialize+0x234>
 4bc:	e1d224bd 	ldrh	r2, [r2, #77]	; 0x4d
 4c0:	e6ff2072 	uxth	r2, r2
 4c4:	e1c320b0 	strh	r2, [r3]
 4c8:	e51b3010 	ldr	r3, [fp, #-16]
 4cc:	e2833002 	add	r3, r3, #2
 4d0:	e50b3010 	str	r3, [fp, #-16]
 4d4:	e51b200c 	ldr	r2, [fp, #-12]
 4d8:	e51b3010 	ldr	r3, [fp, #-16]
 4dc:	e0822003 	add	r2, r2, r3
 4e0:	e59f3084 	ldr	r3, [pc, #132]	; 56c <serialize+0x234>
 4e4:	e283304f 	add	r3, r3, #79	; 0x4f
 4e8:	e1d310b0 	ldrh	r1, [r3]
 4ec:	e5d33002 	ldrb	r3, [r3, #2]
 4f0:	e1c210b0 	strh	r1, [r2]
 4f4:	e5c23002 	strb	r3, [r2, #2]
 4f8:	e51b3010 	ldr	r3, [fp, #-16]
 4fc:	e2833003 	add	r3, r3, #3
 500:	e50b3010 	str	r3, [fp, #-16]
 504:	e51b200c 	ldr	r2, [fp, #-12]
 508:	e51b3010 	ldr	r3, [fp, #-16]
 50c:	e0822003 	add	r2, r2, r3
 510:	e59f3054 	ldr	r3, [pc, #84]	; 56c <serialize+0x234>
 514:	e2833052 	add	r3, r3, #82	; 0x52
 518:	e1d310b0 	ldrh	r1, [r3]
 51c:	e5d33002 	ldrb	r3, [r3, #2]
 520:	e1c210b0 	strh	r1, [r2]
 524:	e5c23002 	strb	r3, [r2, #2]
 528:	e51b3010 	ldr	r3, [fp, #-16]
 52c:	e2833003 	add	r3, r3, #3
 530:	e50b3010 	str	r3, [fp, #-16]
 534:	e59f3040 	ldr	r3, [pc, #64]	; 57c <serialize+0x244>
 538:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
 53c:	e51b200c 	ldr	r2, [fp, #-12]
 540:	e51b3010 	ldr	r3, [fp, #-16]
 544:	e0820003 	add	r0, r2, r3
 548:	e59f301c 	ldr	r3, [pc, #28]	; 56c <serialize+0x234>
 54c:	e5931058 	ldr	r1, [r3, #88]	; 0x58
 550:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
 554:	e3a02020 	mov	r2, #32
 558:	e12fff33 	blx	r3
 55c:	e51b300c 	ldr	r3, [fp, #-12]
 560:	e1a00003 	mov	r0, r3
 564:	e24bd004 	sub	sp, fp, #4
 568:	e8bd8800 	pop	{fp, pc}
 56c:	00000000 	.word	0x00000000
 570:	00000008 	.word	0x00000008
 574:	00000028 	.word	0x00000028
 578:	00000038 	.word	0x00000038
 57c:	00000000 	.word	0x00000000

00000580 <terminate_logging_gracefully>:
 580:	e92d4010 	push	{r4, lr}
 584:	e59f4028 	ldr	r4, [pc, #40]	; 5b4 <terminate_logging_gracefully+0x34>
 588:	e5943034 	ldr	r3, [r4, #52]	; 0x34
 58c:	e3530000 	cmp	r3, #0
 590:	1a000005 	bne	5ac <terminate_logging_gracefully+0x2c>
 594:	e59f301c 	ldr	r3, [pc, #28]	; 5b8 <terminate_logging_gracefully+0x38>
 598:	e5930058 	ldr	r0, [r3, #88]	; 0x58
 59c:	ebfffffe 	bl	0 <free>
 5a0:	e5940030 	ldr	r0, [r4, #48]	; 0x30
 5a4:	e8bd4010 	pop	{r4, lr}
 5a8:	eafffffe 	b	0 <fclose>
 5ac:	ebfffffe 	bl	168 <write_encrypted>
 5b0:	eafffff7 	b	594 <terminate_logging_gracefully+0x14>
	...
