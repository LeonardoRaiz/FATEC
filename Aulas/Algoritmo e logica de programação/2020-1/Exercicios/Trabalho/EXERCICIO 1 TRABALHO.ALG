Algoritmo "Exercício 1 Trabalho"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/05/2020
Var
// Seção de Declarações das variáveis 
peso_saco, racao_gato1, racao_gato2, total_final: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LEIA(peso_saco)
LEIA(racao_gato1)
LEIA(racao_gato2)

racao_gato1 := racao_gato1/1000
racao_gato2 := racao_gato2/1000
total_final := peso_saco - 5 * (racao_gato1 + racao_gato2)

ESCREVA(total_final)



Fimalgoritmo