Algoritmo "Estrutura REPITA LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/05/2020
Var
// Se��o de Declara��es das vari�veis 
i, x :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
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