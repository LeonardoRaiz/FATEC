Algoritmo "Exercicio 5 - Aula 3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/09/2020
Var
// Seção de Declarações das variáveis 
sal, novosal: real
perc: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o salario: ")
LEIA(sal)
ESCREVA("Digite o percentual: (Exemplo: 10%)")
LEIA(perc)

novosal := sal + (sal * perc/100)
// 1.25
// perc := perc / 100
// novosal := sal * (1 + perc)

ESCREVA("O novo salario é de: ", novosal)
Fimalgoritmo