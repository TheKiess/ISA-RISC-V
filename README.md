# Estudo da ISA RISC-V

### 📘 Descrição

Este projeto tem como objetivo estudar e compreender a ISA (Instruction Set Architecture) da arquitetura RISC-V, explorando seus princípios, instruções, registradores e processos de montagem e execução.

Os exemplos em Assembly foram desenvolvidos utilizando o NASM (Netwide Assembler), com simulação em ambientes compatíveis com RISC-V, como o QEMU ou simuladores online.

Durante a videoaula, são demonstrados o processo de montagem (assembly), linkagem e execução dos programas, com explicações detalhadas sobre o funcionamento das instruções e o fluxo de execução.

#

### 🎯 Objetivos

Compreender o funcionamento da arquitetura RISC-V e suas principais características.

Escrever, montar e executar programas simples em Assembly.

Demonstrar a execução prática em QEMU ou simuladores RISC-V online.

Explicar o processo de montagem, linkagem e execução de código Assembly.

Relacionar o conhecimento prático com os conceitos teóricos de arquitetura de computadores.

#

### ⚙️ Ferramentas Utilizadas

Assembler: NASM (Netwide Assembler)

Simulador/Emulador: QEMU RISC-V
 ou simuladores online (ex: Ripes, RARS)

Sistema Operacional: Ubuntu / Linux / Windows (com WSL)

#

### 🧩 Estrutura do Projeto
```bash
📁 isa_risc_v
├── 📄 README.md
├── 📂 src
│   ├── exemplo1.asm
│   ├── exemplo2.asm
│   └── exemplo3.asm
├── 📂 documentation
│   ├── relatorio.pdf
│   └── roteiro_videoaula.md
└── 📂 bin
    ├── exemplo1.o
    ├── exemplo2.o
    └── exemplo3.bin
```

<ul>
  <li><b>src/</b> – Códigos Assembly desenvolvidos no NASM.</li>
  <li><b>docs/</b> – Relatórios teóricos e roteiro explicativo da videoaula.</li>
  <li><b>bin/</b> – Arquivos binários gerados após montagem e linkagem.</li>
</ul>

#

### 🧾 Conceitos Abordados

RISC (Reduced Instruction Set Computer) – conjunto reduzido de instruções otimizadas.

Registradores RISC-V (x0–x31) – propósito geral e específico.

Ciclo de Instrução: Fetch → Decode → Execute → Memory → Write Back.

Modos de endereçamento e instruções básicas (aritméticas, lógicas, salto e memória).

Processo de montagem e execução em nível de hardware e software.

#

### 🎥 Apresentação em Vídeo

A videoaula deverá incluir:

Explicação teórica sobre a ISA RISC-V.

Demonstração da montagem, linkagem e execução de um código Assembly.

Análise passo a passo das instruções no simulador/emulador.

Comparação com conceitos vistos em sala de aula (registradores, memória, etc).

#

### 👤 Autores

Nada ainda

#

### 📚 Referências

Documentação Oficial da RISC-V Foundation

QEMU RISC-V Documentation

NASM Official Manual

Livro: Patterson & Hennessy – Computer Organization and Design RISC-V Edition
