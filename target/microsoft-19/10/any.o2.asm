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
PUBLIC	victim_function_v10
; Function compile flags: /Ogtpy
;	COMDAT victim_function_v10
_TEXT	SEGMENT
x$ = 8
k$ = 16
victim_function_v10 PROC				; COMDAT
; File C:\Users\bokoepf\Research\Speculation\benchmarks\sources\microsoft\10.c
; Line 11
	mov	eax, DWORD PTR array1_size
	cmp	rcx, rax
	jae	SHORT $LN3@victim_fun
; Line 12
	lea	rax, OFFSET FLAT:array1
	cmp	BYTE PTR [rcx+rax], dl
	jne	SHORT $LN3@victim_fun
; Line 13
	movzx	eax, BYTE PTR array2
	and	BYTE PTR temp, al
$LN3@victim_fun:
; Line 15
	ret	0
victim_function_v10 ENDP
_TEXT	ENDS
END
