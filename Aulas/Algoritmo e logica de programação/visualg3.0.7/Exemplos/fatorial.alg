Algoritmo "semnome"
// Função : Demonstrar a capacidade de recursividade do Visualg versão 3.03
//          bem como o uso de variáveis locais
// Autor : Cláudio Morgado de Souza
// Data : 29/12/2003
// Seção de Declarações 
var valor : inteiro

procedimento obtervalor
var x : inteiro
inicio
escreva("Digite um número:")
leia(x)
valor <- x
fimprocedimento

funcao fatorial(v:inteiro) : inteiro
inicio
se v <= 2 entao
   retorne v
senao
   retorne v * fatorial(v-1)
fimse
fimfuncao

inicio
// Corpo principal do programa
obtervalor
escreva("O fatorial de ",valor," é ",fatorial(valor))
fimalgoritmo

