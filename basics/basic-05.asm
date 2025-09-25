global _start

_start:
    sub esp, 4                     ; allocate space on stack
    mov [esp], byte 'H'            ; store 'H' 
    mov [esp+1], byte 'e'          ; store 'e' 
    mov [esp+2], byte 'y'          ; store 'y' 
    mov [esp+3], byte '!'          ; store '!'
    mov eax, 4                     ; sys_write system call
    mov ebx, 1                     ; stdout file descriptor
    mov ecx, esp                   ; pointer to bytes to write
    mov edx, 4                     ; number of bytes to write
    int 0x80                       ; call kernel

    mov eax, 1                     ; syscall number for sys_exit
    mov ebx, 0                     ; exit status 0
    int 0x80                       ; call kernel