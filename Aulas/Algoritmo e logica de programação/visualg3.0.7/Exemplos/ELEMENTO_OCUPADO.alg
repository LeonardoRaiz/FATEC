Algoritmo "semnome"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Pede um valor e o elemento e coloca num VETOR
// Autor(a)    : EU MESMO !
// Data atual  : 17/09/2015
Var
   // Seção de Declarações das variáveis
   Matriz : Vetor[1..10] de inteiro
   VALOR,ELEMENTO,indice : Inteiro
   RESPOSTA : caracter
   FLAG : LOGICO

PROCEDIMENTO SUBALGORITMO(VALOR, ELEMENTO: INTEIRO)
VAR OK: LOGICO
   MSG: caracter
inicio
   OK := VERDADEIRO
   MSG:= "Tudo OK !!!"
   SE ELEMENTO > 10 ENTÃO
      ELEMENTO := 10
   FIMSE
   SE (MATRIZ[ELEMENTO] <> 0) ENTÃO
      OK  := FALSO
      MSG := "Está ocupado "
   FIMSE
   SE OK ENTÃO
      MATRIZ[ELEMENTO] := VALOR
   FIMSE
   ESCREVAL(" ")
   ESCREVA(MSG)
   LEIA(OK)
FIMPROCEDIMENTO

//  Aqui inicia o programa

INICIO
   // Seção de Comandos, procedimento, funções, operadores, etc...
   FLAG := VERDADEIRO
   PARA indice DE 1 ATÉ 10 FAÇA
      MATRIZ[indice] := 0
   FIMPARA
   ENQUANTO FLAG FAÇA
      LIMPATELA
      ESCREVAL("* VETOR *")
      ESCREVAL(" ")
      ESCREVA("VALOR: ")
      LEIA(VALOR)
      ESCREVAL(" ")
      ESCREVA("ELEMENTO: ")
      LEIA(ELEMENTO)
// ==================================================================
      SUBALGORITMO(VALOR,ELEMENTO)  // SUBALGORITMO ==> NOME SUJERIDO
      PARA indice DE 1 ATÉ 10 FAÇA
         ESCREVAL(MATRIZ[indice])
      FIMPARA
// ==================================================================
      ESCREVAL(" ")
      ESCREVAL(" ")
      ESCREVA("Deseja continuar <S/N> ? ")
      LEIA(Resposta)
      SE (Resposta = "N") OU (Resposta = "n") ENTÃO
         FLAG := Falso
      FIMSE
   FIMENQUANTO
Fimalgoritmo

