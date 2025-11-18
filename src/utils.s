# utils_riscv.asm

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
    mv t0, a0        # t0 = ptr
    li t1, 0         # counter
1:
    lbu t2, 0(t0)
    beqz t2, 2f
    addi t1, t1, 1
    addi t0, t0, 1
    j 1b
2:
    mv a0, t1        # return length
    ret

# ===========================================
# void printstr(char *s)
# ===========================================
printstr:
    mv t0, a0        # save pointer
    call strlen
    mv a2, a0        # length
    mv a1, t0        # pointer
    li a0, STDOUT
    li a7, SYS_WRITE
    ecall
    ret

# ===========================================
# void printint(int n)
# (0–9 apenas)
# ===========================================
printint:
    addi sp, sp, -8
    addi a0, a0, 48     # ASCII
    sb a0, 0(sp)        # escreve no stack
    mv a1, sp
    li a2, 1
    li a0, STDOUT
    li a7, SYS_WRITE
    ecall
    addi sp, sp, 8
    ret

# ===========================================
# void readstr(char *buf, int size)
# CORRIGIDO (antes estava totalmente errado)
# ===========================================
readstr:
    # a0 = buf
    # a1 = size
    mv a1, a0   # arruma: a1=buf
    mv a2, a1   # arruma: a2=size  ← antes estava errado!
    li a0, STDIN
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
