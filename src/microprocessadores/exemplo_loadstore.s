# Soma dois números armazenados na memória
# e salva o resultado de volta
#
# Endereços hipotéticos:
#   a  = mem[1000]
#   b  = mem[1008]
#   resultado = mem[1016]

.section .data
base:  .quad 42, 58, 0   # a=42, b=58, resultado=0

.section .text
soma:
  la   a0, base        # a0 ← endereço de 'base'
  ld   t0, 0(a0)       # t0 ← mem[a0+0]  (carrega a)
  ld   t1, 8(a0)       # t1 ← mem[a0+8]  (carrega b)
  add  t2, t0, t1      # t2 ← t0 + t1    (soma)
  sd   t2, 16(a0)      # mem[a0+16] ← t2 (salva)
  ret                  # retorna