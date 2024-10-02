Algoritmo "Estrutura REPITA LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/05/2020
Var
// Seção de Declarações das variáveis 
i, x :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
i := 1
REPITA
      ESCREVAL("Valor de i:", i)
      i := i + 1
ATE (i > 10)

x := 0
REPITA
      x := x + 1
      ESCREVAL("Valor de x:",x)
      SE (x = 10) ENTAO
         INTERROMPA
      FIMSE
ATE FALSO

x := 0
REPITA
      x := x + 1
      ESCREVAL("Valor de x:",x)
      SE (x = 10) ENTAO
         INTERROMPA
      FIMSE
FIMREPITA //3.0 NAO funciona

Fimalgoritmo