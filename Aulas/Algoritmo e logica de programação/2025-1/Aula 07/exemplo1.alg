algoritmo "Game ADS"

procedimento MostrarMenuPrincipal()
inicio
    escreval("=== MENU ===")
    escreval("1 - Iniciar o jogo")
    escreval("2 - Carregar o jogo")
    escreval("0 - Sair do jogo")
    escreval("==================")
fimprocedimento


funcao IniciarJogo(): caractere
var
    nome: caractere
inicio
    limpatela
    escreval("Informe o nome do seu personagem: ")
    leia(nome)
    retorne nome
fimfuncao

var
    op: inteiro
    nome: caractere 
inicio
    op := -1
    enquanto (op <> 0) faca

        MostrarMenuPrincipal()
        leia(op)

        se (op = 1) entao
            escreval ("Iniciando o jogo...")
            nome := IniciarJogo()
            escreval("Bem vindo ", nome, " Ao Game ADS!")
        senao
            se (op = 2) entao
                escreval ("Carregar o jogo...")
            senao
                escreval ("Obrigado por jogar")
            fimse
        fimse
    fimenquanto
fimalgoritmo