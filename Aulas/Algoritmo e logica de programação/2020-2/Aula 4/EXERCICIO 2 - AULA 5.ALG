Algoritmo "Exercicio 2 - Aula 5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/09/2020
Var
// Seção de Declarações das variáveis 
num : inteiro
veri: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira o numero: ")
LEIA(num)
//PAR OU IMPAR
veri := num MOD 2
SE veri = 0 ENTAO
   ESCREVAL("O numero é par")
SENAO
   ESCREVAL("O numero é impar")
FIMSE
ESCREVAL("-------------- Outra forma ----------------------")
SE (num MOD 2) = 0 ENTAO
   ESCREVAL("O numero é par")
SENAO
   ESCREVAL("O numero é impar")
FIMSE
ESCREVAL("-------------- Outra forma ----------------------")
SE (num % 2) = 0 ENTAO
   ESCREVA("O numero é par")
SENAO
   ESCREVA("O numero é impar")
FIMSE



Fimalgoritmo