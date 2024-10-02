Algoritmo "Menu Exemplo Trabalho"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/10/2020
Var
// Seção de Declarações das variáveis 
op : inteiro
num1, num2, soma: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVAL("----------------- MENU --------------------")
ESCREVAL("1 - Soma de dois números:")
ESCREVAL("2 - Somar % 15 do número: ")
ESCREVAL("0 - Encerra o programa: ")
ESCREVAL("-------------------------------------------")
LEIA(op)

ESCOLHA op
        CASO 1
             LIMPATELA
             ESCREVA("Insira o primeiro número: ")
             LEIA(num1)
             ESCREVA("Insira o segundo número: ")
             LEIA(num2)
             soma := num1 + num2
             ESCREVA("O resultado da soma é: ", soma)
             SE(soma > 30)ENTAO
                     ESCREVAL("A soma foi maior que 30!")
             FIMSE
        CASO 2
             LIMPATELA
             ESCREVA("Insira o número: ")
             LEIA(num1)
             soma := num1 + (num1 * 15/100)
             ESCREVA("O resultado da some é: ", soma)
        CASO 0
             LIMPATELA
             ESCREVA("Programa encerrado!")
        OUTROCASO
             ESCREVA("Escolha errada do menu")
FIMESCOLHA


Fimalgoritmo