Algoritmo "Exercicio 4 - Aula 5"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/09/2020
Var
// Se��o de Declara��es das vari�veis 
cod : inteiro
sal_atual: real
novo_sal: real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVA("Insira o codigo: ")
LEIA(cod)
ESCREVA("Insira o salario atual: ")
LEIA(sal_atual)

SE cod = 1 ENTAO
   ESCREVAL("Cargo Escriturario")
   novo_sal := sal_atual + (sal_atual * 50/100)
   ESCREVA("O novo salario � de:", novo_sal)
FIMSE

SE(cod = 2)ENTAO
   ESCREVAL("Cargo Secretario")
   novo_sal := sal_atual + (sal_atual * 35/100)
   ESCREVA("O novo salario � de:", novo_sal)
FIMSE

SE cod = 3 ENTAO
   ESCREVAL("Cargo Caixa")
   novo_sal := sal_atual + (sal_atual * 20/100)
   ESCREVA("O novo salario � de:", novo_sal)
FIMSE

SE cod = 4 ENTAO
   ESCREVAL("Cargo Gerente")
   novo_sal := sal_atual + (sal_atual * 10/100)
   ESCREVA("O novo salario � de:", novo_sal)
FIMSE

SE cod = 5 ENTAO
   ESCREVAL("Cargo Diretor")
   novo_sal := sal_atual
   ESCREVA("O novo salario � de:", novo_sal)
FIMSE
   

Fimalgoritmo