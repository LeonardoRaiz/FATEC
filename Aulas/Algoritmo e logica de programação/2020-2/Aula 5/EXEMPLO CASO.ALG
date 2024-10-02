Algoritmo "Exemplo CASO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/09/2020
// + SOMA
// - Subtração
// * Multiplicação
// / Divisão
Var
// Seção de Declarações das variáveis 
num1, num2: real
operacao: caractere
resul:real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite o primeiro número: ")
LEIA(num1)
ESCREVA("Informe a operação: ")
LEIA(operacao)
ESCREVA("Digite o segundo número: ")
LEIA(num2)

// Forma SE IF
//SE(operacao = "+")ENTAO
//           resul := num1 + num2
//FIMSE

//SE(operacao = "-")ENTAO
//           resul := num1 - num2
//FIMSE

//SE(operacao = "*")ENTAO
//            resul := num1 * num2
//FIMSE

//SE(operacao = "/")ENTAO
//            resul := num1 / num2
//FIMSE

// Forma CASO
ESCOLHA operacao
        CASO "+"
             resul := num1 + num2
        CASO "-"
             resul := num1 - num2
        CASO "*"
             resul := num1 * num2
        CASO "/"
             resul := num1 / num2
        OUTROCASO
             ESCREVA("Operação invalida!!!")
FIMESCOLHA

ESCREVA("O resultado é: ", resul)






Fimalgoritmo