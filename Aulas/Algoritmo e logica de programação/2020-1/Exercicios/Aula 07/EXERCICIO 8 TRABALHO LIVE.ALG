Algoritmo "Exercicio 8 Trabalho Live"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2020
Var
// Se��o de Declara��es das vari�veis 
a, b, c :inteiro
x1, x2, delta :real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
// 0x^2 + 3x + 7
ESCREVA("Digite o numero a:")
LEIA(a)
ESCREVA("Digite o numero b:")
LEIA(b)
ESCREVA("Digite o numero c:")
LEIA(c)

SE (a = 0) ENTAO
   ESCREVA("N�o � uma equa��o do segundo grau!!!")
SENAO
     delta := (b * b) - (4 * a * c)
     SE (delta < 0) ENTAO
        ESCREVA("Numero negativo, n�o tem raiz real!!!")
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