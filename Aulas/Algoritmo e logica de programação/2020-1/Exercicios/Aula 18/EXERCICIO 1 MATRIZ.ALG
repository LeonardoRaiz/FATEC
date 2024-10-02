Algoritmo "Exercicio 1 Matriz"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/07/2020
Var
// Seção de Declarações das variáveis 
mat : vetor [1..2,1..2] DE inteiro
resultado : vetor [1..2,1..2] DE inteiro
i, j, maior : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 2 FACA
     PARA j de 1 ATE 2 FACA
          ESCREVAL("Matriz [",i," ][",j," ] : ")
          LEIA(mat[i,j])
     FIMPARA
FIMPARA

maior := mat[1,1]

PARA i DE 1 ATE 2 FACA
     PARA j de 1 ATE 2 FACA
          SE(mat[i,j] > maior)ENTAO
             maior := mat[i,j]
          FIMSE
     FIMPARA
FIMPARA

PARA i DE 1 ATE 2 FACA
     PARA j de 1 ATE 2 FACA
          resultado[i,j] := maior * mat[i,j]
     FIMPARA
FIMPARA

PARA i DE 1 ATE 2 FACA
     PARA j de 1 ATE 2 FACA
          ESCREVAL("Matriz [",i," ][",j," ] :", resultado[i,j])
     FIMPARA
FIMPARA

Fimalgoritmo