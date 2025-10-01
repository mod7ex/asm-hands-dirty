global _start

section .data
    strg DB "abc", 0

section .text

_start:
    MOV bl, [strg]
    MOV eax, 1
    INT 0x80