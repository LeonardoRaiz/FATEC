//
//
Algoritmo "CHECA_CPF"
// Disciplina  : [Linguagem e Lógica de Programação] 
// Professor(a): Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a) EU
// Data atual  : 27/09/2015
Var
// Seção de Declarações das variáveis 
     flag,XTECLA : logico
     XMENSAGEM : caracter
     MCPF,cpf,D1,D2,XCAR,XC1,XC2 : caracter
     i,x,XCPF,CONTADOR,ACUMULA,XD1,XD2 : inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
MUDACOR("AMARELO","FRENTE")
LIMPATELA
Flag := verdadeiro
ENQUANTO FLAG FAÇA
   ESCREVA("DIGITE UM CPF ou S pra sair: ")
   LEIA(CPF)
   SE CPF = "S" ENTÃO
      FLAG := FALSO
      INTERROMPA
   FIMSE
   SE Compr(CPF) < 11 ENTÃO
      ESCREVAL(" ")
      ESCREVAL("CPF INVÁLIDO !!! - TECLE <ENTER>")
      LEIA(XTECLA)
   SENÃO
      D1 := COPIA(CPF,10,1)
      D2 := COPIA(CPF,11,1)
      MCPF := COPIA(CPF,1,9)
      ACUMULA:= 0
      CONTADOR := 2
      PARA I DE 9 ATÉ 1 PASSO -1 FAÇA
           XCAR := COPIA(MCPF,I,1)
           XCPF := CARACPNUM(XCAR) * CONTADOR
           ACUMULA := ACUMULA + XCPF
           CONTADOR := CONTADOR + 1
      FIMPARA

      XD1 := 11 - (ACUMULA MOD 11)
      XC1 := NUMPCARAC(XD1)
      MCPF := MCPF + XC1
      ACUMULA:= 0
      CONTADOR := 2

      PARA I DE 10 ATÉ 1 PASSO -1 FAÇA
           XCAR := COPIA(MCPF,I,1)
           XCPF := CARACPNUM(XCAR) * CONTADOR
           ACUMULA := ACUMULA + XCPF
           CONTADOR := CONTADOR + 1
      FIMPARA

      XD2 := 11 - (ACUMULA MOD 11)
      XC2 := NUMPCARAC(XD2)
      MCPF := MCPF + XC2
      
      SE (MCPF = CPF) ENTÃO
         XMENSAGEM := "CPF É VERDADEIRO !!! - TECLE <ENTER>"
      SENÃO
         XMENSAGEM := "CPF NÃO É VERDADEIRO !!! - TECLE <ENTER>"
      FIMSE
      ESCREVAL(" ")
      ESCREVAL(XMENSAGEM)
      LEIA(XTECLA)
   FIMSE
FIMENQUANTO

Fimalgoritmo


