Algoritmo "Exercicio 2 - Aula 4"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/09/2020
Var
// Se��o de Declara��es das vari�veis 
numero:inteiro
numQ : real
numC : real
numRQ :real
numRC :real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o numero maior que zero: ")
LEIA(numero)

numQ := exp(numero, 2)
//numQ := numero^2
numC := exp(numero, 3)
//numC := numero^3
numRQ := RAIZQ(numero)
//numRQ := exp(numero,(1/2))
numRC := exp(numero,(1/3))
//numRC := numero^(1/3)

ESCREVAL("N^2 = ", numQ)
ESCREVAL("N^3 = ", numC)
ESCREVAL("Raiz2 = ", numRQ)
ESCREVA("Raiz3 = ", numRC)

Fimalgoritmo