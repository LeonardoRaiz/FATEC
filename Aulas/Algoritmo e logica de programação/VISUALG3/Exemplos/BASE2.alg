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
  BASE <- 2
PARA indice DE 1 ATE 8 FACA
   XRESTO <- (DECIMAL MOD BASE)
   SE XRESTO = 0 ENTAO
      XC <- "0" + XC
   SENAO
      XC <- "1" + XC
   FIMSE
   DECIMAL <- (DECIMAL DIV BASE)
FIMPARA
ESCREVAL("O NÚMERO EM BIN É: ",XC)
fimalgoritmo
