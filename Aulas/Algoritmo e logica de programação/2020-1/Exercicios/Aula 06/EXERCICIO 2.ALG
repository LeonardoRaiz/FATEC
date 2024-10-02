Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2020

// Um supermercado deseja reajustar os preços usando o seguinte critério
// o produto poderá ter seu preço aumentado ou diminuido. Para o preço
// ser alterado, o produto deve preencher pelo menos um dos requisistos
// a seguir


// Venda média    |  preço atual        |  % aumento    | % dimunuição
//    <500             <R$30.00                10%              -
// >=500 E < 1200   >=R$30.00 E <R$80.00       15%              -
//    >=1200          >=R$80.00                -              20%


Var
// Seção de Declarações das variáveis 
preco, venda, novo_preco :real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVAL("Digite o valor do preço: ")
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
ESCREVA("O novo preço do produto é: ", novo_preco)
Fimalgoritmo