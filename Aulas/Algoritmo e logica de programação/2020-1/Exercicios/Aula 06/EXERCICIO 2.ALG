Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2020

// Um supermercado deseja reajustar os pre�os usando o seguinte crit�rio
// o produto poder� ter seu pre�o aumentado ou diminuido. Para o pre�o
// ser alterado, o produto deve preencher pelo menos um dos requisistos
// a seguir


// Venda m�dia    |  pre�o atual        |  % aumento    | % dimunui��o
//    <500             <R$30.00                10%              -
// >=500 E < 1200   >=R$30.00 E <R$80.00       15%              -
//    >=1200          >=R$80.00                -              20%


Var
// Se��o de Declara��es das vari�veis 
preco, venda, novo_preco :real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVAL("Digite o valor do pre�o: ")
LEIA(preco)
ESCREVAL("Digite a quantidade de vendas do produto: ")
LEIA(venda)
SE ((venda < 500) OU (preco < 30)) ENTAO
   novo_preco := (preco * 10/100) + preco
SENAO
     SE (((venda >= 500) E (venda < 1200))OU((preco >= 30) E (preco < 80))) ENTAO
        novo_preco := (preco * 15/100) + preco
     SENAO
        SE ((venda >= 1200) OU (preco >= 80)) ENTAO
           novo_preco := preco - (preco * 20/100)
        FIMSE
     FIMSE
FIMSE
ESCREVA("O novo pre�o do produto �: ", novo_preco)
Fimalgoritmo