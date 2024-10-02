Algoritmo "semnome"
// Disciplna   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/11/2015
Var
// Seção de Declarações das variáveis 

i,xc,xl : inteiro
l,f : logico
s,x,xcl : caracter
A11,A12,A13,A21,A22,A23,A31,A32,A33 : caracter

Funcao Randomico(Num : inteiro) : Inteiro
VAR
     Ds : Inteiro
Inicio
ECO OFF
Aleatorio on
Aleatorio 1,3
Leia(Ds)
Aleatorio off
Retorne Ds
ECO ON
Fimfuncao

Procedimento Erro
Var
D : Literal
Inicio
Escreval("Campo já está ocupado !!!")
Leia(D)

FimProcedimento


Procedimento Acha_O
Var
Inicio
Enquanto f faca
   xcl <- ""
   i <- 3
   xc <- i
   xcl <- xcl + Numpcarac(i)
   i <- 3
   xl <- i
   xcl <- xcl + Numpcarac(i)

   S <- xcl
   x <- "O"

   se S = "11" entao
      se A11 = "_" entao
         A11 <- X
         f <- Falso
      fimse
   fimse
   se S = "12" entao
      se A12 = "_" entao
         A12 <- X
         f <- Falso
      fimse
   fimse
   se S = "13" entao
      se A13 = "_" entao
         A13 <- X
         f <- Falso
      fimse
   fimse
   se S = "21" entao
      se A21 = "_" entao
         A21 <- X
         f <- Falso
      fimse
   fimse
   se S = "22" entao
      se A22 = "_" entao
         A22 <- X
         f <- Falso
      fimse
   fimse
   se S = "23" entao
      se A23 = "_" entao
         A23 <- X
         f <- Falso
      fimse
   fimse
   se S = "31" entao
      se A31 = "_" entao
         A31 <- X
         f <- Falso
      fimse
   fimse
   se S = "32" entao
      se A32 = "_" entao
         A32 <- X
         f <- Falso
      fimse
   fimse
   se S = "33" entao
      se A33 = "_" entao
         A33 <- X
         f <- Falso
      fimse
   fimse
fimenquanto
Fimprocedimento

Procedimento Mostra_tela
Var
Inicio
   limpatela
   Escreval(" Jogo da Velha em visualG ")
   Escreval(" ")
   Escreval(" ")
   Escreval("     1      2      3       ")
   Escreval("  +-----+------+------+")
   Escreval("1 |  ",A11,"  |   ",A12,"  |   ",A13,"  |")
   Escreval("  |-----+------+------|")
   Escreval("2 |  ",A21,"  |   ",A22,"  |   ",A23,"  |")
   Escreval("  |-----+------+------|")
   Escreval("3 |  ",A31,"  |   ",A32,"  |   ",A33,"  |")
   Escreval("  |-----+------+------|")
   Escreval(" ")
   Escreval(" ")
   Escreva(" Digite a linha e coluna: ")
FimProcedimento


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


l <- verdadeiro
A11 <- "_"
A12 <- "_"
A13 <- "_"
A21 <- "_"
A22 <- "_"
A23 <- "_"
A31 <- "_"
A32 <- "_"
A33 <- "_"
f <- Falso
enquanto l faca
   f <- (nao f)

   Acha_O

   Mostra_tela

   Leia(s)
   SE Compr(S) = 1 entao
      se (S = "F") entao
         l <- Falso
         Interrompa
      fimse
   senao
      SE Compr(S) = 2 entao
         se S = "11" entao
            se A11 = "_" entao
               A11 <- "X"
            senao
               Erro
            fimse
         fimse
         se S = "12" entao
            //            A12 <- "X"
            se A12 = "_" entao
               A12 <- "X"
            senao
               Erro
            fimse

         fimse
         se S = "13" entao
            //          A13 <- "X"
            se A13 = "_" entao
               A13 <- "X"
            senao
               Erro
            fimse
         fimse
         se S = "21" entao
            //          A21 <- "X"
            se A21 = "_" entao
               A21 <- "X"
            senao
               Erro
            fimse
         fimse
         se S = "22" entao
            //          A22 <- "X"
            se A22 = "_" entao
               A22 <- "X"
            senao
               Erro
            fimse
         fimse
         se S = "23" entao
            //          A23 <- "X"
            se A23 = "_" entao
               A23 <- "X"
            senao
               Erro
            fimse
         fimse
         se S = "31" entao
            //          A31 <- "X"
            se A31 = "_" entao
               A31 <- "X"
            senao
               Erro
            fimse
         fimse
         se S = "32" entao
            //          A32 <- "X"
            se A32 = "_" entao
               A32 <- "X"
            senao
               Erro
            fimse
         fimse
         se S = "33" entao
            //          A33 <- "X"
            se A33 = "_" entao
               A33 <- "X"
            senao
               Erro
            fimse
         fimse
      fimse
   Fimse
   Escreval(" ")
   Escreval(" ")
   Escreval(" ")
   Escreval(" escolha <Ann> ou <Bnn> ou <<F> para finalizar>")
fimenquanto


Fimalgoritmo

