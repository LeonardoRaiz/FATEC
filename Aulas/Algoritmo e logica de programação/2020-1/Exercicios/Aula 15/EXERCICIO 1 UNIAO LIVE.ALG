Algoritmo "Exercicio 1 Uniao LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/06/2020
Var
// Se��o de Declara��es das vari�veis 
X : vetor [1..10] DE inteiro
Y : vetor [1..10] DE inteiro
i :inteiro
cont_u :inteiro
veri :inteiro
U :vetor [1..20] DE inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
// Entreda vetor X
PARA i DE 1 ATE 10 FACA
     ESCREVA("Digite o valor do vetor X no posi��o ", i,": ")
     LEIA(X[i])
FIMPARA
// Entrada vetor Y
PARA i DE 1 ATE 10 FACA
     ESCREVA("Digite o valor do vetor Y no posi��o ", i,": ")
     LEIA(Y[i])
FIMPARA

cont_u := 1
//Uni�o X
PARA i DE 1 ATE 10 FACA
     // Encontrar valores repetidos no vetor
     veri := 1
     ENQUANTO ((veri < cont_u) E (X[i] <> U[veri])) FACA
          veri := veri + 1
     FIMENQUANTO
     // Passa de casa em casa
     SE veri >= cont_u ENTAO
        U[cont_u] := X[i] // Insere os valores
        cont_u := cont_u + 1 // Passa para a proxima casa
     FIMSE
FIMPARA


//Uni�o Y
PARA i DE 1 ATE 10 FACA
     // Encontrar valores repetidos no vetor
     veri := 1
     ENQUANTO ((veri < cont_u) E (Y[i] <> U[veri])) FACA
          veri := veri + 1
     FIMENQUANTO

     SE veri >= cont_u ENTAO
        U[cont_u] := Y[i]
        cont_u := cont_u + 1
     FIMSE
FIMPARA

//Saida do vetor de Uni�o
PARA i DE 1 ATE cont_u - 1 FACA
     ESCREVA(U[i],  " | ")
FIMPARA

ESCREVAL("")
Fimalgoritmo