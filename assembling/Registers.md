# Registradores
Registradores são áreas de armazenamento dentro do processador. Pense neles como variáveis hiper-rápidas que o processador usa para trabalhar com dados.

# **Mas pq existem?**
A memória RAM é muito mais lenta que o processador. Os registradores ficam dentro do chip, então o acesso é praticamente instantâneo. Todas as operações que a CPU faz passa por eles (registradores).

# Analogia:
Imagina que estás a fazer uma conta de matemática. A RAM seria o caderno (escreves, consultas o teu caderno, voltas) e os registradores seriam a tua mente - os números que já tens na cabeça enquanto calculas.


**Principais tipos de registadores (em x86/x64):**

Em arquiteturas modernas (64 bits), os registadores de uso geral mais comuns são:

| Registador | Nome informal | Uso típico |
| --- | --- | --- |
| `RAX` | Acumulador | Resultados de operações e retorno de funções |
| `RBX` | Base | Uso geral |
| `RCX` | Contador | Ciclos e contagens |
| `RDX` | Dados | Operações com dados, I/O |
| `RSP` | Stack Pointer | Aponta para o topo da pilha |
| `RBP` | Base Pointer | Aponta para a base do stack frame |
| `RSI` / `RDI` | Source / Dest Index | Operações com strings e memória |
