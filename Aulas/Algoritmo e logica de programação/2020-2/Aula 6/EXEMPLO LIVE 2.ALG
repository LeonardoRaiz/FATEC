Algoritmo "Exemplo LIVE 2"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/05/2020
Var
// Se��o de Declara��es das vari�veis 
i, x, y :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
x := 4
y := x + 2 // 4 + 2 = 6

PARA i DE 1 ATE x - 1 FACA
     ESCREVAL("Esse � o valor de X =", x)
     ESCREVAL("Esse � o valor de Y =", y)
     y := y + i
     ESCREVAL("Esse � o valor de i =", i)
FIMPARA
x := 4
y := x + 2 // 4 + 2 = 6
PARA i DE 1 ATE x FACA
     ESCREVAL("X: ",x, "Y:", y, "i:",i)
     y := y+i
FIMPARA

Fimalgoritmo