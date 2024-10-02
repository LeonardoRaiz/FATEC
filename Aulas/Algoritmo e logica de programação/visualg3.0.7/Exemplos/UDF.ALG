// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Autor    : Antonio Carlos Nicolodi
// Data     : 20/05/2015 

// funções (não Pré-definas) ou User Define Functions 
// em portugues: Funções Definidas pelo Usuário (programador da linguagem)
// funções e procedimentos UDFs do programa
//
//
// FUNÇÕES GERAIS PARA TODOS OS PROGRAMAS 


// VERIFICA SE EH UM NUMERO E RETORNA VERDADEIRO/FALSO
Funcao E_Num(xString: Caracter) : Logico
Var  xpos : Inteiro
     xverd: Logico
     indx : Caracter
Inicio
        se Compr(xString) < 1 entao
             xString := " "
        fimse
        xpos := 0
        xverd := Falso
        indx   := "0123456789"
        xpos := POS(xString,indx)
        se xpos > 0 entao
             xverd := Verdadeiro
        fimse
Retorne xverd
Fimfuncao

//  Monte uma String com Espacos em branco
Funcao Espaço(xQtde: Inteiro) : Caracter
Var  xCar : caracter
         indx : Inteiro
Inicio
        se xQtde < 1 entao
             xQtde := 1
        fimse
        xCar := ""
        Para indx de 1 ate xQtde faca
                 xCar := xCar + " "
        Fimpara
Retorne xCar
Fimfuncao

// Replicar varios caracteres numa String com a Qtde
Funcao Replicar(xSTRING : caracter; xQTDE : inteiro) : caracter
 var
      iREP  : inteiro
      xREP  : caracter
 inicio
   xREP <- ""
 para iREP de 1 ate xQTDE faca
      xREP <- xREP + xSTRING
  fimpara
  Retorne xREP
Fimfuncao

// retorna uma string com caracteres "0" na quantidade passada
Funcao Zeros(xQTDE : inteiro) : caracter
var
     iZER : inteiro
     rZER : Caracter
inicio
     rZER <- ""
     para iZER de 1 ate xQTDE faca
          rZER <- rZER + "0"
     fimpara
     Retorne rZER
Fimfuncao

// retorna uma string c/ todos da Esquerda p/ Direita
Funcao Esquerda(xSTRING : caracter; xQTDE : inteiro) : caracter
var
     iESQ,xESQ  : inteiro
     sESQ,cESQ : caracter
inicio
     xESQ <- Compr(cESQ)
     se QTDE > xESQ entao
        QTDE <- xESQ
     fimse
     sESQ <- ""
     para iESQ de 1 ate xESQ faca
          cESQ <- copia(xSTRING,iESQ,1)
          sESQ <- sESQ + cESQ
          xQTDE <- xQTDE - 1
          se QTDE < 1 entao
             interrompa
          fimse
     fimpara
     Retorne sESQ
Fimfuncao

// retorna uma string c/ todos da Direita p/ Esquerda
Funcao Direita(xSTRING : caracter; xQTDE : inteiro) : caracter
var
     iDIR,xDIR  : inteiro
     sDIR,cDIR : caracter
inicio
     xDIR <- Compr(xSTRING)
     se xQTDE > xDIR entao
        xQTDE <- xDIR
     fimse
     sDIR <- ""
     para iDIR de xDIR  ate 1 passo -1 faca
          cDIR <- copia(xSTRING,iDIR,1)
          sDIR <- cDIR + sDIR
          xQTDE <- xQTDE - 1
          se xQTDE < 1 entao
             interrompa
          fimse
     fimpara
     Retorne sDIR
Fimfuncao

// retorna uma string compactada, retirando os espaços da Esquerda
Funcao Ltrim(xSTRING : caracter) : caracter
var
     iLTR,xLTR  : inteiro
     sLTR,cLTR : caracter
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

// retorna uma string compactada, retirando os espaços da Direita
Funcao Rtrim(xSTRING : caracter) : caracter
var
     iRTR,xRTR  : inteiro
     sRTR,cRTR  : caracter
inicio
    xRTR <- Compr(xSTRING)
    sRTR <- ""
    iRTR <- 1
    eRTR <- Carac(32)
    cRTR <- copia(STRING,xRTR,iRTR)
    Enquanto (cRTR = eRTR) faca
         xRTR <- xRTR - 1
         cRTR <- copia(xSTRING,xRTR,iRTR)
         se xRTR < 1 entao
              cRTR <- ""
         fimse
    Fimenquanto
    sRTR <- COPIA(xSTRING,iRTR,XRTR)
    Retorne sRTR
Fimfuncao

// retorna uma string compactada, retirando os espaços da Direita e da Esq.
Funcao Alltrim(xSTRING : caracter) : caracter
Var
        sALL : caracter
inicio
        sALL <- xSTRING
        sALL <- Ltrim(Rtrim(sALL))
Retorne sALL
Fimfuncao

// retorna um valor lógico se  EXPRESSÃO STRINTG ESTÁ CHEIA OU VAZIA.
Funcao Vazia(xSTRING : caracter) : logico
Var
        sVAZ : caracter
        nVAZ : inteiro
        vVAZ  : logico
inicio
        vVAZ <- Falso
        sVAZ <- xSTRING
        sVAZ <- Ltrim(Rtrim(sVAZ))
        nVAZ <- Compr(sVAZ)
        se nVAZ = 0 entao
             vVAZ <- Verdadeiro
        fimse
Retorne vVAZ
Fimfuncao

// retorna uma string com caracteres "0" na quantidade passada
Funcao StrZeros(xSTRZERO, xQTDE : inteiro) : caracter
var
     iZER : inteiro
     rZER : Caracter
inicio
     rZER <- ""
     para iZER de 1 ate xQTDE faca
          rZER <- rZER + "0"
     fimpara
     xStrZero <- Direita(rZER + ALLTRIM(xStrZero),xQTDE)
     Retorne xStrZero
Fimfuncao



