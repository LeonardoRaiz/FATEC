Algoritmo "Exemplo condi��o"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2020
Var
// Se��o de Declara��es das vari�veis 
nota_trab, aval_sem, exame, media: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite a nota do trabalho de laborat�rio: ")
LEIA(nota_trab)
ESCREVA("Digite a nota da avalia��o semestral: ")
LEIA(aval_sem)
ESCREVA("Digite a nota do exame final: ")
LEIA(exame)

media := (nota_trab * 2 + aval_sem * 3 + exame * 5)/ 10
ESCREVAL("A m�dia do aluno � de: ", media)

SE media < 5 ENTAO
   ESCREVAL("Obteve conceito E")
SENAO
   SE media < 6 ENTAO
      ESCREVAL("Obteve conceito D")
   SENAO
        SE media < 7 ENTAO
           ESCREVAL("Obteve conceito C")
        SENAO
             SE media < 8 ENTAO
                ESCREVAL("Obteve conceito B")
             SENAO
                  SE media <= 10 ENTAO
                     ESCREVAL("Obteve conceito A")
                  FIMSE
             FIMSE
        FIMSE
   FIMSE
FIMSE

Fimalgoritmo