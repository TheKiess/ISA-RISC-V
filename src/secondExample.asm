.section .text
.globl _start

_start:
    li t0, 10
    li t1, 5
    add t2, t0, t1
    sub t3, t0, t1
    mul t4, t0, t1

    ecall