Algoritmo "Desafio 1 - Aula 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/09/2020
Var
// Se��o de Declara��es das vari�veis 
sal : real
novosal : real
imp :real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
// Fa�a um programa que receba o sal�rio base de um funcion�rio
ESCREVA("Insira o salario do funcionario: ")
LEIA(sal)

// gratifica��o de 5% sobre o salario base
novosal := sal + (sal * 5/100)
// novosal := sal * 1.05
imp := sal * 7 /100
// Atualizar a variavel
novosal := novosal - imp

ESCREVA("O novo salario � de: ", novosal)



Fimalgoritmo