Algoritmo "Exercicio 5 - Aula 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/09/2020
Var
// Se��o de Declara��es das vari�veis 
sal, novosal: real
perc: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o salario: ")
LEIA(sal)
ESCREVA("Digite o percentual: (Exemplo: 10%)")
LEIA(perc)

novosal := sal + (sal * perc/100)
// 1.25
// perc := perc / 100
// novosal := sal * (1 + perc)

ESCREVA("O novo salario � de: ", novosal)
Fimalgoritmo