Algoritmo "Exercicio 8 Trabalho"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/05/2020
Var
// Se��o de Declara��es das vari�veis 
a, b, c, x1, x2, delta: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
LEIA(a)
LEIA(b)
LEIA(c)

SE (a = 0) ENTAO
   ESCREVA("NAO")
SENAO
     delta := (b * b) - (4 * a * c)
     SE delta < 0 ENTAO
        ESCREVA("NAO")
     SENAO
          SE (delta = 0) ENTAO
             x1 := (-b) / (2 * a)
             ESCREVA(x1)
          SENAO
               x1 := (-b + raizq(delta)) / (2 * a)
               x2 := (-b - raizq(delta)) / (2 * a)
               ESCREVA (x1, x2)
          FIMSE
     FIMSE
FIMSE

Fimalgoritmo