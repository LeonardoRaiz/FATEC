Algoritmo "Desafio 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/02/2020
Var
// Seção de Declarações das variáveis 
sal, salreceber, imp: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira o salário: ")
LEIA(sal)
imp := sal * 10/100
salreceber := sal + 50 - imp
ESCREVA("O salário final é de: ", salreceber)

Fimalgoritmo