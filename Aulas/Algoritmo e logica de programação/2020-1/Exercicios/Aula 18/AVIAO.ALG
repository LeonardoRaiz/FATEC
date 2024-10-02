Algoritmo "Aviao"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/07/2020
Var
// Seção de Declarações das variáveis 
voo, lugares : vetor [1..12] DE inteiro
origem, destino: vetor [1..12] DE caracter
local: caracter
i, op, op2, num_voo: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 2 FACA
     LEIA(voo[i])
     LEIA(origem[i])
     LEIA(destino[i])
     LEIA(lugares[i])
FIMPARA

REPITA // faca
      ESCREVAL("consulta")
      ESCREVAL("reserva")
      ESCREVAL("finalizar")
      ESCREVAL("digite a op")
      LEIA(op)
      
      SE op = 1 ENTAO
         ESCREVAL("consulta - voo")
         ESCREVAL("consulta - origem")
         ESCREVAL("consulta - destino")
         ESCREVAL("Digite a op")
         LEIA(op2)
         
         SE op2 = 1 ENTAO
            ESCREVAL("Numero voo")
            LEIA(num_voo)
            i := 1
            ENQUANTO ((i<=10)E(voo[i]<>num_voo)) FACA
                 i := i + 1
            FIMENQUANTO

            SE i > 12 ENTAO
               ESCREVAL("voo inexistente")
            SENAO
               ESCREVAL("numero voo", voo[i])
               ESCREVAL("local origem", origem[i])
               ESCREVAL("local destino", destino[i])
               ESCREVAL("lugares disponiveis", lugares[i])
            FIMSE
         FIMSE
      
         SE op2 = 2 ENTAO
            ESCREVAL("Origem")
            LEIA(local)
            PARA i DE 1 ATE 12 FACA
                 SE local = origem[i] ENTAO
                    ESCREVAL("numero voo", voo[i])
                    ESCREVAL("local origem", origem[i])
                    ESCREVAL("local destino", destino[i])
                    ESCREVAL("lugares disponiveis", lugares[i])
                 FIMSE
            FIMPARA
         FIMSE
         
         SE op2 = 3 ENTAO
            ESCREVAL("Digite o destino")
            LEIA(local)
            PARA i DE 1 ATE 12 FACA
                 SE local = destino[i] ENTAO
                    ESCREVAL("numero voo", voo[i])
                    ESCREVAL("local origem", origem[i])
                    ESCREVAL("local destino", destino[i])
                    ESCREVAL("lugares disponiveis", lugares[i])
                 FIMSE
            FIMPARA
         FIMSE
      FIMSE
      
      SE op = 2 ENTAO
         ESCREVA("Voo desejado")
         LEIA(num_voo)
         i := 1
         ENQUANTO ((i <= 12)E(voo[i] <> num_voo)) FACA
                     i := i + 1
         FIMENQUANTO
         
         SE i > 12 ENTAO
            ESCREVA("voo não existe")
         SENAO
              SE lugares[i] = 0 ENTAO
                 ESCREVA("Voo lotado")
              SENAO
                 lugares[i] := lugares[i] - 1
                 ESCREVA("REserva confirmada")
              FIMSE
         FIMSE
      FIMSE
ATE(op = 3) enquanto


Fimalgoritmo