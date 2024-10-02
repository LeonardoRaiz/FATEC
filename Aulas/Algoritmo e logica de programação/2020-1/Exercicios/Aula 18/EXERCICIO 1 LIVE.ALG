Algoritmo "Exercicio 1 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/07/2020
Var
// Seção de Declarações das variáveis 
M : vetor [1..2,1..2] DE inteiro
i, j : inteiro
R : vetor [1..2,1..2] De inteiro
maior :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Leitura
PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 2 FACA
          ESCREVA("M[",i," ][",j," ] :")
          LEIA(M[i,j])
     FIMPARA
FIMPARA

maior := M[1,1]

PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 2 FACA
          SE (M[i,j] > maior) ENTAO
             maior := M[i,j]
          FIMSE
     FIMPARA
FIMPARA

PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 2 FACA
          R[i,j] := M[i,j] * maior
     FIMPARA
FIMPARA

PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 2 FACA
          ESCREVAL("R[",i," ][",j,"] : ", R[i,j])
     FIMPARA
FIMPARA


Fimalgoritmo