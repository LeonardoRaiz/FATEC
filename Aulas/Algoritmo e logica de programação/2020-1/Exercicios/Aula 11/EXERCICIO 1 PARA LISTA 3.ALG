Algoritmo "Exercicio 1 PARA lista 3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Leonardo Raiz 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/05/2020
Var
// Se��o de Declara��es das vari�veis 
cont_time, cont_jog, idade: inteiro
peso, alt, qtde, media_idade: real
media_altura, porc, tot80:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
qtde := 0
tot80 := 0
PARA cont_time DE 1 ATE 5 FACA
     media_idade := 0
     PARA cont_jog DE 1 ATE 11 FACA
          LEIA(idade)
          LEIA(peso)
          LEIA(alt)
          SE idade < 18 ENTAO
             qtde := qtde + 1
          FIMSE
          media_idade := media_idade + idade
          media_altura := media_altura + alt
          SE peso > 80 ENTAO
             tot80 := tot80 + 1
          FIMSE
     FIMPARA
     media_idade := media_idade/11
     ESCREVA(media_idade)
FIMPARA

ESCREVAL(qtde)
media_altura := media_altura/55
ESCREVAL(media_altura)
porc := tot80 * 100/55
ESCREVAL(porc)

Fimalgoritmo