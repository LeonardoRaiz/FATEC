Algoritmo "Desafio 1 SE"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/03/2020
// Fa�a um programa que receba tr�s n�meros e mostre-os em ordem crescente.
//Suponha que o usuario digitar� tr�s n�meros diferentes
Var
// Se��o de Declara��es das vari�veis
num1, num2, num3 :inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
ESCREVA("Digite o primeiro valor: ")
LEIA(num1)
ESCREVA("Digite o segundo valor: ")
LEIA(num2)
ESCREVA("Digite o terceiro valor: ")
LEIA(num3)
SE ((num1 < num2) E (num1 < num3)) ENTAO //SE SIM
                                   //o num1 � o menor dos valores
   SE (num2 < num3) ENTAO // VALOR DO MEIO
      ESCREVAL(num1," - ",num2," - ",num3)
   SENAO // O num2 � maior que o num3
      ESCREVAL(num1," - ",num3," - ",num2)
   FIMSE
SENAO // num1 n�o � o menor valor
      SE ((num2 < num1) E (num2 < num3)) ENTAO //num2 � o menor valor
         SE num1 < num3 ENTAO // VALOR DO MEIO
            ESCREVAL(num2," - ",num1," - ", num3)
         SENAO
            ESCREVAL(num2," - ",num3," - ",num1)
         FIMSE
      SENAO
           SE ((num3 < num1) E (num3 < num2)) ENTAO//num3 � o menor valor
              SE num1 < num2 ENTAO //valor do meio
                 ESCREVAL(num3," - ",num1," - ",num2)
              SENAO
                 ESCREVAL(num3," - ",num2," - ",num1)
              FIMSE
           FIMSE
      FIMSE
FIMSE
Fimalgoritmo