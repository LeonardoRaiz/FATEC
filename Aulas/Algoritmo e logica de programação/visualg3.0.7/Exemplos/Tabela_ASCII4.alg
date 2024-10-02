Algoritmo "Tabela_ASCII"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Autor    : Antonio 
// Função : Monta e mostra uma tabela ASCII (com números em
//          decimais / Hexadecimais / Binários / Octais e os Caracteres
// Data : 10/4/2015
// Seção de Declarações 
var
     xvet : Vetor[1..255] de caracter
     i    : inteiro
     xcar,xs,xcf,xE : caracter
     xo,xh,xb       : caracter

// funções (não Pré-definas) ou User Define Functions 
// em portugues: Funções Definidas pelo Usuário (programador da linguagem)
// funções e procedimentos UDFs do programa

// FUNÇÕES GERAIS PARA TODOS OS PROGRAMAS 
// retorna uma string com qqer caracteres na quantidade passada

Funcao Replicar(STRING : caracter; QTDE : inteiro) : caracter 
 var
      iREP  : inteiro
      xREP : caracter
 inicio
   xREP <- ""
 para iREP de 1 ate QTDE faca
      xREP <- xREP + STRING
  fimpara
  Retorne xREP
Fimfuncao

// retorna uma string com caracteres "0" na quantidade passada
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

// retorna uma string c/ todos da Esquerda p/ Direita
Funcao Esquerda(STRING : caracter; QTDE : inteiro) : caracter 
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
          cESQ <- copia(STRING,iESQ,1)
          sESQ <- sESQ + cESQ
          QTDE <- QTDE - 1
          se QTDE < 1 entao
             interrompa
          fimse
     fimpara
     Retorne sESQ
Fimfuncao

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

// retorna uma string compactada, retirando os espaços da Esquerda
Funcao Ltrim(STRING : caracter) : caracter
var
     iLTR,xLTR : inteiro
     sLTR,cLTR,eLTR : caracter
inicio
    xLTR <- Compr(STRING)
    sLTR <- ""
    iLTR <- 1
    eLTR <- Carac(32)
    cLTR <- copia(STRING,iLTR,1)
    Enquanto (cLTR = eLTR) faca
         iLTR <- iLTR + 1
         cLTR <- copia(STRING,iLTR,1)
         se iLTR > xLTR entao
            cLTR <- ""
         fimse
    Fimenquanto
    sLTR <- COPIA(STRING,iLTR,XLTR)
    Retorne sLTR
Fimfuncao

// retorna uma string compactada, retirando os espaços da Direita
Funcao Rtrim(STRING : caracter) : caracter
var
     iRTR,xRTR  : inteiro
     sRTR,cRTR,eRTR  : caracter
inicio
    xRTR <- Compr(STRING)
    sRTR <- ""
    iRTR <- 1
    eRTR <- Carac(32)
    cRTR <- copia(STRING,xRTR,iRTR)
    Enquanto (cRTR = eRTR) faca
         xRTR <- xRTR - 1
         cRTR <- copia(STRING,xRTR,iRTR)
         se xRTR < 1 entao
            cRTR <- ""
         fimse
    Fimenquanto
    sRTR <- COPIA(STRING,iRTR,XRTR)
    Retorne sRTR
Fimfuncao

// retorna uma string compactada, retirando os espaços da Direita e da Esq.
Funcao Alltrim(STRING : caracter) : caracter 
Var 
        sALL : caracter
inicio
        sALL <- STRING
        sALL <- Ltrim(Rtrim(sALL)) 
Retorne sALL
Fimfuncao

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



// FUNÇÕES ESPECÍFICAS DESTE PROGRAMA 

// converte de decimal p/ Hexadecimal
Funcao Dec2Hex(STRING : caracter) : caracter                     
var
    xHEX,letrasHEX,vHEX : caracter
    yHEX,dHEX,iHEX,mHEX,pHEX : inteiro

inicio
se Vazia(STRING) entao 
      yHEX <- 0
senao
       yHEX <- Caracpnum(STRING)
fimse
dHEX <- yHEX
letrasHEX <- "ABCDEF"
pHEX <- 0
vHEX <- ""
para iHEX de 1 ate 4 faca
   se yHEX > 0 entao
      mHEX <- (yHEX mod 16)
      se mHEX = 0 entao
         xHEX <- "0" + xHEX
      senao
         se mHEX > 9 entao
            pHEX <- (mHEX - 9)
            vHEX <- copia(letrasHEX,pHEX,1)
            xHEX <- vHEX + xHEX
         senao
            xHEX <- Numpcarac(mHEX)+xHEX
         fimse
      fimse
      yHEX <- yHEX div 16  //fimenquanto
   fimse
