Algoritmo "Exemplo 4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/05/2020
Var
// Seção de Declarações das variáveis 
X, num1, num2, resul :inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVAL(" ----------- Menu De Opções ---------------")
ESCREVAL(" 1. SOMA")
ESCREVAL(" 2. SUBTRAÇÃO")
ESCREVAL(" 0. SAIR DO MENU")
LEIA(X)

ENQUANTO (X <> 0) FACA
         ESCOLHA X
                 CASO 1
                       ESCREVA("Digite o primeiro numero:")
                       LEIA(num1)
                       ESCREVA("Digite o segundo numero:")
                       LEIA(num2)
                       resul := num1 + num2
                       ESCREVAL("Resultado = ", resul)
                       ESCREVAL(" ----------- Menu De Opções ---------------")
                       ESCREVAL(" 1. SOMA")
                       ESCREVAL(" 2. SUBTRAÇÃO")
                       ESCREVAL(" 0. SAIR DO MENU")
                       LEIA(X)
                 CASO 2
                       ESCREVA("Digite o primeiro numero:")
                       LEIA(num1)
                       ESCREVA("Digite o segundo numero:")
                       LEIA(num2)
                       resul := num1 - num2
                       ESCREVAL("Resultado = ", resul)
                       ESCREVAL(" ----------- Menu De Opções ---------------")
                       ESCREVAL(" 1. SOMA")
                       ESCREVAL(" 2. SUBTRAÇÃO")
                       ESCREVAL(" 0. SAIR DO MENU")
                       LEIA(X)
                 OUTROCASO
                       ESCREVAL("Função invalida!!!")
                       ESCREVAL(" ----------- Menu De Opções ---------------")
                       ESCREVAL(" 1. SOMA")
                       ESCREVAL(" 2. SUBTRAÇÃO")
                       ESCREVAL(" 0. SAIR DO MENU")
                       LEIA(X)
         FIMESCOLHA
FIMENQUANTO

//Resto

Fimalgoritmo