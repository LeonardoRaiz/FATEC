Algoritmo "Exemplo Vetor 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/10/2020
Var
// Se��o de Declara��es das vari�veis 
notas : vetor [1..4] DE inteiro
i : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

//Pior forma de inserir informa��es
//notas[1] := 8
//notas[2] := 5
//notas[3] := 7
//notas[4] := 1
//ESCREVA("Digite a nota 1: ")
//LEIA(notas[1])
//ESCREVA("Digite a nota 2: ")
//LEIA(notas[2])
//ESCREVA("Digite a nota 3: ")
//LEIA(notas[3])
//ESCREVA("Digite a nota 4: ")
//LEIA(notas[4])

//Melhor forma
//LOOP la�o de repeti��o
PARA i DE 1 ATE 4 FACA
     ESCREVA("Digite a nota ",i,": ")
     LEIA(notas[i])
FIMPARA


Fimalgoritmo