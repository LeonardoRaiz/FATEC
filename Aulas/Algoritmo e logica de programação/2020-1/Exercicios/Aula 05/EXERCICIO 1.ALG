Algoritmo "Exercicio 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/03/2020
Var
// Se��o de Declara��es das vari�veis 
num1, num2 : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o primeiro numero: ")
LEIA(num1)
ESCREVA("Digite o segundo numero: ")
LEIA(num2)

SE num1 > num2 ENTAO
   ESCREVAL("O maior numero �: ", num1)
SENAO
     SE num2 > num1 ENTAO
        ESCREVAL("O maior numero �: ", num2)
     SENAO
        ESCREVAL("Os numeros s�o iguais")
     FIMSE
FIMSE

Fimalgoritmo