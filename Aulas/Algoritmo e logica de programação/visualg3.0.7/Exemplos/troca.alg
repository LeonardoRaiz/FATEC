Algoritmo "semnome"
// Função : Demonstrar a passagem de parametros por referencia no Visualg versao 3.03
// Autor : Cláudio M. Souza
// Data : 31/12/2003
// Seção de Declarações 
var
a,b : inteiro

procedimento troca(var x,y : inteiro)
var t : inteiro
inicio
   t <- x
   x <- y
   y <- t
fimprocedimento

inicio
// Seção de Comandos 
a <- 3
b <- 4
escreval("A : ", a, " B : ", b)
troca(a,b)
escreval("A : ", a, " B : ", b)
fimalgoritmo
