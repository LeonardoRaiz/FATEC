Algoritmo "Matriz_Funcoes_Retorno"

Var
matriz: vetor [0..4, 0..4] de inteiro
i, j, valor, posicao: inteiro

// Função para gerar matriz 5x5 com números aleatórios entre 2 e 20
Procedimento gerarMatriz()
Inicio
Para i de 0 ate 4 faca
   Para j de 0 ate 4 faca
      matriz[i, j] <- randi(19) + 2
      Escreva(matriz[i, j]:5)
   FimPara
   Escreval()
FimPara

Escreval()
FimProcedimento

// Procedimento para trocar um valor específico na matriz
Procedimento trocaValor(linha: inteiro; coluna: inteiro; novoValor: inteiro)
Inicio
matriz[linha, coluna] <- novoValor
FimProcedimento

// Procedimento buscaValor: busca um número na matriz e substitui por 0
Procedimento buscaValor(numero, posi: inteiro)
Var
contador, achei, i, j: inteiro
Inicio
escreval("Procedimento uscaValor")
escreval("Número.: ", numero)
escreval("Posicao: ", posicao)
Para i de 0 ate 4 faca
   Para j de 0 ate 4 faca
      Se matriz[i, j] = numero entao
         trocaValor(i, j, 0)
         achei <- 1
      FimSe
   FimPara
FimPara
                                                  ,
se achei = 0 entao
Para i de 0 ate 4 faca
   Para j de 0 ate 4 faca
      Se contador = posi entao
         trocaValor(i, j, 1)
      FimSe
      contador <- contador + 1
   FimPara
FimPara


fimse

FimProcedimento

// Função que retorna a soma dos valores ímpares maiores que 10 a partir da posição
Funcao calcularValor(posicao: inteiro): inteiro
Var
soma, contador, i, j: inteiro
Inicio
soma <- 0
contador <- 0

Para i de 0 ate 4 faca
   Para j de 0 ate 4 faca
      Se contador >= posicao entao
         Se (matriz[i, j] > 10) e (matriz[i, j] mod 2 <> 0) entao
            soma <- soma + matriz[i, j]
         FimSe
      FimSe
      contador <- contador + 1
   FimPara
FimPara

retorne (soma)
FimFuncao

// Programa principal
Inicio
gerarMatriz()

Escreva("Digite um valor entre 2 e 20: ")
Leia(valor)

Escreva("Digite a posição entre 0 e 24: ")
Leia(posicao)

buscaValor(valor, posicao)

Escreval("Resultado da função calcularValor: ", calcularValor(posicao))

Escreval("Matriz final:")
Para i de 0 ate 4 faca
   Para j de 0 ate 4 faca
      Escreva(matriz[i, j]:4)
   FimPara
   Escreval()
FimPara

FimAlgoritmo
