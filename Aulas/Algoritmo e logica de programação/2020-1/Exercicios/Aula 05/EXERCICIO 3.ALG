Algoritmo "Exercicio 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/03/2020
Var
// Se��o de Declara��es das vari�veis 
sal, novo_sal, boni, aux :real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o salario: ")
LEIA(sal)
SE sal <= 500 ENTAO
   boni := sal * 12/100
SENAO
     SE sal <= 1200 ENTAO
        boni := sal * 12/100
     SENAO
        boni := 0
     FIMSE
FIMSE

SE sal <= 600 ENTAO
   aux := 150
SENAO
   aux := 100
FIMSE

novo_sal := sal + boni + aux
ESCREVAL("O novo salario � de: ", novo_sal)


Fimalgoritmo