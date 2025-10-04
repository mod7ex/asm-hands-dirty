section .bss
    num RESB 3            ; reserve 3 bytes

section .data
    num2 DB 3 DUP(2)

section .text
global _start
_start:
    MOV bl, [num2]   ; load the first byte of num2 into bl
    MOV [num], bl    ; store the value of bl into the memory location num
    MOV [num+1], bl  
    MOV [num+2], bl

    MOV eax, 1       ; syscall: exit
    INT 0x80