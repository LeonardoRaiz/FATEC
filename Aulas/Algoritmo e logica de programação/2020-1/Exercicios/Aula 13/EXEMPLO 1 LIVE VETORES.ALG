Algoritmo "Exemplo 1 LIVE VETORES"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/06/2020
Var
// Seção de Declarações das variáveis 
num: vetor [1..9] DE inteiro
i, j :inteiro
contador: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 9 FACA
     ESCREVAL("Insira o valor na posição", i , ": ")
     LEIA(num[i])
FIMPARA

PARA i DE 1 ATE 9 FACA
   contador := 0
   PARA j DE 1 ate num[i] FACA  // 3
        SE num[i] % j = 0 ENTAO
           contador := contador + 1
        FIMSE
   FIMPARA

   SE contador = 2 ENTAO
      ESCREVAL("Valor: ", num[i], "Posição: ", i)
   FIMSE
FIMPARA

Fimalgoritmo