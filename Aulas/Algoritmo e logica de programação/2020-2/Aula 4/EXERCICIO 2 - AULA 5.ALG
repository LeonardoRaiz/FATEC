Algoritmo "Exercicio 2 - Aula 5"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/09/2020
Var
// Se��o de Declara��es das vari�veis 
num : inteiro
veri: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Insira o numero: ")
LEIA(num)
//PAR OU IMPAR
veri := num MOD 2
SE veri = 0 ENTAO
   ESCREVAL("O numero � par")
SENAO
   ESCREVAL("O numero � impar")
FIMSE
ESCREVAL("-------------- Outra forma ----------------------")
SE (num MOD 2) = 0 ENTAO
   ESCREVAL("O numero � par")
SENAO
   ESCREVAL("O numero � impar")
FIMSE
ESCREVAL("-------------- Outra forma ----------------------")
SE (num % 2) = 0 ENTAO
   ESCREVA("O numero � par")
SENAO
   ESCREVA("O numero � impar")
FIMSE



Fimalgoritmo