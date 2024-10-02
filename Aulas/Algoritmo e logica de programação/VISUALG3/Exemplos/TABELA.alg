algoritmo "semnome"
// Função :
// Autor :
// Data : 06/04/2016
// Seção de Declarações
var

INDICE : INTEIRO
X,Y : REAL
L : LOGICO
Bin,Hex : CARACTER

XP, DECIMAL, XRESTO :INTEIRO
BASE, B_INDICE,H_INDICE :INTEIRO
LETRAS, XC : CARACTER

inicio
// Seção de Comandos

ESCREVAL("***  T A B E L A   A S C I I   ***")
ESCREVAL("Dec Caracter Binário Hexadecimal")
escreval()

PARA indice de 1 ATE 255 FACA   // LAÇO PRINCIPAL

   // AQUI COMECA A BASE BINARIA

   XC <- ""
   DECIMAL <- INDICE
   BASE <- 2
   PARA B_indice DE 1 ATE 8 FACA
      XRESTO <- (DECIMAL MOD BASE)
      SE XRESTO = 0 ENTAO
         XC <- "0" + XC
      SENAO
         XC <- "1" + XC
      FIMSE
      DECIMAL <- (DECIMAL DIV BASE)
   FIMPARA

   // AQUI COMEÇA O HEXA

   bin <- XC
   XC <- ""
   DECIMAL <- INDICE

   BASE <- 16
   LETRAS <- "ABCDEF"
   PARA H_indice DE 1 ATE 4 FACA
      XRESTO <- (DECIMAL MOD BASE)
      SE XRESTO = 0 ENTAO
         XC <- "0" + XC
      SENAO
         SE XRESTO > 9 ENTAO
            XP <- XRESTO - 9
            XC <- COPIA(LETRAS,XP,1) + XC
         SENAO
            XC <- NUMPCARAC(XRESTO) + XC
         FIMSE
      FIMSE
      DECIMAL <- (DECIMAL DIV BASE)
   FIMPARA
   HEX <- XC

   SE INDICE = 9 ENTAO
      ESCREVAL(Indice:3,"     <TAB>     ",bin,"      ",hex)
   SENAO
      ESCREVAL(Indice:3,"    ",CARAC(indice),"    ",bin,"      ",hex)
   FIMSE

   X <- INDICE /20
   Y <- INT(indice/20)
   SE X = Y ENTAO
      ESCREVA("TECLE <<ENTER>> ")
      LEIA(L)
      LIMPATELA
      ESCREVAL("***  T A B E L A   A S C I I   ***")
      ESCREVAL("Dec    Caracter  Binário  Hexadecimal")
      escreval()
   FIMSE
FIMPARA

fimalgoritmo
