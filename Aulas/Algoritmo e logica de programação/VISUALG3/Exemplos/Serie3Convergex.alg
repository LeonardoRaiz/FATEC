Algoritmo "Serie3Convergex"
//Mostra o número de termos da série 1/(2^(n-1)) para que seu valor seja 2
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
      S <- S + 1/((2^(n-1)))  //expressão da série
      Escreval("n:",n, "    ",  "S:",S)
      Se(S=2) Entao
         T <- Falso
         Interrompa
      Senao
         n <- n + 1
      FimSe
  FimEnquanto
  Escreval("")
  Escreval("Número de termos da série para que seu valor seja igual a 3:", n)
Fimalgoritmo