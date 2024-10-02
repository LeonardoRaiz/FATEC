Algoritmo "Exercicio 1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Leonardo Raiz 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/03/2020
// Faça um programa que receba o código correspondente ao cargo de um
// funcionario e seu salário atual e mostre o cargo, o valor do aumento
// o seu novo salário. Os cargos estão abaixo na tabela:
// 1 Escriturário    50%
// 2 Secretário      35%
// 3 Caixa           20%
// 4 Gerente         10%
// 5 Diretor         não tem aumento
Var
// Seção de Declarações das variáveis 
cargo: inteiro
sal, aumento, novo_sal :real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
ESCREVAL("--- MENU AUMENTA SALÁRIO ---")
ESCREVAL("Digite o cargo do funcionário: ")
ESCREVAL("1 Escriturário")
ESCREVAL("2 Secretário")
ESCREVAL("3 Caixa")
ESCREVAL("4 Gerente")
ESCREVAL("5 Diretor")
ESCREVAL("-------------------------------------")
LEIA(cargo)
ESCREVAL("Digite o salário do funcionário: ")
LEIA(sal)

SE cargo = 1 ENTAO
   ESCREVAL("O cargo é Escriturário!")
   aumento := sal * 50/100
   ESCREVAL("O aumento é de: ", aumento)
   novo_sal := sal + aumento
   ESCREVAL("O novo salário é de: ", novo_sal)
SENAO
     SE cargo = 2 ENTAO
        ESCREVAL("O cargo é Secretário!")
        aumento := sal * 35/100
        ESCREVAL("O aumento é de: ", aumento)
        novo_sal := sal + aumento
        ESCREVAL("O novo salário é de: ", novo_sal)
     SENAO
          SE cargo = 3 ENTAO
             ESCREVAL("O cargo é Caixa!")
             aumento := sal * 20/100
             ESCREVAL("O aumento é de: ", aumento)
             novo_sal := sal + aumento
             ESCREVAL("O novo salário é de: ", novo_sal)
          SENAO
               SE cargo = 4 ENTAO
                  ESCREVAL("O cargo é Gerente!")
                  aumento := sal * 10/100
                  ESCREVAL("O aumento é de: ", aumento)
                  novo_sal := sal + aumento
                  ESCREVAL("O novo salário é de: ", novo_sal)
               SENAO
                    SE cargo = 5 ENTAO
                       //ESCREVAL("O cargo é Diretor!")
                       //ESCREVAL("Não tem aumento")
                       //ESCREVAL("O salário é o mesmo: ", sal)
                       ESCREVAL("O cargo é Diretor!")
                       aumento := 0
                       ESCREVAL("O aumento é de: ", aumento)
                       novo_sal := sal + aumento
                       ESCREVAL("O novo salário é de: ", novo_sal)
                    SENAO
                         ESCREVAL("Cargo não existe!")
                    FIMSE
               FIMSE
          FIMSE
     FIMSE
FIMSE
Fimalgoritmo