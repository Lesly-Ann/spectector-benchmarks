# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.0.117 Build 20180804";
# mark_description "-O2 -mconditional-branch=all-fix -S -c -o ../target/intel/13/lfence.o2.s";
	.file "13.c"
	.text
..TXTST0:
.L_2__routine_start_is_x_safe_0:
# -- Begin  is_x_safe
	.text
# mark_begin;
       .align    16,0x90
	.globl is_x_safe
# --- is_x_safe(size_t)
is_x_safe:
# parameter 1: %rdi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_is_x_safe.1:
..L2:
                                                          #16.38
        xorl      %eax, %eax                                    #16.68
        movl      array1_size(%rip), %edx                       #16.48
        cmpq      %rdx, %rdi                                    #16.68
        setb      %al                                           #16.68
        ret                                                     #16.68
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	is_x_safe,@function
	.size	is_x_safe,.-is_x_safe
..LNis_x_safe.0:
	.data
# -- End  is_x_safe
	.text
.L_2__routine_start_victim_function_v13_1:
# -- Begin  victim_function_v13
	.text
# mark_begin;
       .align    16,0x90
	.globl victim_function_v13
# --- victim_function_v13(size_t)
victim_function_v13:
# parameter 1: %rdi
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_victim_function_v13.4:
..L5:
                                                          #17.36
        movl      array1_size(%rip), %eax                       #18.10
        cmpq      %rax, %rdi                                    #18.10
        jae       ..B2.3        # Prob 50%                      #18.10
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [5.00e-01]
        movzbl    array1(%rdi), %edi                            #19.26
        shlq      $9, %rdi                                      #19.38
        movb      temp(%rip), %al                               #19.11
        lfence                                                  #19.26
        andb      array2(%rdi), %al                             #19.11
        movb      %al, temp(%rip)                               #19.11
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.1 ..B2.2
                                # Execution count [1.00e+00]
        ret                                                     #20.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	victim_function_v13,@function
	.size	victim_function_v13,.-victim_function_v13
..LNvictim_function_v13.1:
	.data
# -- End  victim_function_v13
	.bss
	.align 4
	.align 1
	.globl temp
temp:
	.type	temp,@object
	.size	temp,1
	.space 1	# pad
	.data
	.align 4
	.align 4
	.globl array1_size
array1_size:
	.long	16
	.type	array1_size,@object
	.size	array1_size,4
	.align 1
	.globl array1
array1:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.type	array1,@object
	.size	array1,16
	.data
	.comm array2,131072,32
	.section .note.GNU-stack, ""
# End
