Algoritmo "Decimal para Outras Bases"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Função :
// Autor : Cláudio
// Data : 14/4/2003
// Seção de Declarações 
dos
Var
   opcao, res : caracter
   digitos : vetor[1..16] de caracter
   valor, J : inteiro

procedimento leropcao
inicio
   repita
      escreva("Escolha uma base : ")
      leia(opcao)
   ate (Opcao = "F") ou (Opcao="B") ou (Opcao="O") ou (Opcao="H")
fimprocedimento

procedimento menu
inicio
   limpatela
   escreval( "Programa de Conversão de Bases")
   escreval( "Da Base 10 para Binária, Octal ou Hexa")
   escreval( "--------------------------------------")
   escreval
   escreval( "Opções")
   escreval( "   B - Binária")
   escreval( "   O - Octal")
   escreval( "   H - Hexa")
   escreval( "   F - Fim")
   escreval
   leropcao
fimprocedimento

inicio
// Seção de Comandos
repita
   menu
   escolha Opcao
   caso "B"
   caso "O"
   caso "H"
   fimescolha
   se Opcao <> "F" entao
      escreva("Tecle ENTER para continuar")
      leia(res)
      limpatela
   fimse
ate Opcao = "F"

fimalgoritmo
