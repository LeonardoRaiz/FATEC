Algoritmo "Exercicio 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/06/2020
Var
// Se��o de Declara��es das vari�veis 
X :vetor [1..10] DE inteiro
Y :vetor [1..10] DE inteiro
U :vetor [1..20] DE inteiro
D :vetor [1..10] DE inteiro
i, j, k :inteiro
cont_u, cont_d :inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
PARA i DE 1 ATE 10 FACA
     LEIA(X[i])
     LEIA(Y[i])
FIMPARA
cont_u := 1
cont_d := 1

//UNI�O X
PARA i DE 1 ATE 10 FACA
     j := 1
     ENQUANTO ((j < cont_u) E (X[i] <> U[j])) FACA
           j := j + 1
     FIMENQUANTO

     SE j >= cont_u ENTAO
        U[cont_u] := X[i]
        cont_u := cont_u + 1
     FIMSE
FIMPARA


//UNI�O Y
PARA i DE 1 ATE 10 FACA
     j := 1
     ENQUANTO ((j < cont_u) E (Y[i] <> U[j]))FACA
           j := j + 1
     FIMENQUANTO

     SE j >= cont_u ENTAO
        U[cont_u] := Y[i]
        cont_u := cont_u + 1
     FIMSE
FIMPARA

PARA i DE 1 ATE cont_u - 1 FACA
     ESCREVA(U[i])
FIMPARA

ESCREVAL("")

//DIFEREN�A
PARA i DE 1 ATE 10 FACA
     j := 1
     ENQUANTO (j <= 10) E (X[i] <> Y[j]) FACA
           j := j + 1
           SE j > 10 ENTAO
              INTERROMPA
           FIMSE
     FIMENQUANTO
     SE j > 10 ENTAO
        k := 1
        ENQUANTO (k < cont_d) E (X[i] <> D[k])FACA
                    k := k + 1
        FIMENQUANTO
        SE k >= cont_d ENTAO
           D[cont_d] := X[i]
           cont_d := cont_d + 1
        FIMSE
     FIMSE
FIMPARA

PARA i DE 1 ATE cont_d - 1 FACA
     ESCREVA(D[i])
FIMPARA

Fimalgoritmo