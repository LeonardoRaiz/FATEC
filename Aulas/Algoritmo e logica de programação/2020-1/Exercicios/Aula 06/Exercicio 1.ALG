Algoritmo "Exercicio 1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2020
// Fa�a um programa que receba o c�digo correspondente ao cargo de um
// funcionario e seu sal�rio atual e mostre o cargo, o valor do aumento
// o seu novo sal�rio. Os cargos est�o abaixo na tabela:
// 1 Escritur�rio    50%
// 2 Secret�rio      35%
// 3 Caixa           20%
// 4 Gerente         10%
// 5 Diretor         n�o tem aumento
Var
// Se��o de Declara��es das vari�veis 
cargo: inteiro
sal, aumento, novo_sal :real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
ESCREVAL("--- MENU AUMENTA SAL�RIO ---")
ESCREVAL("Digite o cargo do funcion�rio: ")
ESCREVAL("1 Escritur�rio")
ESCREVAL("2 Secret�rio")
ESCREVAL("3 Caixa")
ESCREVAL("4 Gerente")
ESCREVAL("5 Diretor")
ESCREVAL("-------------------------------------")
LEIA(cargo)
ESCREVAL("Digite o sal�rio do funcion�rio: ")
LEIA(sal)

SE cargo = 1 ENTAO
   ESCREVAL("O cargo � Escritur�rio!")
   aumento := sal * 50/100
   ESCREVAL("O aumento � de: ", aumento)
   novo_sal := sal + aumento
   ESCREVAL("O novo sal�rio � de: ", novo_sal)
SENAO
     SE cargo = 2 ENTAO
        ESCREVAL("O cargo � Secret�rio!")
        aumento := sal * 35/100
        ESCREVAL("O aumento � de: ", aumento)
        novo_sal := sal + aumento
        ESCREVAL("O novo sal�rio � de: ", novo_sal)
     SENAO
          SE cargo = 3 ENTAO
             ESCREVAL("O cargo � Caixa!")
             aumento := sal * 20/100
             ESCREVAL("O aumento � de: ", aumento)
             novo_sal := sal + aumento
             ESCREVAL("O novo sal�rio � de: ", novo_sal)
          SENAO
               SE cargo = 4 ENTAO
                  ESCREVAL("O cargo � Gerente!")
                  aumento := sal * 10/100
                  ESCREVAL("O aumento � de: ", aumento)
                  novo_sal := sal + aumento
                  ESCREVAL("O novo sal�rio � de: ", novo_sal)
               SENAO
                    SE cargo = 5 ENTAO
                       //ESCREVAL("O cargo � Diretor!")
                       //ESCREVAL("N�o tem aumento")
                       //ESCREVAL("O sal�rio � o mesmo: ", sal)
                       ESCREVAL("O cargo � Diretor!")
                       aumento := 0
                       ESCREVAL("O aumento � de: ", aumento)
                       novo_sal := sal + aumento
                       ESCREVAL("O novo sal�rio � de: ", novo_sal)
                    SENAO
                         ESCREVAL("Cargo n�o existe!")
                    FIMSE
               FIMSE
          FIMSE
     FIMSE
FIMSE
Fimalgoritmo