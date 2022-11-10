	.file	"rev.S"
	.text
.global	rev
rev:
	mov	r15, r14
	jmp	.L2
.L3:
	inc r14
.L2:
	cmp.b #0, 0(r14)
	jne	.L3
	dec r14
	jmp	.L4

.L5:
	xor.b @r14, 0(r15)
	xor.b @r15, 0(r14)
	xor.b @r14, 0(r15)
	inc r15
	dec r14
.L4:
	cmp	r14, r15
	jl	.L5
	ret
