Algoritmo "Exercicio 1 PDF"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/11/2020
Var
// Seção de Declarações das variáveis 
vet1 : vetor [1..5] DE inteiro
vet2 : vetor [1..5] DE inteiro
vet3 : vetor [1..10] DE inteiro
i, j : inteiro
cont_vet1, cont_vet2 :inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
//Inserir os valores nos dois vetores
j := 1
PARA i DE 1 ATE 5 FACA
      ESCREVAL("Insira o valor na casa", i," do vetor 1: ")
      LEIA(vet1[i])
      vet3[j] := vet1[i]
      j := j + 1
      ESCREVAL("Insira o valor na casa",i," do vetor 2: ")
      LEIA(vet2[i])
      vet3[j] := vet2[i]
      j := j + 1
FIMPARA

// MOSTRAR
PARA i DE 1 ATE 5 FACA
     ESCREVA(vet1[i], " | ")
FIMPARA
ESCREVAL("")
PARA i DE 1 ATE 5 FACA
     ESCREVA(vet2[i], " | ")
FIMPARA
ESCREVAL("")
PARA i DE 1 ATE 10 FACA
     ESCREVA(vet3[i], " | ")
FIMPARA

ESCREVAL("")
// Outra forma
cont_vet1 := 1
cont_vet2 := 1

PARA i DE 1 ATE 10 FACA
     SE i mod 2 = 0 ENTAO
        vet3[i] := vet2[cont_vet2]
        cont_vet2 := cont_vet2 + 1
     SENAO
        vet3[i] := vet1[cont_vet1]
        cont_vet1 := cont_vet1 + 1
     FIMSE
FIMPARA

PARA i DE 1 ATE 5 FACA
     ESCREVA(vet1[i], " | ")
FIMPARA
ESCREVAL("")
PARA i DE 1 ATE 5 FACA
     ESCREVA(vet2[i], " | ")
FIMPARA
ESCREVAL("")

PARA i DE 1 ATE 10 FACA
     ESCREVA(vet3[i], "| ")
FIMPARA
Fimalgoritmo