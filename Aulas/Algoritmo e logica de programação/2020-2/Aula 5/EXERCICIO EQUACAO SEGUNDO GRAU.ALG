Algoritmo "Exercicio equacao segundo grau"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/09/2020
// ax^2 + bx - c = 0
Var
// Se��o de Declara��es das vari�veis 
a, b, c:inteiro
delta:real
x1, x2:real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o valor de A: ")
LEIA(a)
ESCREVA("Digite o valor de B: ")
LEIA(b)
ESCREVA("Digite o valor de C: ")
LEIA(c)
// ax^2
SE(a = 0)ENTAO
     ESCREVA("N�o � uma equa��o do segundo grau!!!")
SENAO
     delta := (b * b) - 4 * a * c
     SE(delta < 0)ENTAO
              ESCREVA("N�o � uma raiz real")
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