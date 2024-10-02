Algoritmo "Exercicio 2 Live"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/12/2020
Var
// Seção de Declarações das variáveis 
notas : vetor [1..5, 1..3] DE inteiro
i, j : inteiro
maior, menor : inteiro
cont_p1, cont_p2, cont_p3 : inteiro
p_menor : inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 5 FACA
     PARA j DE 1 ATE 3 FACA
          ESCREVA("A nota do aluno",i," na prova ",j," :")
          LEIA(notas[i,j])
     FIMPARA
FIMPARA

cont_p1 := 0
cont_p2 := 0
cont_p3 := 0

PARA i DE 1 ATE 5 FACA
     //Relatorio
     ESCREVAL("Aluno :", i)
     maior := notas[i, 1]
     menor := notas[i, 1]
     p_menor := 1
     
     PARA j DE 1 ATE 3 FACA
          // Maior
          SE(notas[i,j] > maior)ENTAO
                        maior := notas[i,j]
          FIMSE
          // Menor
          SE(notas[i,j] < menor)ENTAO
                        menor := notas[i,j]
                        p_menor := j
          FIMSE
     FIMPARA
     
     ESCREVAL("A maior nota do aluno",i," foi de: ", maior)
     
     SE p_menor = 1 ENTAO
        cont_p1 := cont_p1 + 1
     FIMSE
     
     SE p_menor = 2 ENTAO
        cont_p2 := cont_p2 + 1
     FIMSE
     
     SE p_menor = 3 ENTAO
        cont_p3 := cont_p3 + 1
     FIMSE
     
FIMPARA

ESCREVAL("Quantidade de notas baixas na P1: ", cont_p1)
ESCREVAL("Quantidade de notas baixas na P2: ", cont_p2)
ESCREVAL("Quantidade de notas baixas na P3: ", cont_p3)
Fimalgoritmo