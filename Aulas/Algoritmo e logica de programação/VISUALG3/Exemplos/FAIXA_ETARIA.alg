Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/06/2016
Var
// Seção de Declarações das variáveis 
    pessoas : vetor[1..10] de Inteiro
    Faixa1,Faixa2,Faixa3,Faixa4,Faixa5: Inteiro
    Contar: Inteiro
    esperar: Logico

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Limpatela
   Escreval("Digite as idades de até 10 pessoas ")
   Escreval
   Escreval
// Solicitando os dados na tela
   PARA Contar de 1 ate 10 faca
        Escreva("Digite a ",Contar,"a. Pessoa: ")
        Leia(Pessoas[Contar])
   FIMPARA
   Escreval
   Escreval
// Verificando as faixas de idades
   PARA Contar de 1 ate 10 Faca
        SE Pessoas[Contar] <= 15 ENTAO
           Faixa1 <- Faixa1 + 1
        SENAO
           SE (Pessoas[Contar] > 15) E (Pessoas[Contar] <= 30) ENTAO
              Faixa2 <- Faixa2 + 1
           FIMSE
           SE (Pessoas[Contar] > 31) E (Pessoas[Contar] <= 45) ENTAO
              Faixa3 <- Faixa3 + 1
           FIMSE
           SE (Pessoas[Contar] > 46) E (Pessoas[Contar] <= 60) ENTAO
              Faixa4 <- Faixa4 + 1
           FIMSE
           SE (Pessoas[Contar] > 60) ENTAO
              Faixa5 <- Faixa5 + 1
           FIMSE
        FIMSE
     FIMPARA
//   MOSTRA NA TELA
     LIMPATELA
     Escreval("As Faixas de Idades apresentadas ")
     Escreval
     Escreval("1o. faixa com <=  15 anos : ",Faixa1:3)
     Escreval
     Escreval("2o. faixa de 16 à  30 anos: ",Faixa2:3)
     Escreval
     Escreval("3o. faixa de 31 à  45 anos: ",Faixa3:3)
     Escreval
     Escreval("4o. faixa de 46 à  60 anos: ",Faixa4:3)
     Escreval
     Escreval("5o. faixa acima de 60 anos: ",Faixa5:3)

Fimalgoritmo

