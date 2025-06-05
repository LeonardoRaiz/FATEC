algoritmo "Jogo_Com_Vetor_Matriz"

procedimento MostrarMenu()
inicio
   escreval("===== MENU PRINCIPAL =====")
   escreval("1 - Iniciar Jogo")
   escreval("2 - Carregar Jogo")
   escreval("3 - Sair")
   escreval("==========================")
fimprocedimento

funcao IniciarJogo(): caractere
var
   nome: caractere
inicio
   limpatela
   escreval("Iniciando jogo...")
   escreval("Informe o nome do personagem: ")
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

procedimento MenuDeJogo(nome: caractere)
var
   opcao, i, linha, coluna: inteiro
   inventario: vetor[1..5] de caractere
   mapa: vetor[1..3, 1..3] de caractere
inicio
   // Inicializa inventário vazio
   para i de 1 ate 5 faca
      inventario[i] := "-"
   fimpara

   // Cria mapa simples
   para linha de 1 ate 3 faca
      para coluna de 1 ate 3 faca
         mapa[linha, coluna] := "-"
      fimpara
   fimpara
   mapa[2,2] := "P" // posição do personagem

   opcao := -1
   enquanto (opcao <> 0) faca
      limpatela
      escreval("===== AVENTURA DE ", nome, " =====")
      escreval("1 - Andar")
      escreval("2 - Abrir Baú")
      escreval("3 - Ver Inventário")
      escreval("4 - Ver Mapa")
      escreval("0 - Voltar ao menu principal")
      escreva("Escolha uma ação: ")
      leia(opcao)

      escolha opcao
         caso 1
            escreval(nome, " caminhou por um campo aberto...")
            escreval("Não encontrou nada por enquanto.")
         caso 2
            para i de 1 ate 5 faca
               se inventario[i] = "-" entao
                  inventario[i] := "Poção"
                  escreval("Você encontrou uma Poção e ela foi adicionada ao inventário!")
                  interrompa
               fimse
            fimpara
         caso 3
            escreval("===== INVENTÁRIO =====")
            para i de 1 ate 5 faca
               escreval(i, ": ", inventario[i])
            fimpara
         caso 4
            escreval("===== MAPA =====")
            para linha de 1 ate 3 faca
               para coluna de 1 ate 3 faca
                  escreva(mapa[linha, coluna], " ")
               fimpara
               escreval("")
            fimpara
         caso 0
            escreval("Retornando ao menu principal...")
         outrocaso
            escreval("Opção inválida. Tente novamente.")
      fimescolha

      Pausar()
   fimenquanto
fimprocedimento

// === Programa Principal ===

var
   teste: inteiro
   nome: caractere
inicio
   teste := -1
   enquanto (teste <> 0) faca
      limpatela
      MostrarMenu()
      escreva("Escolha uma opção (0 para sair): ")
      leia(teste)

      se teste = 1 entao
         nome := IniciarJogo()
         MenuDeJogo(nome)
      senao
         se teste = 2 entao
            escreval("Carregando jogo... (em breve)")
         senao
            se teste = 3 entao
               escreval("Você escolheu sair.")
               teste := 0
            senao
               se teste <> 0 entao
                  escreval("Opção inválida.")
               fimse
            fimse
         fimse
      fimse

   fimenquanto

   escreval("Programa finalizado.")
fimalgoritmo