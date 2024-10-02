Algoritmo "Registros"
// Disciplina  : [Linguagem e Lógica de programaçao]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Menu com cadastro
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/09/2015

Var
   Codigo : Vetor[1..5] de Caracter
   Nome : Vetor[1..5] de Caracter
   Idade : Vetor[1..5] de Caracter
   Sexo : Vetor[1..5] de Caracter
   Item_cad : Inteiro
   Max_itens : Inteiro   // Variável q contéra o máximo de elementos de um vetor
   opcao : Caracter  // Opção de escolha
   X,FLAG,Flag2 : LOGICO   // variáveis de controle

   // procedimentos

FUNÇÃO PESQUISA(xcod : caracter): Inteiro
Var
   p_Item, XP : inteiro
Inicio
   XP := 0
   PARA p_Item DE 1 ATÉ Max_itens FAÇA  // LÊ TODOS OS ELEMENTOS
      SE (xcod = Codigo[p_Item]) ENTÃO // SE ACHÁ-LO VOLTA O ELEMENTO
         XP := p_Item
      FIMSE
   FIMPARA
   RETORNE XP   // retorna o conteúdo
FIMFUNÇÃO
//
Procedimento Inclusao   // de novos códigos (inexistentes)
Var iFlag : Logico
   iPesq : Inteiro
   xcodigo,xnome,xidade,xsexo,xRESP: Caracter
Inicio
  iFLAG := VERDADEIRO
  Enquanto iFlag FAÇA
      Item_cad := Item_cad + 1        // incrementa o contador de elementos
      SE Item_cad > Max_itens ENTÃO   // verifica se não ultrapassou o máximo
         iFlag := Falso
      SENÃO
         LimpaTela
         Escreval("Inclusão")
         Escreval(" ")
         Escreval(" ")
         Escreva("Codigo: ")
         Leia(xcodigo)
         iPesq := PESQUISA(xcodigo) // Pesquisa o código
         SE ((iPesq = 0) E (xcodigo <> "0")) ENTÃO    // Se retornar zero ainda não foi cadastrado
            Escreva("Nome..: ")
            Leia(xnome)
            Escreva("Idade.: ")
            Leia(xidade)
            Escreva("Sexo..: ")
            Leia(xSexo)
            Escreval(" ")

            Escreva("Quer gravar <S/N>? : ")
            Leia(xRESP)
            SE ((xRESP = "S") OU (xRESP = "s")) ENTÃO
               Codigo[Item_cad] := xcodigo
               Nome[Item_cad] := xnome
               Idade[Item_cad] := xidade
               Sexo[Item_cad] := xsexo
            SENÃO
               SE Item_cad > 0 ENTÃO
                  Item_cad := Item_cad - 1
               FIMSE
            FIMSE
         SENÃO                        // Se ainda já foi cadastrado (erro!)
            SE (xcodigo = "0") ENTÃO
               SE Item_cad > 0 ENTÃO
                  Item_cad := Item_cad - 1
               FIMSE
               iFLAG := Falso
            SENÃO
               Escreval(" ")
               Escreva("Código já existe no cadastrado !!!")
               Escreval(" ")
            FIMSE
         FIMSE
      FIMSE
      xRESP := ""
      Escreval(" ")
      Escreval(" ========================= ")
      Escreval(" ")
      Escreva("Continuar <S/N>? : ")
      Leia(xRESP)
      SE ((xRESP = "N") OU (xRESP = "n")) ENTÃO
         iFlag := FALSO
      SENÃO
         iFlag := VERDADEIRO
      FIMSE
  FIMENQUANTO
FimProcedimento
//
Procedimento Consulta
Var cFlag : Logico
   cPesq : Inteiro
   xcodigo,xnome,xidade,xsexo: Caracter
Inicio
   cFlag := VERDADEIRO
   Enquanto cFlag FAÇA
      SE Item_cad < 1 ENTÃO  // verifica não tem nenhum elemento cadastrado?
         cFlag := Falso
      SENÃO
         LimpaTela
         Escreval("Consulta por código")
         Escreval(" ")
         Escreval(" ")
         Escreva("Codigo: ")
         Leia(xcodigo)
         SE (xcodigo = "0") ENTÃO
            cFLAG := Falso
         SENÃO
            cPesq := PESQUISA(xcodigo) // Pesquisa o código
            SE cPesq > 0 ENTÃO         // Se maior que zero está cadastrado!
               xnome := Nome[cPESQ]
               xidade := Idade[cPESQ]
               xsexo := Sexo[cPESQ]
               EscrevaL("Nome..: ",xnome)
               EscrevaL("Idade.: ",xidade)
               EscrevaL("Sexo..: ",xSexo)
               Escreval(" ")
               Escreva("OK !!! - tecle <<ENTER>> ")
               LEIA(X)
            SENÃO                     // Se ainda não foi cadastrado (erro!)
               EscrevaL(" ")
               EscrevaL(" ")
               EscrevaL(" ")
               EscrevaL("Código não existe no cadastrado !!!")
               Escreva("Tecle <enter>  ")
               LEIA(X)
            FIMSE
         FIMSE
      FIMSE
   FIMENQUANTO
FimProcedimento
//
Procedimento Exclusao
Var eFlag : Logico
   ePesq : Inteiro
   xcodigo,xnome,xidade,xsexo,xRESP: Caracter
