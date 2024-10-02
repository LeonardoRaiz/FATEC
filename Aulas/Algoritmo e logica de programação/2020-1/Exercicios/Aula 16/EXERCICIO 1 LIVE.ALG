Algoritmo "Exercicio 1 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Seção de Declarações das variáveis 
vet : vetor [1..10] DE inteiro
i, j : inteiro
aux: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

PARA i DE 1 ATE 10 FACA
     ESCREVA("Digite o valor na posição ", i, " :")
     LEIA(vet[i])
FIMPARA

// Analisa todos os espaços do vetor
PARA i DE 1 ATE 10 FACA
     PARA j DE 1 ATE 9 FACA
          SE (vet[j] < vet[j + 1]) ENTAO
             aux := vet[j]
             vet[j] := vet[j + 1]
             vet[j + 1] := aux
          FIMSE
     FIMPARA
FIMPARA

PARA i DE 1 ATE 10 FACA
     ESCREVA(vet[i], " | ")
FIMPARA



Fimalgoritmo