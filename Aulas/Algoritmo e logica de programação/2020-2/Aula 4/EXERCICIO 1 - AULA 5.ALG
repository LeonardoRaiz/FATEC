Algoritmo "Exercicio 1 - Aula 5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/09/2020
Var
// Seção de Declarações das variáveis 
num1, num2: inteiro
maior:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira o primeiro valor: ")
LEIA(num1)
ESCREVA("Insira o segundo valor: ")
LEIA(num2)

SE num1 > num2 ENTAO
   ESCREVA("O maior valor é numero 1")
SENAO
     SE num2 > num1 ENTAO
        ESCREVA("O maior valor é numero 2")
     SENAO
        ESCREVA("Os valores são iguais")
     FIMSE
FIMSE


Fimalgoritmo