Algoritmo "Exercicio FATORIAL"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/05/2020
Var
// Seção de Declarações das variáveis 
fat : real
j, i, n: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LEIA(n)
PARA i DE 1 ATE n FACA
     fat := 1
     PARA j de 1 ATE i FACA
          fat := fat * j
     FIMPARA
FIMPARA

ESCREVA(fat)

Fimalgoritmo