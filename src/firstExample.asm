.section .text
.globl _start

_start:
    li t0, 1
    li t1, 0

loop:
    add t1, t1, t0
    addi t0, t0, 1
    ble t0, 5, loop

    ecall