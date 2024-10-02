Algoritmo "semnome"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Autor : Cláudio
// Data : 21/06/2015
// Seção de Declarações 
var
   i : inteiro
   x : real
   matriz : vetor[1..10] de real
inicio
// Seção de Comandos 
i := 1
repita
     x := randi(100)
     matriz[i] := x
     i := i + 1
ate i = 10
fimalgoritmo
