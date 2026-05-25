.global printstr, printint, readstr, exit, strlen, endl

# Syscalls Linux RISC-V
.equ SYS_READ,  63
.equ SYS_WRITE, 64
.equ SYS_EXIT,  93

.equ STDIN,  0
.equ STDOUT, 1

.section .text

# ===========================================
# void exit(int code)
# ===========================================
exit:
  li a7, SYS_EXIT
  ecall
  ret

# ===========================================
# int strlen(char *s)
# ===========================================
strlen:
  mv t0, a0
  li t1, 0
1:
  lbu t2, 0(t0)
  beqz t2, 2f
  addi t1, t1, 1
  addi t0, t0, 1
  j 1b
2:
  mv a0, t1
  ret

# ===========================================
# void printstr(char *s)
# ===========================================
printstr:
  mv t0, a0
  call strlen
  mv a2, a0
  mv a1, t0
  li a0, STDOUT
  li a7, SYS_WRITE
  ecall
  ret

# ===========================================
# void readstr(char *buf, int size)
# ===========================================
readstr:
  mv t0, a0
  mv t1, a1
  li a0, STDIN
  mv a1, t0
  mv a2, t1
  li a7, SYS_READ
  ecall
  ret

# ===========================================
# endl()
# ===========================================
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
