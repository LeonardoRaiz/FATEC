Algoritmo "Desafio 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/02/2020
Var
// Se��o de Declara��es das vari�veis 
dep, taxa, rend, total: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Insira o valor do dep�sito: ")
LEIA(dep)
ESCREVA("Insira o valor da taxa: ")
LEIA(taxa)

rend := dep * taxa/100
total := dep + rend
ESCREVA("O rendimento final � de: ", rend)
ESCREVA("O valor total depois do rendimento � de: ", total)
Fimalgoritmo