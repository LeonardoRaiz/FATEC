Algoritmo "EXMPLO1"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor : Antonio Carlos Nicolodi 
// Função :
// Autor : Antonio
// Data : 01/06/2015
var
// Seção de Declarações das variáveis 
    A,B,C,X,J,K,TEMP : INTEIRO
    XVET : VETOR[1..3] DE CARACTER
inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   ESCREVAL("Digite 3 numeros inteiro!")
   ESCREVA("Primeiro numero: ")
   LEIA(A)
   ESCREVA("Segundo numero: ")
   LEIA(B)
   ESCREVA("Terceiro numero: ")
   LEIA(C)
   
   xvet[1] := A
   xvet[2] := B
   xvet[3] := C

   PARA J DE 1 ATÉ 3 FAÇA
      PARA K DE J ATÉ 3 FAÇA
          SE xvet[J] > xvet[K] ENTÃO
             TEMP := xvet[J]
             xvet[J] := xvet[K]
             xvet[K] := TEMP
          FIMSE
      FIMPARA
   FIMPARA

   ESCREVAL("ESCOLHA AS OPÇOES ABAIXO")
   ESCREVAL("1 - ORDEM CRESCENTE")
   ESCREVAL("2 - ORDEM DECRESCENTE")
   ESCREVAL("3 - ORDEM DE ENTRADA")
   ESCREVA("Digite: ")
   LEIA(X)
   SE X >= 1 E X <= 3 ENTÃO
      SE X = 1 ENTÃO
         ESCREVAL("ORDEM ALFABÉTICA CRESCENTE !!!")
         PARA J DE 1 ATÉ 3 FAÇA
            ESCREVAL(J," VALOR ",xvet[J])
         FIMPARA
      FIMSE

      SE X = 2 ENTÃO
         ESCREVAL("ORDEM ALFABÉTICA DECRESCENTE !!!")
         PARA J DE 3 ATÉ 1 PASSO -1 FAÇA
            ESCREVAL(J," VALOR ",xvet[J])
         FIMPARA
      FIMSE

      SE X = 3 ENTÃO
         ESCREVAL("ORDEM DE ENTRADA !!!")
         ESCREVAL(1," VALOR ",A)
         ESCREVAL(2," VALOR ",B)
         ESCREVAL(3," VALOR ",C)
      FIMSE
   FIMSE










fimalgoritmo