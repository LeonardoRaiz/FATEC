Algoritmo "Exercicio 5"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/02/2020
Var
// Se��o de Declara��es das vari�veis 
sal, perc, aumento, novosal: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA ("Insira o salario: ")
LEIA (sal)
ESCREVA ("Insira o percentual: ")
LEIA (perc)
aumento := sal * perc/100
ESCREVA ("O aumento � de: ", aumento)
novosal := sal + aumento
ESCREVA ("O novo salario � de: ", novosal)

Fimalgoritmo