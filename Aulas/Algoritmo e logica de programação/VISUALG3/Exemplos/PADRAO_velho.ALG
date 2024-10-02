Algoritmo "PADRAO"
// Disciplina  : [Linguagem e Lógica de programaçao]
// Professor(a):
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/06/2015
Var
   // Seção de Declarações das variáveis
   X,Y,I,P : inteiro
   xmat : VETOR[1..31] de caracter
   FLAG1,FLAG2 : logico
   TECLA : caractere
   
INICIO
   // Seção de Comandos, procedimento, funções, operadores, etc...
   FLAG1 := VERDADEIRO
   ENQUANTO FLAG1 FAÇA
      LIMPATELA
      ESCREVAL("Digite um padrão de asteriscos na tela")
      ESCREVAL(" ")
      FLAG2 := VERDADEIRO
      I := 1
      ENQUANTO FLAG2 FAÇA
         ESCREVAL(" ")
         Escreva("Digite o ",I,"º padrão: ")
         LEIA(XMAT[I])
         SE (XMAT[I] < 0 ENTÃO
            FLAG2 := FALSO
         FIMSE
         I := I + 1
         SE I > 30 ENTÃO
            FLAG2 := FALSO
         FIMSE
      FIMENQUANTO
      LIMPATELA
      ESCREVAL(" ")
      ESCREVAL(" ============================== ")
      ESCREVAL(" ")
      PARA X := 1 ATÉ I FAÇA
         P := XMAT[X]
         ESCREVAL(" Padrão : ")
         PARA Y := 1 ATÉ P FAÇA
            ESCREVA("*")
            FIM
            ESCREVA(" => ",P)
         FIMPARA
         ESCREVAL(" ")
         ESCREVA("Continua? <S/N> ")
         LEIA(TECLA)
         SE (TECLA = "n" OU TECLA = "N" ENTÃO
            FLAG1 := FALSO
         FIMSE
      FIMENQUANTO
fimAlgoritmo