fimpara
Retorne xHEX
Fimfuncao  

// converte de decimal p/ Binario 
Funcao Dec2Bin(STRING : caracter) : caracter                      
var
    xBIN : caracter
    yBIN,dBIN,iBIN,mBIN : inteiro
   
inicio
se Vazia(STRING) entao 
      yBIN <- 0
senao
       yBIN <- Caracpnum(STRING)
fimse

dBIN <- yBIN
para iBIN de 1 ate 9 faca
   se yBIN > 0 entao
      mBIN <- (yBIN mod 2)
      se mBIN = 0 entao
         xBIN <- "0" + xBIN
      senao
         xBIN <- "1" + xBIN
      fimse
      yBIN <- yBIN div 2
   fimse
fimpara
Retorne xBIN
Fimfuncao

// converte de decimal p/ Octal
Funcao Dec2Oct(String : caracter) : caracter                      
var
    xOCT : caracter
    yOCT,dOCT,iOCT,mOCT : inteiro
   
inicio
se Vazia(STRING) entao 
   yOCT <- 0
senao
   yOCT <- Caracpnum(STRING)
fimse
dOCT <- yOCT
para iOCT de 1 ate 8 faca
   se yOCT > 0 entao
      mOCT <- (yOCT mod 8)
      se mOCT = 0 entao
         xOCT <- "0" + xOCT
      senao
         xOCT <- Numpcarac(mOCT) + xOCT
      fimse
      yOCT <- yOCT div 8
   fimse
fimpara
Retorne xOCT
Fimfuncao

// Seção de Comandos programa principal

inicio
    xo <- Replicar("0",3)
    xh <- Replicar("0",3)
    xb <- Replicar("0",8)
//  monta o vetor com os 255 códigos em ASCII

     limpatela
     Escreval("=================================================")
     Escreval("================= A G U A R D E =================")
     Escreval("=================================================")
     Escreval(" ")
    para i de 1 ate 255 faca
         xcar <-          "<Indisponível>"
         se i < 33 entao
            escolha i
                caso 8
                  xcar <- ">Tecla TAB-><-"
                caso 9
                  xcar <- ">Backspace<==="
                caso 10
                  xcar <- "><Line feed ><"
                caso 13
                  xcar <- ">Tecla <Enter>"
                caso 16
                  xcar <- ">Seta Direita<"
                caso 17
                  xcar <- ">Seta esquerda"
                caso 24
                  xcar <- ">Seta Subir<|>"
                caso 25
                  xcar <- ">Seta Descer<>"
                caso 26
                  xcar <- "Fim de Arquivo"
                caso 27
                  xcar <- ">Tecla <<ESC>>"
                caso 32
                  xcar <- "Barra de Espaco"
            fimescolha
         senao
            xcar <- Carac(i)
         fimse
         xs   <- Numpcarac(i)
         xcf  <- Direita(Zeros(3)+xs,3)
         xo   <- Direita(Zeros(4)+Dec2Oct(xs),4)  // FORMATA NO TAMANHO 4
         xh   <- Direita(Zeros(3)+Dec2Hex(xs),3)  // FORMATA NO TAMANHO 3
         xb   <- Direita(Zeros(8)+Dec2Bin(xs),8)  // FORMATA NO TAMANHO 8

         se Compr(Rtrim(xcar)) < 5 entao
            xcar <- Replicar(" ",7)+xcar+Replicar(" ",7)
         fimse
         xo <- Replicar(" ",2)+xo+Replicar(" ",2)
// Aqui monta realmente o vetor com as variáveis formatadas
         xvet[i] <- xcf+" "+xh+" "+xb+" "+xo+" "+xcar

     fimpara
// Aqui mostra na tela
     limpatela
     Escreval("=================================================")
     Escreval("================ TABELA ASCII ===================")
     Escreval("=================================================")
     Escreval("Num/Hex/Binários/ Octais / Caracteres")
     para i de 1 ate 255 faca
          Escreval(xvet[i])
          se Int(i/20) = i/20 entao  // a cada 20 linhas salte e espere
             Escreval("Tecle <enter> para próximo ou <<ESC>> para sair")
             Leia(xE)
             limpatela
             Escreval("=================================================")
             Escreval("================ TABELA ASCII ===================")
             Escreval("=================================================")
             Escreval("Num/Hex/Binários/ Octais / Caracteres")
          fimse
      fimpara
//
     Escreval("=================================================")
     Escreval("================= FINALIZADO ====================")
     Escreval("=================================================")

fimalgoritmo
