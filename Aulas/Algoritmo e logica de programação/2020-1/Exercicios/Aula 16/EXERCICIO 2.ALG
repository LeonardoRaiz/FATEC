Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Se��o de Declara��es das vari�veis 
vet : vetor [1..8] DE inteiro
i, j, z, aux : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
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