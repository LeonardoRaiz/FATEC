Algoritmo "Taboada de n"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Esse programa mostra a Taboada de "numero" ...
// Autor(a)    : Nome do(a) aluno(a) [ eu ]
// Data atual  : 09/09/2015
var
// Seção de Declarações das variáveis
       indice, numero : INTEIRO
inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
    LIMPATELA
    ESCREVAL(" ")
    ESCREVA("Digite um número : ")
    LEIA(numero)
    ESCREVAL(" TABOADA DE NOVE (",numero:2,") ")
// aqui o programa monta a taboada
    PARA Indice DE 1 ATÉ 10 FAÇA
        ESCREVAL(indice," X ",numero," = ",indice * numero)
    FIMPARA

fimalgoritmo