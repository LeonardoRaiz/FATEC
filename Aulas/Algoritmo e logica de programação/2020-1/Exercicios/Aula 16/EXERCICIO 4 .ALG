Algoritmo "Exercicio 4 "
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/06/2020
Var
// Se��o de Declara��es das vari�veis 
gabarito: vetor [1..8] de caractere
resposta : vetor [1..8] de  caractere

num, pontos, i, j, tot_ap : inteiro
perc_ap : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

PARA i DE 1 ATE 8 FACA
     LEIA(gabarito[i])
FIMPARA

tot_ap := 0

PARA i DE 1 ATE 8 FACA
     ESCREVA ("Numero ", i, " aluno: ")
     LEIA(num)
     pontos := 0
     PARA j de 1 ATE 8 FACA
          ESCREVA("Resposta: ")
          LEIA(resposta[j])
          SE resposta[j] = gabarito[j] ENTAO
             pontos := pontos + 1
          FIMSE
     FIMPARA
     ESCREVA("Nota aluno: ", pontos)
     ESCREVAL("")
     SE pontos >= 6 ENTAO
             tot_ap := tot_ap + 1
     FIMSE
FIMPARA

perc_ap := tot_ap * 100/10
ESCREVA("Perc alunos: ", perc_ap)
          

Fimalgoritmo