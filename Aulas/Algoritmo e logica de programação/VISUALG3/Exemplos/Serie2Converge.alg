Algoritmo "Serie2Converge"
//Mostra o número de termos da série 3/2^n para que seu valor seja 3
//Autor  : Mário Leite
//E-mail : marleite@gmail.com
//-------------------------------------------------------------------
   Var n: inteiro
       S: real
       T: logico
Inicio
   LimpaTela
   T <- Verdadeiro
   n <- 1
   S <- 0
   Enquanto (T) Faca
      S <- S + 3/(2^n)  //expressão da série
      {Formata a saída convenientemente}
      Se((n>=1) e (n<10)) Entao
         Escreval("Número de termos:",n, "         ", "Valor da série:", S)
      Fimse
      Se((n>=10) e (n<100)) Entao
         Escreval("Número de termos:",n, "        ", "Valor da série:", S)
      Fimse
      Se((n>=100) e (n<1000)) Entao
         Escreval("Número de termos:",n, "       ", "Valor da série:", S)
      FimSe
      Se((n>=1000) e (n<10000)) Entao
         Escreval("Número de termos:",n, "      ", "Valor da série:", S)
      FimSe
      Se((n>=10000) e (n<100000)) Entao
         Escreval("Número de termos:",n, "     ", "Valor da série:", S)
      FimSe
      Se((n>=100000) e (n<1000000)) Entao
         Escreval("Número de termos:",n, "    ", "Valor da série:", S)
      FimSe
      Se(n>=1000000) Entao
         Escreval("Número de termos:",n, "   ", "Valor da série:", S)
      FimSe
      Se(S=3) Entao
         T <- Falso
         Interrompa
      Senao
         n <- n + 1
      FimSe
  FimEnquanto
  Escreval("")
  Escreval("Número de termos da série para que seu valor seja igual a 3:", n)
Fimalgoritmo