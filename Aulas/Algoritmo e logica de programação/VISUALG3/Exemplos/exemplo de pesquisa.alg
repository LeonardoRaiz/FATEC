Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/02/2016
Var
// Seção de Declarações das variáveis 
XV : VETOR[1..5] DE CARACTER
I : INTEIRO

FUNÇÃO PESQUISA(X: CARACTER):LOGICO
VAR J : INTEIRO
    K : CARACTER
INICIO
    PARA J DE 1 ATÉ 5 FAÇA
         K := XV[J]
         SE K = X ENTÃO
            RETORNE VERDADEIRO
            INTERROMPA
         SENÃO
            RETORNE FALSO
         FIMSE
    FIMPARA
FIMFUNÇÃO

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
    PARA I DE 1 ATÉ 5 FAÇA
         XV[I] := CARAC(I+64)
         ESCREVAL(XV[I])
    FIMPARA

    ESCREVAL(PESQUISA("D"))
    
Fimalgoritmo

