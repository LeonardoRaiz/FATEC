Algoritmo "Exemplo 1 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/07/2020
Var
// Seção de Declarações das variáveis 
mat : vetor [1..2,1..4] DE inteiro
i, j : inteiro
cont_linha, cont_coluna : inteiro
maior : inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Leitura
PARA cont_linha DE 1 ATE 2 FACA
     PARA cont_coluna DE 1 ATE 4 FACA
          ESCREVA("mat [", cont_linha, " ][",cont_coluna," ] :")
          LEIA(mat[cont_linha, cont_coluna]) // LEIA(mat[i,j])
     FIMPARA
FIMPARA

PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 4 FACA
          ESCREVA("mat [", i, " ][", j," ] :")
          LEIA(mat[i, j]) // LEIA(mat[i,j])
     FIMPARA
FIMPARA

// Saida

PARA cont_linha DE 1 ATE 2 FACA
     PARA cont_coluna DE 1 ATE 4 FACA
     ESCREVAL("mat [", cont_linha, " ][",cont_coluna," ] : ", mat[cont_linha, cont_coluna])
     FIMPARA
FIMPARA

PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 4 FACA
     ESCREVAL("mat [", i, " ][",j," ] : ", mat[i, j])
     FIMPARA
FIMPARA

// | a | a | a | a |
// | a | a | a | a |

PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 4 FACA
          SE(j <> 4) ENTAO
               ESCREVA("|", mat[i,j] )
          SENAO
               ESCREVAL("|", mat[i,j],"|")
          FIMSE
     FIMPARA
FIMPARA

maior := mat[1,1]
PARA i DE 1 ATE 2 FACA
     PARA j DE 1 ATE 4 FACA
          SE (mat[i,j] > maior) ENTAO
             maior := mat[i,j]
          FIMSE
     FIMPARA
FIMPARA

ESCREVAL("O maior elemento é: ", maior )


Fimalgoritmo