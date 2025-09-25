global main
extern printf

section .data
    msg db "Testing %i...", 0x0a, 0

section .text
main:
    push ebp
    mov ebp, esp

    push dword 123        ; argument for "%i"
    push dword msg        ; format string
    call printf
    add esp, 8            ; clean up 2 pushes (2 * 4 bytes)

    mov eax, 0
    mov esp, ebp
    pop ebp
    ret
