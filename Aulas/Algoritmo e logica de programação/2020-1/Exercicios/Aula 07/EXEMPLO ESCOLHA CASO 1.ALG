Algoritmo "Exemplo ESCOLHA CASO 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2020
// Fa�a um programa que utilize um menu de op��es com as devidas
// escolhas
// +. SOMA
// -. Subtra��o
// *. Multiplica��o
// /. Divis�o


// 1. SOMA
// 2. Subtra��o
// 3. Multiplica��o
// 4. Divis�o

Var
// Se��o de Declara��es das vari�veis 
num1, num2 :inteiro
operacao :caractere // + - / *
resultado :real

op: inteiro // Numeros

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o primeiro numero: ")
LEIA(num1)
ESCREVA("Digite a opera��o: ")
LEIA(operacao)
ESCREVA("Digite o segundo numero: ")
LEIA(num2)

// SE (oprecao = "+") ENTAO
//     resultado := num1 + num2
// FIMSE
// SE (oprecao = "-") ENTAO
//     resultado := num1 - num2
// FIMSE
// SE (oprecao = "*") ENTAO
//     resultado := num1 * num2
// FIMSE
// SE (oprecao = "/") ENTAO
//     resultado := num1 / num2
// FIMSE

// charactere
ESCOLHA operacao
        CASO "+"
             resultado := num1 + num2
        CASO "-"
             resultado := num1 - num2
        CASO "*"
             resultado := num1 * num2
        CASO "/"
             resultado := num1 / num2
FIMESCOLHA

ESCREVAL(num1, operacao, num2, " = ", resultado) // 1 + 1 = 2

ESCREVA("Escolha o numero da opera��o: ")
LEIA(op)
// numero
ESCOLHA op
        CASO 1
             resultado := num1 + num2
             ESCREVAL(num1, " + ", num2,  " = ", resultado)// 1 + 1 = 2
        CASO 2
             resultado := num1 - num2
             ESCREVAL(num1, " - ", num2,  " = ", resultado)// 1 - 1 = 0
        CASO 3
             resultado := num1 * num2
             ESCREVAL(num1, " * ", num2,  " = ", resultado)// 1 * 1 = 1
        CASO 4
             resultado := num1 / num2
             ESCREVAL(num1, " / ", num2,  " = ", resultado)// 1 / 1 = 1
        OUTROCASO // Caso o valor seja invalido
             ESCREVA("Valor invalido!")
FIMESCOLHA



Fimalgoritmo