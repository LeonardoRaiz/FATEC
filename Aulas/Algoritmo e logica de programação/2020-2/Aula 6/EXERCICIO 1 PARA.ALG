Algoritmo "Exerc�cio 1 PARA"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/05/2020
Var
// Se��o de Declara��es das vari�veis 
 fimE, fat :real
i, j, n :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
LEIA(n)
fimE := 1
PARA i DE 1 ATE n FACA
     fat := 1
     PARA j de 1 ATE i FACA
          fat := fat * j
     FIMPARA
     fimE := fimE + 1/fat
FIMPARA

ESCREVA(fimE)

Fimalgoritmo