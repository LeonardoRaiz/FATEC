Algoritmo "Exerc�cio 1 Trabalho"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/05/2020
Var
// Se��o de Declara��es das vari�veis 
peso_saco, racao_gato1, racao_gato2, total_final: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
LEIA(peso_saco)
LEIA(racao_gato1)
LEIA(racao_gato2)

racao_gato1 := racao_gato1/1000
racao_gato2 := racao_gato2/1000
total_final := peso_saco - 5 * (racao_gato1 + racao_gato2)

ESCREVA(total_final)



Fimalgoritmo