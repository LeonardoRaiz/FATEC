Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/06/2020
Var
// Seção de Declarações das variáveis 
num : vetor [1..8] DE inteiro
posi : vetor [1..8] DE inteiro
neg : vetor [1..8] DE inteiro

cont, cont_n, cont_p, i :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
cont_n := 1
cont_p := 1

PARA i DE 1 ATE 8 FACA
     LEIA(num[i])
     SE num[i] > 0 ENTAO
        posi[cont_p] := num[i]
        cont_p := cont_p + 1
     SENAO
          SE num[i] < 0 ENTAO
             neg[cont_n] := num[i]
             cont_n := cont_n + 1
          FIMSE
     FIMSE
FIMPARA

SE cont_n = 1 ENTAO
   ESCREVAL("Vetor de negativos vazio!")
SENAO
   PARA i DE 1 ATE cont_n - 1 FACA
        ESCREVA(neg[i])
   FIMPARA
FIMSE
ESCREVAL("")
SE cont_p = 1 ENTAO
   ESCREVAL("Vetor de positivos vazio!")
SENAO
   PARA i DE 1 ATE cont_p - 1 FACA
        ESCREVA(posi[i])
   FIMPARA
FIMSE

Fimalgoritmo