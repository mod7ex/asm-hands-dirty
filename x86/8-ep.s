global _start

section .data
    num DB 5            ; 8-bit data
    num1 DB 4

section .text

; Try also with bh anad ch

_start:
    MOV bl, [num]       ; lower 8 bits of ebx register (bh is upper 8 bits)
    MOV cl, [num1]
    MOV eax, 1
    INT 0x80