extern printf
global main

section .data
    msg db "Ola, Assembly com NASM!", 10, 0

section .text
main:
    sub rsp, 40
    lea rcx, [msg]
    call printf
    add rsp, 40
    ret