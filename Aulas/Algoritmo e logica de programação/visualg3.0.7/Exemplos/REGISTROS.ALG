Algoritmo "Registros"
// Disciplina  : [Linguagem e Lógica de programaçao]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Menu com ordenação de registros
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/09/2015

tipo
   tdados = registro
      codigo: inteiro
      nome: caractere
   fimregistro

Var
   dados : vetor[1..2] de tdados
   Max_itens : Inteiro
   opcao : Caracter   // Opção de escolha
   X,FLAG: LOGICO     // variáveis de controle

   //
procedimento leituradosdados
var i: inteiro
inicio
   //Caso você mesmo queira digitar os valores, comente as linhas
   // aleatorio on e aleatorio off abaixo

   aleatorio on
   para i de 1 ate MAX_ITENS faca
      escreva("Digite o codigo do ",i,"o registro:")
      leia(dados[i].codigo)
      escreva("Digite o nome do ",i,"o registro:")
      leia(dados[i].nome)
   fimpara
   aleatorio off
fimprocedimento

procedimento ordenapornome
var a,b: inteiro
   temp: tdados
inicio
   // Ordenação
   para a de 1 ate MAX_ITENS faca
      para b de 1 ate MAX_ITENS-1 faca
         se dados[b].nome > dados[b+1].nome entao
            // Atribuicao do registro inteiro
            temp <- dados[b]

            dados[b] <- dados[b+1]
            dados[b+1] <- temp

         fimse
      fimpara
   fimpara
fimprocedimento

procedimento ordenaporcodigo
var a,b: inteiro
   temp: tdados
inicio
   // Ordenação
   para a de 1 ate MAX_ITENS faca
      para b de 1 ate MAX_ITENS-1 faca
         se dados[b].codigo > dados[b+1].codigo entao

            // Atribuicao do registro campo a campo
            temp.codigo <- dados[b].codigo
            temp.nome <- dados[b].nome

            dados[b] <- dados[b+1]
            dados[b+1] <- temp

         fimse
      fimpara
   fimpara
fimprocedimento

procedimento imprime
var a: inteiro
inicio
   // Impressão dos dados ordenados
   escreval("Item - Codigo Nome")
   para a de 1 ate MAX_ITENS faca
      escreval(a:4," - ", dados[a].codigo : 6, " ", dados[a].nome)
   fimpara
fimprocedimento

Procedimento Inclusao
Inicio
   Escreval("Inclusão")
   leituradosdados()
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Consulta
Inicio
   Escreval("Consulta")
   imprime()
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Ordenar_N
Inicio
   Escreval("Ordenar por nome")
   ordenapornome()
   imprime()
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Ordenar_C
Inicio
   Escreval("Ordenar por código")
   ordenaporcodigo()
   imprime()
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

// Aqui inicia o programa

inicio
   Max_itens := 2
   X := VERDADEIRO
   FLAG <- X
   ENQUANTO FLAG FAÇA
      X := VERDADEIRO
   MUDACOR("Amarelo","FRENTE")
   limpatela
   Escreval("*** Menu ***")
   Escreval("1 - Inclusão")
   Escreval("2 - Consulta")
   Escreval("3 - Ordenar por Nome")
   Escreval("4 - Ordenar por Código")
   Escreval("5 - Finaliza")
   Escreval("  ")
   Escreva("Digite a opção:")
   Leia(opcao)
   Escolha opcao
   Caso "1"
      Inclusao    // chama o procedimento
   Caso "2"
      Consulta    // chama o procedimento
   Caso "3"
      Ordenar_N    // chama o procedimento
   Caso "4"
      Ordenar_C    // chama o procedimento
   Caso "5"
      FLAG := FALSO   // muda a variável do controle para encerrar o loop

   OUTROCASO      // caso a variável tenha algum valor acima de 5 ou abaixo de 1
      Escreval("Opção inválida")
      Escreva("tecle <enter>")
      LEIA(X)
   Fimescolha

FIMENQUANTO

// Leitura dos dados
fimalgoritmo


