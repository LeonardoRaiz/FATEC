Algoritmo "menorde3"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Algoritmo : MENOR DE 3 USANDO 2 VARIÁVEIS (!)
// Função : Demonstração para o programa VisuAlg 3.03
// Autor : Cláudio M. de Souza
// Data : 09/09/2002// Seção de Declarações 
var Menor, V1 : real
inicio
// Seção de Comandos 
escreval( "Este programa calcula o menor de três números digitados.")
escreva("Qual o primeiro valor ? ")
leia(Menor)
escreva("Qual o segundo valor ? ")
leia(V1)
se V1 < Menor entao
   Menor <- V1
fimse
escreva("Qual o terceiro valor ? ")
leia(V1)
se V1 < Menor entao
   Menor <- V1
fimse
escreval( "O menor valor digitado foi : " , Menor)
fimalgoritmo
