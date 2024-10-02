Algoritmo "Exercicio 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/03/2020
Var
// Seção de Declarações das variáveis 
num1, num2 : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o primeiro numero: ")
LEIA(num1)
ESCREVA("Digite o segundo numero: ")
LEIA(num2)

SE num1 > num2 ENTAO
   ESCREVAL("O maior numero é: ", num1)
SENAO
     SE num2 > num1 ENTAO
        ESCREVAL("O maior numero é: ", num2)
     SENAO
        ESCREVAL("Os numeros são iguais")
     FIMSE
FIMSE

Fimalgoritmo