Algoritmo "PADRAO.ALG"
// Disciplina  : [Linguagem e Lógica de programaçao]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Escreva um padrão de asteriscos na tela
// Autor(a)    : para a aluna "Ingrid Oliveira"
// Data atual  : 25/06/2015
Var
   // Seção de Declarações das variáveis
   X,Y,I,P : inteiro
   xMat : VETOR[1..4] de caracter
   xFLAG1,xFLAG2 : logico
   xTECLA : caracter
   xPADRAO: caracter
INICIO
// Seção de Comandos, procedimento, funções, operadores, etc...
   xFLAG1 := VERDADEIRO
   ENQUANTO xFLAG1 FAÇA
      LIMPATELA
      ESCREVAL("Digite um padrão de asteriscos na tela")
      ESCREVAL(" ")
      xFLAG2 := VERDADEIRO
      I := 1
      ENQUANTO xFLAG2 FAÇA
         ESCREVAL(" ")
         Escreva("Digite o ",I,"º padrão: ")
         LEIA(P)
         SE (P < 0) ENTÃO
            xFLAG2 := FALSO
         FIMSE
         xPadrao:= ""
         PARA Y := 1 ATÉ P FAÇA
            xPadrao := xPadrao + "*"  // preenche a variável
         FIMPARA
         xMat[I]:= xPadrao   // guarda a variável no vetor
         I := I + 1
         SE I > 3 ENTÃO
            xFLAG2 := FALSO
         FIMSE
      FIMENQUANTO
      
      LIMPATELA
      ESCREVAL(" ")
      ESCREVAL(" ============================== ")
      ESCREVAL(" ")
      PARA X := 1 ATÉ I-1 FAÇA
         P := compr(XMAT[X])
         ESCREVAL(" Padrão : ",P:2," = ",xMat[X])
      FIMPARA
      ESCREVAL(" ")
      ESCREVA("Continua? <S/N> ")
      LEIA(xTECLA)
      SE ((xTECLA = "n") OU (xTECLA = "N")) ENTÃO
         xFLAG1 := FALSO
      SENÃO
         XFLAG1 := VERDADEIRO
      FIMSE
   FIMENQUANTO
fimAlgoritmo