algoritmo "Extenso4"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Função: Calcula os passos de um caracol para subir o poço
// Autor    : Antonio Carlos Nicolodi
// Data     : 20/04/2015 
var
   ate20: vetor[1..19] de literal
   dezena: vetor[1..9] de literal
   centena: vetor[1..9] de literal
   Milhar: vetor[1..3] de literal
   XPARTES: vetor[1..4] de literal
   MONTAGEM, XPRIM, XSECN, XTERC, XDECIMAL, STRING: Caracter
   xval, i, x, valor, XCOMPt: Inteiro

inicio
   Textos <- ""

   Escreva("Informe o valor: ")
   leia (valor)

   STRING   := NUMPCARAC(VALOR)
   XCOMPt   := COMPR(VALOR)
   XVAL     := 11 - XCOMPt
   xdecimal := DECIMAL(STRING)
   STRING   := ESPACO(XVAL)+STRING
   MONTAGEM := ""
   XPRIM    := COPIA(STRING,1,3) // CENTENAS/DEZENA/UNIDADE DE MILHOES
   XSECN    := COPIA(STRING,1,3) // CENTENAS/DEZENA/UNIDADE DE MILHARES
   XTERC    := COPIA(STRING,1,3) // CENTENAS/DEZENA/UNIDADE DE UNIDADE
   
   xPARTES[1] := XPRIM
   xPARTES[2] := XSECN
   xPARTES[3] := XTERC
   xPARTES[4] := XDECIMAL

   PARA I DE 1 TO 4 FACA
      SE (nao Vazio(xprim)) entao
      X := 1
      ENQUANTO (X < 4) FACA
         CAR := COPIA(XPRIM,X,1)
         Escolha X
             Caso 1:
         SE (E_NUM(CAR) E (X = 1)) ENTAO
            Ccc := CaracpNum(Car)
            Car := Centena[Ccc]
         FIMSE
         Montagem1 := Montagem1 + Car
         X := X + 1
      FIMENQUANTO


   Escreval(Textos)

fimalgoritmo
 
 
// FUNCOES GERAIS

Funcao Vazia(STRING : caracter) : logico
Var
        sVAZ : caracter
        nVAZ : inteiro
        vVAZ  : logico
inicio
        vVAZ <- Falso
        sVAZ <- STRING
        sVAZ <- Ltrim(Rtrim(sVAZ))
        nVAZ <- Compr(sVAZ)
        se nVAZ = 0 entao
             vVAZ <- Verdadeiro
         fimse
Retorne vVAZ
Fimfuncao

Funcao E_Num(String: Caracter) : Logico
Var  xpos : Inteiro
     xverd: Logico
     indx : Caracter
Inicio
        se Compr(String) < 1 entao
             String := " "
        fimse
        xpos := 0
        xverd := Falso
        indx   := "0123456789"
        xpos := POS(String,indx)
        se xpos > 0 entao
             xverd := Verdadeiro
        fimse
Retorne xverd
Fimfuncao
//
Funcao Espaco(Qtde: Inteiro) : Caracter
Var  xCar : caracter
         indx : Inteiro
Inicio
        se Qtde < 1 entao
             Qtde := 1
        fimse
        xCar := ""
        Para indx de 1 ate Qtde faca
                 xCar := xCar + " "
        Fimpara
Retorne xCar
Fimfuncao

Funcao Decimal(Valor: Caracter) : Caracter
Var  xCar, xRET : caracter
     indx : Inteiro
     R_Valor, R_V: Real
Inicio
     se Vazio(Valor) entao
        XRET := "00"
     fimse
     xCar := ""
     R_valor := CaracpNum(Valor)
     indx := Int(R_valor)
     R_v  := Int(((R_valor - indx)+0.001)*100)/100
     xRet := NumpCarac(R_v)
Retorne xRet
Fimfuncao

// FUNCAO EXCLUSIVA DESSE PROGRAMA
Funcao AbaixoMil(Valor:  Real ) : Caracter
Var
     xcomp : inteiro
     xtext_vazio : Logico
Inicio
  xtext_vazio <- Falso
  Val   <- Int(Valor)
  xcomp <- compr(Textos)
  se xcomp = 0 entao
      xtext_vazio <- Verdadeiro
  fimse
  se val = 0 entao
     se nao MaiorQ entao
        Textos <- "Zero"
     fimse
   senao
      se ((Val > 0) e (val < 20)) entao
         se val = 1 entao
            se nao MaiorQ entao
               Textos <- "Hum"
            senao
               se nao xtext_vazio entao
                  Textos <- Textos+" e um"
               senao
                  Textos <- " um"
               fimse
            fimse
         senao
           se nao xtext_vazio entao
              Textos <- Textos + " e " + ate20[val]
           senao
              Textos <- ate20[val]
           fimse

           val <- p - val
         fimse
      senao
        se (val < 100) entao
           i <- Int(val / 10)
           Textos <- Textos + dezena[i]
           val <- Int(val % 10)
           se (val > 0) entao
              se nao xtext_vazio entao
                 Textos <- Textos + " e " + ate20[val]
               senao
                 Textos <- ate20[val]
               fimse
           fimse
         senao
            se (val = 100) entao
              Textos <- "Cem"
            senao
              i <- Int(val / 100)
              se i > 0 entao
                 Textos <- centena[i]
                 xmul <- Int(val - (i * 100))
                 val <- xmul
                 i <- Int(val / 10)
                 se i > 0 entao
                    xmul <- Int(val - (i * 10))
                    se nao xtext_vazio entao
                       Textos <- Textos + " e " + ate20[val]
                    senao
                       Textos <- ate20[val]
                    fimse
                    val <- xmul
                    se (val > 0) entao
                       se nao xtext_vazio entao
                          Textos <- Textos + " e " + ate20[val]
                       senao
                          Textos <- ate20[val]
                       fimse
                    fimse
                 fimse
              fimse
            fimse
         fimse
      fimse
   fimse
Retorne Textos
Fimfuncao

//   ate20[0] <- "zero"
   ate20[1] <- "um"
   ate20[2] <- "dois"
   ate20[3] <- "três"
   ate20[4] <- "quatro"
   ate20[5] <- "cinco"
   ate20[6] <- "seis"
   ate20[7] <- "sete"
   ate20[8] <- "oito"
   ate20[9] <- "nove"
   ate20[10] <- "dez"
   ate20[11] <- "onze"
   ate20[12] <- "doze"
   ate20[13] <- "treze"
   ate20[14] <- "quatorze"
   ate20[15] <- "quinze"
   ate20[16] <- "dezesseis"
   ate20[17] <- "dezessete"
   ate20[18] <- "dezoito"
   ate20[19] <- "dezenove"

   dezena[1] <- "dez"
   dezena[2] <- "vinte"
   dezena[3] <- "trinta"
   dezena[4] <- "quarenta"
   dezena[5] <- "cinquenta"
   dezena[6] <- "sessenta"
   dezena[7] <- "setenta"
   dezena[8] <- "oitenta"
   dezena[9] <- "noventa"

   centena[1] <- "Cento"
   centena[2] <- "Duzentos"
   centena[3] <- "trezentos
   centena[4] <- "quatrocentos"
   centena[5] <- "quinhentos"
   centena[6] <- "seiscentos"
   centena[7] <- "setecentos"
   centena[8] <- "oitocentos"
   centena[9] <- "novecentos"
//               CENTAVOS     ,99
   Milhar[1]  <- "mil"     // 999
   Milhar[2]  <- "milhão"  // 999.999
   Milhar[3]  <- "Bilhão"  // 999.999.999


