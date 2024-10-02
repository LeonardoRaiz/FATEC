Algoritmo "Exercicio 2 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/07/2020
Var
// Seção de Declarações das variáveis 
notas : vetor [1..5,1..3] DE inteiro
i, j : inteiro
cont_p1, cont_p2, cont_p3 :inteiro
provas : vetor [1..3] DE inteiro
maior, menor, c_menor :inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 5 FACA
     PARA j DE 1 ATE 3 FACA
          ESCREVA("A nota do aluno ",i," na prova ",j," foi de: ")
          LEIA(notas[i,j])
     FIMPARA
FIMPARA

cont_p1 := 0
cont_p2 := 0
cont_p3 := 0
// Se o contador fosse um vetor
PARA i DE 1 ATE 3 FACA
     provas[i] := 0
FIMPARA

PARA i DE 1 ATE 5 FACA
     ESCREVAL("Aluno ", i)
     maior := notas[i,1]
     menor := notas[i,1]
     c_menor := 1
     PARA j DE 1 ATE 3 FACA
          //maior Nota
          SE (notas[i,j] > maior) ENTAO
             maior := notas[i,j]
          FIMSE
          // menor nota
          SE (notas[i,j] < menor) ENTAO
             menor := notas[i,j]
             c_menor := j
          FIMSE
     FIMPARA

     ESCREVAL("A maior nota foi de: ", maior)

     SE c_menor = 1 ENTAO
        cont_p1 := cont_p1 + 1
        //provas[1] := provas[1] + 1
        //ESCREVAL(provas[1])
     FIMSE

     SE c_menor = 2 ENTAO
        cont_p2 := cont_p2 + 1
        //provas[2] := provas[2] + 1
        //ESCREVAL(provas[2])
     FIMSE
     
     SE c_menor = 3 ENTAO
        cont_p3 := cont_p3 + 1
        //provas[3] := provas[3] + 1
        //ESCREVAL(provas[3])
     FIMSE

     provas[c_menor] := provas[c_menor] + 1
FIMPARA

ESCREVAL("Quantidade P1: ", cont_p1)
ESCREVAL("Quantidade P2: ", cont_p2)
ESCREVAL("Quantidade P3: ", cont_p3)

PARA i DE 1 ATE 3 FACA
     ESCREVAL("Quantidade P",i," :", provas[i])
FIMPARA

Fimalgoritmo