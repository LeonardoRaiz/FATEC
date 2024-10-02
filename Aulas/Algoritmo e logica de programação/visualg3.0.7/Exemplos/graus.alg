//
//
Algoritmo "Escalas"
// Disciplina  : [Linguagem e Lógica de Programação] 
// Professor(a): Antonio Carlos Nicolodi 
// Descrição   : Transforma temperaturas
// Autor(a)    : Nome do(a) aluno(a)  "EU"
// Data atual  : 27/09/2015
Var
// Seção de Declarações das variáveis 
Celcius : INTEIRO
Fahrein, Kelvin : Real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   MUDACOR("Amarelo", "Frente")
   LIMPATELA
   ESCREVAL("Celcuis Fahrenheit  Kelvi")

   PARA Celcius DE 1 ATÉ 50 FAÇA
        Fahrein := (Celcius * 1.8)+32
        Kelvin  := Celcius + 273
        ESCREVAL(Celcius:3," = ",Fahrein:8:2," =    ",Kelvin:6:2)
   FIMPARA
Fimalgoritmo

