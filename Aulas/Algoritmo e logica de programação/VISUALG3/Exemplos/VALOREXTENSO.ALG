Algoritmo "ValorExtensoA1"
// Disciplina : [Lógica de Programação]
// Função     : Escreve um valor monetário por extenso.
// Autores    : Antonio e Mário Leite
//E-mails     : marleite@gmail.com   e professor.antonio.nicolodi@gmail.com
//------------------------------------------------------------------------------------
Var ValorNum: real
    ValorExt: caractere

// retorna uma string c/ todos da Direita p/ Esquerda
Funcao Direita(STRING : caracter; QTDE : inteiro) : caracter
var
   iDIR,xDIR  : inteiro
   sDIR,cDIR : caracter
inicio
   xDIR <- Compr(STRING)
   se QTDE > xDIR entao
      QTDE <- xDIR
   fimse
   sDIR <- ""
   para iDIR de xDIR  ate 1 passo -1 faca
      cDIR <- copia(STRING,iDIR,1)
      sDIR <- cDIR + sDIR
      QTDE <- QTDE - 1
      se QTDE < 1 entao
         interrompa
      fimse
   fimpara
   Retorne sDIR
Fimfuncao

// retorna uma string com a quantidade [QTDE] de ZEROS ex. 00000000
Funcao Zeros(QTDE : inteiro) : caracter
var
   iZER : inteiro
   rZER : Caracter
inicio
   rZER <- ""
   para iZER de 1 ate QTDE faca
      rZER <- rZER + "0"
   fimpara
   Retorne rZER
Fimfuncao

// retorna uma string retirando os espaços da Esquerda para a direita
Funcao Ltrim(xSTRING : caracter) : caracter
var
   iLTR,xLTR  : inteiro
   sLTR,cLTR, ELTR : caracter
inicio
   xLTR <- Compr(xSTRING)
   sLTR <- ""
   iLTR <- 1
   eLTR <- Carac(32)
   cLTR <- copia(xSTRING,iLTR,1)
   Enquanto (cLTR = eLTR) faca
      iLTR <- iLTR + 1
      cLTR <- copia(xSTRING,iLTR,1)
      se iLTR > xLTR entao
         cLTR <- ""
      fimse
   Fimenquanto
   sLTR <- COPIA(xSTRING,iLTR,XLTR)
   Retorne sLTR
Fimfuncao

Funcao MASCARA(MVALOR: REAL) : CARACTER
VAR
   MPARTE_I,MC : INTEIRO
   MCENTAVO    : REAL
   MTEXTO,MTEMP,MCENT1,MCENT2 : CARACTER
INICIO
   MPARTE_I <- INT(MVALOR)                        // RETIRE A PARTE INTEIRA
   MCENTAVO <- (MVALOR - MPARTE_I) * 100
   MC       <- INT(MCENTAVO+0.50)
   MCENT1   <- NUMPCARAC(MC)
   MCENT2   <- ZEROS(2-COMPR(MCENT1))+MCENT1
   MTEMP    <- NUMPCARAC(MPARTE_I)+"."+MCENT2
   MTEXTO   <- ZEROS(9-COMPR(MTEXTO))+MTEMP         // PREENCHA C/ ZEROS
   MTEXTO   <- DIREITA(MTEXTO,12)                 // PEGUE OS 12 CAR. DA MASCARA
   RETORNE MTEXTO
FIMFUNCAO

// =============================================================
Funcao ValorPorExtenso(QVALOR:REAL): CARACTER
// =============================================================
VAR

   A : VETOR[0..9] DE CARACTER
   B : VETOR[1..19] DE CARACTER
   C : VETOR[1..9] DE CARACTER
   V : VETOR[1..4] DE CARACTER
   MOEDAS: VETOR[1..4] DE CARACTER
   VALOR, EXT,  V1, V2, V3, V4 : CARACTER
   P, ST1, ST2, ST3, STG, CT, E100 : INTEIRO
   VA, CONEC, EXT1, TEXTO : CARACTER

