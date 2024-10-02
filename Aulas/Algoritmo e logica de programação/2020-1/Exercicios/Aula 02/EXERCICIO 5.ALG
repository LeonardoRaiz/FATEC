Algoritmo "Exercicio 5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/02/2020
Var
// Seção de Declarações das variáveis 
sal, perc, aumento, novosal: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA ("Insira o salario: ")
LEIA (sal)
ESCREVA ("Insira o percentual: ")
LEIA (perc)
aumento := sal * perc/100
ESCREVA ("O aumento é de: ", aumento)
novosal := sal + aumento
ESCREVA ("O novo salario é de: ", novosal)

Fimalgoritmo