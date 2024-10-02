Algoritmo "VerifRepetidos"
Var
        VetRep : vetor[1..11] de inteiro
      VetEleRep: vetor[1..20] de inteiro
         i, j, k, m, n: inteiro
Inicio
      VetRep[1] <- 2
      VetRep[2] <- 3
      VetRep[3] <- 3
      VetRep[4] <- 5
      VetRep[5] <- 5
      VetRep[6] <- 6
      VetRep[7] <- 9
      VetRep[8] <- 10
      VetRep[9] <- 15
      VetRep[10] <- 15
// {Verifica as repetiçoes dos divisores}

      j <- 1
      PARA I DE 1 ATE 10 FAÇA
           N <- VetRep[I]
           M <- VetRep[I+1]
           
           SE (N = M) ENTÃO
              J <- J + 1
           SENÃO
              J <- 1
           FIMSE

           VetEleRep[N] <- j

       FIMPARA
//     {Verifica as quantidades de vezes que cada elemento aparece}

     Para n De 1 Ate 10 Faca
        Escreval(VetRep[N],": ", VetEleRep[n])
     FimPara
FimAlgoritmo