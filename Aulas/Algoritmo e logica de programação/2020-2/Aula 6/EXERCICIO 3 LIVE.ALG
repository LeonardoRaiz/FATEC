Algoritmo "Exercicio 3 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2020
Var
// Seção de Declarações das variáveis 
i, j, fat :inteiro // Fatorial
expo, denomi, fimD, numT, numX, checkD :inteiro
S :real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVAL("Digite o valor de termos: ")// Quantidade de interações
LEIA(numT)
ESCREVAL("Digite o valor do número X: ")
LEIA(numX)

S := 0 //Por não ter multiplicação não tem perigo da série ser 0
denomi := 1 //A série começa com 1

PARA i DE 1 ATE numT FACA // Quantas interações serão feitas
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

      SE checkD = 1 ENTAO // Denominador está no número 1
           denomi := denomi + 1
      SENAO  // Denominador está no número 4
           denomi := denomi - 1
      FIMSE
FIMPARA

ESCREVA("S = ", S)


Fimalgoritmo