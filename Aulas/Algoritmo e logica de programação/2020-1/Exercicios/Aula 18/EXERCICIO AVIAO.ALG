Algoritmo "Exercicio Aviao"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/07/2020
Var
// Seção de Declarações das variáveis 
voo: vetor [1..12] DE inteiro
lugares: vetor [1..12] DE inteiro
origem: vetor [1..12] DE caracter
destino: vetor [1..12] DE caracter
i :inteiro
op, op2:inteiro
num_voo:inteiro
cont:inteiro
local:caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// Inserir os DADOS
PARA i DE 1 ATE 12 FACA
     ESCREVA("Insira o numero do voo: ")
     LEIA(voo[i])
     ESCREVA("Insira a origem do voo: ")
     LEIA(origem[i])
     ESCREVA("Insira o destino do voo: ")
     LEIA(destino[i])
     ESCREVA("Insira o numero de lugares disponiveis do voo: ")
     LEIA(lugares[i])
FIMPARA

REPITA
     //MENU
     ESCREVAL("1 - Consulta")
     ESCREVAL("2 - Efetuar reserva")
     ESCREVAL("3 - SAIR")
     LEIA(op)
     
     SE op = 1 ENTAO
        LIMPATELA
        ESCREVAL("1 - Consultar por número de voo:")
        ESCREVAL("2 - Consultar por origem de voo:")
        ESCREVAL("3 - Consultar por destino de voo:")
        LEIA(op2)
        //SELECT num_voo WHERE voo
        
        SE op2 = 1 ENTAO
           ESCREVA("Digite o número do voo")
           LEIA(num_voo)
           cont := 1
           ENQUANTO((cont <= 12)E(num_voo <> voo[cont]))FACA
                   cont := cont + 1
           FIMENQUANTO
           
           SE cont > 12 ENTAO
              ESCREVA("Número de VOO não encontrado")
           SENAO
              ESCREVAL("Número VOO: ", voo[cont])
              ESCREVAL("Origem VOO: ", origem[cont])
              ESCREVAL("Destino VOO: ", destino[cont])
              ESCREVAL("Lugares disponiveis do VOO: ", lugares[cont])
           FIMSE
        FIMSE
        
        SE op2 = 2 ENTAO
           ESCREVA("Digite o origem do voo")
           LEIA(local)
           PARA i DE 1 ATE 12 FACA
                SE local = origem[i] ENTAO
                   ESCREVAL("Número VOO: ", voo[i])
                   ESCREVAL("Origem VOO: ", origem[i])
                   ESCREVAL("Destino VOO: ", destino[i])
                   ESCREVAL("Lugares disponiveis do VOO: ", lugares[i])
                SENAO
                   ESCREVAL("Origem não registrada")
                FIMSE
           FIMPARA
        FIMSE
        
        SE op2 = 3 ENTAO
           ESCREVA("Digite o destino do voo")
           LEIA(local)
           PARA i DE 1 ATE 12 FACA
                SE local = destino[i] ENTAO
                   ESCREVAL("Número VOO: ", voo[i])
                   ESCREVAL("Origem VOO: ", origem[i])
                   ESCREVAL("Destino VOO: ", destino[i])
                   ESCREVAL("Lugares disponiveis do VOO: ", lugares[i])
                SENAO
                   ESCREVAL("Origem não registrada")
                FIMSE
           FIMPARA
        FIMSE
     FIMSE
     
     SE op = 2 ENTAO
        LIMPATELA
        ESCREVA("Digite o número do VOO: ")
        LEIA(num_voo)
        cont := 1
        ENQUANTO((cont <= 12)E(num_voo <> voo[cont]))FACA
              cont := cont + 1
        FIMENQUANTO
        
        SE cont > 12 ENTAO
           ESCREVA("Número de VOO não encontrado")
        SENAO
           SE lugares[cont] = 0 ENTAO
              ESCREVA("VOO lotado")
           SENAO
              lugares[cont] := lugares[cont] - 1
              ESCREVA("Reserva efetuda!!!")
           FIMSE
        FIMSE
     FIMSE
     ESCREVAL("-----------------------------------------------")
     
     
ATE(op = 3)

Fimalgoritmo