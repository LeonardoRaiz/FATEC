Algoritmo "Exemplo CASO"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/09/2020
// + SOMA
// - Subtra��o
// * Multiplica��o
// / Divis�o
Var
// Se��o de Declara��es das vari�veis 
num1, num2: real
operacao: caractere
resul:real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite o primeiro n�mero: ")
LEIA(num1)
ESCREVA("Informe a opera��o: ")
LEIA(operacao)
ESCREVA("Digite o segundo n�mero: ")
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
             ESCREVA("Opera��o invalida!!!")
FIMESCOLHA

ESCREVA("O resultado �: ", resul)






Fimalgoritmo