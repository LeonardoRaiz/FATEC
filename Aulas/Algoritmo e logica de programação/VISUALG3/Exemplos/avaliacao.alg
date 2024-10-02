//  ---------------
//

Algoritmo "semnome"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/10/2015
Var
   // Seção de Declarações das variáveis
   ano : vetor[1..10] de inteiro
   i,a,x : inteiro
   med,xm : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Limpatela
   Escreval("Digite os anos com 4 numeros '9999' ou 0 para encerrar")
   PARA I DE 1 ATÉ 10 FAÇA
      Escreva("Digite o ano da pessoa (",i,"): ")
      LEIA(a)
      SE a > 0 ENTÃO
         ano[i] := 2015 - a
      SENÃO
         INTERROMPA
      FIMSE
   FIMPARA
   i := i - 1
   PARA x DE 1 ATÉ i FAÇA
      Escreval("A idade da ",x:2," pessoa é: ",ano[x])
      MED := (MED + ano[x])
   FIMPARA

   xM:= MED / i

   Escreval("Soma total das idades é: ",MED:4:1)
   Escreval("Número Total de pessoas: ",i:2)
   Escreval("A idade média calculada: ",xM:4:1)

Fimalgoritmo