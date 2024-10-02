Algoritmo "Exercicio 2 LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/05/2020
Var
// Seção de Declarações das variáveis 
num :inteiro
qtdD :inteiro // quantidade de divisões
cont_num :inteiro // contador dos numeros no laço de repetição
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVAL("Insira o numero inteiro: ")
LEIA(num)
qtdD := 0
PARA cont_num DE 1 ATE num FACA
     SE num % cont_num = 0 ENTAO //modulo num mod cont_num
        qtdD := qtdD + 1
     FIMSE
FIMPARA

SE qtdD > 2 ENTAO
   ESCREVAL("O número ", num, " não é primo")
SENAO
   ESCREVAL("O número ", num, " é primo")
FIMSE



Fimalgoritmo