Algoritmo "Exercicio 2 LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2020
Var
// Se��o de Declara��es das vari�veis 
n :inteiro // Pede-se N n�meros
num :inteiro // Variavel para os demais numeros
i, j, fat :inteiro // Variaveis para o controle do fatorial

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
ESCREVAL("Digite a quantidade de n�meros que ser�o lidos: ")
LEIA(n)

PARA i DE 1 ATE n FACA
     ESCREVAL("Digite o n�mero: ")
     LEIA(num)
     fat := 1 // Fat recebe 1 para n�o ter multiplica��o por 0
     PARA j DE 1 ATE num FACA //1X2X3X4X5
          fat := fat * j
     FIMPARA
     ESCREVAL(num, "|", fat) // amostragem do n�mero e o fatorial
FIMPARA

// Ideia do Dirceu
PARA i DE 1 ATE n FACA
     fat := 1 // Fat recebe 1 para n�o ter multiplica��o por 0
     PARA j DE 1 ATE i FACA //1X2X3X4X5
          fat := fat * j
     FIMPARA
     ESCREVAL(i, "|", fat) // amostragem do n�mero e o fatorial
FIMPARA


Fimalgoritmo