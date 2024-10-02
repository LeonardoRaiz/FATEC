Algoritmo "OSPARES"
// Disciplina  : [Linguagem e Lógica de Programação] 
// Professor(a): Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/07/2015
Var
// Seção de Declarações das variáveis 
n1 : inteiro

FUNÇÃO Pares(x: Inteiro) : Logico
Inicio
        SE (X MOD 2) = 0 ENTÃO
           Retorne Verdadeiro
        SENÃO
           Retorne FALSO
        FIMSE
        
FIMFUNÇÃO

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   PARA n1 de 360 ATÉ 0 PASSO -13 FAÇA
        SE Pares(n1) ENTÃO
           ESCREVAL(n1)
        FIMSE
   FIMPARA

Fimalgoritmo