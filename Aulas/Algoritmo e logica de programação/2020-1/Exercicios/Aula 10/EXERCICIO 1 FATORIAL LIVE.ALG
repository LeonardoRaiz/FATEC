Algoritmo "Exercicio 1 FATORIAL"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/05/2020
// Faça um programa que leia um número e mostre seu fatorial
Var
// Seção de Declarações das variáveis   5!
i, j, n, fat :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o número: ")
LEIA(n)
// MAIS COMPLEXA O^2
PARA i de 1 ATE n FACA //5
     fat := 1
     ESCREVAL("Esse é o fatorial da contagem do numero N: ",fat)
     PARA j de 1 ATE i FACA
          fat := fat * j // 1 X 2 X 3 X 4 X 5
          ESCREVAL("Esse é o fatorial no produto do numero: ",fat)
     FIMPARA
FIMPARA

ESCREVA("O fatorial de ", n ," é: ", fat)

//FORMA MAIS SIMPLES
fat := 1
PARA j DE 1 ATE n FACA
     fat := fat * j
FIMPARA
ESCREVA(fat)

Fimalgoritmo