Algoritmo "Exemplo Matriz"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/12/2020
Var
// Se��o de Declara��es das vari�veis 
mat : vetor [1..3,1..4] DE inteiro
i, j : inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

//Inserir dados
PARA i DE 1 ATE 3 FACA
      PARA j DE 1 ATE 4 FACA
           ESCREVAL("Insira na matriz [",i,"] [",j,"] :")
           LEIA(mat[i,j])
      FIMPARA
FIMPARA

//Mostrar os dados
PARA i DE 1 ATE 3 FACA
     PARA j DE 1 ATE 4 FACA
          ESCREVAL("O valor da matriz[",i,"][",j,"] :", mat[i][j])
     FIMPARA
FIMPARA


Fimalgoritmo