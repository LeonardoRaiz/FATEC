Algoritmo "Exercicio 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/02/2020
Var
// Se��o de Declara��es das vari�veis 
num1, num2, r1, r2: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Insira o valor do primeiro numero: ")
LEIA(num1)
ESCREVA("Insira o valor do segundo numero: ")
LEIA(num2)

r1 := exp(num1, num2)
r2 := exp(num2, num1)

ESCREVAL("Primeira regra: ", r1)
ESCREVAL("Segunda regra: ", r2)

Fimalgoritmo