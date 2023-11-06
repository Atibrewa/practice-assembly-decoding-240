	.file	"lea_decode.c"
	.text
	.globl	decode
	.type	decode, @function
decode:
.LFB0:
	.cfi_startproc
	leaq	(%rsi,%rsi,8), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	(%rdi,%rdi,8), %rcx
	leaq	0(,%rcx,8), %rdx
	subq	%rdx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	decode, .-decode
	.ident	"GCC: (GNU) 8.3.1 20190311 (Red Hat 8.3.1-3)"
	.section	.note.GNU-stack,"",@progbits
