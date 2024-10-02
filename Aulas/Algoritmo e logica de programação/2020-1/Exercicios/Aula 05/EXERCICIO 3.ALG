Algoritmo "Exercicio 3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/03/2020
Var
// Seção de Declarações das variáveis 
sal, novo_sal, boni, aux :real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
ESCREVAL("O novo salario é de: ", novo_sal)


Fimalgoritmo