Algoritmo "Menu Exemplo Trabalho"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/10/2020
Var
// Se��o de Declara��es das vari�veis 
op : inteiro
num1, num2, soma: real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVAL("----------------- MENU --------------------")
ESCREVAL("1 - Soma de dois n�meros:")
ESCREVAL("2 - Somar % 15 do n�mero: ")
ESCREVAL("0 - Encerra o programa: ")
ESCREVAL("-------------------------------------------")
LEIA(op)

ESCOLHA op
        CASO 1
             LIMPATELA
             ESCREVA("Insira o primeiro n�mero: ")
             LEIA(num1)
             ESCREVA("Insira o segundo n�mero: ")
             LEIA(num2)
             soma := num1 + num2
             ESCREVA("O resultado da soma �: ", soma)
             SE(soma > 30)ENTAO
                     ESCREVAL("A soma foi maior que 30!")
             FIMSE
        CASO 2
             LIMPATELA
             ESCREVA("Insira o n�mero: ")
             LEIA(num1)
             soma := num1 + (num1 * 15/100)
             ESCREVA("O resultado da some �: ", soma)
        CASO 0
             LIMPATELA
             ESCREVA("Programa encerrado!")
        OUTROCASO
             ESCREVA("Escolha errada do menu")
FIMESCOLHA


Fimalgoritmo