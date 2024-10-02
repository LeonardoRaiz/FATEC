algoritmo "buscabinr"
// Função : Exemplo de Busca Binaria Recursiva, Procedimentos, etc.
// Autor : Cláudio Morgado de Souza
// Data : 15/09/2002
// Força a entrada em modo DOS
dos
// Seção de Declarações
var
   v : vetor[1..20] de inteiro
   vbusca, ind : inteiro

funcao  buscabinrec( vbusca, li,ls  : inteiro ;  var ind: inteiro ) : logico
// Busca binária
var achou : logico
inicio
   achou <- falso
   ind <- (li+ls) div 2
   se (li > ls) entao
      retorne falso
   senao
      se v[ind] = vbusca entao
         retorne verdadeiro
      senao
         se v[ind] < vbusca entao
            li <- ind + 1
         senao
            ls <- ind - 1
        fimse
        retorne buscabinrec( vbusca, li,ls,ind )
      fimse
   fimse
fimfuncao

procedimento troca( var a, b : inteiro )
var t : inteiro
inicio
    t <- a
    a <- b
    b <- t
fimprocedimento

procedimento ordena
var a,b : inteiro
inicio
// Ordena o vetor, usando Bubblesort e reaproveitando as variáveis
para a de 1 ate 20 faca
   para b de 1 ate 19 faca
      se v[b] > v[b+1] entao
         troca(v[b],v[b+1])
      fimse
   fimpara
fimpara
fimprocedimento

procedimento carregavetor
var j : inteiro
inicio
// Preenche o vetor com 20 números inteiros aleatórios, entre 0 e 100
para j de 1 ate 20 faca
   v[j] <- randi(100)
fimpara
fimprocedimento

procedimento exibevetor
var j : inteiro
inicio
para j de 1 ate 20 faca
   escreval(j:5,v[j]:5)
fimpara
fimprocedimento

inicio
carregavetor
ordena
exibevetor
repita
   escreva( "Valor para busca (ESC ou menor que 0 termina) : ")
   leia( vbusca)
   se vbusca >= 0 entao
      se buscabinrec(vbusca, 1,20,ind) entao
         escreval( "Valor encontrado na posição ", ind)
      senao
         escreval( "O valor ", vbusca, " não está na lista.")
      fimse
   fimse
ate vbusca < 0
fimalgoritmo
