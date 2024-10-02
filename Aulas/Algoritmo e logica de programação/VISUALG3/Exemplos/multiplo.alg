Algoritmo "Multiplos"
// Disciplna : [Linguagem e Lógica de Programação]
// Professor: Antonio Carlos Nicolodi
// Descrição: Aqui você descreve o que o programa faz! (função)
// Autor(a) : Nome do(a) aluno(a)
// Data atual: 12/12/2015
Var
// Seção de Declarações das variáveis
X,R : Inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
Escreval("Digite x ")
Leia(X)
R := (X % 7)
SE R=0 ENTAO
ESCREVAL("é MULTIPLO",R)
SENAO
ESCREVAL("N/ é MULTIPLO",R)
FIMSE
Fimalgoritmo