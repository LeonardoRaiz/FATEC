Algoritmo "Exercicio 1 Super"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/09/2020

// Venda m�dia    |  pre�o atual        |  % aumento    | % dimunui��o
//    <500             <R$30.00                10%              -
// >=500 E < 1200   >=R$30.00 E <R$80.00       15%              -
//    >=1200          >=R$80.00                -              20%
Var
// Se��o de Declara��es das vari�veis 
preco : real
venda : inteiro
novo_preco : real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Digite a quantidade de vendas do produto: ")
LEIA(venda)
ESCREVA("Digite o pre�o do produto: ")
LEIA(preco)

SE((venda < 500)OU(preco < 30))ENTAO
    novo_preco := preco + (preco * 10/100)
SENAO
     SE(((venda >= 500)E(venda < 1200))OU((preco >= 30)E(preco < 80)))ENTAO
                novo_preco := preco + (preco * 15/100)
     SENAO
          SE((venda >= 1200)OU(preco >= 80))ENTAO
                    novo_preco := preco - (preco * 20/100)
          FIMSE
     FIMSE
FIMSE

ESCREVAL("O novo pre�o do produto �: ", novo_preco)

Fimalgoritmo