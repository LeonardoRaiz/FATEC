Algoritmo "Exercicio 6 Trabalho"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/05/2020
Var
// Seção de Declarações das variáveis 
dia, mes, ano, hora, min: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LEIA(dia)
LEIA(mes)
LEIA(ano)

ESCREVA(dia, "/", mes, "/", ano , " - ")

SE (mes = 1) ENTAO
   ESCREVA("Janeiro")
FIMSE

SE (mes = 2) ENTAO
   ESCREVA("Fevereiro")
FIMSE

SE (mes = 3) ENTAO
   ESCREVA("Março")
FIMSE
SE (mes = 4) ENTAO
   ESCREVA("Abril")
FIMSE
SE (mes = 5) ENTAO
   ESCREVA("Maio")
FIMSE
SE (mes = 6) ENTAO
   ESCREVA("Junho")
FIMSE
SE (mes = 7) ENTAO
   ESCREVA("Julho")
FIMSE
SE (mes = 8) ENTAO
   ESCREVA("Agosto")
FIMSE
SE (mes = 9) ENTAO
   ESCREVA("Setembro")
FIMSE
SE (mes = 10) ENTAO
   ESCREVA("Outubro")
FIMSE
SE (mes = 11) ENTAO
   ESCREVA("Novembro")
FIMSE
SE (mes = 12) ENTAO
   ESCREVA("Dezembro")
FIMSE

LEIA(hora)
LEIA(min)
ESCREVA(hora, ":", min)

Fimalgoritmo