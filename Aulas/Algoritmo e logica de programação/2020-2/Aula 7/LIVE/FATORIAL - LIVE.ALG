Algoritmo "Fatorial - LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/10/2020
Var
// Se��o de Declara��es das vari�veis 
fat : inteiro
i : inteiro
num : inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Informe o valor do fatorial: ")
LEIA(num)

// Todo fatorial come�a do n�mero 1
// 5 x 4 x 3 x 2 x 1 --- 1 x 2 x 3 x 4 x 5
// PARA
fat := 1
PARA i DE 1 ATE num FACA
     fat := fat * i
FIMPARA

ESCREVAL("O fatorial de ", num,"!: ", fat)

//ENQUANTO
i := 1
fat := 1
ENQUANTO (i <= num) FACA
         fat := fat * i
         i := i + 1
FIMENQUANTO

ESCREVAL("O fatorial de ", num,"!: ", fat)

//REPITA
i := 1
fat := 1
REPITA
      fat := fat * i
      i := i + 1
ATE (i > num)

ESCREVAL("O fatorial de ", num,"!: ", fat)



Fimalgoritmo