Algoritmo "Exercicio 3 LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2020
Var
// Se��o de Declara��es das vari�veis 
i, j, fat :inteiro // Fatorial
expo, denomi, fimD, numT, numX, checkD :inteiro
S :real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVAL("Digite o valor de termos: ")// Quantidade de intera��es
LEIA(numT)
ESCREVAL("Digite o valor do n�mero X: ")
LEIA(numX)

S := 0 //Por n�o ter multiplica��o n�o tem perigo da s�rie ser 0
denomi := 1 //A s�rie come�a com 1

PARA i DE 1 ATE numT FACA // Quantas intera��es ser�o feitas
      fimD := denomi // reservando o denominador
      fat := 1
      PARA j DE 1 ATE fimD FACA
           fat := fat * j
      FIMPARA
      ESCREVAL("Fatorial = ", fat)
      expo := i + 1 //Contagem do expoente
      ESCREVAL("Expoente = ", expo)
      SE expo % 2 = 0 ENTAO
         S := S - exp(numX, expo)/fat
      SENAO
         S := S + exp(numX, expo)/fat
      FIMSE

      ESCREVAL("S = ", S)

      SE denomi = 4 ENTAO // Checagem do denominador
         checkD := -1
      SENAO
           SE denomi = 1 ENTAO
              checkD := 1
           FIMSE
      FIMSE

      SE checkD = 1 ENTAO // Denominador est� no n�mero 1
           denomi := denomi + 1
      SENAO  // Denominador est� no n�mero 4
           denomi := denomi - 1
      FIMSE
FIMPARA

ESCREVA("S = ", S)


Fimalgoritmo