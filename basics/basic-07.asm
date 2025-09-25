global _start

_start:
    push 21
    call times2
    mov ebx, eax
    mov eax, 1                     ; syscall number for sys_exit
    int 0x80                       ; call kernel to exit

times2:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    add eax, eax
    mov esp, ebp
    pop ebp
    ret