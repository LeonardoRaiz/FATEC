Algoritmo "Exercicio 7 Trabalho Live"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/05/2020
Var
// Se��o de Declara��es das vari�veis 
hora_i, min_i, hora_f, min_f, min, hora :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Hora inicio: ")
LEIA(hora_i)
ESCREVA("Minuto inicio: ")
LEIA(min_i)
ESCREVA("Hora Final: ")
LEIA(hora_f)
ESCREVA("Minuto Final: ")
LEIA(min_f)

SE (min_i > min_f) ENTAO
   min_f := min_f + 60
   hora_f := hora_f - 1
FIMSE

//22 > 00 = 2 hora de dura��o
//24 - 22 = 2
SE (hora_i > hora_f) ENTAO
   hora_f := hora_f + 24
FIMSE
//22:00 - 23:10
//minutos := 10 - 0 = 10
//Hora := 23 - 22 = 1
min := min_f - min_i
hora := hora_f - hora_i

ESCREVA("A dura��o do jogo foi de ", hora, " horas e ", min, " minutos")



Fimalgoritmo