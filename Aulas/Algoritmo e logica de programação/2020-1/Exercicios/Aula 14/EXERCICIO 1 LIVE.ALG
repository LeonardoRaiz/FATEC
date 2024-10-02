Algoritmo "EXERCICIO 1 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/06/2020
Var
// Seção de Declarações das variáveis 
vet1 :vetor [1..10] DE inteiro   // .. ATE
vet2 :vetor [1..10] DE inteiro
i :inteiro
j, k :inteiro
vet3 :vetor [1..20] DE inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Entrada do vetor 1
PARA i DE 1 ATE 10 FACA
     ESCREVA("Digite o valor: ")
     LEIA(vet1[i])
FIMPARA

// Entrado do vetor 2
PARA i DE 1 ATE 10 FACA
     ESCREVA("Digite o valor: ")
     LEIA(vet2[i])
FIMPARA

// K vetor 1
// J vetor 2
// PAR ou IMPAR FORMA 1
j := 1
k := 1
PARA i DE 1 ATE 20 FACA
     SE i mod 2 = 0 ENTAO
        vet3[i] := vet2[j]
        j := j + 1
     SENAO
        vet3[i] := vet1[k]
        k := k + 1
     FIMSE
FIMPARA

// Saida PAR ou IMPAR
PARA i DE 1 ATE 20 FACA
     ESCREVA(vet3[i], " | ")
FIMPARA

ESCREVAL("")

// Amostragem  FORMA 2
PARA i DE 1 ATE 10 FACA
     ESCREVA(vet1[i], " | ", vet2[i], " | ")
FIMPARA

// Simples  FORMA3
j := 1
PARA i DE 1 ATE 10 FACA
     vet3[j] := vet1[i]
     j := j + 1
     vet3[j] := vet2[i]
     j := j + 1
FIMPARA
ESCREVAL("")
// Saida simples
PARA i DE 1 ATE 20 FACA
     ESCREVA(vet3[i], " | ")
FIMPARA


       


Fimalgoritmo