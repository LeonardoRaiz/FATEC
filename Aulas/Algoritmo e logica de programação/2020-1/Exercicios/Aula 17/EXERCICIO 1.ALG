Algoritmo "Exercicio 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/06/2020
Var
// Se��o de Declara��es das vari�veis 
a, r, v: vetor [1..10] De inteiro
i, j, qtde, cont, cont_r:inteiro


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
PARA i DE 1 ATE 10 FACA
     LEIA(a[i])
FIMPARA

cont_r := 1
PARA i DE 1 ATE 10 FACA
     qtde := 1
     PARA j De 1 ATE 10 FACA
          SE i <> j ENTAO
             SE a[i] = a[j] ENTAO
                qtde := qtde + 1
             FIMSE
          FIMSE
     FIMPARA
     
     SE qtde > 1 ENTAO
        cont := 1
        ENQUANTO (cont < cont_r) E (a[i] <> r[cont]) FACA
                 cont := cont + 1
        FIMENQUANTO
        
        SE cont = cont_r ENTAO
           r[cont_r] := a[i]
           v[cont_r] := qtde
           cont_r := cont_r + 1
        FIMSE
     FIMSE
FIMPARA

PARA i DE 1 ATE cont_r - 1 FACA
     ESCREVAL(r[i], v[i])
FIMPARA


Fimalgoritmo