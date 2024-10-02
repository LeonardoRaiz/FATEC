Algoritmo "Taboada de n"
// Disciplina  : [Linguagem e Lógica de programaçao]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Esse programa mostra a Taboada de "numero" ...
// Autor(a)    : Nome do(a) aluno(a) [Antonio...]
// Data atual  : 22/06/2015
var
// Seção de Declarações das variáveis 
       indice, numero : INTEIRO
inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
    LIMPATELA
    ESCREVAL(" ")
    ESCREVA("Digite um número : ")
    LEIA(X)
    ESCREVAL(" TABOADA DE NOVE (",X:2,") ")

    PARA Indice DE 1 ATÉ 10 FAÇA
        ESCREVAL(i," X ",numero," = ",i * numero)
    FIMPARA
    
fimalgoritmo