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

procedimento Pausar()
var
    tecla: caractere 
inicio
    escreval("Pressione ENTER para continuar...")
    leia(tecla)
fimprocedimento

procedimento MenuGame(nome: caractere)
var
    opcao, index, linha, coluna: inteiro
    inventario: vetor[0..4] de caractere
    mapa: vetor[0..2, 0..2] de caractere 
inicio
    //Inicializar inventário vazio
    para index de 0 ate 4 faca
        inventario[index] := "-"
    fimpara

    //Criar um mapa 2D
    para linha de 0 ate 2 faca
        para coluna de 0 ate 2 faca
            mapa[linha, coluna] := "-"
        fimpara
    fimpara
    mapa[1,1] := "P"

    opcao := -1
    enquanto (opcao <> 0) faca
        limpatela
        escreval("==== Aventura de ", nome, "====")
        escreval("1 - Andar")
        escreval("2 - Abrir Baú")
        escreval("3 - Ver Inventário")
        escreval("4 - Ver o mapa")
        escreval("0 - Voltar ao menu principal")
        escreval("Escolha uma ação: ")
        leia(opcao)

        escolha opcao
            caso 1
                escreval(nome, " caminhou por um campo aberto...")
                escreval("Não encontrou nada...")
            caso 2
                para index de 0 ate 4 faca
                    se inventario[index] = "-" entao
                       inventario[index] := "Poção"
                       escreval("Você encontrou uma poção e ela foi adicionada no seu inventário!!!")
                       interrompa 
                    fimse
                fimpara
            caso 3
                escreval("+++ INVENTÁRIO +++")
                para index de 0 ate 4 faca
                    escreval((index + 1), ": ", inventario[index])
                fimpara
            caso 4
                escreval("+++ MAPA +++")
                para linha de 0 ate 2 faca
                    para coluna de 0 ate 2 faca
                        escreva(mapa[linha, coluna], " ")
                    fimpara
                    escreval(" ")
                fimpara
            caso 0
                escreval("Retornando ao menu principal...")
            outrocaso
                escreval("Ação inválida. Tente novamente!")   
        fimescolha

        Pausar()        
    fimenquanto
fimprocedimento


// === Programa Principal ====
var
    op: inteiro
    nome: caractere 
inicio
    op := -1
    enquanto (op <> 0) faca

        MostrarMenuPrincipal()
        escreval("Escolha uma opção (0 para sair do game...)")
        leia(op)

        se (op = 1) entao
            escreval ("Iniciando o jogo...")
            nome := IniciarJogo()
            MenuGame(nome)
        senao
            se (op = 2) entao
                escreval ("Carregar o jogo...")
            senao
                escreval ("Obrigado por jogar")
            fimse
        fimse
    fimenquanto
fimalgoritmo