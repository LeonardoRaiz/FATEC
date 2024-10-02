Algoritmo "semnome"
// Disciplina  : [Linguagem e Lógica de Programação] 
// Professor(a): Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/08/2015
Var
// Seção de Declarações das variáveis 

nota : Caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    escreva("Entre com a nota do aluno:")
    leia(nota)
    escolha nota
    caso "0", "1", "2", "3"
        escreval("Reprovado.")
    caso  "5" ATÉ "7", "4"
        // A lista não precisa estar em uma ordem específica
        // Só na cláusula ATE o primeiro valor precisam ser menor que o  segundo
        escreval("Em final (exame).")
    caso "8", "9", "10"
        escreval("Aprovado")
    outrocaso
        escreval("Nota inválida.")
    fimescolha

Fimalgoritmo
