Algoritmo "Desafio 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/02/2020
Var
// Se��o de Declara��es das vari�veis 
sal, salreceber, grat, imp: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Insira o sal�rio: ")
LEIA(sal)
grat := sal * 5/100
imp := sal * 7/100
salreceber := sal + grat - imp
ESCREVA("O salario final � de: ", salreceber)

Fimalgoritmo