Algoritmo "Exercicio 1 LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Se��o de Declara��es das vari�veis 
vet : vetor [1..10] DE inteiro
i, j : inteiro
aux: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

PARA i DE 1 ATE 10 FACA
     ESCREVA("Digite o valor na posi��o ", i, " :")
     LEIA(vet[i])
FIMPARA

// Analisa todos os espa�os do vetor
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