# Adaptação para Risc-V, utilizado como referência -> x86-64 do professor mjBrusso

.global printstr, printint, readstr, readint, exit, strlen

# Definições
.equ SYS_READ,  63
.equ SYS_WRITE, 64
.equ SYS_EXIT,  93

.equ STDIN,  0
.equ STDOUT, 1

.section .text

# void exit(int code)
exit:
  li a7, SYS_EXIT # número da syscall
  ecall
  ret 

# int strlen(char *s)
strlen:
  mv t0, a0 # t0 significa o ponteiro *s
  li t1, 0
loop_strlen:
  lbu t2, 0(t0)
  beqz t2, end_strlen
  addi t1, t1, 1
  addi t0, t0, 1
  j loop_strlen
end_strlen:
  mv a0, t1
  ret

# void printstr(char *s)
printstr:
  mv t0, a0 # guarda endereço
  call end_strlen
  mv a2, a0
  mv a1, t0
  li a0, STDOUT
  li a7, SYS_WRITE
  ecall
  ret

# void printint(int n)
printint:
  # converte um número pequeno (0–9) para caractere
  addi sp, sp, -8
  addi a0, a0, 48
  sb a0, 0(sp)
  la a1, sp
  li a2, 1
  li a0, STDOUT
  li a7, SYS_WRITE
  ecall
  addi sp, sp, 8
  ret

# void readstr(char *buf, int size)
readstr:
  li a0, STDIN
  mv a1, a0
  mv a2, a1
  li a7, SYS_READ
  ecall
  ret

# void endl()
endl:
  la a1, newline
  li a0, STDOUT
  li a2, 1
  li a7, SYS_WRITE
  ecall
  ret

.section .rodata
newline:
  .asciz "\n"
