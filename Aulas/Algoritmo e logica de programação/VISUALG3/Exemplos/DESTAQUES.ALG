Algoritmo "destaques"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Gerar até 10 números e escolher (qual e qtos) são destaques
// Autor(a)    : Eu
// Data atual  : 12/09/2015
Var
   // Seção de Declarações das variáveis
   NUMEROS : VETOR[1..10] DE INTEIRO
   REMOVIDO: VETOR[1..10] DE INTEIRO
   INDICE,R1,CONTA,R2,XINS,G1 : INTEIRO

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
MUDACOR("AMARELO","FRENTE")
LIMPATELA
R2 := 0
CONTA := 0
ESCREVAL(" ")
ESCREVAL(" ============================================== ")
ESCREVA("QUANTOS NUMEROS (1-10): ")
LEIA(XINS)
SE XINS <= 10 ENTÃO
   PARA INDICE DE 1 ATÉ XINS FAÇA
      ENQUANTO G1 = 0 FAÇA
           G1 := RANDI(10)
      FIMENQUANTO
      NUMEROS[INDICE] := G1
      G1 := 0
   FIMPARA
   ESCREVA("Digite o destaque: ")
   LEIA(R1)
   PARA INDICE DE 1 ATÉ XINS FAÇA
      SE (NUMEROS[INDICE] = R1) ENTAO
         CONTA := CONTA + 1
      SENÃO
         R2 := R2 + 1
         SE R2 <= XINS ENTÃO
            REMOVIDO[R2] := NUMEROS[INDICE]
         FIMSE
      FIMSE
   FIMPARA

   ESCREVAL(" ")
   ESCREVAL("A SEQUENCIA É ")
   PARA INDICE DE 1 ATÉ XINS FAÇA
      ESCREVA(NUMEROS[INDICE])
   FIMPARA
   ESCREVAL(" ")
   ESCREVAL("O NUMERO DE REPETIÇÕES FOI: ",CONTA)
   ESCREVAL(" ")
   ESCREVAL("RESTOU A SEQUENCIA: ")
   G1 := 0 // REAPROVEITANDO A VARIÁVEL
   PARA INDICE DE 1 ATÉ XINS FAÇA
      G1 := REMOVIDO[INDICE]
      SE G1 <> 0 ENTÃO
         ESCREVA(G1)
      FIMSE
   FIMPARA
FIMSE

Fimalgoritmo
