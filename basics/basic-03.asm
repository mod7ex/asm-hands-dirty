global _start

section .text
_start:
    mov ebx, 1        ; start ebx at 1
    mov ecx, 4        ; number if iterations
label:
    add ebx, ebx      ; double ebx (ebx += ebx)
    dec ecx           ; decrement ecx (ecx -= 1)
    cmp ecx, 0        ; compare ecx with 0
    jg label          ; if ecx > 0, jump to label
    mov eax, 1        ; syscall number for sys_exit
    int 0x80          ; call kernel to exit