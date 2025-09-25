global _start

section .data
   addr db "yellow"

section .text
_start:
    mov [addr], byte 'b'           ; change 'y' to 'b'
    mov [addr+5], byte '!'         ; change 'w' to '!'
    mov eax, 4                     ; sys_write system call
    mov ebx, 1                     ; stdout file descriptor (1)
    mov ecx, addr                  ; bytes to write
    mov edx, 6                     ; number of bytes to write
    int 0x80                       ; call kernel
    mov eax, 1                     ; syscall number for sys_exit
    mov ebx, 0                     ; exit code 0
    int 0x80                       ; call kernel