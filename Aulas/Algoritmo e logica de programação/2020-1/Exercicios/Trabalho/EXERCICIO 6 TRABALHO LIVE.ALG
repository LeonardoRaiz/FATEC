Algoritmo "Exercicio 6 Trabalho Live"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/05/2020
Var
// Se��o de Declara��es das vari�veis 
dia, mes, ano, hora, min :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("DIA: ")
LEIA(dia)
ESCREVA("MES: ")
LEIA(mes)
ESCREVA("ANO: ")
LEIA(ano)

//10/11/2020 - Novembro
//08:45
ESCREVA(dia, "/", mes, "/", ano, " - ") //Mascara data

SE (mes = 1) ENTAO
   ESCREVAL("Janeiro")
FIMSE

SE (mes = 2) ENTAO
   ESCREVAL("Fevereiro")
FIMSE

SE (mes = 3) ENTAO
   ESCREVAL("Mar�o")
FIMSE

SE (mes = 4) ENTAO
   ESCREVAL("Abril")
FIMSE

SE (mes = 5) ENTAO
   ESCREVAL("Maio")
FIMSE

SE (mes = 6) ENTAO
   ESCREVAL("Junho")
FIMSE

SE (mes = 7) ENTAO
   ESCREVAL("Julho")
FIMSE

SE (mes = 8) ENTAO
   ESCREVAL("Agosto")
FIMSE

SE (mes = 9) ENTAO
   ESCREVAL("Setembro")
FIMSE

SE (mes = 10) ENTAO
   ESCREVAL("Outubro")
FIMSE

SE (mes = 11) ENTAO
   ESCREVAL("Novembro")
FIMSE

SE (mes = 12) ENTAO
   ESCREVAL("Dezembro")
FIMSE

ESCREVA("HORA: ")
LEIA(hora)
ESCREVA("MINUTOS: ")
LEIA(min)

SE ((hora > 0) E (hora < 12)) ENTAO
   ESCREVA(hora, " : ", min, "AM" )// mascara hora AM
SENAO
   ESCREVA(hora, " : ", min, "PM" )// mascara hora PM
FIMSE
Fimalgoritmo

