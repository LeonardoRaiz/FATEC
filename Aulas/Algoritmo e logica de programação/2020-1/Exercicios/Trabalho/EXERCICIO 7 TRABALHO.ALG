Algoritmo "Exercicio 7 Trabalho"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/05/2020
Var
// Se��o de Declara��es das vari�veis 
hora_i, min_i, hora_f, min_f, hora_d, min_d: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
LEIA(hora_i)
LEIA(min_i)
LEIA(hora_f)
LEIA(min_f)

SE(min_i > min_f) ENTAO
         min_f := min_f + 60
         hora_f := hora_f - 1
FIMSE

SE (hora_i > hora_f) ENTAO
   hora_f := hora_f + 24
FIMSE

min_d := min_f - min_i
hora_d := hora_f - hora_i

ESCREVA(hora_d, min_d)

Fimalgoritmo