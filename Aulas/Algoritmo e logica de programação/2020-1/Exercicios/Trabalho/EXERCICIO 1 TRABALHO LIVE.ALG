Algoritmo "Exercício 1 Trabalho"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/05/2020
Var
// Seção de Declarações das variáveis 
peso_saco, racao_gato1, racao_gato2, gastoFinal :real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o peso do saco da ração: ")
LEIA(peso_saco)
ESCREVAL("O peso do saco de ração é: ", peso_saco, "KG")
ESCREVAL("Digite a quantidade de ração para o gato 1: ")
LEIA(racao_gato1)
ESCREVAL("Digite a quantidade de ração para o gato 2: ")
LEIA(racao_gato2)

racao_gato1 := racao_gato1 / 1000
racao_gato2 := racao_gato2 / 1000
gastoFinal := peso_saco - 5*(racao_gato1 + racao_gato2)

ESCREVA("Após cinco dias a quantidade de ração que restou foi de:", gastoFinal, "KG")


Fimalgoritmo