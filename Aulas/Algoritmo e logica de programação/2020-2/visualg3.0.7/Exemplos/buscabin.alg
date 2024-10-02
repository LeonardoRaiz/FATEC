algoritmo "buscabin"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Algoritmo BUBBLESORT
// Função : Demonstração para o programa VisuAlg 3.03
// Data : 08/09/2002
// Função : Exemplo de Busca Binaria
// Autor : Cláudio Morgado de Souza
// Data : (corrigido: 15/09/2002 )
// Força a entrada em modo DOS
dos
// Seção de Declarações
var
   li,ls,j,vbusca, ind : inteiro
   v : vetor[1..20] de inteiro
   achou : logico

inicio
// Preenche um vetor com 20 números aleatórios, entre 0 e 100
aleatorio 0, 100
para j de 1 ate 20 faca
   leia(v[j])
fimpara
aleatorio off
// Ordena o vetor, usando Bubblesort e reaproveitando as variáveis
para li de 1 ate 20 faca
   para ls de 1 ate 19 faca
      se v[ls] > v[ls+1] entao
         vbusca <- v[ls]
         v[ls] <- v[ls+1]
         v[ls+1] <- vbusca
      fimse
   fimpara
fimpara
// Busca binária
repita
   escreva( "Valor para busca (ESC ou menor que 0 termina) : ")
   leia( vbusca)
   se vbusca >= 0 entao
      li <- 1
      ls <- 20
      achou <- Falso
      enquanto (nao achou) e (li <= ls) faca
         ind <- (li+ls) \ 2
         se v[ind] = vbusca entao
            achou <- verdadeiro
         senao
            se v[ind] < vbusca entao
               li <- ind + 1
            senao
               ls <- ind - 1
            fimse
         fimse
      fimenquanto
      se achou entao
         escreval( "Valor encontrado na posição ", ind)
      senao
         escreval( "O valor ", vbusca, " não está na lista.")
      fimse
      // Pausa o programa. Tecle F9 neste ponto para continuar
      pausa
   fimse
ate vbusca < 0
fimalgoritmo
