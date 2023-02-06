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
	.file	"EVP_aes_256_cbc.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"01234567890123456789012345678901\000"
	.align	2
.LC1:
	.ascii	"0123456789012345\000"
	.align	2
.LC2:
	.ascii	"The quick brown fox jumps over the lazy dog\000"
	.align	2
.LC3:
	.ascii	"Ciphertext of length %d is:\012\000"
	.align	2
.LC4:
	.ascii	"Decrypted text of length %d is:\012\000"
	.align	2
.LC5:
	.ascii	"Decryption failed\000"
	.text
	.align	2
	.global	test_crypto
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	test_crypto, %function
test_crypto:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #52
	mov	r3, sp
	mov	r4, r3
	ldr	r3, .L5
	str	r3, [fp, #-20]
	ldr	r3, .L5+4
	str	r3, [fp, #-16]
	ldr	r3, .L5+8
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-24]
	bl	strlen
	mov	r3, r0
	add	ip, r3, #16
	mov	r3, ip
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	mov	r0, ip
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #3
	orr	r3, r3, r0, lsr #29
	lsl	r2, r0, #3
	mov	r0, ip
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #3
	orr	r3, r3, r0, lsr #29
	lsl	r2, r0, #3
	add	r3, ip, #7
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3
	add	r3, sp, #8
	add	r3, r3, #0
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-24]
	bl	strlen
	mov	r3, r0
	add	ip, r3, #16
	mov	r3, ip
	sub	r3, r3, #1
	str	r3, [fp, #-36]
	mov	r0, ip
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #3
	orr	r3, r3, r0, lsr #29
	lsl	r2, r0, #3
	mov	r0, ip
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #3
	orr	r3, r3, r0, lsr #29
	lsl	r2, r0, #3
	add	r3, ip, #7
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3
	add	r3, sp, #8
	add	r3, r3, #0
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-24]
	bl	strlen
	mov	r3, r0
	mov	r1, r3
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r0, [fp, #-24]
	bl	encrypt
	str	r0, [fp, #-44]
	ldr	r1, [fp, #-44]
	ldr	r0, .L5+12
	bl	printf
	ldr	r3, .L5+16
	ldr	r3, [r3]
	ldr	r1, [fp, #-32]
	ldr	r2, [fp, #-44]
	mov	r0, r3
	bl	BIO_dump_fp
	ldr	r0, [fp, #-32]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-44]
	bl	decrypt
	str	r0, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	blt	.L2
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3]
	ldr	r1, [fp, #-48]
	ldr	r0, .L5+20
	bl	printf
	ldr	r3, [fp, #-40]
	mov	r0, r3
	bl	puts
	b	.L3
.L2:
	ldr	r0, .L5+24
	bl	puts
.L3:
	mov	r3, #0
	mov	sp, r4
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	stdout
	.word	.LC4
	.word	.LC5
	.size	test_crypto, .-test_crypto
	.align	2
	.global	handleErrors
	.syntax unified
	.arm
	.fpu vfp
	.type	handleErrors, %function
handleErrors:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L8
	ldr	r3, [r3]
	mov	r0, r3
	bl	ERR_print_errors_fp
	bl	abort
.L9:
	.align	2
.L8:
	.word	stderr
	.size	handleErrors, .-handleErrors
	.section	.rodata
	.align	2
.LC6:
	.ascii	"src/EVP_aes_256_cbc.c\000"
	.text
	.align	2
	.global	digest_message
	.syntax unified
	.arm
	.fpu vfp
	.type	digest_message, %function
digest_message:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	bl	EVP_MD_CTX_new
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L11
	bl	handleErrors
.L11:
	bl	EVP_sha256
	mov	r3, r0
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	EVP_DigestInit_ex
	mov	r3, r0
	cmp	r3, #1
	beq	.L12
	bl	handleErrors
.L12:
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-8]
	bl	EVP_DigestUpdate
	mov	r3, r0
	cmp	r3, #1
	beq	.L13
	bl	handleErrors
.L13:
	bl	EVP_sha256
	mov	r3, r0
	mov	r0, r3
	bl	EVP_MD_size
	mov	r3, r0
	mov	r2, #83
	ldr	r1, .L16
	mov	r0, r3
	bl	CRYPTO_malloc
	mov	r2, r0
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L14
	bl	handleErrors
.L14:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldr	r2, [fp, #-28]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	EVP_DigestFinal_ex
	mov	r3, r0
	cmp	r3, #1
	beq	.L15
	bl	handleErrors
.L15:
	ldr	r0, [fp, #-8]
	bl	EVP_MD_CTX_free
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L17:
	.align	2
.L16:
	.word	.LC6
	.size	digest_message, .-digest_message
	.align	2
	.global	encrypt
	.syntax unified
	.arm
	.fpu vfp
	.type	encrypt, %function
encrypt:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	bl	EVP_CIPHER_CTX_new
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L19
	bl	handleErrors
.L19:
	bl	EVP_aes_256_cbc
	mov	r1, r0
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	ldr	r3, [fp, #-32]
	mov	r2, #0
	ldr	r0, [fp, #-8]
	bl	EVP_EncryptInit_ex
	mov	r3, r0
	cmp	r3, #1
	beq	.L20
	bl	handleErrors
.L20:
	sub	r2, fp, #16
	ldr	r3, [fp, #-28]
	str	r3, [sp]
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #4]
	ldr	r0, [fp, #-8]
	bl	EVP_EncryptUpdate
	mov	r3, r0
	cmp	r3, #1
	beq	.L21
	bl	handleErrors
.L21:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r3, r2
	sub	r2, fp, #16
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	EVP_EncryptFinal_ex
	mov	r3, r0
	cmp	r3, #1
	beq	.L22
	bl	handleErrors
.L22:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	EVP_CIPHER_CTX_free
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	encrypt, .-encrypt
	.align	2
	.global	decrypt
	.syntax unified
	.arm
	.fpu vfp
	.type	decrypt, %function
decrypt:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	bl	EVP_CIPHER_CTX_new
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L25
	bl	handleErrors
.L25:
	bl	EVP_aes_256_cbc
	mov	r1, r0
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	ldr	r3, [fp, #-32]
	mov	r2, #0
	ldr	r0, [fp, #-8]
	bl	EVP_DecryptInit_ex
	mov	r3, r0
	cmp	r3, #1
	beq	.L26
	bl	handleErrors
.L26:
	sub	r2, fp, #16
	ldr	r3, [fp, #-28]
	str	r3, [sp]
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #4]
	ldr	r0, [fp, #-8]
	bl	EVP_DecryptUpdate
	mov	r3, r0
	cmp	r3, #1
	beq	.L27
	bl	handleErrors
.L27:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r3, r2
	sub	r2, fp, #16
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	EVP_DecryptFinal_ex
	mov	r3, r0
	cmp	r3, #1
	beq	.L28
	bl	handleErrors
.L28:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	EVP_CIPHER_CTX_free
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	decrypt, .-decrypt
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
