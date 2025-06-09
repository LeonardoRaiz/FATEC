algoritmo "Campo_Minadado_Energia_Contador"

procedimento gerarTabuleiro()
inicio
   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         tabuleiro[i, j] <- randi(19) + 2
      fimpara
   fimpara
fimprocedimento

procedimento mostrarTabuleiro(titulo: caractere)
var i, j: inteiro
inicio
   escreval("==============================")
   escreval(titulo)
   escreval("       C0   C1   C2   C3   C4")
   escreval("     -------------------------")
   para i de 0 ate 4 faca
      escreva("L", i, " |")
      para j de 0 ate 4 faca
         escreva(tabuleiro[i, j]:4)
      fimpara
      escreval()
   fimpara
   escreval("==============================")
fimprocedimento

procedimento desativarOuMarcar(cargaDesejada: inteiro; posicaoLinear: inteiro)
var i, j, contador, achou: inteiro
inicio
   achou <- 0
   contador <- 0

   // Desativa todas as ocorrências
   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         se tabuleiro[i, j] = cargaDesejada entao
            tabuleiro[i, j] <- 0
            achou <- 1
         fimse
         contador <- contador + 1
      fimpara
   fimpara

   // Se não encontrou a carga, marca posição como suspeita (1)
   se achou = 0 entao
      contador <- 0
      para i de 0 ate 4 faca
         para j de 0 ate 4 faca
            se contador = posicaoLinear entao
               tabuleiro[i, j] <- 1
            fimse
            contador <- contador + 1
         fimpara
      fimpara
   fimse
fimprocedimento

funcao escanearAmeaca(posInicial: inteiro): inteiro
var i, j, contador, soma: inteiro
inicio
   soma <- 0
   contador <- 0

   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         se contador >= posInicial entao
            se (tabuleiro[i, j] > 10) e (tabuleiro[i, j] mod 2 <> 0) entao
               soma <- soma + tabuleiro[i, j]
            fimse
         fimse
         contador <- contador + 1
      fimpara
   fimpara

   retorne soma
fimfuncao


var
   tabuleiro: vetor [0..4, 0..4] de inteiro
   carga, posicao, i, j: inteiro

inicio
   escreval("=== ⚡ CAMPO MINADO DE ENERGIA ⚡ ===")
   gerarTabuleiro()
   mostrarTabuleiro("🔋 Tabuleiro Energético Inicial:")

   escreval("Informe a carga energética a desativar (2 a 20):")
   leia(carga)

   escreval("Informe a célula para investigar (posição 0 a 24):")
   leia(posicao)

   desativarOuMarcar(carga, posicao)

   escreval()
   escreval("🔎 Escaneando ameaça restante...")
   escreval("Nível de ameaça a partir da posição ", posicao, ": 
   ", escanearAmeaca(posicao))

   mostrarTabuleiro("🧯 Tabuleiro Após Ação:")
fimalgoritmo