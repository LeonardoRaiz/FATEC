Algoritmo "populacao"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função : Demonstrar o uso de procedimentos com passagem de parâmetros por
//          referência para simular uma função
// Autor : Cláudio Morgado de Souza
// Data : 04/04/2004
var popa,popb,anos : real

funcao fincrpop(pop,taxa : real ) : real
// Retorna o incremento de TAXA% sobre a população
inicio
   retorne pop + pop * taxa
fimfuncao

procedimento pincrpop(var pop : real ; taxa : real )
inicio
    // Coloca em POP o valor da populacao acrescido de um incremento de TAXA%
    pop <- pop + pop * taxa
fimprocedimento

inicio
   // A cidade A tem 100.000 hab., e a cidade B, 60.000
   // A populacao de A cresce 10% por ano, e a de B, 13%
   // Em quantos anos a populacao de A ficará maior que a de B?
    popa <- 100000
    popb <- 60000
    anos <- 0
    repita
       // Incremento da populacao - usando FUNÇÃO
       popa <- fincrpop(popa,0.10)
       popb <- fincrpop(popb,0.13)
       anos <- anos + 1
    ate popb >= popa
    escreval( "Anos : " , anos, " Pop A:", popa:6:0, " Pop B:", popb : 6 : 0 )

    popa <- 100000
    popb <- 60000
    anos <- 0
    repita
       // Incremento da populacao - usando PROCEDIMENTO
       pincrpop(popa,0.10)
       pincrpop(popb,0.13)
       anos <- anos + 1
    ate popb >= popa
    escreval( "Anos : " , anos, " Pop A:", popa:6:0, " Pop B:", popb : 6 : 0 )

fimalgoritmo
