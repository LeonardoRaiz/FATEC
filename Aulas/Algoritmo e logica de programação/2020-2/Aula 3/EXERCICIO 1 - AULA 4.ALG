Algoritmo "Exercicio 1 - Aula 4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/09/2020
Var
// Seção de Declarações das variáveis 
area: real
area2:real
raio: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// Entrada de dados
ESCREVA("Digite o valor do raio: ")
LEIA(raio)

//Processo
area := pi * raio^2
area2 := 3.145 * exp(raio, 2)

ESCREVAL("O resultado da area é de: ", area)
ESCREVA("O resultado da area é de: ", area2)
Fimalgoritmo