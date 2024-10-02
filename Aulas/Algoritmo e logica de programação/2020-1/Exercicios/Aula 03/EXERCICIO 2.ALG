Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/02/2020
Var
// Seção de Declarações das variáveis 
num, quadrado, cubo, r2, r3: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira o número: ")
LEIA(num)
quadrado := exp(num, 2)
cubo := exp(num, 3)
r2 := RaizQ(num)
r3 := exp(num, (1/3))
ESCREVAL("O numero quadrado é: ", quadrado)
ESCREVAL("O numero ao cubo é: ", cubo)
ESCREVAL("A raiz quadrada é de: ", r2)
ESCREVAL("A raiz cubica é de: ", r3)

Fimalgoritmo