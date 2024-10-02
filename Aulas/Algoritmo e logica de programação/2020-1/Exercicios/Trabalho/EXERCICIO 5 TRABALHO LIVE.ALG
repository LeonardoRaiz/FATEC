Algoritmo "Exercicio 5 Trabalho Live"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/05/2020
Var
// Seção de Declarações das variáveis 
num1, num2, num3, num4 :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite os três numeros: ")
LEIA(num1)
LEIA(num2)
LEIA(num3)

ESCREVA("Digite o quarto numero: ")
LEIA(num4)

// num4 é maior que o num3?
// num4 > num3 > num2 > num1
SE (num4 > num3) ENTAO
   ESCREVAL(num4, " - ", num3, " - ", num2, " - ", num1)
   // 4 - 3 - 2 - 1
FIMSE

//num3 > num4 > num2 > num1
SE ((num4 > num2) E (num4 < num3)) ENTAO
   ESCREVAL(num3, " - ", num4, " - ", num2, " - ", num1)
FIMSE

//num3 > num2 > num4 > num1
SE ((num4 > num1) E (num4 < num2)) ENTAO
   ESCREVAL(num3, " - ", num2, " - ", num4, " - ", num1)
FIMSE

//num3 > num2 > num1 > num4
SE (num4 < num1) ENTAO
   ESCREVAL(num3, " - ", num2, " - ", num1, " - ", num4)
FIMSE

// Sem o operador logico
SE (num4 > num3) ENTAO
   ESCREVA(num4, " - ", num3, " - ", num2, " - ", num1)
SENAO
     SE (num4 > num2) ENTAO
        ESCREVA(num3, " - ", num4, " - ", num2, " - ", num1)
     SENAO
          SE (num4 > num1) ENTAO
             ESCREVA(num3, " - ", num2, " - ", num4, " - ", num1)
          SENAO
             ESCREVA(num3, " - ", num2, " - ", num1, " - ", num4)
          FIMSE
     FIMSE
FIMSE

Fimalgoritmo