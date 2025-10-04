section .data
    list DB 1, 2, 3, 4, 5

section .text
global _start
_start:
    MOV eax, 0
    MOV cl, 0

loop:
    MOV bl, [list + eax]
    ADD cl, bl
    INC eax
    CMP eax, 5
    JL loop
    JMP end

end:
    MOV eax, 1       ; syscall: exit
    INT 0x80