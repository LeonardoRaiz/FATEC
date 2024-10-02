Algoritmo "Exemplo 2 LIVE VETORES"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/06/2020
Var
// Seção de Declarações das variáveis 
qtd :vetor [1..10] DE inteiro
preco :vetor [1..10] DE real
i :inteiro
total_vendido: real
total_geral : real
comissao :real
maior :inteiro
salario : real
indicadora: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
PARA i DE 1 ATE 10 FACA
     ESCREVAL("Insira a quantidade vendida: ")
     LEIA(qtd[i])
     ESCREVAL("Insira o preço do objeto: ")
     LEIA(preco[i])
FIMPARA
total_geral := 0
PARA i DE 1 ATE 10 FACA
     total_vendido := qtd[i] * preco[i]
     ESCREVAL("O objeto ", i, " qtd: ", qtd[i], " preço: ", preco[i], " Total vendido: ", total_vendido)
     total_geral := total_geral + total_vendido
FIMPARA

comissao :=  total_geral * 5/100
ESCREVAL("Total de vendas: ", total_geral)
ESCREVAL("Comissão: ", comissao)
salario := 400 + comissao
ESCREVAL("Salario final é de: ", salario)

maior := qtd[1] // Pegar o maior elemento, está na posição 1
indicadora := 1 // Já foi definido que o maior valor está na posição 1
PARA i DE 2 ATE 10 FACA // Começa a contagem do segundo elemento
     SE qtd[i] > maior ENTAO // SE a contegem dos elementos for maior
        maior := qtd[i]// Altera o maior valor
        indicadora := i// Altera a posição do vetor
     FIMSE
FIMPARA

ESCREVAL("Maior qtd: ", qtd[indicadora], " posição no vetor: ", indicadora)
Fimalgoritmo