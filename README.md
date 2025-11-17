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

### 🧩 Registradores RISC-V

| **Nome**    | **Alias** | **Tipo**              | **Preservação em chamadas** | **Uso principal**                                                           |
| ----------- | --------- | --------------------- | --------------------------- | --------------------------------------------------------------------------- |
| **x0**      | zero      | Constante             | n/a                         | Sempre contém **0**; não pode ser modificado.                               |
| **x1**      | ra        | Retorno               | Caller-saved                | Guarda o endereço de retorno para funções (equivalente ao *link register*). |
| **x2**      | sp        | Stack Pointer         | Callee-saved                | Aponta para o topo da pilha.                                                |
| **x3**      | gp        | Global Pointer        | Callee-saved                | Ponteiro para dados globais.                                                |
| **x4**      | tp        | Thread Pointer        | Callee-saved                | Usado em sistemas com *thread-local storage*.                               |
| **x5**      | t0        | Temporário            | Caller-saved                | Registradores temporários para cálculos. Não preservados.                   |
| **x6**      | t1        | Temporário            | Caller-saved                | Temporário.                                                                 |
| **x7**      | t2        | Temporário            | Caller-saved                | Temporário.                                                                 |
| **x8**      | s0/fp     | Saved / Frame Pointer | **Callee-saved**            | Variáveis preservadas entre chamadas; pode atuar como frame pointer.        |
| **x9**      | s1        | Saved                 | Callee-saved                | Preservado entre funções.                                                   |
| **x10**     | a0        | Arg/Ret 0             | Caller-saved                | 1º argumento de função / valor de retorno. Também syscall arg0.             |
| **x11**     | a1        | Arg/Ret 1             | Caller-saved                | 2º argumento de função / possível retorno.                                  |
| **x12–x17** | a2–a7     | Argumentos            | Caller-saved                | Argumentos 3–8 de funções. a7 contém o número da syscall no Linux.          |
| **x18–x27** | s2–s11    | Saved registers       | **Callee-saved**            | Guardam valores importantes que devem persistir entre funções.              |
| **x28**     | t3        | Temporário            | Caller-saved                | Temporário adicional.                                                       |
| **x29**     | t4        | Temporário            | Caller-saved                | Temporário adicional.                                                       |
| **x30**     | t5        | Temporário            | Caller-saved                | Temporário adicional.                                                       |
| **x31**     | t6        | Temporário            | Caller-saved                | Temporário adicional.                                                       |

#### Legenda

🔵 <b>Caller-saved</b> (temporários / t0–t6 e a0–a7) -> Podem ser sobrescritos à vontade pela função chamada. Se você precisa manter o valor, você deve salvá-lo na pilha.

🟢 <b>Callee-saved</b> (s0–s11, + sp, gp, tp) -> A função chamada deve preservar esses valores. Se ela modificá-los, deve salvá-los na pilha e restaurá-los antes do retorno.

🔴 <b>zero (x0)</b> -> Sempre vale 0. Muito útil para inicializações e comparações, como fazíamos no "xor".


#

### ⚙️ Ferramentas Utilizadas

Assembler: <a href="https://www.nasm.us/pub/nasm/releasebuilds">NASM</a> (Execução vscode)

Utilização de comandos: <a href="https://learn.microsoft.com/pt-br/windows/wsl/install">WSL</a> e QEMU (Utilização do terminal ubuntu no windows)

Primeiro passo após programação:
```bash
riscv64-linux-gnu-as exe01.s -o exe01.o
```
Segundo passo:
```bash
riscv64-linux-gnu-ld exe01.o -o exe01 -> Caso não use .include, deve se utilizar o link
```
Terceiro passo:
```bash
qemu-riscv64 ./exe01
```

Sistema Operacional: Ubuntu / Windows

#

### 🧩 Estrutura do Projeto
```bash
📁 isa_risc_v
├── 📄 README.md
├── 📂 src
│   ├── exe01.s
│   ├── exe02.s
│   └── exe03.s
└── 📂 doc
     ├── relatorio.pdf
     └── roteiro_videoaula.md
```

<ul>
  <li><b>src/</b> – Códigos Assembly desenvolvidos no NASM.</li>
  <li><b>doc/</b> – Relatórios teóricos e roteiro explicativo da videoaula.</li>
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
  <li><a href="https://github.com/Evelyn-Sol">Evelyn Soletti</a></li>
  <li><a href="https://github.com/TheKiess">Frank Kiess</a></li>
  <li><a href="https://github.com/juliaguerreiroo">Julia D.Guerreiro</a></li>
  <li><a href="https://github.com/juliaholz110">Julia Holz</a></li>
</ul>

#

### 📚 Referências

<ol>
  <li>Documentação Oficial da RISC-V Foundation</li>
  <li>QEMU RISC-V Documentation</li>
  <li>NASM Official Manual</li>
  <li>Livro: Patterson & Hennessy – Computer Organization and Design RISC-V Edition</li>
</ol>
