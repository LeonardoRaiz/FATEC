Algoritmo "Exercicio 1 PDF LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/05/2020
Var
// Seção de Declarações das variáveis 
i, j, fat, n :inteiro
expE : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o valor de N: ")
LEIA(n)
expE := 1
// Complexidade maior
PARA i DE 1 ATE n FACA
     fat := 1
     PARA j DE 1 ATE i FACA
          fat := fat * j
     FIMPARA
     expE := expE + 1/fat //1!, 2!, 3!
FIMPARA
ESCREVA("O resultado final é:", expE)
//ENQUANTO
i := 1
expE := 1
ENQUANTO i <= n FACA
     fat := 1
     PARA j DE 1 ATE i FACA
          fat := fat * j
     FIMPARA
     expE := expE + 1/fat //1!, 2!, 3!
     i := i + 1
FIMENQUANTO
ESCREVA("O resultado final é:", expE)
//REPITA
i := 1
expE := 1
REPITA
     fat := 1
     PARA j DE 1 ATE i FACA
          fat := fat * j
     FIMPARA
     expE := expE + 1/fat //1!, 2!, 3!
     i := i + 1
ATE (i > n)
ESCREVA("O resultado final é:", expE)


Fimalgoritmo