Algoritmo "Exerc�cio 1 Trabalho"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/05/2020
Var
// Se��o de Declara��es das vari�veis 
peso_saco, racao_gato1, racao_gato2, gastoFinal :real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o peso do saco da ra��o: ")
LEIA(peso_saco)
ESCREVAL("O peso do saco de ra��o �: ", peso_saco, "KG")
ESCREVAL("Digite a quantidade de ra��o para o gato 1: ")
LEIA(racao_gato1)
ESCREVAL("Digite a quantidade de ra��o para o gato 2: ")
LEIA(racao_gato2)

racao_gato1 := racao_gato1 / 1000
racao_gato2 := racao_gato2 / 1000
gastoFinal := peso_saco - 5*(racao_gato1 + racao_gato2)

ESCREVA("Ap�s cinco dias a quantidade de ra��o que restou foi de:", gastoFinal, "KG")


Fimalgoritmo