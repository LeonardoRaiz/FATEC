Algoritmo "Exemplo Vetor 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/10/2020
Var
// Seção de Declarações das variáveis 
notas : vetor [1..4] DE inteiro
i : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

//Pior forma de inserir informações
//notas[1] := 8
//notas[2] := 5
//notas[3] := 7
//notas[4] := 1
//ESCREVA("Digite a nota 1: ")
//LEIA(notas[1])
//ESCREVA("Digite a nota 2: ")
//LEIA(notas[2])
//ESCREVA("Digite a nota 3: ")
//LEIA(notas[3])
//ESCREVA("Digite a nota 4: ")
//LEIA(notas[4])

//Melhor forma
//LOOP laço de repetição
PARA i DE 1 ATE 4 FACA
     ESCREVA("Digite a nota ",i,": ")
     LEIA(notas[i])
FIMPARA


Fimalgoritmo