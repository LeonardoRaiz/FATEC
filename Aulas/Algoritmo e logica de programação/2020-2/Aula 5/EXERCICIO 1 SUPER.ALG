Algoritmo "Exercicio 1 Super"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/09/2020

// Venda média    |  preço atual        |  % aumento    | % dimunuição
//    <500             <R$30.00                10%              -
// >=500 E < 1200   >=R$30.00 E <R$80.00       15%              -
//    >=1200          >=R$80.00                -              20%
Var
// Seção de Declarações das variáveis 
preco : real
venda : inteiro
novo_preco : real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVA("Digite a quantidade de vendas do produto: ")
LEIA(venda)
ESCREVA("Digite o preço do produto: ")
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

ESCREVAL("O novo preço do produto é: ", novo_preco)

Fimalgoritmo