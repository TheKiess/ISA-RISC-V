# --------------------------------- #
# Primeiro exercício: Loop i += i++ #
# --------------------------------- #

.section .text
.global _start
.include "utils.s"

_start:
  li  t0, 1
  li  t1, 0
  li  t2, 5

loop:
  add  t1, t1, t0
  addi t0, t0, 1

  ble t0, t2, loop

  addi sp, sp, -8

  li t4, 10
  div t5, t1, t4
  rem t6, t1, t4

  addi t5, t5, 48
  addi t6, t6, 48

  sb t5, 0(sp)
  sb t6, 1(sp)

  li a0, 1
  mv a1, sp
  li a2, 2
  li a7, 64
  ecall

  addi sp, sp, 8

  call endl
  call exit
