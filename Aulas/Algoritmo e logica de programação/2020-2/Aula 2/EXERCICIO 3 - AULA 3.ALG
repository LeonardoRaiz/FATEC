Algoritmo "Exercicio 3 - Aula 3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/09/2020
Var
// Seção de Declarações das variáveis 
n1, n2, n3: real
peso1, peso2, peso3: real
media: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// Faça um programa que receba três notas e seus respectivos pesos
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
//calcule a média ponderada dessas notas
media := (n1 * peso1 + n2 * peso2 + n3 * peso3)/(peso1 + peso2 + peso3)

// e mostre o resultado
ESCREVA("Média ponderada: ", media)


Fimalgoritmo