Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2017
Var
   // Seção de Declarações das variáveis
   vetx,VETd,VETE : vetor[1..8] de inteiro
   ELEMENTO,ACUMULA,TEMP:INTEIRO
   ELEMTEMP,KCONTAR,INDICE: inteiro

FUNÇÃO PESQUISA(VEM: INTEIRO):LOGICO
VAR RET : LOGICO
   II  : INTEIRO
INICIO
   RET <- FALSO
   PARA II DE 1 ATÉ 8 FAÇA
      SE (VETE[II] = VEM) ENTÃO
         RET <- VERDADEIRO
      FIMSE
   FIMPARA
   RETORNE RET
FIMFUNÇÃO

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   VETX[1] <- 1
   VETX[2] <- 3
   VETX[3] <- 1
   VETX[4] <- 2
   VETX[5] <- 2
   VETX[6] <- 2
   VETX[7] <- 3

   ACUMULA <- 0
   KCONTAR <- 0
   TEMP <- 1
   INDICE <- 0
   ENQUANTO INDICE < 8 FAÇA

      SE TEMP > 0 ENTÃO
         ELEMENTO <- VETX[TEMP] // ELEMENTO DO VETOR
      FIMSE
      
      SE (NÃO PESQUISA(ELEMENTO)) ENTÃO
         KCONTAR <- KCONTAR + 1  // CONTADOR DE VETOR DE ELEMENTOS
      FIMSE

      ACUMULA <- 0

      TEMP <- INDICE - 1
      SE TEMP < 0 ENTÃO
         TEMP <- 0
      FIMSE

      ELEMTEMP <- VETX[TEMP+1]

      SE TEMP < 8 ENTÃO
         ENQUANTO (ELEMENTO = ELEMTEMP) FAÇA
            TEMP <- TEMP + 1
            SE TEMP > 7 ENTÃO
               //              TEMP <- 7
               INTERROMPA
            FIMSE
            ELEMTEMP <- VETX[TEMP]
            ACUMULA <- ACUMULA + 1
         FIMENQUANTO
         INDICE <- TEMP
      FIMSE

      SE KCONTAR > 0 ENTÃO
         VETE[KCONTAR] <- ELEMENTO  // VETOR DE ELEMENTOS DESTACADOS
      FIMSE

      VETD[KCONTAR] <- ACUMULA  // VETOR COM A QUANTIDADE DE ELEMENTOS
      INDICE <- INDICE + 1

   FIMENQUANTO

   PARA INDICE DE 1 ATÉ 8 FAÇA
      SE VETD[INDICE] <> 0 ENTÃO
         ESCREVAL(VETE[INDICE],":",VETD[INDICE])
      FIMSE
   FIMPARA


Fimalgoritmo