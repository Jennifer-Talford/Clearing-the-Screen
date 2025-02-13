; Simple Addition Final Program
; Jennifer Talford

INCLUDE Irvine32.inc

.data
prompt BYTE "What is the sum of the 2 integers seen on you screen?",0
correctMsg BYTE "Answer is correct!  ",0
incorrectMsg BYTE "Answer is incorrect!  ",0
int1 DWORD ?
int2 DWORD ?
sum DWORD ?

.code
main PROC
call clrscr

call Randomize
call Rand1
mov int1, eax
call Rand2
mov int2, eax
    
mov eax, int1
add eax, int2
mov sum, eax
    
mov DH, 13
mov DL, 40
call GoToXY
push Rand1
push Rand2
mov edx, OFFSET prompt
call WriteString

call ReadInt
cmp eax, sum
je correct

incorrect:
mov edx, OFFSET incorrectMsg
call WriteString
jmp endProg
    
correct:
mov edx, OFFSET correctMsg
call WriteString
    
endProg:
call WaitMsg

exit
main ENDP

Rand1 PROC
mov DH, 15
mov DL, 40
call GoToXY

mov	ecx,1

L1:	mov	eax,100
call	RandomRange
call	WriteInt
loop	L1
    
call	Crlf
ret

Rand1 ENDP

Rand2 PROC
mov DH, 16
mov DL, 40
call GoToXY

mov	ecx,1
	
L1:	mov	eax,100
call	RandomRange
call	WriteInt	
loop	L1
    
call	Crlf
ret

Rand2 ENDP

END main