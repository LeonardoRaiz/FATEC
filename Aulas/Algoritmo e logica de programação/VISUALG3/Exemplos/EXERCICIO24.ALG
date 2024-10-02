Algoritmo "exercicio24"
// Disciplina: [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Faça um algoritmo que receba N números e mostre positivo,
// negativo ou zero para cada número.
Var
   // Seção de Declarações das variáveis
   op,n:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   op<-1
   enquanto op=1 faca
      escreval("Insira um numero")
      leia(n)

      se n<0 entao
         escreval(" Numero Negativo")
      senao
         se n=0 entao
            escreval("Numero igual a zero")
         senao
            se n>0 entao
               escreval("Numero positivo")

            fimse
         fimse
      fimse



      escreval("1- Continuar   2- Sair")
      leia(op)

   fimenquanto
   fimalgoritmo