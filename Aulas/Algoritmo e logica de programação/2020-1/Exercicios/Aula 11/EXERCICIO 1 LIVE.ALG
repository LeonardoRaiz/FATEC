Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/05/2020
Var
// Se��o de Declara��es das vari�veis 
cont_time, cont_jog :inteiro // i, j
idade, peso, altura :inteiro
qtdI :inteiro
media_idade :real
media_altura :real
totalJ80 :inteiro
porc :real //percentagem / porcentagem
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

qtdI := 0
media_altura := 0
totalJ80 := 0
PARA cont_time DE 1 ATE 5 FACA
     media_idade := 0
     PARA cont_jog DE 1 ATE 11 FACA
          ESCREVAL("Jogador -----", cont_jog,"------")
          ESCREVAL("Informe a idade: ")
          LEIA(idade)
          ESCREVAL("Informe o peso: ")
          LEIA(peso)
          ESCREVAL("Informe a altura: ")
          LEIA(altura)
          // 1
          SE idade < 18 ENTAO
             qtdI := qtdI + 1
          FIMSE
          // 2
          media_idade := media_idade + idade
          // 3
          media_altura := media_altura + altura
          // 4
          SE peso > 80 ENTAO
             totalJ80 := totalJ80 + 1
          FIMSE
     FIMPARA
     // saida do bloco 2
     media_idade := media_idade / 11
     ESCREVAL("Media de idade do time ---", cont_time, "--- � de: ", media_idade)
FIMPARA

// saida do bloco 1
ESCREVAL("A quantidade de jogadores com idade inferior a 18 anos: ", qtdI)
// saida do bloco 3
media_altura := media_altura / 55
ESCREVAL("Media da altura de todos os jogadores: ", media_altura)
// saida do bloco 4
porc := totalJ80 * 100/55
ESCREVAL("A percentagem de jogadores acima de 80KG � de: ", porc,"%")

Fimalgoritmo