//
Algoritmo "Equacao2Grau"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Função --> Resolver uma equação do 2º grau.
// Autor(a)    : Eu mesmo
// Data atual  : 09/10/2015
Var
   // Seção de Declarações das variáveis
   xraiz, x1, x2, delta, a, b, c, B2 :real

inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   Limpatela
   Escreva("Digite o valor de 'A': ")
   Leia(a)
   Escreva("Digite o valor de 'B': ")
   Leia(b)
   Escreva("Digite o valor de 'C': ")
   Leia(c)

   b2 := b*b // ou use o B2 := B ^ 2

   xraiz := ((4 * a) * c)
   delta := b2 - xraiz

   SE a = 0 ENTÃO
      Escreva("'A' tem que ser diferente de (0)")
   SENÃO
      SE delta > 0 ENTÃO
         Escreval("Existem duas raizes 'possíveis' ")
         x1 := (-b+RaizQ(delta)) / (2 * a )
         x2 := (-b-RaizQ(delta)) / (2 * a )
         Escreval("A Primeira raiz X': ", x1)
         Escreval("A Segunda raiz X'': ", x2)
      SENÃO
         SE delta = 0 ENTÃO
            Escreval("As Duas raizes são iguais ")
            x1 := (-b+RaizQ(delta)) / (2 * a )
            x2 := (-b-RaizQ(delta)) / (2 * a )
            Escreval("A Primeira raiz X': ", x1)
            Escreval("A Segunda raiz X'': ", x2)
         SENÃO
            SE delta < 0 ENTÃO
               Escreva("Não pertence aos números reais")
            FIMSE
         FIMSE
      FIMSE
   FIMSE
Fimalgoritmo