INICIO

   VALOR   <- MASCARA(QVALOR)          // RETORNA NO FORMATO

   SE (QVALOR >= 0.01) E (QVALOR <= 999999999.99) ENTAO

      MOEDAS[1] := "Real"
      MOEDAS[2] := "Reais"
      MOEDAS[3] := "Centavo"
      MOEDAS[4] := "Centavos"

      EXT <- " "

      A[0] <- "Cento"
      A[1] <- "Cem"
      A[2] <- "Duzentos"
      A[3] <- "Trezentos"
      A[4] <- "Quatrocentos"
      A[5] <- "Quinhentos"
      A[6] <- "Seiscentos"
      A[7] <- "Setecentos"
      A[8] <- "Oitocentos"
      A[9] <- "Novecentos"

      B[1] <- "Um"
      B[2] <- "Dois"
      B[3] <- "Tres"
      B[4] <- "Quatro"
      B[5] <- "Cinco"
      B[6] <- "Seis"
      B[7] <- "Sete"
      B[8] <- "Oito"
      B[9] <- "Nove"
      B[10]<- "Dez"
      B[11]<- "Onze"
      B[12]<- "Doze"
      B[13]<- "Treze"
      B[14]<- "Quatorze"
      B[15]<- "Quinze"
      B[16]<- "Dezesseis"
      B[17]<- "Dezesete"
      B[18]<- "Dezoito"
      B[19]<- "Dezenove"

      C[1] <- "Dez"
      C[2] <- "Vinte"
      C[3] <- "Trinta"
      C[4] <- "Quarenta"
      C[5] <- "Cinquenta"
      C[6] <- "Sessenta"
      C[7] <- "Setenta"
      C[8] <- "Oitenta"
      C[9] <- "Noventa"

      P  <- 1
      STG<- 0
      V[1] <- COPIA(VALOR,1,3)       // 999
      V[2] <- COPIA(VALOR,4,3)       // 999
      V[3] <- COPIA(VALOR,7,3)       // 999
      V[4] <- " "+COPIA(VALOR,11,2)  // 99

      PARA P DE 1 ATE 4 FACA

         ST1 <- 0
         ST2 <- 0
         ST3 <- 0
         VA  <- V[P]
         CT  <- 1

         ENQUANTO CARACPNUM(COPIA( VA,1,1)) <> 0 FACA
            SE CARACPNUM(COPIA( VA,1,1)) =  CT ENTAO
               SE  (STG = 1) ENTAO
                  //                  SE  (P <> 4) ENTAO
                  //                     CONEC <- ", "
                  //                  SENAO
                  CONEC <- " E "
                  //                  FIMSE
               FIMSE
               EXT1 <- A[CT]
               SE (CARACPNUM(COPIA(VA,1,1)) = 1)  E (CARACPNUM(COPIA( VA,2,2)) <> 0) ENTAO
                  EXT1 <- A[0]
               FIMSE
               SE  (STG = 0) ENTAO
                  EXT <- EXT +  EXT1
               SENAO
                  EXT <- EXT +  CONEC +  EXT1
               FIMSE
               ST1 <- 1
               INTERROMPA
            FIMSE
            CT <- CT + 1
            SE  (CT = 10) ENTAO
               INTERROMPA
            FIMSE
         FIMENQUANTO

         CT <- 2

         ENQUANTO ( CARACPNUM(COPIA( VA,2,1)) <> 0) E (CARACPNUM(COPIA( VA,2,1)) <> 1)  FACA
            SE (CARACPNUM(COPIA(VA,2,1)) =  CT) ENTAO
               EXT1 <- C[CT]
               SE ((ST1 = 0) E (STG=0))  ENTAO
                  EXT <- EXT + EXT1
               SENAO
                  EXT <- EXT + " E " + EXT1
               FIMSE
               ST2 <- 1
               INTERROMPA
            FIMSE
            CT <- CT + 1
            SE (CT = 10) ENTAO
               INTERROMPA
            FIMSE
         FIMENQUANTO
         CT <- 1

         ENQUANTO (CARACPNUM(COPIA(VA,2,1)) = 1) FACA
            SE (CARACPNUM(COPIA(VA,2,2)) =  CT)  ENTAO
               EXT1 <- B[CT]
               SE ((ST1 = 0) E (ST2 = 0)) E (STG = 0) ENTAO
                  EXT <- EXT + EXT1
               SENAO
                  EXT <- EXT + " E " + EXT1
               FIMSE
               ST3 <- 1
               INTERROMPA
            FIMSE
            CT <- CT + 1
            SE (CT = 20) ENTAO
               INTERROMPA
            FIMSE
         FIMENQUANTO
         CT <- 1

         ENQUANTO (CARACPNUM(COPIA(VA,2,1)) = 0) OU (CARACPNUM(COPIA(VA,2,1)) <> 1) FACA
            SE (CARACPNUM(COPIA(VA,3,1)) =  CT) ENTAO
               EXT1 <- B[CT]
               SE ((ST1 = 0) E (ST2 = 0)) E (STG = 0) ENTAO
                  EXT <- EXT + EXT1
               SENAO
                  EXT <- EXT + " E " + EXT1
               FIMSE
               ST3 <- 1
               INTERROMPA
            FIMSE
            CT <- CT + 1
            SE (CT = 10) ENTAO
               INTERROMPA
            FIMSE
         FIMENQUANTO

         SE  ((( (ST1 = 1) OU (ST2 = 1)) OU (ST3 = 1) ) OU ((P = 3) E (INT(CARACPNUM(VALOR)) <> 0)) )  ENTAO
            SE (P = 1) ENTAO
               SE (CARACPNUM(V[1]) <> 0) E (CARACPNUM(V[2]) = 0) E (CARACPNUM(V[3]) = 0) ENTAO
                  SE (CARACPNUM(VA) = 1) ENTAO
                     EXT <- EXT + " MILHAO DE"
                  SENAO
                     EXT <- EXT + " MILHOES DE"
                  FIMSE
               SENAO
                  SE (CARACPNUM(V[1])  <> 0) E ((CARACPNUM(V[2]) <> 0) OU (CARACPNUM(V[3]) <> 0)) ENTAO
                     SE (CARACPNUM(VA) = 1) ENTAO
                        EXT <- EXT + " MILHAO"
                     SENAO
                        EXT <- EXT + " MILHOES"
                     FIMSE
                  FIMSE
               FIMSE
            FIMSE

            SE (P = 2) ENTAO
               EXT <- EXT + " MIL"
            FIMSE

            SE (P = 3) ENTAO
               SE (INT(CARACPNUM(VALOR)) = 1) ENTAO
                  EXT <- EXT + " " + LTRIM(MOEDAS[1])    // REAL
               SENAO
                  EXT <- EXT + " " + LTRIM(MOEDAS[2])    // REAIS
               FIMSE
            FIMSE

            SE (P = 4) ENTAO
               SE (CARACPNUM(VA) = 1) ENTAO
                  EXT <- EXT + " " + LTRIM(MOEDAS[3])    // CENTAVO
               SENAO
                  EXT <- EXT + " " + LTRIM(MOEDAS[4])    // CENTAVOS
               FIMSE
            FIMSE
            STG <- 1
         FIMSE
      FIMPARA

      EXT <- MAIUSC(EXT)

      //* ----- Verifica se a unidade inicial comeca c/ ou s/ o H. (MIL) -----

      SE (INT(CARACPNUM(VALOR)) > 999) ENTAO
         E100   <- POS("UM", EXT)
         SE ((E100 > 0) E (POS("MIL", EXT)>0)) ENTAO
            EXT <- "H" + LTRIM(EXT)
         FIMSE
      FIMSE

      E100<- POS("HUM",EXT)
      SE ((E100 <> 0) E (POS("CENT",EXT)<> 0)) ENTAO
         EXT  <- Copia( EXT, E100+1,Compr(EXT))
      FIMSE
   SENAO

      SE (Int(QVALOR) = 0) ENTAO
         EXT <- "Zero"
      FIMSE
      SE ( QVALOR < 0)   ENTAO
         EXT <- "Valor Negativo"
      FIMSE
      SE ( QVALOR > 999999999.99)  ENTAO
         EXT <- "Valor muito alto"
      FIMSE

   FIMSE

   //*---------------------------------------------------------------------

   TEXTO <- LTRIM(EXT)
   RETORNE TEXTO

FimFuncao

//===========================================================================
//Programa principal
Inicio
   ValorExt <- ""
   LimpaTela
   Escreva("Digite qualquer Valor [até 999999999.99]: ")
   Leia(ValorNum)
   ValorExt <- ValorPorExtenso(ValorNum)
   Escreval("")
   Escreval(ValorExt)
   Escreval

FimAlgoritmo
