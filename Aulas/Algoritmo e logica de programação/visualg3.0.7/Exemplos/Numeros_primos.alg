Algoritmo "NumerosPrimos"
// Disciplna   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Gera numeros primos de 2 até o Número que o usuário pedir
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/12/2015
Var
// Seção de Declarações das variáveis

 Fatorial,Numero,Primo,Resposta : Inteiro
 Flag : Logico
inicio
Limpatela
Mudacor("Amarelo","Frente")
Escreva("Deseja até que número primo: ")
leia(Numero)
Escreval(" ")
Escreva(" 1")   // montagem
Para Primo de 2 ate Numero faca
   Fatorial<- 2
   Flag <- Falso
   enquanto (Primo<>fatorial) faca
      Resposta <- Primo MOD Fatorial
      Fatorial <- Fatorial + 1
      se Resposta = 0 entao
         Flag <- Verdadeiro
      fimse
   fimenquanto
   se (Nao Flag) entao
      escreva(" , ",Primo)
   fimse
fimpara
Escreval(" ")
Fimalgoritmo

