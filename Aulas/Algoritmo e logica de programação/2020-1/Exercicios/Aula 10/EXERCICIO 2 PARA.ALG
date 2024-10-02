Algoritmo "Exercicio 2 PARA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/05/2020
Var
// Seção de Declarações das variáveis 
n, num, i, j, fat: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LEIA(n)

PARA i DE 1 ATE n FACA
     LEIA(num)
     fat := 1
     PARA j DE 1 ATE num FACA
          fat := fat * j
     FIMPARA
     ESCREVA(fat)
FIMPARA

Fimalgoritmo