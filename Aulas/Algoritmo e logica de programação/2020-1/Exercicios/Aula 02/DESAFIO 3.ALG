Algoritmo "Desafio 3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/02/2020
Var
// Seção de Declarações das variáveis 
dep, taxa, rend, total: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira o valor do depósito: ")
LEIA(dep)
ESCREVA("Insira o valor da taxa: ")
LEIA(taxa)

rend := dep * taxa/100
total := dep + rend
ESCREVA("O rendimento final é de: ", rend)
ESCREVA("O valor total depois do rendimento é de: ", total)
Fimalgoritmo