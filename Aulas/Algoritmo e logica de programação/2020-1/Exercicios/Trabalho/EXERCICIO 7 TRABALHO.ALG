Algoritmo "Exercicio 7 Trabalho"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/05/2020
Var
// Seção de Declarações das variáveis 
hora_i, min_i, hora_f, min_f, hora_d, min_d: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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