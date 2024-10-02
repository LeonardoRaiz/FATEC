Algoritmo "Exercicio 3 PARA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/05/2020
Var
// Seção de Declarações das variáveis 
fim, i, j, x, expo, numT, denomi :inteiro
den, fat, s : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LEIA(numT)
LEIA(x)

s := 0
denomi := 1
PARA i DE 1 ATE numT FACA
     fim := denomi
     fat := 1
     PARA j DE 1 ATE fim FACA
          fat := fat * j
     FIMPARA
     expo := i + 1
     SE expo % 2 = 0 ENTAO
        s := s - exp(x, expo)/fat
     SENAO
        s := s + exp(x, expo)/fat
     FIMSE
     
     SE denomi = 4 ENTAO
        den := -1
     SENAO
          SE denomi = 1 ENTAO
             den := 1
          FIMSE
     FIMSE
     
     SE den = 1 ENTAO
        denomi := denomi + 1
     SENAO
        denomi := denomi - 1
     FIMSE
FIMPARA

ESCREVA (s)

Fimalgoritmo