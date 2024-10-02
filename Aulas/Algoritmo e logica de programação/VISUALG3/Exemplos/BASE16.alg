algoritmo "semnome"
// Função :
// Autor :
// Data : 06/04/2016
// Seção de Declarações
var
XP, DECIMAL, XRESTO :INTEIRO
BASE, INDICE :INTEIRO
LETRAS, XC : CARACTER
inicio
// Seção de Comandos
  ESCREVA("Digite um número decimal : ")
  LEIA(DECIMAL)  // ESTE COMANDO FAZ A LEITURA DE
  BASE <- 16
  LETRAS <- "ABCDEF"
PARA indice DE 1 ATE 4 FACA
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
ESCREVAL("O NÚMERO EM HEXADECIMAL É: ",XC)
fimalgoritmo
