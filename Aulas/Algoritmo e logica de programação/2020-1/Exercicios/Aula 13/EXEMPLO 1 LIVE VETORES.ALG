Algoritmo "Exemplo 1 LIVE VETORES"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/06/2020
Var
// Se��o de Declara��es das vari�veis 
num: vetor [1..9] DE inteiro
i, j :inteiro
contador: inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
PARA i DE 1 ATE 9 FACA
     ESCREVAL("Insira o valor na posi��o", i , ": ")
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
      ESCREVAL("Valor: ", num[i], "Posi��o: ", i)
   FIMSE
FIMPARA

Fimalgoritmo