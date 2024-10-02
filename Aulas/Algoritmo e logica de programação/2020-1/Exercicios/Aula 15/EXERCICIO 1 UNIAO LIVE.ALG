Algoritmo "Exercicio 1 Uniao LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/06/2020
Var
// Seção de Declarações das variáveis 
X : vetor [1..10] DE inteiro
Y : vetor [1..10] DE inteiro
i :inteiro
cont_u :inteiro
veri :inteiro
U :vetor [1..20] DE inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// Entreda vetor X
PARA i DE 1 ATE 10 FACA
     ESCREVA("Digite o valor do vetor X no posição ", i,": ")
     LEIA(X[i])
FIMPARA
// Entrada vetor Y
PARA i DE 1 ATE 10 FACA
     ESCREVA("Digite o valor do vetor Y no posição ", i,": ")
     LEIA(Y[i])
FIMPARA

cont_u := 1
//União X
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


//União Y
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

//Saida do vetor de União
PARA i DE 1 ATE cont_u - 1 FACA
     ESCREVA(U[i],  " | ")
FIMPARA

ESCREVAL("")
Fimalgoritmo