Algoritmo "ESCOLHA CASO exemplo 2"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2020

// 123

// 123 1 Crescente
// 321 2 Decrescente
// 132 3 Maior valor entre os demais
Var
// Se��o de Declara��es das vari�veis 
num1, num2, num3, op :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
LEIA(num1)
LEIA(num2)
LEIA(num3)

ESCREVAL("Opera��o: ")
LEIA(op)

ESCOLHA op
        CASO 1
             SE ((num1 < num2) E (num1 < num3)) ENTAO
                SE (num2 < num3) ENTAO
                   ESCREVA(num1, num2, num3)
                SENAO
                   ESCREVA(num1, num3, num2)
                FIMSE
             FIMSE
             
             SE ((num2 < num1) E (num2 < num3)) ENTAO
                SE (num1 < num3) ENTAO
                   ESCREVA(num2, num1, num3)
                SENAO
                   ESCREVA(num2, num3, num1)
                FIMSE
             FIMSE
             
             SE ((num3 < num1) E (num3 < num2)) ENTAO
                SE (num1 < num2) ENTAO
                   ESCREVA(num3, num1, num2)
                SENAO
                   ESCREVA(num3, num2, num1)
                FIMSE
             FIMSE
        CASO 2
             SE ((num1 > num2) E (num1 > num3)) ENTAO
                SE (num2 > num3) ENTAO
                   ESCREVA(num1, num2, num3)
                SENAO
                   ESCREVA(num1, num3, num2)
                FIMSE
             FIMSE
             
             SE ((num2 > num1) E (num2 > num3)) ENTAO
                SE (num1 > num3) ENTAO
                   ESCREVA(num2, num1, num3)
                SENAO
                   ESCREVA(num2, num3, num1)
                FIMSE
             FIMSE
             
             SE ((num3 > num1) E (num3 > num2)) ENTAO
                SE (num1 > num2) ENTAO
                   ESCREVA(num3, num1, num2)
                SENAO
                   ESCREVA(num3, num2, num1)
                FIMSE
             FIMSE
        CASO 3
             SE ((num1 > num2) E (num1 > num3)) ENTAO
                ESCREVA(num2, num1, num3)
             FIMSE
             
             SE((num2 > num1) E (num2 > num3)) ENTAO
                ESCREVA(num1, num2, num3)
             FIMSE
             
             SE ((num3 > num1) E (num3 > num2)) ENTAO
                ESCREVA(num1, num3, num2)
             FIMSE
             
FIMESCOLHA

             
Fimalgoritmo