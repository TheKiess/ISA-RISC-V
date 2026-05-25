# Demonstra instruções da extensão Zbb
# Valor de exemplo: 0x00FF00FF00FF00FF

demo_zbb:
    li   t0, 0x00FF00FF  # carrega valor de teste em t0

    # --- CLZ: conta zeros à esquerda ---
    clz  t1, t0          # t1 ← nº de 0s antes do primeiro 1
                         # útil em: compressão, alocação de memória

    # --- CPOP: conta bits 1 (popcount) ---
    cpop t2, t0          # t2 ← total de bits 1 em t0
                         # útil em: criptografia, checksums, IA

    # --- REV8: inverte bytes (endianness) ---
    rev8 t3, t0          # t3 ← t0 com bytes em ordem invertida
                         # útil em: protocolos de rede, big-endian

    # --- ANDN: AND com NOT (bit masking) ---
    li   t4, 0xFF        # máscara
    andn t5, t0, t4      # t5 ← t0 AND (NOT t4)
                         # zera os bits indicados pela máscara

    ret