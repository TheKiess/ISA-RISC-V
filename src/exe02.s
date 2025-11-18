# Loop chamando square(x)

.section .text
.global _start
.include "utils.s"
.align 4

square:
  mul a0, a0, a0
  ret

_start:
  li t0, 1      # i = 1
  li t1, 5      # limite = 5

loop:
  mv a0, t0
  call square

  # converter resultado (0–99)
  addi sp, sp, -4
  li t2, 10
  div t3, a0, t2
  rem t4, a0, t2

  addi t3, t3, 48
  addi t4, t4, 48

  sb t3, 0(sp)
  sb t4, 1(sp)

  # imprimir resultado
  li a0, 1
  mv a1, sp
  li a2, 2
  li a7, 64
  ecall

  # newline do utils
  call endl

  addi sp, sp, 4

  addi t0, t0, 1
  ble t0, t1, loop

  li a0, 0
  li a7, 93
  ecall
