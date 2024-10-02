Algoritmo "Exercicio 3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/02/2020
Var
// Seção de Declarações das variáveis 
num1, num2, r1, r2: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira o valor do primeiro numero: ")
LEIA(num1)
ESCREVA("Insira o valor do segundo numero: ")
LEIA(num2)

r1 := exp(num1, num2)
r2 := exp(num2, num1)

ESCREVAL("Primeira regra: ", r1)
ESCREVAL("Segunda regra: ", r2)

Fimalgoritmo