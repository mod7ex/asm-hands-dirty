global _start

section .text
_start:
    mov eax, 11
    mov ecx, 2
    div ecx            ; eax = eax / ecx, edx = eax % ecx 

    ; Exit the program
    mov eax, 1         ; syscall number for sys_exit
    int 0x80