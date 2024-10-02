Algoritmo "NUMEROS_REPETIDOS"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Acha a quantidade de números repetidos num vetor
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2017
Var
   // Seção de Declarações das variáveis
   vetx,VETd,VETE : vetor[1..11] de inteiro
   ELEMENTO,ACUMULA,TEMP,TAM:INTEIRO
   ELEMTEMP,KCONTAR,INDICE: inteiro

FUNÇÃO PESQUISA(VEM: INTEIRO):LOGICO
VAR RET : LOGICO
   II  : INTEIRO
INICIO
   RET <- FALSO
   PARA II DE 1 ATÉ TAM FAÇA
      SE (VETE[II] = VEM) ENTÃO
         RET <- VERDADEIRO
      FIMSE
   FIMPARA
   RETORNE RET
FIMFUNÇÃO

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   TAM <- 10

   VetX[1] <- 2
   VetX[2] <- 3
   VetX[3] <- 3
   VetX[4] <- 5
   VetX[5] <- 5
   VetX[6] <- 6
   VetX[7] <- 9
   VetX[8] <- 10
   VetX[9] <- 15
   VetX[10] <- 15

   ACUMULA <- 0
   KCONTAR <- 0
   TEMP <- 1
   INDICE <- 1
   ENQUANTO INDICE <= TAM FAÇA

      ELEMENTO<- VETX[indice] // ELEMENTO DO VETOR
      ACUMULA <- 1

      SE (NÃO PESQUISA(ELEMENTO)) ENTÃO
         KCONTAR <- KCONTAR + 1  // CONTADOR DE VETOR DE ELEMENTOS
         VETE[KCONTAR] <- ELEMENTO  // VETOR DE ELEMENTOS DESTACADO
         VETD[KCONTAR] <- ACUMULA  // VETOR COM A QUANTIDADE DE ELEMENTOS
      Fimse

      TEMP <- INDICE + 1
      ELEMTEMP <- VETX[TEMP]
//    AQUI ESTÁ O SEGREDO
      SE (ELEMENTO = ELEMTEMP) E (ELEMENTO <> 0) ENTÃO
         ENQUANTO (ELEMENTO = ELEMTEMP)  FAÇA
            TEMP <- TEMP + 1
            ELEMTEMP<- VETX[TEMP]
            ACUMULA <- ACUMULA + 1
         FIMENQUANTO
      SENÃO
         ACUMULA <- 1
      FIMSE
      VETD[KCONTAR] <- ACUMULA  { COM A QUANTIDADE DE ELEMENTOS}
      INDICE <- TEMP

   FIMENQUANTO

   PARA INDICE DE 1 ATÉ TAM FAÇA
      SE VETD[INDICE] <> 0 ENTÃO
         ESCREVAL(VETE[INDICE],":",VETD[INDICE])
      FIMSE
   FIMPARA


Fimalgoritmo