Algoritmo "semnome"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Função : Demonstrar o uso das varias funcoes de caracteres do Visualg 3.03
// Autor :
// Data : 31/12/2003
// Seção de Declarações 
var t : caracter

funcao replicar(s : caracter ; n : inteiro ) : caracter
// Replica a cadeia de caracteres S, N vezes
var t : caracter
    J : inteiro
inicio
   t <- ""
   para j de 1 ate n faca
       t <- t + s
   fimpara
   retorne t
fimfuncao

funcao esquerda(s : caracter ; n : inteiro) : caracter
inicio
   retorne copia(s,1,n)
fimfuncao

funcao direita(s : caracter ; n : inteiro) : caracter
inicio
   retorne copia(s,compr(s)-n+1 ,n)
fimfuncao

funcao numpcaraczero( v, c : inteiro) : caracter
inicio
   retorne direita( replicar("0",c) + numpcarac(v),c)
fimfuncao

procedimento insere( var s : caracter ; subs : caracter ; posic : inteiro )
// Insere a cadeia de caracteres SUBS na variavel S, a partir de POSIC
var x,y : caracter
inicio
     x <- esquerda(s,posic-1)
     y <- direita(s,compr(s)-posic+1)
     s <- x + subs + y
fimprocedimento

inicio
escreval(numpcaraczero(12,6))
t <- "RioJaneiro"
insere(t," de ",4)
escreva(t)
fimalgoritmo
