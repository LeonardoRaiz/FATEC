Algoritmo "Exercicio 2 PARA lista 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2020
Var
// Se��o de Declara��es das vari�veis 
i, num, qtde :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
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