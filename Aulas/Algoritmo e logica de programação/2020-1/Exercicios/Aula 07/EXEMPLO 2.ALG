Algoritmo "Exemplo 2"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2020
Var
// Se��o de Declara��es das vari�veis 
A, B, C, I :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
LEIA(A)
LEIA(B)
LEIA(C)
LEIA(I)

ESCOLHA I
         CASO 1
              SE ((A < B) E (A < C)) ENTAO
                 SE(B < C) ENTAO
                      ESCREVA(A, B, C)
                 SENAO
                      ESCREVA(A, C, B)
                 FIMSE
              FIMSE
              
              SE ((B < A) E (B < C)) ENTAO
                 SE(A < C) ENTAO
                      ESCREVA(B, A, C)
                 SENAO
                      ESCREVA(B, C, A)
                 FIMSE
              FIMSE
              
              SE ((C < A) E (C < B)) ENTAO
                 SE(A < B) ENTAO
                      ESCREVA(C, A, B)
                 SENAO
                      ESCREVA(C, B, A)
                 FIMSE
              FIMSE

         CASO 2
              SE ((A > B) E (A > C)) ENTAO
                 SE(B > C) ENTAO
                      ESCREVA(A, B, C)
                 SENAO
                      ESCREVA(A, C, B)
                 FIMSE
              FIMSE
              
              SE ((B > A) E (B > C)) ENTAO
                 SE(A > C) ENTAO
                      ESCREVA(B, A, C)
                 SENAO
                      ESCREVA(B, C, A)
                 FIMSE
              FIMSE
              
              SE ((C > A) E (C > B)) ENTAO
                 SE(A > B) ENTAO
                      ESCREVA(C, A, B)
                 SENAO
                      ESCREVA(C, B, A)
                 FIMSE
              FIMSE

         CASO 3
              SE ((A > B) E (A > C)) ENTAO
                 ESCREVA(B, A, C)
              FIMSE
              
              SE ((B > A) E (B > C)) ENTAO
                 ESCREVA(A, B, C)
              FIMSE
              
              SE ((C > A) E (C > B)) ENTAO
                 ESCREVA(A, C, B)
              FIMSE
FIMESCOLHA


Fimalgoritmo