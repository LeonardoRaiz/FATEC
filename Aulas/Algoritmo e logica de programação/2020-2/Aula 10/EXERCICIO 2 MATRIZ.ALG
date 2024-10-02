Algoritmo "Exercicio 2 Matriz"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/07/2020
Var
// Seção de Declarações das variáveis 
lojas : vetor [1..8] DE caractere
produtos : vetor[1..4] DE caractere
preco : vetor [1..4,1..8] DE real
i,j:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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