Algoritmo "Exercicio PDF 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/10/2020
Var
// Seção de Declarações das variáveis 
cont_i, cont_j : inteiro
fat : inteiro
n : inteiro
equE : real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o valor de N: ")
LEIA(n)

equE := 1
//N interações do usuario
PARA cont_j DE 1 ATE n FACA
     // Calculo do FATORIAL
     fat := 1
     PARA cont_i DE 1 ATE cont_j FACA
          fat := fat * cont_i
     FIMPARA
     // Calculo da equação E
     equE = equE + 1 / fat
FIMPARA

ESCREVA("O resultado da equação é: ", equE)







Fimalgoritmo