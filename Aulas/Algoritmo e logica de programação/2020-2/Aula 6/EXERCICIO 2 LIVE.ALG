Algoritmo "Exercicio 2 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2020
Var
// Seção de Declarações das variáveis 
n :inteiro // Pede-se N números
num :inteiro // Variavel para os demais numeros
i, j, fat :inteiro // Variaveis para o controle do fatorial

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
ESCREVAL("Digite a quantidade de números que serão lidos: ")
LEIA(n)

PARA i DE 1 ATE n FACA
     ESCREVAL("Digite o número: ")
     LEIA(num)
     fat := 1 // Fat recebe 1 para não ter multiplicação por 0
     PARA j DE 1 ATE num FACA //1X2X3X4X5
          fat := fat * j
     FIMPARA
     ESCREVAL(num, "|", fat) // amostragem do número e o fatorial
FIMPARA

// Ideia do Dirceu
PARA i DE 1 ATE n FACA
     fat := 1 // Fat recebe 1 para não ter multiplicação por 0
     PARA j DE 1 ATE i FACA //1X2X3X4X5
          fat := fat * j
     FIMPARA
     ESCREVAL(i, "|", fat) // amostragem do número e o fatorial
FIMPARA


Fimalgoritmo