Inicio
   eFLAG := VERDADEIRO
   Enquanto eFlag FAÇA
      SE Item_cad < 1 ENTÃO // verifica não tem nenhum elemento cadastrado?
         eFlag := Falso
      SENÃO
         LimpaTela
         Escreval("Exclusão")
         Escreval(" ")
         Escreval(" ")
         Escreva("Codigo: ")
         Leia(xcodigo)
         SE (xcodigo = "0") ENTÃO
            eFLAG := Falso
         SENÃO
            ePesq := PESQUISA(xcodigo) // Pesquisa o código
            SE ePesq > 0 ENTÃO         // Se maior que zero está cadastrado!
               xnome := Nome[ePESQ]
               xidade:= Idade[ePESQ]
               xsexo := Sexo[ePESQ]
               EscrevaL("Nome..: ",xnome)
               EscrevaL("Idade.: ",xidade)
               EscrevaL("Sexo..: ",xSexo)
               EscrevaL(" ")
               EscrevaL("Tem certeza? quer excluir ele <S/N>: ")
               Leia(xRESP)
               SE (xRESP = "S") OU (xRESP = "s") ENTÃO
                  Nome[ePESQ]  := " "  //Limpa o nome
                  Idade[ePESQ] := " "  //Limpa a Idade
                  Sexo[ePESQ]  := " "  //Limpa o Sexo
                  EscrevaL("Nome..: ",Nome[ePESQ])
                  EscrevaL("Idade.: ",Idade[ePESQ])
                  EscrevaL("Sexo..: ",Sexo[ePESQ])
               FIMSE
            SENÃO              // Se ainda não foi cadastrado (erro!)
               Escreval(" ")
               Escreva("Código não existe no cadastrado !!!")
               Escreval(" ")
            FIMSE
         FIMSE
         Escreval(" ")
         Escreval(" ")
         Escreval(" ")
         Escreva("tecle <enter>")
         LEIA(X)
      FIMSE
   FIMENQUANTO
FimProcedimento
//
procedimento Alterar
Var aFlag : Logico
   aPesq : Inteiro
   xcodigo,xnome,xidade,xsexo,xRESP: Caracter
Inicio
   aFLAG := VERDADEIRO
   Enquanto aFlag FAÇA
      SE Item_cad < 1 ENTÃO // verifica não tem nenhum elemento cadastrado?
         aFlag := Falso
      SENÃO
         LimpaTela
         Escreval("Alteração")
         Escreval(" ")
         Escreval(" ")
         Escreva("Codigo: ")
         Leia(xcodigo)
         SE (xcodigo = "0") ENTÃO
            aFLAG := Falso
         SENÃO
            aPesq := PESQUISA(xcodigo) // Pesquisa o código
            SE aPesq > 0 ENTÃO     // Se maior que zero está cadastrado!
               xnome := Nome[aPESQ]
               xidade := Idade[aPESQ]
               xsexo := Sexo[aPESQ]
               Escreva("Nome..: ")
               Leia(xnome)
               Escreva("Idade.: ")
               Leia(xidade)
               Escreva("Sexo..: ")
               Leia(xSexo)
               EscrevaL(" ")
               Escreva("Tem certeza? Alterar <S/N> ")
               Leia(xRESP)
               SE (xRESP = "S") OU (xRESP = "s") ENTÃO
                  Nome[aPESQ] := xnome
                  Idade[aPESQ] := xidade
                  Sexo[aPESQ] := xsexo
               FIMSE
            SENÃO             // Se ainda não foi cadastrado (erro!)
               Escreval(" ")
               Escreva("Código não existe no cadastrado !!!")
               Escreval(" ")
            FIMSE
         FIMSE
         Escreval(" ")
         Escreval(" ")
         Escreval(" ")
         Escreva("tecle <enter>")
         LEIA(X)
      FIMSE
   FIMENQUANTO
fimprocedimento

// Aqui inicia o programa

inicio
   Max_itens := 3
   X := VERDADEIRO
   FLAG := VERDADEIRO
   Item_cad := 0
   ENQUANTO FLAG FAÇA
      X := VERDADEIRO
   MUDACOR("Amarelo","FRENTE")
   limpatela
   Escreval("*** Menu ***")  // faça do seu modo melhorado
   Escreval("1 - Inclusão")  // não é opcional tem q ser inclusão ou cadastrar
   Escreval("2 - Consulta")
   Escreval("3 - Exclusão")
   Escreval("4 - Alterar")
   Escreval("5 - Listagem")
   Escreval("6 - Finalizar")
   Escreval("  ")
   Escreva("Digite a opção:")
   Leia(opcao)
   SE ((opcao > "0") E (opcao < "7")) ENTÃO
      Escolha opcao
      Caso "1"
         Inclusao    // chama o procedimento inclusão
      Caso "2"
         Consulta    // chama o procedimento consulta
      Caso "3"
         Exclusao    // chama o procedimento Exclusão
      Caso "4"
         Alterar     // chama o procedimento Alterar
      Caso "5"
         //            Listagem   / /  chama o proceSSo Listagem ???(FAZ VOCÊ)
      Caso "6"
         FLAG := FALSO   // muda a variável do controle para encerrar o loop
      Fimescolha
   SENÃO            // Caso o usuário digite algo que não são as opções
      Escreval("Opção inválida")
      Escreva("tecle <enter>")
      LEIA(X)
   FIMSE
FIMENQUANTO

// Leitura dos dados
fimalgoritmo


