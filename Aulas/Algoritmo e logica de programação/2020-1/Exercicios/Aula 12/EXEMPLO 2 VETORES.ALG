Algoritmo "Exemplo 2 VETORES"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/06/2020
Var
// Se��o de Declara��es das vari�veis 
nota :vetor [1..4] DE real
media :real
i :inteiro
somaV: real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
PARA i DE 1 ATE 4 FACA
     ESCREVAL("Insira a nota ", i, " :")
     LEIA(nota[i])
FIMPARA

//Media Soma dos valores / qtd dos valores
somaV := 0
PARA i DE 1 ATE 4 FACA
     somaV := somaV + nota[i]
FIMPARA

media := somaV/4

SE(media >= 6)ENTAO
     ESCREVAL("M�dia final � de: ", media)
     ESCREVAL("Aprovado")
SENAO
     ESCREVAL("M�dia final � de: ", media)
     ESCREVAL("Reprovado")
FIMSE



Fimalgoritmo