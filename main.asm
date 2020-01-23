COMMENT !
Agata Jelen
Tom ABBOTT, CSD 322, Winter 2020
Assignemnt # 2
!

.386
.MODEL FLAT, stdcall
.STACK 4096
ExitProcess PROTO, 
dwExitCode: DWORD

.DATA
x DWORD 80
y DWORD 7FFFFFFFh

acumm DWORD 0

msg BYTE "Greetnings from the red planet", 0
len = ($-msg)

.CODE
; write your assembly code here 

_main PROC

mov eax, x      
mov ebx, y
add eax, ebx
mov acumm, eax 
dec ebx
xchg eax, ebx
mov ecx, len
mov acumm, ecx

INVOKE ExitProcess, 0
_main ENDP
END _main
