Algoritmo "Exercicio 4 LIVE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/06/2020
Var
// Se��o de Declara��es das vari�veis 
gabarito : vetor [1..8] DE caractere
respostas : vetor [1..8] DE caractere
i,j : inteiro
ra : inteiro
pontos : inteiro
tot_ap : inteiro
perc_ap: real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
// Leitura do gabarito
PARA i DE 1 ATE 8 FACA
     ESCREVA("Digite a resposta da quest�o ", i, " :")
     LEIA(gabarito[i])
FIMPARA

// Leitura das respostas dos alunos
PARA i DE 1 ATE 10 FACA // Representa cada aluno
     ESCREVA("Digite o RA do aluno: ")
     LEIA(ra)
     pontos := 0
     PARA j DE 1 ATE 8 FACA // resposta do aluno ativo
          ESCREVA("Quest�o ", j, " :")
          LEIA(respostas[j])
          SE gabarito[j] = respostas[j] ENTAO
             pontos := pontos + 1
          FIMSE
     FIMPARA
     ESCREVAL("O aluno de RA: ", ra," acertou: ", pontos, " pontos")
     SE pontos >= 6 ENTAO
         tot_ap := tot_ap + 1
     FIMSE
FIMPARA

perc_ap := tot_ap * 100/10
ESCREVAL("A percentagem de alunos aprovados � de: ", perc_ap)



Fimalgoritmo