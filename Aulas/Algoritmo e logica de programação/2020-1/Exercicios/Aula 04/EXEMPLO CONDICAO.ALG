Algoritmo "Exemplo condição"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2020
Var
// Seção de Declarações das variáveis 
nota_trab, aval_sem, exame, media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite a nota do trabalho de laboratório: ")
LEIA(nota_trab)
ESCREVA("Digite a nota da avaliação semestral: ")
LEIA(aval_sem)
ESCREVA("Digite a nota do exame final: ")
LEIA(exame)

media := (nota_trab * 2 + aval_sem * 3 + exame * 5)/ 10
ESCREVAL("A média do aluno é de: ", media)

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