Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Seção de Declarações das variáveis 
vet : vetor [1..8] DE inteiro
i, j, z, aux : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
i := 1
ENQUANTO (i <= 8) FACA
         LEIA(aux)

         j := 1
         ENQUANTO ((j < i) E (vet[j] < aux)) FACA
                  j := j + 1
         FIMENQUANTO
         
         z := i
         
         ENQUANTO (z >= j + 1) FACA
                  vet[z] := vet[z-1]
                  z := z - 1
         FIMENQUANTO
         
         vet[j] := aux
         i := i + 1
FIMENQUANTO

PARA i DE 1 ATE 8 FACA
     ESCREVA (vet[i])
FIMPARA


Fimalgoritmo