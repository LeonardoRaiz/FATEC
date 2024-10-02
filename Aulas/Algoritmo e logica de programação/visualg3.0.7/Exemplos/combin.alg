Algoritmo "semnome"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função : Calcular combinacao de n p a p
// Autor : Cláudio Morgado de Souza
// Data : 14/09/2002
// Seção de Declarações 
var
   n,p,t, u : inteiro
inicio
// Seção de Comandos 
escreva("Número : ")
leia(n)
escreva("Taxa : ")
leia(p)
u <- 1
para t de n-p+1 ate n faca
    u <- u * t
fimpara
para t de 2 ate p faca
    u <- u div t
fimpara
escreval( "Combinação de" , n , " elementos", p , " a" , p , " =" , u )
fimalgoritmo
