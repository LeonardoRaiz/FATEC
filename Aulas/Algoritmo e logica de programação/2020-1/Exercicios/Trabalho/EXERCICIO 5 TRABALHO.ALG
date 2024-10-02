Algoritmo "Exercicio 5 Trabalho"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/05/2020
Var
// Seção de Declarações das variáveis 
num1, num2, num3, num4 :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LEIA(num1)
LEIA(num2)
LEIA(num3)

LEIA(num4)

SE (num4 > num3) ENTAO
   ESCREVA(num4, num3, num2, num1)
FIMSE

SE ((num4 > num2) E (num4 < num3)) ENTAO
   ESCREVA(num3, num4, num2, num1)
FIMSE

SE ((num4 > num1) E (num4 < num2)) ENTAO
   ESCREVA(num3, num2, num4, num1)
FIMSE

SE (num4 < num1) ENTAO
   ESCREVA(num3, num2, num1, num4)
FIMSE
Fimalgoritmo