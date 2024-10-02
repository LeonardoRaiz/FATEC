Algoritmo "Exemplo 1 Matriz"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/07/2020
Var
// Seção de Declarações das variáveis 
mat : vetor [1..5,1..3] DE inteiro
i, j : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


PARA i DE 1 ATE 5 FACA
     PARA j de 1 ATE 3 FACA
          ESCREVAL("Matriz [",i," ][",j," ] : ")
          LEIA(mat[i,j])
     FIMPARA
FIMPARA

PARA i DE 1 ATE 5 FACA
     PARA j de 1 ATE 3 FACA
          ESCREVAL("Matriz [",i," ][",j," ] : ", mat[i,j])
     FIMPARA
FIMPARA


Fimalgoritmo