Algoritmo "Exemplo 2 LIVE VETORES"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/06/2020
Var
// Se��o de Declara��es das vari�veis 
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
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
PARA i DE 1 ATE 10 FACA
     ESCREVAL("Insira a quantidade vendida: ")
     LEIA(qtd[i])
     ESCREVAL("Insira o pre�o do objeto: ")
     LEIA(preco[i])
FIMPARA
total_geral := 0
PARA i DE 1 ATE 10 FACA
     total_vendido := qtd[i] * preco[i]
     ESCREVAL("O objeto ", i, " qtd: ", qtd[i], " pre�o: ", preco[i], " Total vendido: ", total_vendido)
     total_geral := total_geral + total_vendido
FIMPARA

comissao :=  total_geral * 5/100
ESCREVAL("Total de vendas: ", total_geral)
ESCREVAL("Comiss�o: ", comissao)
salario := 400 + comissao
ESCREVAL("Salario final � de: ", salario)

maior := qtd[1] // Pegar o maior elemento, est� na posi��o 1
indicadora := 1 // J� foi definido que o maior valor est� na posi��o 1
PARA i DE 2 ATE 10 FACA // Come�a a contagem do segundo elemento
     SE qtd[i] > maior ENTAO // SE a contegem dos elementos for maior
        maior := qtd[i]// Altera o maior valor
        indicadora := i// Altera a posi��o do vetor
     FIMSE
FIMPARA

ESCREVAL("Maior qtd: ", qtd[indicadora], " posi��o no vetor: ", indicadora)
Fimalgoritmo