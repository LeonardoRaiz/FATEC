Algoritmo "Exercicio 3 - Aula 5"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/09/2020
Var
// Se��o de Declara��es das vari�veis 
salario :real
boni: real
aux: real
novo_sal: real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Insira o salario: ")
LEIA(salario)

// Forma do Leo
SE salario <= 500 ENTAO
   boni := salario * 5/100
SENAO
     SE salario <= 1200 ENTAO
        boni := salario * 12/100
     SENAO
        boni := 0
     FIMSE
FIMSE
// Forma recomendada
SE salario <= 500 ENTAO
   boni := salario * 5/100
FIMSE

SE((salario > 500)E(salario <= 1200))ENTAO
   boni := salario * 12/100
FIMSE

SE salario > 1200 ENTAO
   boni := 0
FIMSE

// Auxilio Escola

SE salario <= 600 ENTAO
   aux := 150
SENAO
   aux := 100
FIMSE

novo_sal := salario + boni + aux

ESCREVA("O novo salario �: ", novo_sal)


Fimalgoritmo