Algoritmo "Exercicio 3 - Aula 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/09/2020
Var
// Se��o de Declara��es das vari�veis 
n1, n2, n3: real
peso1, peso2, peso3: real
media: real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
// Fa�a um programa que receba tr�s notas e seus respectivos pesos
ESCREVA("Digite a nota 1: ")
LEIA(n1)
ESCREVA("Digite o peso da nota 1: ")
LEIA(peso1)
ESCREVA("Digite a nota 2: ")
LEIA(n2)
ESCREVA("Digite o peso da nota 2: ")
LEIA(peso2)
ESCREVA("Digite a nota 3: ")
LEIA(n3)
ESCREVA("Digite o peso da nota 3: ")
LEIA(peso3)
//calcule a m�dia ponderada dessas notas
media := (n1 * peso1 + n2 * peso2 + n3 * peso3)/(peso1 + peso2 + peso3)

// e mostre o resultado
ESCREVA("M�dia ponderada: ", media)


Fimalgoritmo