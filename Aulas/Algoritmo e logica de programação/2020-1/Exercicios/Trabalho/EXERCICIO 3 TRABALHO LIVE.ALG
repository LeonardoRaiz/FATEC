Algoritmo "Exercicio 3 TRABALHO LIVE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/05/2020
Var
// Seção de Declarações das variáveis 
hora, h, m, conversao : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite a hora: ")
LEIA(hora)
h := int(hora) // Recupera o valor inteiro
m := hora - h

conversao := (h*60) + (m*100)
ESCREVA("A conversão em minutos é de: ", conversao)
Fimalgoritmo