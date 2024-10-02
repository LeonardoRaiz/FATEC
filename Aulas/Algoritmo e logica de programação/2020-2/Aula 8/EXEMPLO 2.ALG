Algoritmo "Exemplo 2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/06/2020
Var
// Seção de Declarações das variáveis 
qtd: vetor [1..10] DE inteiro
preco: vetor [1..10] DE real
i, maior, ind : inteiro
tot_geral, tot_vendas, comissao :real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
tot_geral := 0
PARA i DE 1 ATE 10 FACA
     LEIA(qtd[i])
     LEIA(preco[i])
FIMPARA

PARA i DE 1 ATE 10 FACA
     tot_vendas := qtd[i] * preco[i]
     ESCREVAL(qtd[i], preco[i], tot_vendas)
     tot_geral := tot_geral + tot_vendas
FIMPARA

comissao := tot_geral * 5 / 100
ESCREVAL (tot_geral, comissao)

maior := qtd[1]
ind := 1
PARA i DE 2 ATE 10 FACA
     SE qtd[i] > maior ENTAO
        maior := qtd[i]
        ind := i
     FIMSE
FIMPARA

ESCREVAL (preco[ind], ind)
     

Fimalgoritmo