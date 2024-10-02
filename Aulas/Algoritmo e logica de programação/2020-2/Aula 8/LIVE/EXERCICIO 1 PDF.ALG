Algoritmo "Exercicio 1 PDF"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/10/2020
Var
// Seção de Declarações das variáveis 
primos : vetor [1..9] DE inteiro
i, j, cont : inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

//LOOP
PARA i DE 1 ATE 9 FACA
     ESCREVA("Digite o numero ", i , ": ")
     LEIA(primos[i])
FIMPARA

//LOOP para analisar cada ponto do vetor
PARA i DE 1 ATE 9 FACA
     //Responsavel para contar se foi divisivel ou não
     cont := 0
     //LOOP para contar de 1 até o valor que está no ponto
     PARA j DE 1 ATE primos[i] FACA
          SE primos[i] mod j = 0 ENTAO
             // +1
             cont := cont + 1
          FIMSE
     FIMPARA
     
     //PRIMO OU NAO
     SE cont = 2 ENTAO
         ESCREVAL("O valor", primos[i], " na posição ", i, "é primo")
     FIMSE
FIMPARA
Fimalgoritmo