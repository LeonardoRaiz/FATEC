Algoritmo "Exemplo 4"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/05/2020
Var
// Se��o de Declara��es das vari�veis 
X, num1, num2, resul :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVAL(" ----------- Menu De Op��es ---------------")
ESCREVAL(" 1. SOMA")
ESCREVAL(" 2. SUBTRA��O")
ESCREVAL(" 0. SAIR DO MENU")
LEIA(X)

ENQUANTO (X <> 0) FACA
         ESCOLHA X
                 CASO 1
                       ESCREVA("Digite o primeiro numero:")
                       LEIA(num1)
                       ESCREVA("Digite o segundo numero:")
                       LEIA(num2)
                       resul := num1 + num2
                       ESCREVAL("Resultado = ", resul)
                       ESCREVAL(" ----------- Menu De Op��es ---------------")
                       ESCREVAL(" 1. SOMA")
                       ESCREVAL(" 2. SUBTRA��O")
                       ESCREVAL(" 0. SAIR DO MENU")
                       LEIA(X)
                 CASO 2
                       ESCREVA("Digite o primeiro numero:")
                       LEIA(num1)
                       ESCREVA("Digite o segundo numero:")
                       LEIA(num2)
                       resul := num1 - num2
                       ESCREVAL("Resultado = ", resul)
                       ESCREVAL(" ----------- Menu De Op��es ---------------")
                       ESCREVAL(" 1. SOMA")
                       ESCREVAL(" 2. SUBTRA��O")
                       ESCREVAL(" 0. SAIR DO MENU")
                       LEIA(X)
                 OUTROCASO
                       ESCREVAL("Fun��o invalida!!!")
                       ESCREVAL(" ----------- Menu De Op��es ---------------")
                       ESCREVAL(" 1. SOMA")
                       ESCREVAL(" 2. SUBTRA��O")
                       ESCREVAL(" 0. SAIR DO MENU")
                       LEIA(X)
         FIMESCOLHA
FIMENQUANTO

//Resto

Fimalgoritmo