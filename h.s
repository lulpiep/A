	.file	"h.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "Enter n (Dynamic Programming): \0"
.LC4:
	.ascii "%d\0"
	.align 8
.LC7:
	.ascii "S = sinh^2(x) = %lf, counter = %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	call	__main
	movl	$0, -4(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	addl	$7, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	.L2
.L3:
	movsd	-24(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-44(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	imull	-44(%rbp), %eax
	addl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-24(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$17, -4(%rbp)
	addl	$1, -44(%rbp)
.L2:
	movl	-48(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L3
	addl	$3, -4(%rbp)
	movl	-4(%rbp), %edx
	movsd	-16(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movl	%edx, %r8d
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1074790400
	.align 8
.LC6:
	.long	0
	.long	1075970048
	.ident	"GCC: (Rev3, Built by MSYS2 project) 13.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
