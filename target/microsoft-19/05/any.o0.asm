; Listing generated by Microsoft (R) Optimizing Compiler Version 19.20.27508.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	array1_size
PUBLIC	array1
PUBLIC	temp
_DATA	SEGMENT
COMM	array2:BYTE:020000H
_DATA	ENDS
_BSS	SEGMENT
temp	DB	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
array1_size DD	010H
	ORG $+4
array1	DB	01H
	DB	02H
	DB	03H
	DB	04H
	DB	05H
	DB	06H
	DB	07H
	DB	08H
	DB	09H
	DB	0aH
	DB	0bH
	DB	0cH
	DB	0dH
	DB	0eH
	DB	0fH
	DB	010H
_DATA	ENDS
PUBLIC	victim_function_v05
pdata	SEGMENT
$pdata$victim_function_v05 DD imagerel $LN7
	DD	imagerel $LN7+107
	DD	imagerel $unwind$victim_function_v05
pdata	ENDS
xdata	SEGMENT
$unwind$victim_function_v05 DD 010901H
	DD	02209H
xdata	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
i$ = 0
x$ = 32
victim_function_v05 PROC
; File C:\Users\bokoepf\Research\Speculation\benchmarks\sources\microsoft\05.c
; Line 10
$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24
; Line 12
	mov	eax, DWORD PTR array1_size
	cmp	QWORD PTR x$[rsp], rax
	jae	SHORT $LN5@victim_fun
; Line 13
	mov	rax, QWORD PTR x$[rsp]
	dec	rax
	mov	DWORD PTR i$[rsp], eax
	jmp	SHORT $LN4@victim_fun
$LN2@victim_fun:
	mov	eax, DWORD PTR i$[rsp]
	dec	eax
	mov	DWORD PTR i$[rsp], eax
$LN4@victim_fun:
	cmp	DWORD PTR i$[rsp], 0
	jl	SHORT $LN3@victim_fun
; Line 14
	movsxd	rax, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:array1
	movzx	eax, BYTE PTR [rcx+rax]
	imul	eax, eax, 512				; 00000200H
	cdqe
	lea	rcx, OFFSET FLAT:array2
	movzx	eax, BYTE PTR [rcx+rax]
	movzx	ecx, BYTE PTR temp
	and	ecx, eax
	mov	eax, ecx
	mov	BYTE PTR temp, al
	jmp	SHORT $LN2@victim_fun
$LN3@victim_fun:
$LN5@victim_fun:
; Line 16
	add	rsp, 24
	ret	0
victim_function_v05 ENDP
_TEXT	ENDS
END
