Algoritmo "TESTA_CASO"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Programa usado para testar ESCOLHA .. FAÇA .. CASO .. OUTROCASO .. FIMESCOLHA
//             : PARA QUE FUNCIONE USE COM VARIÁVEIS DO TIPO "CARACTER" NA OPÇÃO.
// Autor(a)    : TODOS OS ALUNOS DO BRASIL E DO MUNDO...
// Data atual  : 18/08/2015
Var
   // Seção de Declarações das variáveis
   opcao : Caracter   // Opção de escolha
   X,FLAG: LOGICO     // variáveis de controle
Procedimento Inclusao
Inicio
   Escreval("Inclusão")
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Consulta
Inicio
   Escreval("Consulta")
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Exclusao
Inicio
   Escreval("Exclusão")
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Alterar
Inicio
   Escreval("Alterar")
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
X := VERDADEIRO
FLAG <- X
ENQUANTO FLAG FAÇA
   X := VERDADEIRO
   MUDACOR("Amarelo","FRENTE")
   limpatela
   Escreval("*** Menu ***")
   Escreval("1 - Inclusão")
   Escreval("2 - Consulta")
   Escreval("3 - Exclusão")
   Escreval("4 - Alterar ")
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
      Exclusao    // chama o procedimento
   Caso "4"
      Alterar     // chama o procedimento
   Caso "5"
      FLAG := FALSO   // muda a variável do controle para encerrar o loop

   OUTROCASO      // caso a variável tenha algum valor acima de 5 ou abaixo de 1  
      Escreval("Opção inválida")
      Escreva("tecle <enter>")
      LEIA(X)
   Fimescolha
   
FIMENQUANTO

Fimalgoritmo