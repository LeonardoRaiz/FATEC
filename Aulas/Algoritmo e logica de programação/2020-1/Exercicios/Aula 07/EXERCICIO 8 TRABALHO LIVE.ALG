Algoritmo "Exercicio 8 Trabalho Live"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2020
Var
// Seção de Declarações das variáveis 
a, b, c :inteiro
x1, x2, delta :real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// 0x^2 + 3x + 7
ESCREVA("Digite o numero a:")
LEIA(a)
ESCREVA("Digite o numero b:")
LEIA(b)
ESCREVA("Digite o numero c:")
LEIA(c)

SE (a = 0) ENTAO
   ESCREVA("Não é uma equação do segundo grau!!!")
SENAO
     delta := (b * b) - (4 * a * c)
     SE (delta < 0) ENTAO
        ESCREVA("Numero negativo, não tem raiz real!!!")
     SENAO
          SE (delta = 0) ENTAO
             x1 := (-b)/(2*a)
             ESCREVA("X1 =", x1)
          SENAO
               x1 := (-b + raizq(delta)) / (2 * a)
               x2 := (-b - raizq(delta)) / (2 * a)
               ESCREVAL("X1 = ", x1)
               ESCREVA("X2 = ", x2)
          FIMSE
     FIMSE
FIMSE




Fimalgoritmo