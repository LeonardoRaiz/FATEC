Algoritmo "Exercicio 2 Matriz"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/07/2020
Var
// Se��o de Declara��es das vari�veis 
lojas : vetor [1..8] DE caractere
produtos : vetor[1..4] DE caractere
preco : vetor [1..4,1..8] DE real
i,j:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
PARA i DE 1 ATE 8 FACA
     LEIA(lojas[i])
FIMPARA

PARA i DE 1 ATE 4 FACA
     LEIA(produtos[i])
FIMPARA

PARA i DE 1 ATE 4 FACA
     PARA j DE 1 ATE 8 FACA
          LEIA(preco[i,j])
     FIMPARA
FIMPARA

PARA i DE 1 ATE 4 FACA
     PARA j DE 1 ATE 8 FACA
          SE (preco[i,j] < 120) ENTAO
             ESCREVAL(produtos[i], lojas[j])
          FIMSE
     FIMPARA
FIMPARA

Fimalgoritmo