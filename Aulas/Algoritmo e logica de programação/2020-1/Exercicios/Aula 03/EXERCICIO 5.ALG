Algoritmo "Exercicio 5"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/02/2020
Var
// Se��o de Declara��es das vari�veis 
ano_atual, ano_nasc, idade_atual, idade_2050: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Insira o ano atual: ")
LEIA(ano_atual)
ESCREVA("Insira o ano de nascimento: ")
LEIA(ano_nasc)
idade_atual := ano_atual - ano_nasc
idade_2050 := 2050 - ano_nasc
ESCREVAL("Idade atual: ", idade_atual)
ESCREVAL("Idade em 2050: ", idade_2050)


Fimalgoritmo