Algoritmo "Caracol"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Função: Calcula os passos de um caracol para subir o poço
// Autor    : Antonio Carlos Nicolodi
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
        Escreval("Um dia um caracol estava andando e caio em um poço")
        Escreval("Cálcular o tempo que ele levaria pra sair desse poço")
        Escreval("========================================================")
        Escreval(" ")
        Para Dias de 0 ate Total faca
             se Sobe <= Total entao
                Sobe <- Sobe + 2 - Desce
                Escreval("Subiu 2 mts p/dia e baixou ",Desce," mts a noite, ficando ",Sobe," mts")
             senao
                 interrompa
             fimse
        fimpara

        Escreval(" ")
        Escreval("O Caracol levou ",Dias," dias")
        Escreval(" ")
        
fimAlgoritmo

