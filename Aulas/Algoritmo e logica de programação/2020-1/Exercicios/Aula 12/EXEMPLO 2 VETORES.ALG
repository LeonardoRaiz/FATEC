Algoritmo "Exemplo 2 VETORES"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/06/2020
Var
// Seção de Declarações das variáveis 
nota :vetor [1..4] DE real
media :real
i :inteiro
somaV: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 4 FACA
     ESCREVAL("Insira a nota ", i, " :")
     LEIA(nota[i])
FIMPARA

//Media Soma dos valores / qtd dos valores
somaV := 0
PARA i DE 1 ATE 4 FACA
     somaV := somaV + nota[i]
FIMPARA

media := somaV/4

SE(media >= 6)ENTAO
     ESCREVAL("Média final é de: ", media)
     ESCREVAL("Aprovado")
SENAO
     ESCREVAL("Média final é de: ", media)
     ESCREVAL("Reprovado")
FIMSE



Fimalgoritmo