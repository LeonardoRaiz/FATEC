Algoritmo "Exercicio 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Se��o de Declara��es das vari�veis 
x, Y: vetor [1..5] DE inteiro
R: vetor [1..10] DE inteiro
i,j,z,aux: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
PARA i DE 1 ATE 5 FACA
     LEIA(X[i])
FIMPARA

PARA i DE 1 ATE 5 FACA
     PARA j DE 1 ATE 4 FACA
          SE X[j] > X[j + 1] ENTAO
             aux := X[j]
             X[j] := X[j + 1]
             X[j + 1] := aux
          FIMSE
     FIMPARA
FIMPARA

PARA i DE 1 ATE 5 FACA
     LEIA(Y[i])
FIMPARA

PARA i DE 1 ATE 5 FACA
     PARA j DE 1 ATE 4 FACA
          SE Y[j] > Y[j + 1] ENTAO
             aux := Y[j]
             Y[j] := Y[j + 1]
             Y[j + 1] := aux
          FIMSE
     FIMPARA
FIMPARA

j := 1
PARA i DE 1 ATE 5 FACA
     R[j] := X[i]
     j := j + 1
     R[j] := Y[i]
     j := j + 1
FIMPARA

PARA i DE 1 ATE 10 FACA
     PARA j DE 1 ATE 9 FACA
          SE R[j] > R[j + 1] ENTAO
             aux := R[j]
             R[j] := R[j + 1]
             R[j + 1] := aux
          FIMSE
     FIMPARA
FIMPARA

PARA i DE 1 ATE 5 FACA
     ESCREVA(X[i])
FIMPARA
ESCREVAL("")
PARA i DE 1 ATE 5 FACA
     ESCREVA(Y[i])
FIMPARA
ESCREVAL("")
PARA i DE 1 ATE 10 FACA
     ESCREVA(R[i])
FIMPARA
ESCREVAL("")



Fimalgoritmo