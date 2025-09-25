global _start

section .text
_start:
   mov ecx, 90         ; load 99 into ecx
   mov ebx, 42         ; load 42 into ebx - exit status is 42
   mov eax, 1          ; sys_exit system call
   cmp ecx, 100        ; compare ecx with 100
   jl skip             ; jump to skip label
   mov ebx, 13         ; exit status is 13 - this instruction is skipped
   
skip:
   int 0x80            ; call kernel to exit