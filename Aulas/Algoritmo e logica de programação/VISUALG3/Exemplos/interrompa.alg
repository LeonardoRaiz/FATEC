Algoritmo "interrompa"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função : Demonstrar o uso dos comandos interrompa e fimrepita
// Autor :
// Data : 04/01/2004
// Seção de Declarações 
var x : inteiro
inicio
x <- 0
repita
   x <- x + 1
   escreva(x)
   se x = 10 entao
      interrompa // não estruturado, mas usado por alguns autores...
   fimse
fimrepita
escreval()
// O trecho acima é o mesmo que:
x <- 0
repita
   x <- x + 1
   escreva(x)
ate x = 10
fimalgoritmo
