Algoritmo "Desafio 2 SE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/03/2020
//Fa�a um programa que mostre o menu de op��es a seguir, receba a op��o do usu�rio e os dados necess�rios para executar cada opera��o.
//Menu de op��es
//Somar dois n�meros;
//Raiz quadrada de um numero.
//Digite a op��o desejada:

Var
// Se��o de Declara��es das vari�veis 
op, num1, num2, soma :inteiro
raiz :real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVAL(" --- MENU DE OP��ES ---")
ESCREVAL("Digite 1 PARA - Somar dois n�meros; ")
ESCREVAL("Digite 2 PARA - Raiz quadrada de um n�mero.")
ESCREVAL("---------------------------------------------")
LEIA(op)
SE op = 1 ENTAO
   ESCREVA("Insira o primeiro n�mero: ")
   LEIA(num1)
   ESCREVA("Insira o segundo n�mero: ")
   LEIA(num2)
   soma := num1 + num2
   ESCREVA("A soma dos dois n�meros � de: ", soma)
SENAO
     SE op = 2 ENTAO
        ESCREVA("Digite o valor: ")
        LEIA(num1)
        raiz := RaizQ(num1)//exp(num1, 1/2)
        ESCREVA("O valor da raiz � de: ", raiz)
     SENAO
        ESCREVA("Caro SR.(a) n�o existe esta op��o, Programa encerrado")
     FIMSE
FIMSE

Fimalgoritmo