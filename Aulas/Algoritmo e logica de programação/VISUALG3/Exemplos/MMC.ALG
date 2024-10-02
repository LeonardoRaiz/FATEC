Algoritmo "semnome"
// Disciplina   :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/08/2016
Var
// Seção de Declarações das variáveis 
L : LOGICO
n1,n2,R : inteiro


FUNCAO funcMMC(NUM1,NUM2:INTEIRO) : INTEIRO
VAR
    MMC, AUX,I : INTEIRO
INICIO
     PARA I DE 2 ATE NUM2 FACA
          AUX := NUM1 * I
          SE ((AUX MOD NUM2) = 0) ENTAO
             MMC := AUX
//             I  := NUM2 + 1
             interrompa
          FIMSE
     FIMPARA
     Retorne MMC
FIMFUNCAO
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

N1 := 28
N2 := 40
R  := funcMMC(N1,N2)
ESCREVAL("MMC DE ",N1," E ",N2," : ",R)
LEIA(L)

Fimalgoritmo