Algoritmo "Exemplo Aula 08"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2020
Var
// Se��o de Declara��es das vari�veis 
soma, valor :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
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