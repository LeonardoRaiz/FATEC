Algoritmo "Exemplo 1 Vetores "
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/06/2020
Var
// Se��o de Declara��es das vari�veis 
vet :vetor [1..7] DE inteiro
i :inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
// Pior modo POSSIVEL
vet[1] := 100
vet[2] := 200
vet[3] := 300
vet[4] := 400
vet[5] := 500
vet[6] := 600
vet[7] := 700

ESCREVAL(vet[1])
ESCREVAL(vet[2])
ESCREVAL(vet[3])
ESCREVAL(vet[4])
ESCREVAL(vet[5])
ESCREVAL(vet[6])
ESCREVAL(vet[7])

// Melhor mode POSSIVEL
PARA i DE 1 ATE 7 FACA
     ESCREVAL("Insira na posi��o ", i, "o valor:")
     LEIA(vet[i])
FIMPARA
// Modo automatico
PARA i DE 1 ATE 7 FACA
     vet[i] := i * 100
FIMPARA

PARA i DE 1 ATE 7 FACA
     ESCREVAL("O vetor na posi��o ", i, " seu valor �: ", vet[i])
FIMPARA

Fimalgoritmo