Algoritmo "Exercicio 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/11/2020
Var
// Seção de Declarações das variáveis 
qtd: vetor [1..3] DE inteiro
preco: vetor [1..3] DE real
i, maior, indicador: inteiro
total_vendas, total_geral, sal, comissao: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
//Inserir os valores no vetor
// LOOP
PARA i DE 1 ATE 3 FACA
     ESCREVA("Insira a quantidade vendida do produto ", i ,": ")
     LEIA(qtd[i])
     ESCREVA("Insira o preço do produto", i ,": ")
     LEIA(preco[i])
FIMPARA

//Total de vendas = qtd * preco
//Total geral = Todas as vendas
total_geral := 0
PARA i DE 1 ATE 3 FACA
     total_vendas := qtd[i] * preco[i]
     ESCREVAL("O total do produto ", i, ": ", total_vendas)
     total_geral := total_geral + total_vendas
FIMPARA

ESCREVAL("Total geral de vendas: ", total_geral)
// Comissao
// 5%
comissao := total_geral * 5 / 100
// Soma com o salario
sal := comissao + 400
ESCREVAL("O salario final do vendedor: ", sal)

//MAIOR
maior := qtd[1]
indicador := 1

PARA i DE 2 ATE 3 FACA
     SE qtd[i] > maior ENTAO
        maior := qtd[i]
        indicador := i
     FIMSE
FIMPARA

ESCREVAL("O maior valor está na casa: ", indicador)
ESCREVAL("A maior quantidade vendida é: ", maior) // ou qtd[indicador]


Fimalgoritmo