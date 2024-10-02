Algoritmo "Exercicio equacao segundo grau"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/09/2020
// ax^2 + bx - c = 0
Var
// Seção de Declarações das variáveis 
a, b, c:inteiro
delta:real
x1, x2:real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o valor de A: ")
LEIA(a)
ESCREVA("Digite o valor de B: ")
LEIA(b)
ESCREVA("Digite o valor de C: ")
LEIA(c)
// ax^2
SE(a = 0)ENTAO
     ESCREVA("Não é uma equação do segundo grau!!!")
SENAO
     delta := (b * b) - 4 * a * c
     SE(delta < 0)ENTAO
              ESCREVA("Não é uma raiz real")
     SENAO
          SE(delta = 0)ENTAO
                   ESCREVAL("Existe uma raiz real")
                   x1 := (-b)/(2*a)     *
                   ESCREVA("X1: ", x1)
          SENAO
               SE(delta > 0)ENTAO
                        ESCREVAL("Existe duas raizes reais")
                        x1 := (-b + raizq(delta))/(2*a)
                        x2 := (-b - raizq(delta))/(2*a)
                        ESCREVAL("X1: ", x1)
                        ESCREVA("X2: ", x2)
               FIMSE
          FIMSE
     FIMSE
FIMSE
Fimalgoritmo