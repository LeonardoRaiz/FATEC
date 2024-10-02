Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor    : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/06/2016
Var
// Seção de Declarações das variáveis 
     x : real
     
funcao Expoente(v: real;x:inteiro):Real
var i:inteiro
    vv:real
inicio
    vv := v
    Se x >= 1 ENTAO
       para i de 1 ate x-1 faca
            vv := vv * v
        fimpara
    FIMSE
    retorne vv
fimfuncao


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
     x := 2
     Escreval(Expoente(3,X))

Fimalgoritmo