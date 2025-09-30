global _start

section .data
    num DD 5

section .text

_start:
    MOV eax, 1
    MOV ebx, [num]
    INT 0x80
