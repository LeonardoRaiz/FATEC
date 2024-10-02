Algoritmo "Desafio 2 SE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/03/2020
//Faça um programa que mostre o menu de opções a seguir, receba a opção do usuário e os dados necessários para executar cada operação.
//Menu de opções
//Somar dois números;
//Raiz quadrada de um numero.
//Digite a opção desejada:

Var
// Seção de Declarações das variáveis 
op, num1, num2, soma :inteiro
raiz :real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVAL(" --- MENU DE OPÇÕES ---")
ESCREVAL("Digite 1 PARA - Somar dois números; ")
ESCREVAL("Digite 2 PARA - Raiz quadrada de um número.")
ESCREVAL("---------------------------------------------")
LEIA(op)
SE op = 1 ENTAO
   ESCREVA("Insira o primeiro número: ")
   LEIA(num1)
   ESCREVA("Insira o segundo número: ")
   LEIA(num2)
   soma := num1 + num2
   ESCREVA("A soma dos dois números é de: ", soma)
SENAO
     SE op = 2 ENTAO
        ESCREVA("Digite o valor: ")
        LEIA(num1)
        raiz := RaizQ(num1)//exp(num1, 1/2)
        ESCREVA("O valor da raiz é de: ", raiz)
     SENAO
        ESCREVA("Caro SR.(a) não existe esta opção, Programa encerrado")
     FIMSE
FIMSE

Fimalgoritmo