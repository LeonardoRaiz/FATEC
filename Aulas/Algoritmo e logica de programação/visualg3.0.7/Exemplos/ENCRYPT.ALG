Algoritmo "Encrypt"
// Disciplina : [Linguagem e Lógica de Programação]
// Professor : Antonio Carlos Nicolodi
// Descrição : Encripta e Descripta uma palavra com n caracteres (4)
// Autor(a) : Nome do(a) aluno(a)
// Data atual : 03/12/2018
Var
// Seção de Declarações das variáveis
Y : inteiro
XP, XQ, XA: CARACTER

FUNÇÃO CRIPTO(XXP:CARACTER;XY:INTEIRO):CARACTER
VAR
XX,YY : INTEIRO
XV,XL,XK : CARACTER
INICIO

XV <- NUMPCARAC(XY)
PARA YY DE 1 ATÉ COMPR(XXP) FAÇA
XL <- COPIA(XXP,YY,1)
PARA XX DE 0 ATÉ 25 FAÇA
SE XL = CARAC(XX+65) ENTÃO
XK <- CARAC(XX+65+(XY-1))
XV <- XV + XK
FIMSE
FIMPARA
FIMPARA
RETORNE XV
FIMFUNÇÃO

FUNÇÃO DESCRIPTO(XXP:CARACTER;XY:INTEIRO):CARACTER
VAR
XX,YY : INTEIRO
XV,XL,XK : CARACTER
INICIO

XV <- NUMPCARAC(XY)
PARA YY DE 1 ATÉ COMPR(XXP) FAÇA
XL <- COPIA(XXP,YY,1)
PARA XX DE 0 ATÉ 25 FAÇA
SE XL = CARAC(XX+65) ENTÃO
XK <- CARAC(XX+65-(XY-1))
XV <- XV + XK
FIMSE
FIMPARA
FIMPARA
RETORNE XV
FIMFUNÇÃO

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
ESCREVAL("*** CRIPTOGRAFAR ***")
ESCREVAL
ESCREVA("PALAVRA : ")
LEIA(XP)
xp <- Maiusc(XP)
XQ <- CRIPTO(XP,4)
ESCREVAL
ESCREVAl("CRIPTO := ",XQ)
XA <- DESCRIPTO(XQ,4)
ESCREVAL
ESCREVAl("DESCRIPTO := ",XA)

Fimalgoritmo

