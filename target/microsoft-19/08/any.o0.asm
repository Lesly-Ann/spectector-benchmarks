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
PUBLIC	victim_function_v08
pdata	SEGMENT
$pdata$victim_function_v08 DD imagerel $LN5
	DD	imagerel $LN5+100
	DD	imagerel $unwind$victim_function_v08
pdata	ENDS
xdata	SEGMENT
$unwind$victim_function_v08 DD 010901H
	DD	02209H
xdata	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
tv67 = 0
x$ = 32
victim_function_v08 PROC
; File C:\Users\bokoepf\Research\Speculation\benchmarks\sources\microsoft\08.c
; Line 10
$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 24
; Line 11
	mov	eax, DWORD PTR array1_size
	cmp	QWORD PTR x$[rsp], rax
	jae	SHORT $LN3@victim_fun
	mov	rax, QWORD PTR x$[rsp]
	inc	rax
	mov	QWORD PTR tv67[rsp], rax
	jmp	SHORT $LN4@victim_fun
$LN3@victim_fun:
	mov	QWORD PTR tv67[rsp], 0
$LN4@victim_fun:
	lea	rax, OFFSET FLAT:array1
	mov	rcx, QWORD PTR tv67[rsp]
	movzx	eax, BYTE PTR [rax+rcx]
	imul	eax, eax, 512				; 00000200H
	cdqe
	lea	rcx, OFFSET FLAT:array2
	movzx	eax, BYTE PTR [rcx+rax]
	movzx	ecx, BYTE PTR temp
	and	ecx, eax
	mov	eax, ecx
	mov	BYTE PTR temp, al
; Line 12
	add	rsp, 24
	ret	0
victim_function_v08 ENDP
_TEXT	ENDS
END
