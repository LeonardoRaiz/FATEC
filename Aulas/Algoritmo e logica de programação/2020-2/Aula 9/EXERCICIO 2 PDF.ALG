Algoritmo "Exercicio 2 PDF"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/11/2020
Var
// Seção de Declarações das variáveis 
posi : vetor [1..8] DE inteiro
neg : vetor [1..8] DE inteiro
vet : vetor [1..8] de inteiro
i : inteiro
cont_p, cont_n : inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

//Inserir os valores
PARA i DE 1 ATE 8 FACA
     ESCREVA("Insira o valor na casa ", i , ": ")
     LEIA(vet[i])
FIMPARA

//Verificar se o valor é positivo ou negativo
//Inserir no vetor correto
cont_p := 1
cont_n := 1

PARA i DE 1 ATE 8 FACA
     SE vet[i] > 0 ENTAO
        posi[cont_p] := vet[i]
        //Proxima casa
        cont_p := cont_p + 1
     SENAO
          SE vet[i] < 0 ENTAO
             neg[cont_n] := vet[i]
             //Proxima casa
             cont_n := cont_n + 1
          FIMSE
     FIMSE
FIMPARA

// Amostragem negativo
SE cont_n = 1 ENTAO
   ESCREVAL("Vetor vazio!")
SENAO
     PARA i DE 1 ATE cont_n - 1 FACA
          ESCREVA(neg[i] , " | ")
     FIMPARA
FIMSE
// Pular Linha
ESCREVAL("")

//AMOSTRAGEM positivo
SE cont_p = 1 ENTAO
   ESCREVAL("Vetor vazio!")
SENAO
     PARA i DE 1 ATE cont_p - 1  FACA
          ESCREVA(posi[i], " | ")
     FIMPARA
FIMSE









Fimalgoritmo