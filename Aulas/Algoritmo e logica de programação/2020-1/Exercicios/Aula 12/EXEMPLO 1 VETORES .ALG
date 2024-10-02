Algoritmo "Exemplo 1 Vetores "
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/06/2020
Var
// Seção de Declarações das variáveis 
vet :vetor [1..7] DE inteiro
i :inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
     ESCREVAL("Insira na posição ", i, "o valor:")
     LEIA(vet[i])
FIMPARA
// Modo automatico
PARA i DE 1 ATE 7 FACA
     vet[i] := i * 100
FIMPARA

PARA i DE 1 ATE 7 FACA
     ESCREVAL("O vetor na posição ", i, " seu valor é: ", vet[i])
FIMPARA

Fimalgoritmo