Algoritmo "semnome"
// Disciplna   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/10/2015

CONST Vet_max = 3

Var
// Seção de Declarações das variáveis 
Poltronas: vetor[1..vet_max,1..2] de caracter
indice,X: inteiro
xpol,xnom: Caracter
ACHOU : LOGICO

FUNÇÃO PESQUISA(ocupado: caracter):logico
Var voltar: logico
    xvet: inteiro
Inicio
  Voltar := Falso
  PARA xvet de 1 ATÉ vet_max FAÇA
    SE Ocupado = PoltronaS[xvet,1] ENTÃO
       voltar:=Verdadeiro
    FIMSE
  FIMPARA
  retorne voltar
FIMFUNÇÃO

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   LIMPATELA
   indice := 0
   Enquanto indice < vet_max FAÇA
      ESCREVA("Digite o numero da poltrona: ")
      LEIA(xpol)
      SE PESQUISA(xpol) ENTÃO
         ESCREVAL("Poltrona está ocupada por: ",Poltronas[indice,2]," <ENTER>")
         LEIA(ACHOU)
      SENÃO
         ESCREVA("Digite o nome da pessoa: ")
         LEIA(xnom)
         indice := indice + 1
      // gravar
         Poltronas[indice,1]:=xpol
         Poltronas[indice,2]:=xnom
      FIMSE
    FIMENQUANTO
ESCREVAL("===============================")
PARA X DE 1 ATÉ indice FAÇA
     ESCREVAL("Número: ",Poltronas[x,1])
     ESCREVAL("Nome  : ",Poltronas[x,2])
FIMPARA

Fimalgoritmo