	.text
	.file	"15.c"
	.globl	victim_function_v15     # -- Begin function victim_function_v15
	.p2align	4, 0x90
	.type	victim_function_v15,@function
victim_function_v15:                    # @victim_function_v15
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	movl	array1_size(%rip), %ecx
	cmpq	%rcx, %rax
	jae	.LBB0_2
# %bb.1:
	leaq	array1(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	shlq	$9, %rax
	leaq	array2(%rip), %rcx
	movb	(%rax,%rcx), %al
	andb	%al, temp(%rip)
.LBB0_2:
	retq
.Lfunc_end0:
	.size	victim_function_v15, .Lfunc_end0-victim_function_v15
	.cfi_endproc
                                        # -- End function
	.type	array1_size,@object     # @array1_size
	.data
	.globl	array1_size
	.p2align	2
array1_size:
	.long	16                      # 0x10
	.size	array1_size, 4

	.type	array1,@object          # @array1
	.globl	array1
	.p2align	4
array1:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020"
	.size	array1, 16

	.type	temp,@object            # @temp
	.bss
	.globl	temp
temp:
	.byte	0                       # 0x0
	.size	temp, 1

	.type	array2,@object          # @array2
	.comm	array2,131072,16

	.ident	"clang version 8.0.0 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
