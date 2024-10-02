Algoritmo "Exemplo 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/06/2020
Var
// Seção de Declarações das variáveis 
num: vetor [1..9] DE inteiro
cont, i, j :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 9 FACA
     LEIA(num[i])
FIMPARA

PARA i DE 1 ATE 9 FACA
     cont := 0
     PARA j DE 1 ATE num[i] FACA
          SE num[i] % j = 0 ENTAO
             cont := cont + 1
          FIMSE
     FIMPARA
     
     SE cont <= 2 ENTAO
        ESCREVA (num[i])
        ESCREVAL (i)
     FIMSE
FIMPARA


Fimalgoritmo