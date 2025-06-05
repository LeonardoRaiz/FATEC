algoritmo "Matriz_Operacoes"

var
   matriz: vetor[0..4, 0..4] de inteiro
   valor, posicao, posicao1, soma: inteiro

// Gera números aleatórios entre 2 e 20
procedimento gerarMatriz()
var i, j: inteiro
inicio
    para i de 0 ate 4 faca
        para j de 0 ate 4 faca
            matriz[i, j] <- randi(19) + 2
        fimpara
    fimpara
fimprocedimento

// Mostra a matriz 5x5
procedimento mostrarMatriz()
var i, j: inteiro
inicio
    escreval("===== MATRIZ ATUAL =====")
    para i de 0 ate 4 faca
        para j de 0 ate 4 faca
            escreva(matriz[i, j]:3, " ")
        fimpara
        escreval()
    fimpara
    escreval("========================")
fimprocedimento

// Se o valor existir na matriz, troca para 0. Senão, troca o valor da posição para 1
procedimento buscaValor(valor: inteiro; posicao: inteiro)
var i, j, contador: inteiro
    encontrou: logico
inicio
    encontrou <- falso
    para i de 0 ate 4 faca
        para j de 0 ate 4 faca
            se matriz[i, j] = valor entao
                matriz[i, j] <- 0
                encontrou <- verdadeiro
            fimse
        fimpara
    fimpara

    se nao encontrou entao
        // Converter posição 0..24 para coordenadas da matriz 5x5
        i <- posicao div 5
        j <- posicao mod 5
        matriz[i, j] <- 1
    fimse
fimprocedimento

// Retorna a soma dos valores ímpares > 10 a partir da posição informada
funcao calcularValor(posicao: inteiro): inteiro
var i, j, k, soma: inteiro
inicio
    soma <- 0
    para k de posicao ate 24 faca
        i <- k div 5
        j <- k mod 5
        se (matriz[i, j] mod 2 <> 0) e (matriz[i, j] > 10) entao
            soma <- soma + matriz[i, j]
        fimse
    fimpara
    retorne soma
fimfuncao

// Programa principal
inicio
    gerarMatriz()
    mostrarMatriz()

    escreval("Digite um valor entre 2 e 20:")
    leia(valor)
    escreval("Digite uma posição entre 0 e 24:")
    leia(posicao)
    escreval("Digite uma posição entre 0 e 24:")
    leia(posicao)

    buscaValor(valor, posicao)
    soma <- calcularValor(posicao)

    mostrarMatriz()
    escreval("Soma dos ímpares > 10 a partir da posição ", posicao, ": ", soma)
fimalgoritmo