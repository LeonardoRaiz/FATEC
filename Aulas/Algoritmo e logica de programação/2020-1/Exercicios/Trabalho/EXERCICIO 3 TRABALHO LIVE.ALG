Algoritmo "Exercicio 3 TRABALHO LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/05/2020
Var
// Se��o de Declara��es das vari�veis 
hora, h, m, conversao : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite a hora: ")
LEIA(hora)
h := int(hora) // Recupera o valor inteiro
m := hora - h

conversao := (h*60) + (m*100)
ESCREVA("A convers�o em minutos � de: ", conversao)
Fimalgoritmo