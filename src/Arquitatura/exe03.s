# ---------------------------- #
# Soma de vetor + impressão
# ---------------------------- #

.equ SYS_WRITE, 64
.equ STDOUT,    1
.align 4

.section .text
.globl  _start
.include "utils.s"

array:
  .word 10, 15, 20, 35, 45

_start:
  la   t0, array
  li   t1, 5
  li   t2, 0

sumarizacaoArray:
  beqz t1, SumarizacaoFinalizada
  lw   t3, 0(t0)
  add  t2, t2, t3
  addi t0, t0, 4 #Index
  addi t1, t1, -1
  j    sumarizacaoArray

SumarizacaoFinalizada:
  li   a7, 64
  li   a0, STDOUT
  la   a1, msg_prefix
  li   a2, 7
  ecall

  addi sp, sp, -16
  addi a1, sp, 0
  addi a3, t2, 0

  li   t0, 100
  div  t3, a3, t0
  rem  t4, a3, t0

  li   t0, 10
  div  t5, t4, t0
  rem  t6, t4, t0
  beqz t3, numeroDoisDigitos

  addi t3, t3, 48
  addi t5, t5, 48
  addi t6, t6, 48
  sb   t3, 0(a1)
  sb   t5, 1(a1)
  sb   t6, 2(a1)
  li   a2, 3
  li   a0, STDOUT
  li   a7, SYS_WRITE
  ecall
  j    fim

numeroDoisDigitos:
  addi t5, t5, 48
  addi t6, t6, 48
  sb   t5, 0(a1)
  sb   t6, 1(a1)
  li   a2, 2
  li   a0, STDOUT
  li   a7, SYS_WRITE
  ecall

fim:
  addi sp, sp, 16

  call endl
  call exit

.section .data
msg_prefix:    .ascii "Soma = "
