Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2017
Var
   // Seção de Declarações das variáveis
   VetX,VetD,VetE : vetor[1..8] de caracter
   ACUMULA,TEMP:INTEIRO
   KCONTAR,INDICE: inteiro
   ELEMTEMP,ELEMENTO : caracter


FUNÇÃO PESQUISA(VEM: caracter):LOGICO
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

   VETX[1] <- "A"
   VETX[2] <- "B"
   VETX[3] <- "B"
   VETX[4] <- "C"
   VETX[5] <- "C"
   VETX[6] <- "C"
   VETX[7] <- "C"

   ACUMULA <- 0
   KCONTAR <- 0
   TEMP    <- 1
   INDICE  <- 1

   ENQUANTO INDICE < 8 FAÇA

      ACUMULA  <- 1
      ELEMENTO <- VETX[indice] // ELEMENTO DO VETOR
      TEMP     <- INDICE + 1
      ELEMTEMP <- VETX[TEMP]   // ELEMENTO DO VETOR

      SE ELEMENTO = ELEMTEMP ENTÃO
         SE (NÃO PESQUISA(ELEMENTO)) ENTÃO
            KCONTAR <- KCONTAR + 1  // CONTADOR DE VETOR DE ELEMENTOS
            VETE[KCONTAR] <- ELEMENTO  // VETOR DE ELEMENTOS DESTACADOS
            VETD[KCONTAR] <- NUMPCARAC(ACUMULA)  // A QUANTIDADE DE ELEMENTOS
         SENÃO
            SE TEMP < 8 ENTÃO
               ENQUANTO (ELEMENTO = ELEMTEMP) FAÇA
                  ACUMULA  <- ACUMULA + 1
                  TEMP     <- TEMP + 1
                  SE TEMP > 8 ENTÃO
                     TEMP <- TEMP - 1
                     ACUMULA<- ACUMULA - 1
                     INTERROMPA
                  FIMSE
                  ELEMENTO <- ELEMTEMP
                  ELEMTEMP <- VETX[TEMP]
               FIMENQUANTO
            FIMSE
         FIMSE
       FIMSE

      SE (NÃO PESQUISA(ELEMENTO)) ENTÃO
         KCONTAR <- KCONTAR + 1  // CONTADOR DE VETOR DE ELEMENTOS
         VETE[KCONTAR] <- ELEMENTO  // VETOR DE ELEMENTOS DESTACADOS
         VETD[KCONTAR] <- NUMPCARAC(ACUMULA)  // A QUANTIDADE DE ELEMENTOS
      FIMSE
      INDICE <- INDICE + 1

   FIMENQUANTO

   PARA INDICE DE 1 ATÉ 8 FAÇA
      SE CARACPNUM(VETD[INDICE]) <> 0 ENTÃO
         ESCREVAL(VETE[INDICE],":",VETD[INDICE])
      FIMSE
   FIMPARA


Fimalgoritmo