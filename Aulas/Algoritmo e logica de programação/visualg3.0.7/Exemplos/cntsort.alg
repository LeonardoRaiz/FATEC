Algoritmo "countsort"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função : Demonstração do método COUNTSORT de ordenação.
// Autor : Cláudio Morgado de Souza
// Data : 08/03/2003
// Seção de Declarações
var
v1 : vetor[1..100] de inteiro
v2 : vetor[1..20] de inteiro
j, i, k  : inteiro
inicio
// Liga a geracao de dados aleatorios de entrada, limitando-os de 1 a 100 (inclusive)
aleatorio 1,100
// Desliga o eco da leitura de dados na "tela" do computador.
eco off
para j de 1 ate 20 faca
   leia(v2[j])
fimpara
// Conta quantas vezes cada valor de 1 a 100 aparece em v2[]
para j de 1 ate 20 faca
   v1[v2[j]] <- v1[v2[j]] + 1
fimpara
// Inicia a contagem do tempo para a ordenação
cronometro on
k <- 1
para i de 1 ate 100 faca
   para j de 1 ate v1[i] faca
      v2[k] <- i
      k <- k + 1
   fimpara
fimpara
// Termina a contagem de tempo
cronometro off
// Escreve o vetor ordenado
para j de 1 ate 20 faca
   escreval("v2[",j,"] = ",  v2[j])
fimpara
fimalgoritmo
