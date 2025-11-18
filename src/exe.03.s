# Vetor + Função sum_array + memória

.section .data

array:
  .word 3, 5, 2, 8, 1
arr_size:
  .word 5

.section .text
.global _start
.include "utils.s"

# ------------------------------------
# Função: sum_array(int *arr, int n)
# a0 = ponteiro
# a1 = tamanho
# retorna soma em a0
# ------------------------------------
sum_array:
  addi sp, sp, -16
  sw s0, 0(sp)
  sw s1, 4(sp)

  mv s0, a0    # ponteiro
  mv s1, a1    # tamanho
  li t0, 0     # soma

loop_sum:
  beqz s1, end_sum

  lw t1, 0(s0)
  add t0, t0, t1

  addi s0, s0, 4
  addi s1, s1, -1
  j loop_sum

end_sum:
  mv a0, t0    # retorno

  lw s0, 0(sp)
  lw s1, 4(sp)
  addi sp, sp, 16
  ret

# ------------------------------------
# _start
# ------------------------------------
_start:
  la a0, array
  lw a1, arr_size

  call sum_array   # retorno em a0 (resultado = 19)

  # imprimir duas casas
  addi sp, sp, -8

  li t1, 10
  div t2, a0, t1
  rem t3, a0, t1

  addi t2, t2, 48
  addi t3, t3, 48

  sb t2, 0(sp)
  sb t3, 1(sp)

  li a0, 1
  mv a1, sp
  li a2, 2
  li a7, 64
  ecall

  addi sp, sp, 8

  li a0, 0
  li a7, 93
  ecall
  