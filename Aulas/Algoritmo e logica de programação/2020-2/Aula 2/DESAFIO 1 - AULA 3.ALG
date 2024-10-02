Algoritmo "Desafio 1 - Aula 3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/09/2020
Var
// Seção de Declarações das variáveis 
sal : real
novosal : real
imp :real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
// Faça um programa que receba o salário base de um funcionário
ESCREVA("Insira o salario do funcionario: ")
LEIA(sal)

// gratificação de 5% sobre o salario base
novosal := sal + (sal * 5/100)
// novosal := sal * 1.05
imp := sal * 7 /100
// Atualizar a variavel
novosal := novosal - imp

ESCREVA("O novo salario é de: ", novosal)



Fimalgoritmo