Algoritmo "semnome"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/09/2015
Var
// Seção de Declarações das variáveis
   X,xvariav : caracter
   xdecim,xmul,xm : Real
   xcomp,ind,xsoma : inteiro
   xret : Logico
//======================================================
FUNÇÃO MAGRO(xvar:caracter): caracter
Var i: inteiro
   x,p: caracter
inicio
   X := ""
   p := ""
   PARA i DE 1 ATÉ COMPR(xvar) FAÇA
      p := copia(xvar,i,1)
      SE P <> " " ENTÃO
         X := X + P
      FIMSE
   FIMPARA
   RETORNE X
FIMFUNÇÃO
// ================================================
FUNÇÃO E_BINARIO(xvar:caracter):Logico
Var ret: Logico
   x,i,c: Inteiro
   P: Caracter
inicio
   ret := Verdadeiro
   C := Compr(xvar)
   PARA i DE 1 ATÉ C FAÇA
      p := Copia(xvar,i,1)
      x := CaracPnum(p)
      SE (x > 1) OU (X < 0) ENTÃO
         ret := falso
      FIMSE
   FIMPARA
   RETORNE ret
FIMFUNÇÃO
//==================================================
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   Limpatela
   Escreval(" ")
   Escreva("Digite um numero em binário: ")
   Leia(xvariav)
   xret := E_BINARIO(xvariav)
   SE xret ENTÃO
      xvariav := MAGRO(xvariav)
      xcomp := Compr(xvariav)
      X := ""
      xsoma := 0
      xmul  := 0
      PARA Ind de xcomp ATÉ 1 PASSO -1 FAÇA
         X := Copia(xvariav,Ind,1)
         xdecim := CaracPnum(X)
         xm := xdecim * Exp(2,xmul)
         xsoma:= (xsoma + INT(xm))
         xmul := xmul + 1
      FIMPARA
   SENÃO
      Escreva("Esse número não é binário! - Tecle <enter>")
      Leia(xret)
      Interrompa
   FIMSE
   Escreval(" ")
   Escreval("O resultado é: ",xsoma)
//==================================================
Fimalgoritmo