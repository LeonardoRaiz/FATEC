Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/03/2020
Var
// Seção de Declarações das variáveis 
num, r: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o numero: ")
LEIA(num)

r := num MOD 2
SE r = 0 ENTAO
   ESCREVAL("O numero é par")
SENAO
   ESCREVAL("O numero é impar")
FIMSE


Fimalgoritmo