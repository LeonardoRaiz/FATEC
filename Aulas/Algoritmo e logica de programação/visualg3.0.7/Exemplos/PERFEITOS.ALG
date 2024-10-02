algoritmo "perfeitos"
var i,n,soma: inteiro
inicio
leia (n)
soma <- 0
para i de 1 ate n-1 faca
 se n%i=0 entao
 soma <- soma + i
 fimse
fimpara
se soma=n entao
 escreva ("Perfeito")
senao
 escreva ("Não é perfeito")
fimse
fimalgoritmo