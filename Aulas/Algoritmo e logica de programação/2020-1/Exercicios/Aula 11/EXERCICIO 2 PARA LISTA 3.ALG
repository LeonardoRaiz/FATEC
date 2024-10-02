Algoritmo "Exercicio 2 PARA lista 3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2020
Var
// Seção de Declarações das variáveis 
i, num, qtde :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LEIA(num)
qtde := 0
PARA i DE 1 ATE num FACA
     SE num % i = 0 ENTAO
        qtde := qtde + 1
     FIMSE
FIMPARA
SE qtde > 2 ENTAO
   ESCREVA("Nao primo")
SENAO
   ESCREVA("Primo")
FIMSE

Fimalgoritmo