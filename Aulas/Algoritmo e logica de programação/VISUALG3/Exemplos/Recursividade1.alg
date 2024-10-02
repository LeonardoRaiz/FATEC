Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição    : mostra uma variação de V = V . (V-1)
// Autor(a)     : Nome do(a) aluno(a)
// Data atual   : 28/02/2016
Var
// Seção de Declarações das variáveis 
    X,I: inteiro
      V: VETOR[0..10] DE inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
    PARA I DE 10 ATÉ 0 PASSO -1 FAÇA
         V[I] <- I
    FIMPARA

    PARA I DE 10 ATÉ 0 PASSO -1 FAÇA
         SE ((I - 1) >= 0) ENTÃO
            X <- V[I] * V[I-1]
            ESCREVAL(I:2," = ",X:2)
         FIMSE
    FIMPARA

Fimalgoritmo

