Algoritmo "Exemplo 1 Matriz"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/07/2020
Var
// Se��o de Declara��es das vari�veis 
mat : vetor [1..5,1..3] DE inteiro
i, j : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 


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