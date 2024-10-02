Algoritmo "Exemplo SE - Aula 4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/09/2020
Var
// Seção de Declarações das variáveis 
trab, aval, exame: real
media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Insira a nota do trabalho: ")
LEIA(trab)
ESCREVA("Insira a nota da avaliação: ")
LEIA(aval)
ESCREVA("Insira a nota do exame: ")
LEIA(exame)

media := (trab*2 + aval*3 + exame*5)/ 10

ESCREVAL("A media final é: ", media)

SE(media < 5) ENTAO
     ESCREVA("O conceito foi E")
SENAO
     SE(media < 6)ENTAO
          ESCREVA("O conceito foi D")
     SENAO
          SE(media < 7)ENTAO
               ESCREVA("O conceito foi C")
          SENAO
               SE(media < 8)ENTAO
                    ESCREVA("O conceito foi B")
               SENAO
                    ESCREVA("O conceito foi A")
               FIMSE
          FIMSE
     FIMSE
FIMSE

Fimalgoritmo