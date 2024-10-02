Algoritmo "VETOR_PAR_IMPAR"
// Disciplina  : [Linguagem e Lógica de Programação com o Visualg 3.0]
// Professor(a): Antonio Carlos Nicolodi 
// Descrição   : O algoritmo pede (x) números e separa os (pares e impares)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/07/2015
Var
// Seção de Declarações das variáveis 
   Avet : VETOR[1..10] DE inteiro
   Bvet : VETOR[1..10] DE inteiro
   Cvet : VETOR[1..10] DE inteiro
    i,X : Inteiro
      K : Logico
     dc : Caracter
 espaco : Caracter
       
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
       k:= Verdadeiro
       espaco := "       "  // 07 espaços em branco.
       X := 10

       REPITA
         Limpatela
         Escreval("Digite quantos números : ")
         Leia(x)
         SE X = 0 ENTÃO
            K := Falso
         FIMSE
       ATE ((X >= 0) E (X <= 10))

       Enquanto k FAÇA
          Limpatela
          Escreval("Digite os (",x:3,") números: ")
          PARA i de 1 ATÉ X FAÇA
               Escreva("Numero [",i:3,"] : ")
               Leia(Avet[i])
          FIMPARA
//        ARMAZENA SÓ OS PARES
          PARA i de 1 ATÉ X FAÇA
               SE ((Avet[i] MOD 2 ) = 0) ENTÃO
                  Bvet[i] := Avet[i] // SE o resto da divisão é zero "0" é par
               SENÃO
                  Bvet[i] := 0
               FIMSE
          FIMPARA
//        ARMAZENA SÓ OS IMPARES
          PARA i de 1 ATÉ X FAÇA
               SE ((Avet[i] MOD 2 ) = 1) ENTÃO
                  Cvet[i] := Avet[i] // SE o resto da divisão é um "1" é impar
               SENÃO
                  Cvet[i] := 0
               FIMSE
          FIMPARA
//        IMPRIME (MOSTRA TODOS OS NUMEROS
          Limpatela
          Escreval("Os números são:")
          Escreval("Vetor - Entrados - Pares - Impares ")
          Escreval("===================================")
          PARA i de 1 ATÉ X FAÇA
               Escreva("Avet[",i:3,"]= ")
               Escreva(Avet[i]:3)
               Escreva(espaco)
               Escreva(Bvet[i]:3)
               Escreva(espaco)
               Escreva(Cvet[i]:3)
               Escreval("")
          FIMPARA
          Escreval(espaco)
          Escreval("Deseja continuar <S/N> ? ")
          Leia(dc)
          SE (Maiusc(dc) = "N") ENTÃO
             K := Falso
          FIMSE
       FimEnquanto
Fimalgoritmo