Algoritmo "Taboada"
// Disciplina  : [Linguagem e Lógica de programaçao]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
//     exemplo   esse programa mostra a Taboada de 09 ...
// Autor(a)    : Nome do(a) aluno(a) [Antonio...]
// Data atual  : 22/06/2015
var
// Seção de Declarações das variáveis 
   i : inteiro
   x : caracter
inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
    LIMPATELA
    ESCREVAL(" ")
    ESCREVA("Digite o seu nome : ")
    LEIA(X)
    ESCREVAL(" TABOADA DE NOVE (09) ")
    PARA i DE 1 ATÉ 10 FAÇA
        ESCREVAL(i," X 9 = ",i * 9)
    FIMPARA
    
fimalgoritmo