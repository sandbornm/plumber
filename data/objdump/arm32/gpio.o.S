
gpio.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <initialize_pins>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a01002 	mov	r1, #2
   8:	e59f013c 	ldr	r0, [pc, #316]	; 14c <initialize_pins+0x14c>
   c:	ebfffffe 	bl	0 <open>
  10:	e59f4138 	ldr	r4, [pc, #312]	; 150 <initialize_pins+0x150>
  14:	e3a01002 	mov	r1, #2
  18:	e5840000 	str	r0, [r4]
  1c:	e59f0130 	ldr	r0, [pc, #304]	; 154 <initialize_pins+0x154>
  20:	ebfffffe 	bl	0 <open>
  24:	e3a01002 	mov	r1, #2
  28:	e5840010 	str	r0, [r4, #16]
  2c:	e59f0124 	ldr	r0, [pc, #292]	; 158 <initialize_pins+0x158>
  30:	ebfffffe 	bl	0 <open>
  34:	e3a01002 	mov	r1, #2
  38:	e5840004 	str	r0, [r4, #4]
  3c:	e59f0118 	ldr	r0, [pc, #280]	; 15c <initialize_pins+0x15c>
  40:	ebfffffe 	bl	0 <open>
  44:	e3a01002 	mov	r1, #2
  48:	e584000c 	str	r0, [r4, #12]
  4c:	e59f010c 	ldr	r0, [pc, #268]	; 160 <initialize_pins+0x160>
  50:	ebfffffe 	bl	0 <open>
  54:	e3a01002 	mov	r1, #2
  58:	e5840008 	str	r0, [r4, #8]
  5c:	e59f0100 	ldr	r0, [pc, #256]	; 164 <initialize_pins+0x164>
  60:	ebfffffe 	bl	0 <open>
  64:	e3a01002 	mov	r1, #2
  68:	e5840014 	str	r0, [r4, #20]
  6c:	e59f00f4 	ldr	r0, [pc, #244]	; 168 <initialize_pins+0x168>
  70:	ebfffffe 	bl	0 <open>
  74:	e3a01002 	mov	r1, #2
  78:	e5840024 	str	r0, [r4, #36]	; 0x24
  7c:	e59f00e8 	ldr	r0, [pc, #232]	; 16c <initialize_pins+0x16c>
  80:	ebfffffe 	bl	0 <open>
  84:	e3a01002 	mov	r1, #2
  88:	e5840018 	str	r0, [r4, #24]
  8c:	e59f00dc 	ldr	r0, [pc, #220]	; 170 <initialize_pins+0x170>
  90:	ebfffffe 	bl	0 <open>
  94:	e3a01002 	mov	r1, #2
  98:	e5840020 	str	r0, [r4, #32]
  9c:	e59f00d0 	ldr	r0, [pc, #208]	; 174 <initialize_pins+0x174>
  a0:	ebfffffe 	bl	0 <open>
  a4:	e3a01002 	mov	r1, #2
  a8:	e584001c 	str	r0, [r4, #28]
  ac:	e59f00c4 	ldr	r0, [pc, #196]	; 178 <initialize_pins+0x178>
  b0:	ebfffffe 	bl	0 <open>
  b4:	e3a01002 	mov	r1, #2
  b8:	e5840028 	str	r0, [r4, #40]	; 0x28
  bc:	e59f00b8 	ldr	r0, [pc, #184]	; 17c <initialize_pins+0x17c>
  c0:	ebfffffe 	bl	0 <open>
  c4:	e3a01002 	mov	r1, #2
  c8:	e5840038 	str	r0, [r4, #56]	; 0x38
  cc:	e59f00ac 	ldr	r0, [pc, #172]	; 180 <initialize_pins+0x180>
  d0:	ebfffffe 	bl	0 <open>
  d4:	e3a01002 	mov	r1, #2
  d8:	e584002c 	str	r0, [r4, #44]	; 0x2c
  dc:	e59f00a0 	ldr	r0, [pc, #160]	; 184 <initialize_pins+0x184>
  e0:	ebfffffe 	bl	0 <open>
  e4:	e3a01002 	mov	r1, #2
  e8:	e5840034 	str	r0, [r4, #52]	; 0x34
  ec:	e59f0094 	ldr	r0, [pc, #148]	; 188 <initialize_pins+0x188>
  f0:	ebfffffe 	bl	0 <open>
  f4:	e3a01002 	mov	r1, #2
  f8:	e5840030 	str	r0, [r4, #48]	; 0x30
  fc:	e59f0088 	ldr	r0, [pc, #136]	; 18c <initialize_pins+0x18c>
 100:	ebfffffe 	bl	0 <open>
 104:	e3a01002 	mov	r1, #2
 108:	e584003c 	str	r0, [r4, #60]	; 0x3c
 10c:	e59f007c 	ldr	r0, [pc, #124]	; 190 <initialize_pins+0x190>
 110:	ebfffffe 	bl	0 <open>
 114:	e3a01002 	mov	r1, #2
 118:	e584004c 	str	r0, [r4, #76]	; 0x4c
 11c:	e59f0070 	ldr	r0, [pc, #112]	; 194 <initialize_pins+0x194>
 120:	ebfffffe 	bl	0 <open>
 124:	e3a01002 	mov	r1, #2
 128:	e5840040 	str	r0, [r4, #64]	; 0x40
 12c:	e59f0064 	ldr	r0, [pc, #100]	; 198 <initialize_pins+0x198>
 130:	ebfffffe 	bl	0 <open>
 134:	e3a01002 	mov	r1, #2
 138:	e5840048 	str	r0, [r4, #72]	; 0x48
 13c:	e59f0058 	ldr	r0, [pc, #88]	; 19c <initialize_pins+0x19c>
 140:	ebfffffe 	bl	0 <open>
 144:	e5840044 	str	r0, [r4, #68]	; 0x44
 148:	e8bd8010 	pop	{r4, pc}
	...
 154:	00000034 	.word	0x00000034
 158:	00000088 	.word	0x00000088
 15c:	000000dc 	.word	0x000000dc
 160:	00000134 	.word	0x00000134
 164:	0000018c 	.word	0x0000018c
 168:	000001c0 	.word	0x000001c0
 16c:	00000214 	.word	0x00000214
 170:	00000268 	.word	0x00000268
 174:	000002c0 	.word	0x000002c0
 178:	00000318 	.word	0x00000318
 17c:	0000034c 	.word	0x0000034c
 180:	000003a0 	.word	0x000003a0
 184:	000003f4 	.word	0x000003f4
 188:	0000044c 	.word	0x0000044c
 18c:	000004a4 	.word	0x000004a4
 190:	000004d8 	.word	0x000004d8
 194:	0000052c 	.word	0x0000052c
 198:	00000580 	.word	0x00000580
 19c:	000005d8 	.word	0x000005d8

000001a0 <close_pins>:
 1a0:	e92d4010 	push	{r4, lr}
 1a4:	e59f40a0 	ldr	r4, [pc, #160]	; 24c <close_pins+0xac>
 1a8:	e5940000 	ldr	r0, [r4]
 1ac:	ebfffffe 	bl	0 <close>
 1b0:	e5940010 	ldr	r0, [r4, #16]
 1b4:	ebfffffe 	bl	0 <close>
 1b8:	e5940004 	ldr	r0, [r4, #4]
 1bc:	ebfffffe 	bl	0 <close>
 1c0:	e594000c 	ldr	r0, [r4, #12]
 1c4:	ebfffffe 	bl	0 <close>
 1c8:	e5940008 	ldr	r0, [r4, #8]
 1cc:	ebfffffe 	bl	0 <close>
 1d0:	e5940014 	ldr	r0, [r4, #20]
 1d4:	ebfffffe 	bl	0 <close>
 1d8:	e5940024 	ldr	r0, [r4, #36]	; 0x24
 1dc:	ebfffffe 	bl	0 <close>
 1e0:	e5940018 	ldr	r0, [r4, #24]
 1e4:	ebfffffe 	bl	0 <close>
 1e8:	e5940020 	ldr	r0, [r4, #32]
 1ec:	ebfffffe 	bl	0 <close>
 1f0:	e594001c 	ldr	r0, [r4, #28]
 1f4:	ebfffffe 	bl	0 <close>
 1f8:	e5940028 	ldr	r0, [r4, #40]	; 0x28
 1fc:	ebfffffe 	bl	0 <close>
 200:	e5940038 	ldr	r0, [r4, #56]	; 0x38
 204:	ebfffffe 	bl	0 <close>
 208:	e594002c 	ldr	r0, [r4, #44]	; 0x2c
 20c:	ebfffffe 	bl	0 <close>
 210:	e5940034 	ldr	r0, [r4, #52]	; 0x34
 214:	ebfffffe 	bl	0 <close>
 218:	e5940030 	ldr	r0, [r4, #48]	; 0x30
 21c:	ebfffffe 	bl	0 <close>
 220:	e594003c 	ldr	r0, [r4, #60]	; 0x3c
 224:	ebfffffe 	bl	0 <close>
 228:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
 22c:	ebfffffe 	bl	0 <close>
 230:	e5940040 	ldr	r0, [r4, #64]	; 0x40
 234:	ebfffffe 	bl	0 <close>
 238:	e5940048 	ldr	r0, [r4, #72]	; 0x48
 23c:	ebfffffe 	bl	0 <close>
 240:	e5940044 	ldr	r0, [r4, #68]	; 0x44
 244:	e8bd4010 	pop	{r4, lr}
 248:	eafffffe 	b	0 <close>
 24c:	00000000 	.word	0x00000000

00000250 <get_pin>:
 250:	e2411002 	sub	r1, r1, #2
 254:	e92d4010 	push	{r4, lr}
 258:	e1a0c000 	mov	ip, r0
 25c:	e3510002 	cmp	r1, #2
 260:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
 264:	ea00000e 	b	2a4 <get_pin+0x54>
 268:	00000294 	.word	0x00000294
 26c:	00000274 	.word	0x00000274
 270:	0000029c 	.word	0x0000029c
 274:	e59f4030 	ldr	r4, [pc, #48]	; 2ac <get_pin+0x5c>
 278:	e8b4000f 	ldm	r4!, {r0, r1, r2, r3}
 27c:	e1a0e00c 	mov	lr, ip
 280:	e5944000 	ldr	r4, [r4]
 284:	e8ae000f 	stmia	lr!, {r0, r1, r2, r3}
 288:	e1a0000c 	mov	r0, ip
 28c:	e58e4000 	str	r4, [lr]
 290:	e8bd8010 	pop	{r4, pc}
 294:	e59f4014 	ldr	r4, [pc, #20]	; 2b0 <get_pin+0x60>
 298:	eafffff6 	b	278 <get_pin+0x28>
 29c:	e59f4010 	ldr	r4, [pc, #16]	; 2b4 <get_pin+0x64>
 2a0:	eafffff4 	b	278 <get_pin+0x28>
 2a4:	e59f400c 	ldr	r4, [pc, #12]	; 2b8 <get_pin+0x68>
 2a8:	eafffff2 	b	278 <get_pin+0x28>
 2ac:	00000028 	.word	0x00000028
 2b0:	00000014 	.word	0x00000014
 2b4:	0000003c 	.word	0x0000003c
 2b8:	00000000 	.word	0x00000000

000002bc <set_power>:
 2bc:	e2400002 	sub	r0, r0, #2
 2c0:	e92d4070 	push	{r4, r5, r6, lr}
 2c4:	e1a05001 	mov	r5, r1
 2c8:	e59f3068 	ldr	r3, [pc, #104]	; 338 <set_power+0x7c>
 2cc:	e3500002 	cmp	r0, #2
 2d0:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 2d4:	ea000015 	b	330 <set_power+0x74>
 2d8:	00000314 	.word	0x00000314
 2dc:	000002e4 	.word	0x000002e4
 2e0:	0000031c 	.word	0x0000031c
 2e4:	e5934038 	ldr	r4, [r3, #56]	; 0x38
 2e8:	e3a02000 	mov	r2, #0
 2ec:	e1a01002 	mov	r1, r2
 2f0:	e1a00004 	mov	r0, r4
 2f4:	ebfffffe 	bl	0 <lseek>
 2f8:	e3550000 	cmp	r5, #0
 2fc:	e1a00004 	mov	r0, r4
 300:	e3a02001 	mov	r2, #1
 304:	0a000006 	beq	324 <set_power+0x68>
 308:	e59f102c 	ldr	r1, [pc, #44]	; 33c <set_power+0x80>
 30c:	e8bd4070 	pop	{r4, r5, r6, lr}
 310:	eafffffe 	b	0 <write>
 314:	e5934024 	ldr	r4, [r3, #36]	; 0x24
 318:	eafffff2 	b	2e8 <set_power+0x2c>
 31c:	e593404c 	ldr	r4, [r3, #76]	; 0x4c
 320:	eafffff0 	b	2e8 <set_power+0x2c>
 324:	e59f1014 	ldr	r1, [pc, #20]	; 340 <set_power+0x84>
 328:	e8bd4070 	pop	{r4, r5, r6, lr}
 32c:	eafffffe 	b	0 <write>
 330:	e5934010 	ldr	r4, [r3, #16]
 334:	eaffffeb 	b	2e8 <set_power+0x2c>
 338:	00000000 	.word	0x00000000
 33c:	00000630 	.word	0x00000630
 340:	00000634 	.word	0x00000634

00000344 <set_state>:
 344:	e2400002 	sub	r0, r0, #2
 348:	e92d4010 	push	{r4, lr}
 34c:	e59f3054 	ldr	r3, [pc, #84]	; 3a8 <set_state+0x64>
 350:	e3500002 	cmp	r0, #2
 354:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 358:	ea000010 	b	3a0 <set_state+0x5c>
 35c:	00000390 	.word	0x00000390
 360:	00000368 	.word	0x00000368
 364:	00000398 	.word	0x00000398
 368:	e5934028 	ldr	r4, [r3, #40]	; 0x28
 36c:	e3a02000 	mov	r2, #0
 370:	e1a01002 	mov	r1, r2
 374:	e1a00004 	mov	r0, r4
 378:	ebfffffe 	bl	0 <lseek>
 37c:	e1a00004 	mov	r0, r4
 380:	e3a02003 	mov	r2, #3
 384:	e59f1020 	ldr	r1, [pc, #32]	; 3ac <set_state+0x68>
 388:	e8bd4010 	pop	{r4, lr}
 38c:	eafffffe 	b	0 <write>
 390:	e5934014 	ldr	r4, [r3, #20]
 394:	eafffff4 	b	36c <set_state+0x28>
 398:	e593403c 	ldr	r4, [r3, #60]	; 0x3c
 39c:	eafffff2 	b	36c <set_state+0x28>
 3a0:	e5934000 	ldr	r4, [r3]
 3a4:	eafffff0 	b	36c <set_state+0x28>
 3a8:	00000000 	.word	0x00000000
 3ac:	00000638 	.word	0x00000638

000003b0 <enable_pin>:
 3b0:	e2400002 	sub	r0, r0, #2
 3b4:	e92d4010 	push	{r4, lr}
 3b8:	e59f3054 	ldr	r3, [pc, #84]	; 414 <enable_pin+0x64>
 3bc:	e3500002 	cmp	r0, #2
 3c0:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 3c4:	ea000010 	b	40c <enable_pin+0x5c>
 3c8:	000003fc 	.word	0x000003fc
 3cc:	000003d4 	.word	0x000003d4
 3d0:	00000404 	.word	0x00000404
 3d4:	e5934038 	ldr	r4, [r3, #56]	; 0x38
 3d8:	e3a02000 	mov	r2, #0
 3dc:	e1a01002 	mov	r1, r2
 3e0:	e1a00004 	mov	r0, r4
 3e4:	ebfffffe 	bl	0 <lseek>
 3e8:	e1a00004 	mov	r0, r4
 3ec:	e3a02001 	mov	r2, #1
 3f0:	e59f1020 	ldr	r1, [pc, #32]	; 418 <enable_pin+0x68>
 3f4:	e8bd4010 	pop	{r4, lr}
 3f8:	eafffffe 	b	0 <write>
 3fc:	e5934024 	ldr	r4, [r3, #36]	; 0x24
 400:	eafffff4 	b	3d8 <enable_pin+0x28>
 404:	e593404c 	ldr	r4, [r3, #76]	; 0x4c
 408:	eafffff2 	b	3d8 <enable_pin+0x28>
 40c:	e5934010 	ldr	r4, [r3, #16]
 410:	eafffff0 	b	3d8 <enable_pin+0x28>
 414:	00000000 	.word	0x00000000
 418:	00000630 	.word	0x00000630

0000041c <disable_pin>:
 41c:	e2400002 	sub	r0, r0, #2
 420:	e92d4010 	push	{r4, lr}
 424:	e59f3054 	ldr	r3, [pc, #84]	; 480 <disable_pin+0x64>
 428:	e3500002 	cmp	r0, #2
 42c:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 430:	ea000010 	b	478 <disable_pin+0x5c>
 434:	00000468 	.word	0x00000468
 438:	00000440 	.word	0x00000440
 43c:	00000470 	.word	0x00000470
 440:	e5934038 	ldr	r4, [r3, #56]	; 0x38
 444:	e3a02000 	mov	r2, #0
 448:	e1a01002 	mov	r1, r2
 44c:	e1a00004 	mov	r0, r4
 450:	ebfffffe 	bl	0 <lseek>
 454:	e1a00004 	mov	r0, r4
 458:	e3a02001 	mov	r2, #1
 45c:	e59f1020 	ldr	r1, [pc, #32]	; 484 <disable_pin+0x68>
 460:	e8bd4010 	pop	{r4, lr}
 464:	eafffffe 	b	0 <write>
 468:	e5934024 	ldr	r4, [r3, #36]	; 0x24
 46c:	eafffff4 	b	444 <disable_pin+0x28>
 470:	e593404c 	ldr	r4, [r3, #76]	; 0x4c
 474:	eafffff2 	b	444 <disable_pin+0x28>
 478:	e5934010 	ldr	r4, [r3, #16]
 47c:	eafffff0 	b	444 <disable_pin+0x28>
 480:	00000000 	.word	0x00000000
 484:	00000634 	.word	0x00000634

00000488 <polarity_normal>:
 488:	e2400002 	sub	r0, r0, #2
 48c:	e92d4010 	push	{r4, lr}
 490:	e59f3054 	ldr	r3, [pc, #84]	; 4ec <polarity_normal+0x64>
 494:	e3500002 	cmp	r0, #2
 498:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 49c:	ea000010 	b	4e4 <polarity_normal+0x5c>
 4a0:	000004d4 	.word	0x000004d4
 4a4:	000004ac 	.word	0x000004ac
 4a8:	000004dc 	.word	0x000004dc
 4ac:	e5934034 	ldr	r4, [r3, #52]	; 0x34
 4b0:	e3a02000 	mov	r2, #0
 4b4:	e1a01002 	mov	r1, r2
 4b8:	e1a00004 	mov	r0, r4
 4bc:	ebfffffe 	bl	0 <lseek>
 4c0:	e1a00004 	mov	r0, r4
 4c4:	e3a02006 	mov	r2, #6
 4c8:	e59f1020 	ldr	r1, [pc, #32]	; 4f0 <polarity_normal+0x68>
 4cc:	e8bd4010 	pop	{r4, lr}
 4d0:	eafffffe 	b	0 <write>
 4d4:	e5934020 	ldr	r4, [r3, #32]
 4d8:	eafffff4 	b	4b0 <polarity_normal+0x28>
 4dc:	e5934048 	ldr	r4, [r3, #72]	; 0x48
 4e0:	eafffff2 	b	4b0 <polarity_normal+0x28>
 4e4:	e593400c 	ldr	r4, [r3, #12]
 4e8:	eafffff0 	b	4b0 <polarity_normal+0x28>
 4ec:	00000000 	.word	0x00000000
 4f0:	0000063c 	.word	0x0000063c

000004f4 <set_period>:
 4f4:	e2400002 	sub	r0, r0, #2
 4f8:	e92d4070 	push	{r4, r5, r6, lr}
 4fc:	e1a05001 	mov	r5, r1
 500:	e1a06002 	mov	r6, r2
 504:	e59f3054 	ldr	r3, [pc, #84]	; 560 <set_period+0x6c>
 508:	e3500002 	cmp	r0, #2
 50c:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 510:	ea000010 	b	558 <set_period+0x64>
 514:	00000548 	.word	0x00000548
 518:	00000520 	.word	0x00000520
 51c:	00000550 	.word	0x00000550
 520:	e593402c 	ldr	r4, [r3, #44]	; 0x2c
 524:	e3a02000 	mov	r2, #0
 528:	e1a01002 	mov	r1, r2
 52c:	e1a00004 	mov	r0, r4
 530:	ebfffffe 	bl	0 <lseek>
 534:	e1a02006 	mov	r2, r6
 538:	e1a01005 	mov	r1, r5
 53c:	e1a00004 	mov	r0, r4
 540:	e8bd4070 	pop	{r4, r5, r6, lr}
 544:	eafffffe 	b	0 <write>
 548:	e5934018 	ldr	r4, [r3, #24]
 54c:	eafffff4 	b	524 <set_period+0x30>
 550:	e5934040 	ldr	r4, [r3, #64]	; 0x40
 554:	eafffff2 	b	524 <set_period+0x30>
 558:	e5934004 	ldr	r4, [r3, #4]
 55c:	eafffff0 	b	524 <set_period+0x30>
 560:	00000000 	.word	0x00000000

00000564 <get_period>:
 564:	e2400002 	sub	r0, r0, #2
 568:	e92d4070 	push	{r4, r5, r6, lr}
 56c:	e1a05001 	mov	r5, r1
 570:	e59f3054 	ldr	r3, [pc, #84]	; 5cc <get_period+0x68>
 574:	e3500002 	cmp	r0, #2
 578:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 57c:	ea000010 	b	5c4 <get_period+0x60>
 580:	000005b4 	.word	0x000005b4
 584:	0000058c 	.word	0x0000058c
 588:	000005bc 	.word	0x000005bc
 58c:	e593402c 	ldr	r4, [r3, #44]	; 0x2c
 590:	e3a02000 	mov	r2, #0
 594:	e1a01002 	mov	r1, r2
 598:	e1a00004 	mov	r0, r4
 59c:	ebfffffe 	bl	0 <lseek>
 5a0:	e1a01005 	mov	r1, r5
 5a4:	e1a00004 	mov	r0, r4
 5a8:	e3a02064 	mov	r2, #100	; 0x64
 5ac:	e8bd4070 	pop	{r4, r5, r6, lr}
 5b0:	eafffffe 	b	0 <read>
 5b4:	e5934018 	ldr	r4, [r3, #24]
 5b8:	eafffff4 	b	590 <get_period+0x2c>
 5bc:	e5934040 	ldr	r4, [r3, #64]	; 0x40
 5c0:	eafffff2 	b	590 <get_period+0x2c>
 5c4:	e5934004 	ldr	r4, [r3, #4]
 5c8:	eafffff0 	b	590 <get_period+0x2c>
 5cc:	00000000 	.word	0x00000000

000005d0 <set_duty>:
 5d0:	e2400002 	sub	r0, r0, #2
 5d4:	e92d4070 	push	{r4, r5, r6, lr}
 5d8:	e1a05001 	mov	r5, r1
 5dc:	e59f306c 	ldr	r3, [pc, #108]	; 650 <set_duty+0x80>
 5e0:	e3500002 	cmp	r0, #2
 5e4:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 5e8:	ea000016 	b	648 <set_duty+0x78>
 5ec:	00000628 	.word	0x00000628
 5f0:	000005f8 	.word	0x000005f8
 5f4:	00000630 	.word	0x00000630
 5f8:	e5934030 	ldr	r4, [r3, #48]	; 0x30
 5fc:	e3a02000 	mov	r2, #0
 600:	e1a01002 	mov	r1, r2
 604:	e1a00004 	mov	r0, r4
 608:	ebfffffe 	bl	0 <lseek>
 60c:	e3550064 	cmp	r5, #100	; 0x64
 610:	e1a00004 	mov	r0, r4
 614:	0a000007 	beq	638 <set_duty+0x68>
 618:	e3a02003 	mov	r2, #3
 61c:	e59f1030 	ldr	r1, [pc, #48]	; 654 <set_duty+0x84>
 620:	e8bd4070 	pop	{r4, r5, r6, lr}
 624:	eafffffe 	b	0 <write>
 628:	e593401c 	ldr	r4, [r3, #28]
 62c:	eafffff2 	b	5fc <set_duty+0x2c>
 630:	e5934044 	ldr	r4, [r3, #68]	; 0x44
 634:	eafffff0 	b	5fc <set_duty+0x2c>
 638:	e3a02004 	mov	r2, #4
 63c:	e59f1014 	ldr	r1, [pc, #20]	; 658 <set_duty+0x88>
 640:	e8bd4070 	pop	{r4, r5, r6, lr}
 644:	eafffffe 	b	0 <write>
 648:	e5934008 	ldr	r4, [r3, #8]
 64c:	eaffffea 	b	5fc <set_duty+0x2c>
 650:	00000000 	.word	0x00000000
 654:	00000648 	.word	0x00000648
 658:	00000644 	.word	0x00000644

0000065c <get_duty>:
 65c:	e2400002 	sub	r0, r0, #2
 660:	e92d4070 	push	{r4, r5, r6, lr}
 664:	e1a05001 	mov	r5, r1
 668:	e59f3054 	ldr	r3, [pc, #84]	; 6c4 <get_duty+0x68>
 66c:	e3500002 	cmp	r0, #2
 670:	979ff100 	ldrls	pc, [pc, r0, lsl #2]
 674:	ea000010 	b	6bc <get_duty+0x60>
 678:	000006ac 	.word	0x000006ac
 67c:	00000684 	.word	0x00000684
 680:	000006b4 	.word	0x000006b4
 684:	e5934030 	ldr	r4, [r3, #48]	; 0x30
 688:	e3a02000 	mov	r2, #0
 68c:	e1a01002 	mov	r1, r2
 690:	e1a00004 	mov	r0, r4
 694:	ebfffffe 	bl	0 <lseek>
 698:	e1a01005 	mov	r1, r5
 69c:	e1a00004 	mov	r0, r4
 6a0:	e3a02064 	mov	r2, #100	; 0x64
 6a4:	e8bd4070 	pop	{r4, r5, r6, lr}
 6a8:	eafffffe 	b	0 <read>
 6ac:	e593401c 	ldr	r4, [r3, #28]
 6b0:	eafffff4 	b	688 <get_duty+0x2c>
 6b4:	e5934044 	ldr	r4, [r3, #68]	; 0x44
 6b8:	eafffff2 	b	688 <get_duty+0x2c>
 6bc:	e5934008 	ldr	r4, [r3, #8]
 6c0:	eafffff0 	b	688 <get_duty+0x2c>
 6c4:	00000000 	.word	0x00000000
