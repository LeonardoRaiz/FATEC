Algoritmo "Exercicio 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Seção de Declarações das variáveis 
vet : vetor [1..10] DE inteiro
i, j, aux : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 10 FACA
     LEIA(vet[i])
FIMPARA

PARA i DE 1 ATE 10 FACA
     PARA j DE 1 ATE 9 FACA
          SE vet[j] < vet[j+1] ENTAO
             aux := vet[j]
             vet[j] := vet[j+1]
             vet[j+1] := aux
          FIMSE
     FIMPARA
FIMPARA

PARA i de 1 ATE 10 FACA
     ESCREVA(vet[i])
FIMPARA

Fimalgoritmo