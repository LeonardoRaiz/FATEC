Algoritmo "primos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/11/2018
Var
   Cont1, N, divisores, Cont2, primo: inteiro

Inicio
   para Cont1 de 1 ate 800 faca
      N <- Cont1
      divisores <- 0

      para Cont2 de 1 ate N faca
         se (N % Cont2 = 0) então
            divisores <- divisores + 1
         fimse
      fimpara
      se (divisores = 2) então
         primo <- primo + 1
         escreva(cont1:4)
      fimse
   fimpara
   escreval
   escreval("Total de números primos: ", primo)

Fimalgoritmo