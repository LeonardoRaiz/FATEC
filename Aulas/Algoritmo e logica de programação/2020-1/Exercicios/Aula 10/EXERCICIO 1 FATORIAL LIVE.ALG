Algoritmo "Exercicio 1 FATORIAL"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/05/2020
// Fa�a um programa que leia um n�mero e mostre seu fatorial
Var
// Se��o de Declara��es das vari�veis   5!
i, j, n, fat :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o n�mero: ")
LEIA(n)
// MAIS COMPLEXA O^2
PARA i de 1 ATE n FACA //5
     fat := 1
     ESCREVAL("Esse � o fatorial da contagem do numero N: ",fat)
     PARA j de 1 ATE i FACA
          fat := fat * j // 1 X 2 X 3 X 4 X 5
          ESCREVAL("Esse � o fatorial no produto do numero: ",fat)
     FIMPARA
FIMPARA

ESCREVA("O fatorial de ", n ," �: ", fat)

//FORMA MAIS SIMPLES
fat := 1
PARA j DE 1 ATE n FACA
     fat := fat * j
FIMPARA
ESCREVA(fat)

Fimalgoritmo