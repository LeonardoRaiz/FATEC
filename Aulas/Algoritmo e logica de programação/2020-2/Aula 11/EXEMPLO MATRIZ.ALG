Algoritmo "Exemplo Matriz"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/12/2020
Var
// Seção de Declarações das variáveis 
mat : vetor [1..3,1..4] DE inteiro
i, j : inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

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