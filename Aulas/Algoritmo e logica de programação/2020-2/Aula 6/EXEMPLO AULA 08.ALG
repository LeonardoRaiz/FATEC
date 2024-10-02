Algoritmo "Exemplo Aula 08"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2020
Var
// Seção de Declarações das variáveis 
soma, valor :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
soma := 0
ESCREVA ("Digite um valor para a soma: ")
LEIA (valor)

ENQUANTO valor <> 0 FACA
         soma := soma + valor
         ESCREVAL ("Total: ", soma)
         ESCREVA ("Digite um valor para a soma: ")
         LEIA (valor)
FIMENQUANTO

ESCREVAL ("Resultado: ", soma)

Fimalgoritmo