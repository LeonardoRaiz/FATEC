Algoritmo "semnome"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Função: Calcula os passos de um caracol para subir o poço
// Autor    : Antonio Carlos Nicolodi
// Data : 06/06/2003
// Seção de Declarações
var
 j,k : inteiro
 v : vetor [1..5,1..5] de inteiro
inicio
// Seção de Comandos
para j de 1 ate 5 faca
   para k de 1 ate 5 faca
      v[j,k] <- j*5+k
   fimpara
fimpara
fimalgoritmo
