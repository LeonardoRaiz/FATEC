Algoritmo "Exercicio 2 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Seção de Declarações das variáveis 
vet : vetor [1..8] DE inteiro
i, j: inteiro
aux : inteiro
verifica:inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
i := 1
ENQUANTO (i <= 8) FACA
         ESCREVA("Digite o valor na posição ", i ," :")
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