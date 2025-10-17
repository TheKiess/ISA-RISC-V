# Estudo da ISA RISC-V

### 📘 Descrição
<ul>
  <li>Este projeto tem como objetivo estudar e compreender a ISA (Instruction Set Architecture) da arquitetura RISC-V, explorando seus princípios, instruções, registradores e processos de montagem e execução.</li>
  <li>Os exemplos em Assembly foram desenvolvidos utilizando o NASM (Netwide Assembler), com simulação em ambientes compatíveis com RISC-V, como o QEMU ou simuladores online.</li>
  <li>Durante a videoaula, são demonstrados o processo de montagem (assembly), linkagem e execução dos programas, com explicações detalhadas sobre o funcionamento das instruções e o fluxo de execução.</li>
</ul>

#

### 🎯 Objetivos
<ul>
  <li>Compreender o funcionamento da arquitetura RISC-V e suas principais características.</li>
  <li>Escrever, montar, executar e explicar programas simples em <b>Assembly</b> com foco na associação da arquitetura RISC-V.</li>
  <li>Demonstrar a execução prática em QEMU ou simuladores RISC-V online.</li>
  <li>Relacionar o conhecimento prático com os conceitos teóricos de arquitetura de computadores.</li>
</ul>

#

### ⚙️ Ferramentas Utilizadas

Assembler: <a href="https://www.nasm.us/pub/nasm/releasebuilds">NASM</a> (Execução vscode)

Primeiro passo após programação:
```bash
nasm -f elf64 arquivo.asm -o arquivo.o
```
Segundo passo:
```bash
ld arquivo.o -o arquivo
```
Terceiro passo:
```bash
./arquivo
```

Simulador/Emulador: QEMU RISC-V

Sistema Operacional: Ubuntu / Windows

#

### 🧩 Estrutura do Projeto
```bash
📁 isa_risc_v
├── 📄 README.md
├── 📂 src
│   ├── exemplo1.asm
│   ├── exemplo2.asm
│   └── exemplo3.asm
├── 📂 doc
│   ├── relatorio.pdf
│   └── roteiro_videoaula.md
└── 📂 bin
    ├── exemplo1.o
    ├── exemplo2.o
    └── exemplo3.bin
```

<ul>
  <li><b>src/</b> – Códigos Assembly desenvolvidos no NASM.</li>
  <li><b>doc/</b> – Relatórios teóricos e roteiro explicativo da videoaula.</li>
  <li><b>bin/</b> – Arquivos binários gerados após montagem e linkagem.</li>
</ul>

#

### 🧾 Conceitos Abordados
<ul>
  <li>RISC (Reduced Instruction Set Computer) – conjunto reduzido de instruções otimizadas.</li>
  <li>Registradores RISC-V (x0–x31) – propósito geral e específico.</li>
  <li>Ciclo de Instrução: Fetch → Decode → Execute → Memory → Write Back.</li>
  <li>Modos de endereçamento e instruções básicas (aritméticas, lógicas, salto e memória).</li>
  <li>Processo de montagem e execução em nível de hardware e software.</li>
</ul>

#

### 👤 Autores
<ul>
  <li>Evelyn Soletti</li>
  <li><a href="https://github.com/TheKiess">Frank Kiess</a></li>
  <li>Julia D.Guerreiro</li>
  <li>Julia Holz</li>
</ul>

#

### 📚 Referências

<ol>
  <li>Documentação Oficial da RISC-V Foundation</li>
  <li>QEMU RISC-V Documentation</li>
  <li>NASM Official Manual</li>
  <li>Livro: Patterson & Hennessy – Computer Organization and Design RISC-V Edition</li>
</ol>
