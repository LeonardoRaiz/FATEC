Algoritmo "Exercicio 2 LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Se��o de Declara��es das vari�veis 
vet : vetor [1..8] DE inteiro
i, j: inteiro
aux : inteiro
verifica:inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
i := 1
ENQUANTO (i <= 8) FACA
         ESCREVA("Digite o valor na posi��o ", i ," :")
         LEIA(aux)
         
         j := 1
         ENQUANTO (j < i) E (vet[j] < aux) FACA
                  j := j + 1
         FIMENQUANTO
         
         verifica := i
         ENQUANTO (verifica >= j + 1) FACA
                   vet[verifica] := vet[verifica - 1]
                   verifica := verifica - 1
         FIMENQUANTO
         
         vet[j] := aux
         i := i + 1
FIMENQUANTO

i := 1
ENQUANTO (i <= 8)FACA
           ESCREVA(vet[i], " | ")
           i := i + 1
FIMENQUANTO

Fimalgoritmo