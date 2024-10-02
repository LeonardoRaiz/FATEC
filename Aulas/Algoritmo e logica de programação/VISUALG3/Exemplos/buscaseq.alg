algoritmo "semnome"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função : Demonstração para o programa VisuAlg 3.03
// Data : 08/09/2002
// Função : Busca Seqüencial
// Autor : Cláudio Morgado de Souza
// Data : 01/05/03 (correção)
dos
var
   j,k, vb : inteiro
   v : vetor[1..10] de inteiro
   achou : logico

procedimento preenchevetor
// Preenche o vetor com numeros aleatorios entre 0 e 100
var j : inteiro
inicio
para j de 1 ate 10 faca
   v[j] <- randi(100)
   escreval(j:5,v[j]:5)
fimpara
fimprocedimento

inicio
preenchevetor
escreva("Entre com o valor de busca (ESC termina) :")
leia(vb)
// Busca Seqüencial
j <- 1
repita
   se v[j] = vb entao
      achou <- verdadeiro
   senao
      J <- j+1
   fimse
ate (achou=verdadeiro) ou (j>10)
se achou entao
   escreval("Achei ", vb , " na posição ", j)
senao
   escreval("Nao achei.")
fimse
fimalgoritmo
