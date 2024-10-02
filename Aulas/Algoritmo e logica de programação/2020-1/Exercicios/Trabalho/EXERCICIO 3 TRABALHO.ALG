Algoritmo "Exercicio 3 Trabalho"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/05/2020
Var
// Seção de Declarações das variáveis 
hora, h, m, conversao: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LEIA(hora)
h := int(hora)
m := hora - h
conversao := (h*60) + (m*100)
ESCREVA(conversao)

Fimalgoritmo