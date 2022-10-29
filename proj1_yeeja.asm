TITLE Integer arithmetic     (proj1_yeeja.asm)

; Author: Jameson yee
; Last Modified:
; OSU email address: yeeja@oregonstate.edu
; Course number/section:   CS271 Section 001
; Project Number: 1              Due Date: 4/17
; Description: Basic Logic and Arithmetic Program 

INCLUDE Irvine32.inc

.data
Greeting	BYTE	"------------Elementary Arithmetic by Jameson yee------------", 0
bonus		BYTE	"**EC: Program does division and displays quotient and remainder",0
Prompt1		BYTE	"Enter 3 numbers A > B > C, and I'll show you the sums and difference ",0
break		BYTE	"------------extra credit------------", 0
cya			BYTE	"Thanks for using Elementary Arithmetic!  Goodbye!",0
in1			BYTE	"Enter the first number: ",0
in2			BYTE	"Enter the second number: ",0
in3			BYTE	"Enter the third number: ",0
plus		BYTE	" + ",0
minus		BYTE	" - ",0
equals		BYTE	" = ",0
divide		BYTE	" / ",0
r			BYTE	" | Remainder: ",0
r1			DWORD	0
r2			DWORD	0
r3			DWORD   0
out1		BYTE	"First number: ",0 ;(used for testing)
out2		BYTE	"Second number: ",0
out3		BYTE	"Third number: ",0
num1		DWORD	0
num2		DWORD	0
num3		DWORD	0
ans1		DWORD	0
ans2		DWORD	0
ans3		DWORD	0
ans4		DWORD	0
ans5		DWORD	0
ans6		DWORD	0
ans7		DWORD	0
ans8		DWORD	0
ans9		DWORD	0
ans10		DWORD	0

.code
main PROC

; (insert executable instructions here)
	MOV		EDX, OFFSET Greeting
	Call	WriteString
	Call	CrLf
	MOV		EDX, OFFSET bonus
	Call	WriteString
	CALL	CrLf
	CALL	CrLf
	MOV		EDX, OFFSET Prompt1
	Call	WriteString
	CALL	CrLf

	;first number
	MOV		EDX, OFFSET in1
	Call	WriteString
	Call	ReadDec
	MOV		num1, EAX
	;Call	CrLf
	;MOV		EDX, OFFSET out1
	;Call	WriteString
	;MOV		EAX, num1
	;Call	WriteDec
	;Call	CrLf

	;second number
	MOV		EDX, OFFSET in2
	Call	WriteString
	Call	ReadDec
	MOV		num2, EAX
	;Call	CrLf
	;MOV		EDX, OFFSET out2
	;Call	WriteString
	;MOV		EAX, num2
	;Call	WriteDec
	;Call	CrLf

	;third number
	MOV		EDX, OFFSET in3
	Call	WriteString
	Call	ReadDec
	MOV		num3, EAX
	Call	CrLf
	;MOV		EDX, OFFSET out3
	;Call	WriteString
	;MOV		EAX, num3
	;Call	WriteDec
	;Call	CrLf

	;math
	MOV		EAX, num1
	ADD		EAX, num2
	MOV		ans1, EAX

	MOV		EAX, num1
	SUB		EAX, num2
	MOV		ans2, EAX

	MOV		EAX, num1
	ADD		EAX, num3
	MOV		ans3, EAX

	MOV		EAX, num1
	SUB		EAX, num3
	MOV		ans4, EAX

	MOV		EAX, num2
	ADD		EAX, num3
	MOV		ans5, EAX

	MOV		EAX, num2
	SUB		EAX, num3
	MOV		ans6, EAX

	MOV		EAX, num1
	ADD		EAX, num2
	ADD		EAX, num3
	MOV		ans7, EAX

	;extra credit
	MOV		EAX, num1
	MOV		EDX, 0
	MOV		EBX, num2
	DIV		EBX
	MOV		ans8, EAX
	MOV		r1, EDX

	MOV		EAX, num1
	MOV		EDX, 0
	MOV		EBX, num3
	DIV		EBX
	MOV		ans9, EAX
	MOV		r2, EDX

	MOV		EAX, num2
	MOV		EDX, 0
	MOV		EBX, num3
	DIV		EBX
	MOV		ans10, EAX
	MOV		r3, EDX

	


	;print answers
	MOV		EAX, num1
	Call	WriteDec
	MOV		EDX, OFFSET plus
	call	WriteString
	MOV		EAX, num2
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans1
	call	WriteDec
	CALL	CrLf

	MOV		EAX, num1
	Call	WriteDec
	MOV		EDX, OFFSET minus
	call	WriteString
	MOV		EAX, num2
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans2
	call	WriteDec
	CALL	CrLf

	MOV		EAX, num1
	Call	WriteDec
	MOV		EDX, OFFSET plus
	call	WriteString
	MOV		EAX, num3
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans3
	call	WriteDec
	CALL	CrLf

	MOV		EAX, num1
	Call	WriteDec
	MOV		EDX, OFFSET minus
	call	WriteString
	MOV		EAX, num3
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans4
	call	WriteDec
	CALL	CrLf

	MOV		EAX, num2
	Call	WriteDec
	MOV		EDX, OFFSET plus
	call	WriteString
	MOV		EAX, num3
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans5
	call	WriteDec
	CALL	CrLf

	MOV		EAX, num2
	Call	WriteDec
	MOV		EDX, OFFSET minus
	call	WriteString
	MOV		EAX, num3
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans6
	call	WriteDec
	CALL	CrLf

	MOV		EAX, num1
	Call	WriteDec
	MOV		EDX, OFFSET plus
	call	WriteString
	MOV		EAX, num2
	CALL	WriteDec
	MOV		EDX, OFFSET plus
	call	WriteString
	MOV		EAX, num3
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans7
	call	WriteDec
	CALL	CrLf
	CALL	CrLf

	;extra credit
	MOV		EDX, OFFSET break
	CALL	WriteString
	CALL	CrLf
	CALL	CrLf

	MOV		EAX, num1
	Call	WriteDec
	MOV		EDX, OFFSET divide
	call	WriteString
	MOV		EAX, num2
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans8
	call	WriteDec
	MOV		EDX, OFFSET r
	call	WriteString
	MOV		EAX, r1
	CALL	WriteDec
	CALL	CrLf

	MOV		EAX, num1
	Call	WriteDec
	MOV		EDX, OFFSET divide
	call	WriteString
	MOV		EAX, num3
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans9
	call	WriteDec
	MOV		EDX, OFFSET r
	call	WriteString
	MOV		EAX, r2
	CALL	WriteDec
	CALL	CrLf

	MOV		EAX, num2
	Call	WriteDec
	MOV		EDX, OFFSET divide
	call	WriteString
	MOV		EAX, num3
	CALL	WriteDec
	MOV		EDX, OFFSET equals
	CALL	WriteString
	mov		EAX, ans10
	call	WriteDec
	MOV		EDX, OFFSET r
	call	WriteString
	MOV		EAX, r3
	CALL	WriteDec
	CALL	CrLf
	CALL	CrLf

	MOV		EDX, OFFSET cya
	CALL	WriteString
	CALL	CrLf
	CALL	CrLf



	Invoke ExitProcess,0	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
