Algoritmo "Exercicio 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/06/2020
Var
// Se��o de Declara��es das vari�veis 
vet1 : vetor [1..10] DE inteiro
vet2 : vetor [1..10] DE inteiro
vet3 : vetor [1..20] DE inteiro
i, j : inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

j := 1
PARA i DE 1 ATE 10 FACA
     LEIA(vet1[i])
     vet3[j] := vet1[i]
     j := j + 1
     LEIA(vet2[i])
     vet3[j] := vet2[i]
     j := j + 1
FIMPARA

PARA i DE 1 ATE 20 FACA
     ESCREVA(vet3[i])
FIMPARA


Fimalgoritmo