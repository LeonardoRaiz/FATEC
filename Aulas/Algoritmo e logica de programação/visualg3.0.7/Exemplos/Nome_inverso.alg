Algoritmo "Invertenome"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Função: Calcula os passos de um caracol para subir o poço
// Autor    : Antonio Carlos Nicolodi
// Data     : 05/04/2015 // Função :
// Autor :
// Data : 09/04/2015
// Seção de Declarações 
var
    s,c : caracter
    i,x : inteiro
inicio
// Seção de Comandos 
    Escreva("Digite um nome : ")
    Leia(s)
    x <- compr(s)
    c <- ""
    para i de x ate 1 passo -1 faca
       c <- c + copia(s,i,1)
    fimpara
    Escreva(" ")
    Escreval(c)
fimalgoritmo
