Algoritmo "Exercicio PDF 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/10/2020
Var
// Se��o de Declara��es das vari�veis 
cont_i, cont_j : inteiro
fat : inteiro
n : inteiro
equE : real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o valor de N: ")
LEIA(n)

equE := 1
//N intera��es do usuario
PARA cont_j DE 1 ATE n FACA
     // Calculo do FATORIAL
     fat := 1
     PARA cont_i DE 1 ATE cont_j FACA
          fat := fat * cont_i
     FIMPARA
     // Calculo da equa��o E
     equE = equE + 1 / fat
FIMPARA

ESCREVA("O resultado da equa��o �: ", equE)







Fimalgoritmo