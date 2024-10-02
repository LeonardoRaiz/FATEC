Algoritmo "semnome"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função : Demonstrar o uso do comento ESCOLHA (sem a clausula ATE nas listas)
// Autor :
// Data : 16/11/2002
// Seção de Declarações 
var time : caracter
inicio
// Seção de Comandos 
escreva("Entre com o nome de um time de futebol:")
leia(time)
escolha time
caso "Fluminense", "Flamengo", "Vasco", "Botafogo"
   escreva("É um time carioca.")
caso "São Paulo", "Palmeiras", "Santos", "Corínthians"
   escreva("É um time paulista.")
outrocaso
   escreva("É de outro estado.")
fimescolha
fimalgoritmo
