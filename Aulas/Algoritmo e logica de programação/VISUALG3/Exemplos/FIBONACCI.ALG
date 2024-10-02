Algoritmo "FIBONACCI"
// Disciplina  : [Linguagem e Lógica de Programação] 
// Professor(a): Antonio Carlos Nicolodi 
// Descrição   : Sequencia Fibonacci
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/10/2015
Var
// Seção de Declarações das variáveis 
     termo1,termo2,novoTermo,i : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
     termo1 := 0
     termo2 := 1
     novoTermo := 0
     Escreval(" 1o. termo = ", termo1)
     Escreval(" 2o. termo = ", termo2)
     PARA i DE 3 ATÉ 10 FAÇA
          novoTermo := termo1 + termo2
          Escreval(i,"o. Termo = ",  novoTermo)
          termo1 := termo2
          termo2 := novoTermo
     FIMPARA
Fimalgoritmo


