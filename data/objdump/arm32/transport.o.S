
transport.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <delete_connection>:
   0:	e59f303c 	ldr	r3, [pc, #60]	; 44 <delete_connection+0x44>
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e5d35000 	ldrb	r5, [r3]
   c:	e59f4034 	ldr	r4, [pc, #52]	; 48 <delete_connection+0x48>
  10:	e7946105 	ldr	r6, [r4, r5, lsl #2]
  14:	e5960008 	ldr	r0, [r6, #8]
  18:	e3500000 	cmp	r0, #0
  1c:	0a000000 	beq	24 <delete_connection+0x24>
  20:	ebfffffe 	bl	0 <free>
  24:	e1a00006 	mov	r0, r6
  28:	ebfffffe 	bl	0 <free>
  2c:	e5d43400 	ldrb	r3, [r4, #1024]	; 0x400
  30:	e3a02000 	mov	r2, #0
  34:	e7842105 	str	r2, [r4, r5, lsl #2]
  38:	e2433001 	sub	r3, r3, #1
  3c:	e5c43400 	strb	r3, [r4, #1024]	; 0x400
  40:	e8bd8070 	pop	{r4, r5, r6, pc}
	...

0000004c <transport_handler>:
  4c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  50:	e24dd010 	sub	sp, sp, #16
  54:	e28dc010 	add	ip, sp, #16
  58:	e59f4278 	ldr	r4, [pc, #632]	; 2d8 <transport_handler+0x28c>
  5c:	e90c000f 	stmdb	ip, {r0, r1, r2, r3}
  60:	e59d1000 	ldr	r1, [sp]
  64:	e5dd202c 	ldrb	r2, [sp, #44]	; 0x2c
  68:	e5c41000 	strb	r1, [r4]
  6c:	e1a03421 	lsr	r3, r1, #8
  70:	e6ef3073 	uxtb	r3, r3
  74:	e1530002 	cmp	r3, r2
  78:	0a000001 	beq	84 <transport_handler+0x38>
  7c:	e28dd010 	add	sp, sp, #16
  80:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  84:	e20138ff 	and	r3, r1, #16711680	; 0xff0000
  88:	e35308eb 	cmp	r3, #15400960	; 0xeb0000
  8c:	0a00000f 	beq	d0 <transport_handler+0x84>
  90:	e353073b 	cmp	r3, #15466496	; 0xec0000
  94:	1afffff8 	bne	7c <transport_handler+0x30>
  98:	e5dd3008 	ldrb	r3, [sp, #8]
  9c:	e3530010 	cmp	r3, #16
  a0:	0a000024 	beq	138 <transport_handler+0xec>
  a4:	e35300ff 	cmp	r3, #255	; 0xff
  a8:	1afffff3 	bne	7c <transport_handler+0x30>
  ac:	e59f3228 	ldr	r3, [pc, #552]	; 2dc <transport_handler+0x290>
  b0:	e6ef1071 	uxtb	r1, r1
  b4:	e7933101 	ldr	r3, [r3, r1, lsl #2]
  b8:	e3530000 	cmp	r3, #0
  bc:	0affffee 	beq	7c <transport_handler+0x30>
  c0:	e59f0218 	ldr	r0, [pc, #536]	; 2e0 <transport_handler+0x294>
  c4:	ebfffffe 	bl	0 <printf>
  c8:	ebffffcc 	bl	0 <delete_connection>
  cc:	eaffffea 	b	7c <transport_handler+0x30>
  d0:	e59f5204 	ldr	r5, [pc, #516]	; 2dc <transport_handler+0x290>
  d4:	e6ef2071 	uxtb	r2, r1
  d8:	e7953102 	ldr	r3, [r5, r2, lsl #2]
  dc:	e3530000 	cmp	r3, #0
  e0:	0affffe5 	beq	7c <transport_handler+0x30>
  e4:	e5931000 	ldr	r1, [r3]
  e8:	e3510001 	cmp	r1, #1
  ec:	1affffe2 	bne	7c <transport_handler+0x30>
  f0:	e5d31005 	ldrb	r1, [r3, #5]
  f4:	e59f01e8 	ldr	r0, [pc, #488]	; 2e4 <transport_handler+0x298>
  f8:	e2811001 	add	r1, r1, #1
  fc:	e6ef1071 	uxtb	r1, r1
 100:	e5c31005 	strb	r1, [r3, #5]
 104:	ebfffffe 	bl	0 <printf>
 108:	e5dd3008 	ldrb	r3, [sp, #8]
 10c:	e3530000 	cmp	r3, #0
 110:	0affffd9 	beq	7c <transport_handler+0x30>
 114:	e5d42000 	ldrb	r2, [r4]
 118:	e7952102 	ldr	r2, [r5, r2, lsl #2]
 11c:	e5d21004 	ldrb	r1, [r2, #4]
 120:	e1510003 	cmp	r1, r3
 124:	2a000058 	bcs	28c <transport_handler+0x240>
 128:	e59f01b8 	ldr	r0, [pc, #440]	; 2e8 <transport_handler+0x29c>
 12c:	ebfffffe 	bl	0 <puts>
 130:	ebffffb2 	bl	0 <delete_connection>
 134:	eaffffd0 	b	7c <transport_handler+0x30>
 138:	e1dd60b9 	ldrh	r6, [sp, #9]
 13c:	e5ddc00b 	ldrb	ip, [sp, #11]
 140:	e59f5194 	ldr	r5, [pc, #404]	; 2dc <transport_handler+0x290>
 144:	e6bf6fb6 	rev16	r6, r6
 148:	e6ef1071 	uxtb	r1, r1
 14c:	e6ff6076 	uxth	r6, r6
 150:	e1a02006 	mov	r2, r6
 154:	e1a0300c 	mov	r3, ip
 158:	e59f018c 	ldr	r0, [pc, #396]	; 2ec <transport_handler+0x2a0>
 15c:	e5c5c401 	strb	ip, [r5, #1025]	; 0x401
 160:	ebfffffe 	bl	0 <printf>
 164:	e5d44000 	ldrb	r4, [r4]
 168:	e7957104 	ldr	r7, [r5, r4, lsl #2]
 16c:	e3570000 	cmp	r7, #0
 170:	0a00003e 	beq	270 <transport_handler+0x224>
 174:	e59f3174 	ldr	r3, [pc, #372]	; 2f0 <transport_handler+0x2a4>
 178:	ed9f0a55 	vldr	s0, [pc, #340]	; 2d4 <transport_handler+0x288>
 17c:	e5d58401 	ldrb	r8, [r5, #1025]	; 0x401
 180:	e0832693 	umull	r2, r3, r3, r6
 184:	e0462003 	sub	r2, r6, r3
 188:	e08330a2 	add	r3, r3, r2, lsr #1
 18c:	e1a03123 	lsr	r3, r3, #2
 190:	e0633183 	rsb	r3, r3, r3, lsl #3
 194:	e0463003 	sub	r3, r6, r3
 198:	e6ff3073 	uxth	r3, r3
 19c:	e3530000 	cmp	r3, #0
 1a0:	12866007 	addne	r6, r6, #7
 1a4:	10463003 	subne	r3, r6, r3
 1a8:	16ff6073 	uxthne	r6, r3
 1ac:	ee076a90 	vmov	s15, r6
 1b0:	eef87a67 	vcvt.f32.u32	s15, s15
 1b4:	ee870a80 	vdiv.f32	s0, s15, s0
 1b8:	ebfffffe 	bl	0 <ceilf>
 1bc:	ee078a90 	vmov	s15, r8
 1c0:	eeb87be7 	vcvt.f64.s32	d7, s15
 1c4:	eeb70ac0 	vcvt.f64.f32	d0, s0
 1c8:	eeb47bc0 	vcmpe.f64	d7, d0
 1cc:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 1d0:	ca000022 	bgt	260 <transport_handler+0x214>
 1d4:	e7957104 	ldr	r7, [r5, r4, lsl #2]
 1d8:	e5970008 	ldr	r0, [r7, #8]
 1dc:	e3500000 	cmp	r0, #0
 1e0:	0a000019 	beq	24c <transport_handler+0x200>
 1e4:	e1a01006 	mov	r1, r6
 1e8:	ebfffffe 	bl	0 <realloc>
 1ec:	e5870008 	str	r0, [r7, #8]
 1f0:	e59f20fc 	ldr	r2, [pc, #252]	; 2f4 <transport_handler+0x2a8>
 1f4:	e5d53400 	ldrb	r3, [r5, #1024]	; 0x400
 1f8:	e1dd10bd 	ldrh	r1, [sp, #13]
 1fc:	e5dd000f 	ldrb	r0, [sp, #15]
 200:	e5ddc00c 	ldrb	ip, [sp, #12]
 204:	e3a06001 	mov	r6, #1
 208:	e5c78004 	strb	r8, [r7, #4]
 20c:	e5876000 	str	r6, [r7]
 210:	e0833006 	add	r3, r3, r6
 214:	e1c211b5 	strh	r1, [r2, #21]
 218:	e5c20017 	strb	r0, [r2, #23]
 21c:	e2821008 	add	r1, r2, #8
 220:	e59d0028 	ldr	r0, [sp, #40]	; 0x28
 224:	e3a02010 	mov	r2, #16
 228:	e5c54409 	strb	r4, [r5, #1033]	; 0x409
 22c:	e5c53400 	strb	r3, [r5, #1024]	; 0x400
 230:	e5c5c411 	strb	ip, [r5, #1041]	; 0x411
 234:	ebfffffe 	bl	0 <write>
 238:	e3500010 	cmp	r0, #16
 23c:	0affff8e 	beq	7c <transport_handler+0x30>
 240:	e1a00006 	mov	r0, r6
 244:	e59f10ac 	ldr	r1, [pc, #172]	; 2f8 <transport_handler+0x2ac>
 248:	ebfffffe 	bl	0 <err>
 24c:	e1a00006 	mov	r0, r6
 250:	e3a01001 	mov	r1, #1
 254:	ebfffffe 	bl	0 <calloc>
 258:	e5870008 	str	r0, [r7, #8]
 25c:	eaffffe3 	b	1f0 <transport_handler+0x1a4>
 260:	e59f0094 	ldr	r0, [pc, #148]	; 2fc <transport_handler+0x2b0>
 264:	ebfffffe 	bl	0 <puts>
 268:	ebffff64 	bl	0 <delete_connection>
 26c:	eaffff82 	b	7c <transport_handler+0x30>
 270:	e3a0100c 	mov	r1, #12
 274:	e3a00001 	mov	r0, #1
 278:	ebfffffe 	bl	0 <calloc>
 27c:	e7850104 	str	r0, [r5, r4, lsl #2]
 280:	e5807000 	str	r7, [r0]
 284:	e5807008 	str	r7, [r0, #8]
 288:	eaffffb9 	b	174 <transport_handler+0x128>
 28c:	e2433001 	sub	r3, r3, #1
 290:	e5921008 	ldr	r1, [r2, #8]
 294:	e0633183 	rsb	r3, r3, r3, lsl #3
 298:	e59de009 	ldr	lr, [sp, #9]
 29c:	e1ddc0bd 	ldrh	ip, [sp, #13]
 2a0:	e5dd000f 	ldrb	r0, [sp, #15]
 2a4:	e781e003 	str	lr, [r1, r3]
 2a8:	e0813003 	add	r3, r1, r3
 2ac:	e1c3c0b4 	strh	ip, [r3, #4]
 2b0:	e5c30006 	strb	r0, [r3, #6]
 2b4:	e5d21005 	ldrb	r1, [r2, #5]
 2b8:	e5d23004 	ldrb	r3, [r2, #4]
 2bc:	e1530001 	cmp	r3, r1
 2c0:	8affff6d 	bhi	7c <transport_handler+0x30>
 2c4:	e59f0034 	ldr	r0, [pc, #52]	; 300 <transport_handler+0x2b4>
 2c8:	ebfffffe 	bl	0 <printf>
 2cc:	ebffff4b 	bl	0 <delete_connection>
 2d0:	eaffff69 	b	7c <transport_handler+0x30>
 2d4:	40e00000 	.word	0x40e00000
	...
 2e0:	0000008c 	.word	0x0000008c
 2e4:	000000a4 	.word	0x000000a4
 2e8:	000000c8 	.word	0x000000c8
 2ec:	00000000 	.word	0x00000000
 2f0:	24924925 	.word	0x24924925
 2f4:	00000400 	.word	0x00000400
 2f8:	00000078 	.word	0x00000078
 2fc:	0000004c 	.word	0x0000004c
 300:	000000fc 	.word	0x000000fc

00000304 <transport_setup>:
 304:	e59f3030 	ldr	r3, [pc, #48]	; 33c <transport_setup+0x38>
 308:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 30c:	e3a00008 	mov	r0, #8
 310:	e59fe028 	ldr	lr, [pc, #40]	; 340 <transport_setup+0x3c>
 314:	e3e01000 	mvn	r1, #0
 318:	e3a0c011 	mov	ip, #17
 31c:	e5c3040c 	strb	r0, [r3, #1036]	; 0x40c
 320:	e3a00001 	mov	r0, #1
 324:	e5831410 	str	r1, [r3, #1040]	; 0x410
 328:	e583e408 	str	lr, [r3, #1032]	; 0x408
 32c:	e5831414 	str	r1, [r3, #1044]	; 0x414
 330:	e5c3c410 	strb	ip, [r3, #1040]	; 0x410
 334:	e5c30412 	strb	r0, [r3, #1042]	; 0x412
 338:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 33c:	00000000 	.word	0x00000000
 340:	98ecff49 	.word	0x98ecff49

00000344 <transport_takedown>:
 344:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 348:	e3a05000 	mov	r5, #0
 34c:	e59f4028 	ldr	r4, [pc, #40]	; 37c <transport_takedown+0x38>
 350:	e59f7028 	ldr	r7, [pc, #40]	; 380 <transport_takedown+0x3c>
 354:	e2846b01 	add	r6, r4, #1024	; 0x400
 358:	e5b43004 	ldr	r3, [r4, #4]!
 35c:	e3530000 	cmp	r3, #0
 360:	0a000001 	beq	36c <transport_takedown+0x28>
 364:	e5c75000 	strb	r5, [r7]
 368:	ebffff24 	bl	0 <delete_connection>
 36c:	e1540006 	cmp	r4, r6
 370:	e2855001 	add	r5, r5, #1
 374:	1afffff7 	bne	358 <transport_takedown+0x14>
 378:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 37c:	fffffffc 	.word	0xfffffffc
 380:	00000000 	.word	0x00000000
