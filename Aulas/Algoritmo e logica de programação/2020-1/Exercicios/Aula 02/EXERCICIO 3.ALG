Algoritmo "Exercicio 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/02/2020
Var
// Se��o de Declara��es das vari�veis 
nota1, nota2, nota3, peso1, peso2, peso3, media: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA ("Insira a nota1: ")
LEIA (nota1)
ESCREVA ("Insira o peso1: ")
LEIA (peso1)
ESCREVA ("Insira a nota2: ")
LEIA (nota2)
ESCREVA ("Insira o peso2: ")
LEIA (peso2)
ESCREVA ("Insira a nota3: ")
LEIA (nota3)
ESCREVA ("Insira a peso3: ")
LEIA (peso3)

media := (nota1 * peso1 + nota2 *peso2 + nota3 * peso3) / (peso1 + peso2 + peso3);

ESCREVA ("A media � de: ", media)

Fimalgoritmo