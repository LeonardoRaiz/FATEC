Algoritmo "Exercicio 3 - Aula 4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/09/2020
Var
// Seção de Declarações das variáveis 
num1, num2 : inteiro
expo1, expo2: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o primeiro valor maior que zero: ")
LEIA(num1)
ESCREVA("Digite o segundo valor maior que zero: ")
LEIA(num2)

expo1 := num1^num2
//expo1 := exp(num1, num2)
expo2 := num2^num1
//expo2 := exp(num2, num1)

ESCREVAL("N1^N2 = ", expo1)
ESCREVA("N2^N1 = ", expo2)


Fimalgoritmo