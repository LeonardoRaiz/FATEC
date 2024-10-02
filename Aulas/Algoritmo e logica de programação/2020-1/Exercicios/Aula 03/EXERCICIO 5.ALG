Algoritmo "Exercicio 5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/02/2020
Var
// Seção de Declarações das variáveis 
ano_atual, ano_nasc, idade_atual, idade_2050: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira o ano atual: ")
LEIA(ano_atual)
ESCREVA("Insira o ano de nascimento: ")
LEIA(ano_nasc)
idade_atual := ano_atual - ano_nasc
idade_2050 := 2050 - ano_nasc
ESCREVAL("Idade atual: ", idade_atual)
ESCREVAL("Idade em 2050: ", idade_2050)


Fimalgoritmo