//
//
Algoritmo "semnome"
// Disciplna   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/11/2015
Var
// Seção de Declarações das variáveis 
   Matriz: Vetor[1..4,1..4] de Caracter
   i,x : Inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Limpatela
   PARA i DE 1 ATÉ 4 FAÇA
      PARA x DE 1 ATÉ 4 FAÇA
         Escreva("Linha: ",i," ")
         Escreva("Coluna: ",x," ")
         Leia(Matriz[x,i])
      FIMPARA
      Escreval(" ")
   FIMPARA
   
   Escreval(" ")
   Escreval(" Mostrando só a coluna 3 ")
   Escreval(" ")

   PARA i DE 1 ATÉ 4 FAÇA
        ESCREVAL(MATRIZ[i,3])
   FIMPARA
   
Fimalgoritmo

