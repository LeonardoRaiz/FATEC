Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/02/2020
Var
// Se��o de Declara��es das vari�veis 
num, quadrado, cubo, r2, r3: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Insira o n�mero: ")
LEIA(num)
quadrado := exp(num, 2)
cubo := exp(num, 3)
r2 := RaizQ(num)
r3 := exp(num, (1/3))
ESCREVAL("O numero quadrado �: ", quadrado)
ESCREVAL("O numero ao cubo �: ", cubo)
ESCREVAL("A raiz quadrada � de: ", r2)
ESCREVAL("A raiz cubica � de: ", r3)

Fimalgoritmo