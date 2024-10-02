Algoritmo "Caracol"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Função: Calcula os passos de um caracol para subir o poço
// Autor    : Professor Antonio
// Data     : 05/04/2015 
Var 
        Sobe, Desce: Real 
        Dias, Total : Inteiro
     
Inicio
        Sobe  <- 0.0
        Desce <- 0.5
        Dias  <- 0
        Total <- 10
        Limpatela		
        Escreval("Cálcular os passos de um Caracol")
        Escreval("================================")
        Escreval(" ")
        Para Dias de 0 ate Total faca
             se Sobe <= Total entao
                Sobe <- Sobe + 2 - Desce
                Escreval("Sobe = ",Sobe)
             senao
                 interrompa
             fimse
        fimpara

        Escreval(" ")
        Escreval("O Caracol levou ",Dias," dias")
        Escreval(" ")
        
fimAlgoritmo

