# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.0.0.117 Build 20180804";
# mark_description "-O2 -S -c -o ../target/intel/access/any.o2.s";
	.file "access.c"
	.text
..TXTST0:
.L_2__routine_start_victim_function_v01_0:
# -- Begin  victim_function_v01
	.text
# mark_begin;
       .align    16,0x90
	.globl victim_function_v01
# --- victim_function_v01(size_t)
victim_function_v01:
# parameter 1: %rdi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_victim_function_v01.1:
..L2:
                                                          #11.36
        movl      array1_size(%rip), %eax                       #12.14
        cmpq      %rax, %rdi                                    #12.14
        jae       ..B1.3        # Prob 50%                      #12.14
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B1.2:                         # Preds ..B1.1
                                # Execution count [5.00e-01]
        movzbl    array1(%rdi), %eax                            #13.33
        shlq      $9, %rax                                      #13.45
        movzbl    array2(%rax), %edx                            #13.26
        shlq      $9, %rdx                                      #13.52
        movb      array3(%rdx), %cl                             #13.19
        andb      %cl, temp(%rip)                               #13.11
                                # LOE rbx rbp r12 r13 r14 r15
..B1.3:                         # Preds ..B1.1 ..B1.2
                                # Execution count [1.00e+00]
        ret                                                     #15.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	victim_function_v01,@function
	.size	victim_function_v01,.-victim_function_v01
..LNvictim_function_v01.0:
	.data
# -- End  victim_function_v01
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
	.comm array3,131072,32
	.section .note.GNU-stack, ""
# End
