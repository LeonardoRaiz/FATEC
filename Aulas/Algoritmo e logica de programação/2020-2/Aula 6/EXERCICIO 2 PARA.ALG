Algoritmo "Exercicio 2 PARA"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/05/2020
Var
// Se��o de Declara��es das vari�veis 
n, num, i, j, fat: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
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