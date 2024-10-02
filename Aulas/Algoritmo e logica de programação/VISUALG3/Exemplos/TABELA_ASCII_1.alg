Algoritmo "TABELA_ASCII"
// Disciplina  : Tecnicas de Programação (Lógica)
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Monta tabela ASCII com valores em decimal,binário,hexadecimal
// Autores     : Yasmim Sehn, Gustavo Marcolla, Cindel Monteiro, Sarah Hemelly
// Data atual  : 06/04/2016
Var
   // Seção de Declarações das variáveis
   indice,b_INDICE,H_INDICE : INTEIRO
   X,Y : REAL
   L : LOGICO
   BIN, HEX : CARACTER
   BASE, DECIMAL, XP : INTEIRO
   XRESTO: INTEIRO
   LETRAS, XC: CARACTER
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   ESCREVAL( "***  TABELA ASCII  ***")
   ESCREVAL ("Decimal   Caracter  Binario   Hexadecimal")
   ESCREVAL()
   PARA INDICE DE 1 ATE 255 FACA
      // montagem do numero em binario
      XC <- ""
      DECIMAL <- indice
      BASE <- 2
      PARA B_indice de 1 ate 8 faca
         XRESTO <- (DECIMAL MOD BASE)
         SE XRESTO = 0 ENTAO
            XC <- "0" + XC
         SENAO
            XC <- "1" + XC
         FIMSE
         DECIMAL <- (DECIMAL DIV BASE)
      FIMPARA
      BIN <- XC
      // montagem do mumero em hexadecimal
      DECIMAL <- indice
      XC <- ""
      BASE <- 16
      LETRAS <- "ABCDEF"
      PARA H_indice de 1 ATE 4 FACA
         XRESTO <- (DECIMAL MOD BASE)
         SE XRESTO  = 0 ENTAO
            XC <- "0" + XC
         SENAO
            SE XRESTO > 9 ENTAO
               XP <- XRESTO -9
               XC <- COPIA (LETRAS, XP, 1) + XC
            SENAO
               XC <- NUMPCARAC(XRESTO) + XC
            FIMSE
         FIMSE
         DECIMAL <- (DECIMAL DIV BASE)
      FIMPARA
      HEX <- XC
      ESCREVAL(indice: 3,"     ",Carac(indice),"     ",bin,"     ",hex)
      X <- INDICE /20
      Y <- INT(INDICE /20)
      SE X = Y ENTAO
         ESCREVA("TECLE <<ENTER>>")
         LEIA(L)
         LIMPATELA
         ESCREVAL("***TABELA ASCII***")
         ESCREVAL("Decimal    Caracter    Binario     Hexadecimal")
         ESCREVAL()
      FIMSE
   FIMPARA
Fimalgoritmo

