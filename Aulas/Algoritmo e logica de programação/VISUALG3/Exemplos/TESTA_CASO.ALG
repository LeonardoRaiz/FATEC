Algoritmo "TESTA_CASO"
// Disciplina: [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi 
Var
   // Seção de Declarações das variáveis
   opcao : Inteiro   // Opção de escolha
   X,FLAG: LOGICO     // variáveis de controle
   
Procedimento testa(op,y:inteiro)
Inicio
      ESCREVAL("A opção foi: ",OP,y)
      leia(x)
FimProcedimento
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
X := VERDADEIRO
FLAG <- X
ENQUANTO FLAG FAcA
   X := VERDADEIRO
//   MUDACOR("Amarelo","FRENTE")
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
   Caso 1
      testa(opcao,1)    // chama o procedimento
   Caso 2
      testa(opcao,2)    // chama o procedimento
   Caso 3
      testa(opcao,3)    // chama o procedimento
   Caso 4
      testa(opcao,4)    // chama o procedimento
   Caso 5
      testa(opcao,5)    // chama o procedimento
      FLAG := FALSO   // muda a variável do controle para encerrar o loop

   OUTROCASO      // caso a variável tenha algum valor acima de 5 ou abaixo de 1  
      Escreval("Opção inválida")
      Escreva("tecle <enter>")
      LEIA(X)
   Fimescolha
   
FIMENQUANTO

Fimalgoritmo