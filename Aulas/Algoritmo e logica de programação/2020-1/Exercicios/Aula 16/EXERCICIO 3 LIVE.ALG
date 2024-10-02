Algoritmo "Exercicio 3 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Seção de Declarações das variáveis 
vet1 , vet2: vetor [1..5] DE inteiro
vet3 : vetor [1..10] DE inteiro
i, j, aux, veri: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 5 FACA
     ESCREVA("Digite o valor na posição ", i ," do vetor 1: ")
     LEIA(vet1[i])
FIMPARA

PARA i DE 1 ATE 5 FACA
     PARA j DE 1 ATE 4 FACA
          SE vet1[j] > vet1[j + 1] ENTAO
             aux := vet1[j]
             vet1[j] := vet1[j + 1]
             vet1[j + 1] := aux
          FIMSE
     FIMPARA
FIMPARA

PARA i DE 1 ATE 5 FACA
     ESCREVA("Digite o valor na posição ", i ," do vetor 2: ")
     LEIA(vet2[i])
FIMPARA

PARA i DE 1 ATE 5 FACA
     PARA j DE 1 ATE 4 FACA
          SE vet2[j] > vet2[j + 1] ENTAO
             aux := vet2[j]
             vet2[j] := vet2[j + 1]
             vet2[j + 1] := aux
          FIMSE
     FIMPARA
FIMPARA

j := 1
PARA i DE 1 ATE 10 FACA
     vet3[j] := vet1[i]
     j := j + 1
     vet3[j] := vet2[i]
     j := j + 1
     SE j > 10 ENTAO
        INTERROMPA
     FIMSE
FIMPARA

PARA i DE 1 ATE 10 FACA
     PARA j DE 1 ATE 9 FACA
          SE vet3[j] > vet3[j + 1] ENTAO
             aux := vet3[j]
             vet3[j] := vet3[j + 1]
             vet3[j + 1] := aux
          FIMSE
     FIMPARA
FIMPARA
// Amostragem do vetor 1 ordenado
PARA i DE 1 ATE 5 FACA
     ESCREVA(vet1[i], " | ")
FIMPARA
ESCREVAL("")
// Amostragem do vetor 2 ordenado
PARA i DE 1 ATE 5 FACA
     ESCREVA(vet2[i], " | ")
FIMPARA
ESCREVAL("")
// Amostragem do vetor 3 ordenado
PARA i DE 1 ATE 10 FACA
     ESCREVA(vet3[i], " | ")
FIMPARA


Fimalgoritmo