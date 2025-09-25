global _start

_start:
    call func
    mov eax, 1                     ; syscall number for sys_exit
    mov ebx, 0                     ; exit status 0
    int 0x80                       ; call kernel

func:
    push ebp                    ; save base pointer
    mov ebp, esp                ; set up stack frame
    sub esp, 2                  ; allocate space on stack 
    mov [esp], byte 'H'         ; store 'H'
    mov [esp+1], byte 'i'       ; store 'i'
    mov eax, 4                  ; syscall number for sys_write
    mov ebx, 1                  ; file descriptor 1 is stdout
    mov ecx, esp                ; bytes to write
    mov edx, 2                  ; number of bytes to write
    int 0x80                    ; call kernel
    mov esp, ebp                ; restore stack frame
    pop ebp                     ; restore base pointer
    ret                         ; return from function