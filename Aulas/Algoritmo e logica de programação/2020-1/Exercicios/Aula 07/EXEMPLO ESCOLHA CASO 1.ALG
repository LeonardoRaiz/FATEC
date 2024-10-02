Algoritmo "Exemplo ESCOLHA CASO 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2020
// Faça um programa que utilize um menu de opções com as devidas
// escolhas
// +. SOMA
// -. Subtração
// *. Multiplicação
// /. Divisão


// 1. SOMA
// 2. Subtração
// 3. Multiplicação
// 4. Divisão

Var
// Seção de Declarações das variáveis 
num1, num2 :inteiro
operacao :caractere // + - / *
resultado :real

op: inteiro // Numeros

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o primeiro numero: ")
LEIA(num1)
ESCREVA("Digite a operação: ")
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

ESCREVA("Escolha o numero da operação: ")
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