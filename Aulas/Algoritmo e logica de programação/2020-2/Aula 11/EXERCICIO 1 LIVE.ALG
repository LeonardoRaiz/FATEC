Algoritmo "Exercicio 1 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/12/2020
Var
// Seção de Declarações das variáveis 
M : vetor [1..2,1..2] DE inteiro
R : vetor [1..2,1..2] DE inteiro
i, j, maior: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
//Inserir os dados na matriz M
PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 2 FACA
          ESCREVAL("M[",i,"][",j,"]: ")
          LEIA(M[i,j])
     FIMPARA
FIMPARA


//Achar o maior valor na matriz
maior := M[1,1]

PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 2 FACA
          SE(M[i,j] > maior) ENTAO
                    maior := M[i,j]
          FIMSE
     FIMPARA
FIMPARA

//Multi de todos os elementos
PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 2 FACA
          R[i,j] := M[i,j] * maior
     FIMPARA
FIMPARA

// Mostrar os Dados
PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 2 FACA
          ESCREVA("|", R[i,j])
     FIMPARA
     ESCREVAL("")
FIMPARA


Fimalgoritmo