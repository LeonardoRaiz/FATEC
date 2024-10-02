Algoritmo "semnome"
// Disciplina  : [Linguagem e Lógica de Programação] 
// Professor(a): Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/09/2015
Var
// Seção de Declarações das variáveis 
    recebe : real
    i,a,t,b,c,d, final: real
    

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   recebe := 678.90
        i := (recebe/100)
        a := int(i) * 100
        t := recebe - a
        b := t / 10
        b := int(b)*10
        c := t - b
        d := (a + b)
        final := recebe - d

Fimalgoritmo