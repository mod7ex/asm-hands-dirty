global _start

section .data
   msg db "Hello, World!", 0x0a
   len equ $ - msg

section .text
_start:
   ; write our string to stdout
   mov eax, 4          ; syscall number for sys_write
   mov ebx, 1          ; file descriptor 1 is stdout
   mov ecx, msg        ; pointer to our message
   mov edx, len        ; message length
   int 0x80            ; call kernel

   ; exit program
   mov eax, 1          ; syscall number for sys_exit
   mov ebx, 0          ; exit code 0
   int 0x80            ; call kernel