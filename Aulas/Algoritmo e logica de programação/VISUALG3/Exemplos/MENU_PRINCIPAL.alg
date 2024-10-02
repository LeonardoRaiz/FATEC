Algoritmo "semnome"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/09/2015
Var
   // Seção de Declarações das variáveis
   numero : vetor[1..5] de inteiro
   NOME   : vetor[1..5] de Caracter
   IDADE  : vetor[1..5] de caracter
   indice : inteiro
     L,XL :  LOGICO
    OPCAO : Caracter


   
FUNÇÃO PESQUISA(XV: INTEIRO) : LOGICO
VAR II : INTEIRO
   A : LOGICO
INICIO
   A := FALSO
   PARA II DE 1 ATÉ 5 FAÇA
      SE numero[ii] = xv ENTÃO
         A := VERDADEIRO
         interrompa
      FIMSE
   FIMPARA
   RETORNE A
FIMFUNÇÃO


PROCEDIMENTO INCLUIR
VAR II  : INTEIRO
     L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter
INICIO
   limpaTela
   Escreval(" INCLUIR ")
   SE indice <= 5 ENTÃO
      xnum := 0
      Xnom := ""
      xidd := ""
      L := VERDADEIRO
      ENQUANTO L FAÇA
         ESCREVA("DIGITE O NUMERO",Indice," : ")
         LEIA(xnum)
         L := PESQUISA(xnum)
      FIMENQUANTO
      ESCREVA("DIGITE o Nome : ")
      LEIA(xnom)
      ESCREVA("DIGITE a Idade: ")
      LEIA(xidd)

      Numero[indice] := xnum
      Nome[indice]   := xnom
      Idade[indice]  := xidd
      indice := indice + 1
   FIMSE

   ESCREVAL(" ")
   ESCREVA("TECLE <ENTER> ")
   LEIA(XL)

FIMPROCEDIMENTO

PROCEDIMENTO CONSULTAR
VAR II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela

   Escreval(" CONSULTA ")

   PARA II DE 1 ATÉ 5 FAÇA
      ESCREVAL("[",II,"] -> ",NUMERO[II]," ",NOME[II]," ",IDADE[II])
   FIMPARA

   ESCREVAL(" ")
   ESCREVA("TECLE <ENTER> ")
   LEIA(XL)

FIMPROCEDIMENTO

PROCEDIMENTO EXCLUIR
VAR  II : INTEIRO
     L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter


INICIO
   limpaTela
   Escreval(" EXCLUIR ")
   xnum := 0
   L := FALSO
   ENQUANTO L FAÇA
      ESCREVA("DIGITE O NUMERO ",II," : ")
      LEIA(xnum)
      L := PESQUISA(xnum)
   FIMENQUANTO

   ESCREVAL("DIGITE o Nome : ",Nome[ii])
   ESCREVAL("DIGITE a Idade: ",Idade[ii])

   Nome[ii] := "  "
   Idade[ii]:= "  "

   ESCREVAL(" ")
   ESCREVA("TECLE <ENTER> ")
   LEIA(XL)

FIMPROCEDIMENTO


PROCEDIMENTO ALTERAR
VAR  II : INTEIRO
     L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela
   Escreval(" ALTERAÇÃO ")
   xnum := 0
   Xnom := ""
   xidd := ""
   L := Falso
   ENQUANTO L FAÇA
      ESCREVA("DIGITE O NUMERO : ")
      LEIA(xnum)
      L := PESQUISA(xnum)
   FIMENQUANTO

   ESCREVAL("DIGITE o Nome : ",Nome[ii])
   ESCREVAL("DIGITE a Idade: ",Idade[ii])

   ESCREVA("DIGITE o Nome : ")
   LEIA(xnom)
   ESCREVA("DIGITE a Idade: ")
   LEIA(xidd)

   Numero[II] := xnum
   Nome[ii]   := xnom
   Idade[ii]  := xidd

   ESCREVAL(" ")
   ESCREVA("TECLE <ENTER> ")
   LEIA(YL)

FIMPROCEDIMENTO

Inicio

   indice := 1
   L := VERDADEIRO
   OPCAO := ""
   ENQUANTO L FAÇA
      LIMPATELA
      ESCREVAL("   MENU   ")
      ESCREVAL("1-INCLUSÃO")
      ESCREVAL("2-CONSULTA")
      ESCREVAL("3-EXCLUSÃO")
      ESCREVAL("4-ALTERAÇÃO")
      ESCREVAL("5-FINALIZAR")
      ESCREVAL(" ")
      Escreva("Digite a opção:")
      Leia(opcao)
      ESCOLHA OPCAO FAÇA
         CASO "1"
              INCLUIR
         CASO "2"
              CONSULTAR
         CASO "3"
              EXCLUIR
         CASO "4"
              ALTERAR
         CASO "5"
              L := FALSO
      OUTROCASO
          ESCREVAL("OPÇÃO INVÁLIDA !!!")
          ESCREVAL(" ")
          ESCREVA("TECLE <ENTER> ")
          LEIA(XL)
      FIMESCOLHA
   FIMENQUANTO
Fimalgoritmo