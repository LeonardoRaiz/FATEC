Algoritmo "Exercicio 2 LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/05/2020
Var
// Se��o de Declara��es das vari�veis 
num :inteiro
qtdD :inteiro // quantidade de divis�es
cont_num :inteiro // contador dos numeros no la�o de repeti��o
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVAL("Insira o numero inteiro: ")
LEIA(num)
qtdD := 0
PARA cont_num DE 1 ATE num FACA
     SE num % cont_num = 0 ENTAO //modulo num mod cont_num
        qtdD := qtdD + 1
     FIMSE
FIMPARA

SE qtdD > 2 ENTAO
   ESCREVAL("O n�mero ", num, " n�o � primo")
SENAO
   ESCREVAL("O n�mero ", num, " � primo")
FIMSE



Fimalgoritmo