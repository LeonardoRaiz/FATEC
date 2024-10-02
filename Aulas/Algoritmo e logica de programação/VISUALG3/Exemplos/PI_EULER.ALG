Algoritmo "Pi_Euler"
//Calcula Pi usando 1.000.000 de termos na "Série de Euler"
//Autor  : Mário Leite
//E-mail : marleite@gmail.com
//------------------------------------------------------------------------------
   var j: inteiro
       Soma, Pii: real
 Inicio
   Soma <- 0.0
   Cronometro on   //liga o cronômetro
   Para j De 1 Ate 1000 Faca
   	Soma <- Soma + 1/(j^2)
   	Pii <- RaizQ(6*Soma)
   	Escreval(Pii)   //valores parciais de Pi
   FimPara
   Cronometro off   //desliga o cronômetro
   Escreval("")
FimAlgoritmo