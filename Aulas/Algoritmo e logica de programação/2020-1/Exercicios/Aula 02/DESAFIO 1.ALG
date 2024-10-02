Algoritmo "Desafio 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/02/2020
Var
// Seção de Declarações das variáveis 
sal, salreceber, grat, imp: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira o salário: ")
LEIA(sal)
grat := sal * 5/100
imp := sal * 7/100
salreceber := sal + grat - imp
ESCREVA("O salario final é de: ", salreceber)

Fimalgoritmo