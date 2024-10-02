Algoritmo "CALENDARIO"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Professor: Antonio Carlos Nicolodi
// Função : Mostra um calendário a partir de uma data
// Autor : Antonio Carlos Nicolodi
// Data : 19/05/2015
var
// Seção de Declarações das variáveis 

        AM  : vetor[1..6, 1..7] DE CARACTER // A matriz 6X7
        vt  : vetor[0..6] de caracter  // valor da tabela
dia,mes,ano : INTEIRO
  i,j,k,t,d : INTEIRO
linha,coluna: INTEIRO
     Ultimo : Inteiro
    a,y,m,q : REAL
aa,yy,mm,qq : REAL
       Flag : Logico
pd,sx,xm,xs : CARACTER
//
// Funçoes do programa
//
Funcao Data_ok(xm : Caracter) : Logico
Var
Bisext,Resp : Logico
dia,mes,ano : Inteiro
xBar1,xbar2 : Inteiro
Tamh,Ultimo : Inteiro
B1,B2,Barra : caracter
Inicio
// Valores iniciais das variáveis
        Resp:= Verdadeiro
        Tamh:= Compr(xm)
       Barra:= "/"
      Bisext:= Falso

      Se Tamh = 10 Entao
         Dia := CaracpNum(copia(xm,1,2))
         B1  := copia(xm,3,1)
         Mes := CaracpNum(copia(xm,4,2))
         B2  := copia(xm,6,1)
         Ano := CaracpNum(copia(xm,7,4))
      Senao
         Resp:= Falso
      Fimse
// Compara se o ano está (foi) digitado corretamente
   Se Resp Entao
      xBar1 := Pos(B1,Barra)//volta 0 se não achar 1ª Barra
      xBar2 := Pos(B2,Barra)//volta 0 se não achar 2ª Barra
      Se ((xBar1 > 0) e (xBar2 > 0)) entao // verifica
         Resp := Verdadeiro
      Senao
         Resp := Falso
      Fimse
      SE ((Ano < 1900) ou (Ano>2350)) Entao
         Resp := Falso
      Senao
         Bisext := ((Ano mod 4) = 0)
      FimSe
      SE ((Mes < 1) ou (Mes>12)) Entao
         Resp := Falso
      FimSe
// Compara se o mes está (foi) digitado corretamente
      Ultimo  := 31
      SE (Mes = 2) Entao
         Ultimo := 28
         Se Bisext Entao
            Ultimo := Ultimo + 1 // Ou seja 29
         Fimse
      Fimse
// Compara se o dia está (foi) digitado corretamente
      SE ((Dia < 1) ou (Dia> Ultimo)) Entao
         Resp := Falso
      FimSe
   Fimse
// Retorna Verdadeiro ou Falso
   Retorne Resp
Fimfuncao

Funcao StrZero(Numero,Qtde: Inteiro) : Caracter
Var
     Resp : Caracter
     i    : inteiro
Inicio
// Preenche a resposta com Quantidade - 1 zeros a esquerda
     Para i de 1 ate Qtde-1 faca
        Resp := "0" + Resp
     Fimpara
     SE Numero < 10 entao
// Se o numero for menor que 10 coloca um zero na frente.
        Resp := Resp + NumpCarac(Numero)
     SENAO
//      Transforma em caracter
        Resp := NumpCarac(Numero)
     FIMSE
//   Retorna a resposta  01,02,03...09,10,11,12..31
     Retorne Resp
Fimfuncao

inicio
//  Preenche a variável com os últimos dias de cada mes
     sx := "31,28,31,30,31,30,31,31,30,31,30,31"
// Preenche o vetor com os dias da semana
     vt[0] := "Dom"
     vt[1] := "Seg"
     vt[2] := "Ter"
     vt[3] := "Qua"
     vt[4] := "Qui"
     vt[5] := "Sex"
     vt[6] := "Sab"

//  Entra em um laço (loop) pra pedir a data correta
    Flag := Verdadeiro
    Enquanto Flag Faca
      LimpaTela
      Escreva("Digite A DATA 99/99/9999 dia,mes,ano : ")
      Leia(xm)
      Se Nao(Data_ok(xm)) Entao
         Escreval("Data Invalida !!! - Tecle <ENTER>")
         Leia(xm)
         Flag := Verdadeiro
      senao
         Flag := Falso
      fimse
    FimEnquanto
//Desmonta a data em pedaços (dia, mês, ano) conf. a mascara
    Dia := CARACPNUM(COPIA(XM,1,2))
    Mes := CARACPNUM(COPIA(XM,4,2))
    Ano := CARACPNUM(COPIA(XM,7,4))

//  Calcula o primeiro dia do mes para montar o calendário
    A := int((14 - Mes) / 12)
    Y := Ano - A
    M := Mes + (12 * A) - 2
//    q := Dia+int((31*M)/12)+y+int(y/4)-int(y/100)+int(y/400)
    q := 01+int((31*M)/12)+y+int(y/4)-int(y/100)+int(y/400)
//     mm:= int((31 * M)/12)
//     qq:= int(y/4)
//     aa:= int(y/100)
//     yy:= int(y/400)
//     q := Dia + mm + y + qq - aa + yy
//  Observação PRA ACHAR O MOD (tem q ser inteiro)
//  nessa fórmula vai retornar de 0-6

    d := Int(q)    // Transroma o 'q' em inteiro = int(q)
    d := (d mod 7) //(resto da divisão por 7)
    xs := vt[d]    // 'd' é real mas no vetor tem q ser
                   // um valor inteiro

//  Formula pra calcular a posição do ultimo dia/mês
    K      := (Mes * 3) - 2
    Ultimo := CaracPNum(Copia(sx,K,2))

// Monta a matriz vazia
   para i de 1 ate 6 faca
      para j de 1 ate 7 faca
          am[i,j] := "__"
      fimpara
   fimpara
// Preenche a matriz com os dias
   T := 1
   Linha := 1
   Coluna := d + 1 //acrescenta de 1 (Um) p/ posicionar certo
   Enquanto T <= Ultimo faca
        Se T = 1 Entao
           Pd:= "1º"
        senao
           Pd:= StrZero(T,2)
        Fimse
        SE ((T > 1) e (T = DIA)) Entao
           Pd := "><"
        Fimse
        am[Linha,Coluna] := Pd // carrega o número do dia
        T := T + 1
        Coluna := Coluna + 1
        SE Coluna > 7 entao
           Coluna := 1
           Linha := Linha + 1
           SE Linha > 6 entao
              Linha := 1
           FIMSE
        FIMSE
   FIMENQUANTO

   LimpaTela
// Mostra o cabeçalho do calendário
   Escreval("Data: ",xm)
   Para i de 0 ate 6 faca
       Escreva(vt[i]," ")
   FimPara
// Mostrar o calendário na tela
   para i de 1 ate 6 faca
      Escreval(" ")
      para j de 1 ate 7 faca
          Escreva(" ",am[i,j]," ")
      fimpara
   fimpara
   Escreval(" ")
//
fimalgoritmo