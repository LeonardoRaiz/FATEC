Algoritmo "Exercicio 2 Matriz 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/07/2020
Var
// Seção de Declarações das variáveis 
notas : vetor [1..10,1..3] DE inteiro
q1, q2, q3 :inteiro
menor, p_menor, i, j :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

PARA i DE 1 ATE 10 FACA
     PARA j DE 1 ATE 3 FACA
          LEIA(notas[i,j])
     FIMPARA
FIMPARA

q1 := 0
q2 := 0
q3 := 0

PARA i DE 1 ATE 10 FACA
     ESCREVA(i)
     menor := notas[i,1]
     p_menor := 1
     PARA j DE 1 ATE 3 FACA
          SE (notas[i,j] < menor) ENTAO
             menor := notas[i,j]
             p_menor := j
          FIMSE
     FIMPARA
     ESCREVAL(p_menor)
     
     SE p_menor = 1 ENTAO
        q1 := q1 + 1
     FIMSE
     SE p_menor = 2 ENTAO
        q2 := q2 + 1
     FIMSE
     SE p_menor = 3 ENTAO
        q3 := q3 + 1
     FIMSE
FIMPARA

ESCREVA(q1, q2, q3)
Fimalgoritmo