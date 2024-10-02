Algoritmo "Voo"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/11/2020
Var
// Seção de Declarações das variáveis 
voo : vetor [1..12] DE inteiro
lugares : vetor [1..12] DE inteiro
origem : vetor [1..12] DE caracter
destino : vetor [1..12] DE caracter
op, op2 : inteiro
i : inteiro
num_voo : inteiro
cont_voo: inteiro
local : caracter
naoE : inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// OUTRO SISTEMA //
// SISTEMA 2 //
// Inserir os DADOS
PARA i DE 1 ATE 2 FACA
     ESCREVA("Insira o numero do voo: ")
     LEIA(voo[i])
     ESCREVA("Insira a origem: ")
     LEIA(origem[i])
     ESCREVA("Insira o destino: ")
     LEIA(destino[i])
     ESCREVA("Insira os lugares vagos 0 até 12: ")
     LEIA(lugares[i])
FIMPARA


// Consultar
REPITA
      ESCREVAL("============= MENU1 ==================")
      ESCREVAL("Digite 1 - Consultar voo")
      ESCREVAL("Digite 2 - Reservar lugar")
      ESCREVAL("Digite 3 - Finalizar programa")
      LEIA(op)
      
      SE op = 1 ENTAO
      // Consultar
         LIMPATELA
         ESCREVAL("=============== MENU2 =================")
         ESCREVAL("1 - Numero de voo")
         ESCREVAL("2 - Origem")
         ESCREVAL("3 - Destino")
         LEIA(op2)
         
         SE op2 = 1 ENTAO
         // numero de voo
            //SELECT * FROM VOO WHERE num_voo = 2
            ESCREVA("Insira o numero do voo: ")
            LEIA(num_voo)
            //cont_voo := 1
            //ENQUANTO ((cont_voo <= 12) E (voo[cont_voo] <> num_voo)) FACA
            //           cont_voo := cont_voo + 1
            //FIMENQUANTO
            PARA cont_voo DE 1 ATE 12 FACA
                 SE voo[cont_voo] = num_voo ENTAO
                    ESCREVAL("Numero voo: ", voo[cont_voo])
                    ESCREVAL("Origem: ", origem[cont_voo])
                    ESCREVAL("Destino: ", destino[cont_voo])
                    ESCREVAL("Qtd lugares: ", lugares[cont_voo])
                    SE cont_voo = 12 ENTAO
                       cont_voo := cont_voo + 1
                    FIMSE
                    INTERROMPA
                 SENAO
                    SE cont_voo = 12 ENTAO
                       cont_voo := cont_voo + 1
                       ESCREVAL("Voo inexistente!")
                    FIMSE
                 FIMSE
            FIMPARA
         FIMSE
         
         SE op2 = 2 ENTAO
         // Origem
            LIMPATELA
            ESCREVA("Digite a origem: ")
            LEIA(local)
            naoE := 0
            PARA i DE 1 ATE 12 FACA
                 SE local = origem[i] ENTAO
                    ESCREVAL("Numero voo: ", voo[i])
                    ESCREVAL("Origem: ", origem[i])
                    ESCREVAL("Destino: ", destino[i])
                    ESCREVAL("Qtd lugares: ", lugares[i])
                    ESCREVAL("==================================")
                    naoE := 1
                 FIMSE
            FIMPARA

            SE naoE = 0 ENTAO
               ESCREVAL("Origem inexistente!")
            FIMSE
         FIMSE
         
         SE op2 = 3 ENTAO
         // Destino
            LIMPATELA
            ESCREVA("Insira o destino: ")
            LEIA(local)
            naoE := 0
            PARA i DE 1 ATE 12 FACA
                 SE local = destino[i] ENTAO
                    ESCREVAL("Numero voo: ", voo[i])
                    ESCREVAL("Origem: ", origem[i])
                    ESCREVAL("Destino: ", destino[i])
                    ESCREVAL("Qtd lugares: ", lugares[i])
                    ESCREVAL("==================================")
                    naoE := 1
                 FIMSE
            FIMPARA
            
            SE naoE = 0 ENTAO
               ESCREVAL("Destino inexistente!")
            FIMSE
         
         FIMSE
      FIMSE
      
      SE op = 2 ENTAO
      // Reservar
         LIMPATELA
         ESCREVA("Insira o numero do voo: ")
         LEIA(num_voo)
         naoE := 0
         PARA i DE 1 ATE 12 FACA
              SE num_voo = voo[i] ENTAO
                 naoE := 1
                 INTERROMPA
              FIMSE
         FIMPARA
         
         SE naoE = 0 ENTAO
            ESCREVAL("Voo inexistente!")
         SENAO
            SE lugares[i] = 0 ENTAO
               ESCREVAL("Voo lotado")
            SENAO
               lugares[i] := lugares[i] - 1
               ESCREVAL("Reserva confirmada!")
            FIMSE
         FIMSE            *
      FIMSE

ATE(op = 3)



Fimalgoritmo