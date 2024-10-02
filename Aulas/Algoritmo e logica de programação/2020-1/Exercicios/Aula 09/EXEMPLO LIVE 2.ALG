Algoritmo "Exemplo LIVE 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/05/2020
Var
// Seção de Declarações das variáveis 
i, x, y :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
x := 4
y := x + 2 // 4 + 2 = 6

PARA i DE 1 ATE x - 1 FACA
     ESCREVAL("Esse é o valor de X =", x)
     ESCREVAL("Esse é o valor de Y =", y)
     y := y + i
     ESCREVAL("Esse é o valor de i =", i)
FIMPARA
x := 4
y := x + 2 // 4 + 2 = 6
PARA i DE 1 ATE x FACA
     ESCREVAL("X: ",x, "Y:", y, "i:",i)
     y := y+i
FIMPARA

Fimalgoritmo