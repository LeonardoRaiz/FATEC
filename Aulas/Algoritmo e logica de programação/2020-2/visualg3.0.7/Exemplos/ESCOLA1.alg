Algoritmo "ESCOLA"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor(a): Antonio Carlos Nicolodi
// Descrição   : programa de escola em portugol com o VISUALG
// com arquivos pra materias, turmas, professores, disciplinas}
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/09/2015

Var
   nome:vetor[1..10] de caractere
   i:inteiro
   cod:vetor[0..4] de inteiro
   xcod:inteiro
   xcodigo:inteiro
   opcao:vetor[1..5] de caractere
   simounao,SouN:caractere
   aluouprof:vetor[1..10] de caractere
   opcao1:inteiro
   duvida:caractere
Procedimento abertura()
inicio
Mudacor("AMARELO","FRENTE")
Escreval("+-----------------------------+")
Escreval("|            ESCOLA           |")
Escreval("+-----------------------------+")
Escreval("|  CADASTRO PARA PROFESSORES  |")
Escreval("+-----------------------------+")
fimprocedimento
Procedimento menualuno()          //PROCEDIMENTO PARA MENU DO ALUNO
inicio
Mudacor("AMARELO","FRENTE")
Escreval("+-----------------------------+")
Escreval("|            ESCOLA           |")
Escreval("+-----------------------------+")
Escreval("|    CADASTRO PARA ALUNOS     |")
Escreval("+-----------------------------+")
Escreval("|            MENU             |")
Escreval("+-----------------------------+")
Escreval("|6 = NÚMERO                   |")
Escreval("|7 = CADASTRO                 |")
Escreval("|8 = FINALIZAR                |")
Escreval("+-----------------------------+")
fimprocedimento
Procedimento numeroaluno()                 //SELECIONAR O NÚMERO DO ALUNO
inicio
   cod[0] <- 5
   cod[1] <- 99
   cod[2] <- 18
   cod[3] <- 47
   cod[4] <- 66
   xcod <- Randi(5)

   Escreval("SEU NÚMERO É: ",cod[xcod])

fimprocedimento
Procedimento cadastroaluno()      //PROCEDIMENTO DE CADASTRO DO ALUNO
var
   xxnome:vetor[1..5] de caractere
   xxnumero:vetor[1..5] de caractere
   xxidade:vetor[1..5] de caractere
   xxcidade:vetor[1..5] de caractere
   xxsexo:vetor[1..5] de caractere
   xxserie:vetor[1..5] de caractere
   xxSouN:vetor[1..5] de caractere
inicio
   Escreva("DIGITE SEU NÚMERO PARA COMEÇAR O CADASTRO: ")
   Leia(xxnumero[1])
   Escreva("NOME COMPLETO DO ALUNO: ")
   Leia(xxnome[1])
   Escreva("IDADE DO ALUNO: ")
   Leia(xxidade[1])
   Escreva("SEXO DO ALUNO: ")
   Leia(xxsexo[1])
   Escreva("SERIE DO ALUNO: ")
   Leia(xxserie[1])
   Escreval("")
   Escreva("DESEJA GRAVAR OS DADOS? <S/N>:")
   Leia(xxSouN[1])
   Se(xxSouN[1] = "S") ou (xxSouN[1] = "s") entao
      nome[1] <- xxnome[1]
      nome[2] <- xxidade[1]
      nome[3] <- xxsexo[1]
      nome[4] <- xxserie[1]
fimprocedimento
Procedimento menu()       //PROCEDIMENTO PARA MENU DO PROFESSOR
inicio
   Escreval("           =======================")
   Escreval("           |        MENU         |")
   Escreval("           =======================")
   Escreval("           | 1 = CODIGO          |")
   Escreval("           | 2 = PROFESSORES     |")
   Escreval("           | 3 = DISCIPLINAS     |")
   Escreval("           | 4 = TURMAS          |")
   Escreval("           | 5 = FINALIZAR       |")
   Escreval("           =======================")
fimprocedimento
Procedimento codigo()          //CODIGO RANDOM
var
inicio
   cod[0] <- 1
   cod[1] <- 50
   cod[2] <- 39
   cod[3] <- 6
   cod[4] <- 79
   xcod <- Randi(5)

   Escreval("SEU CODIGO É: ",cod[xcod])

fimprocedimento
Procedimento professores()       // PROCEDIMENTO DE REGISTRO DOS PROFESSORES.
var                  //VAREAVEIS LOCAIS!
   xnome:vetor[1..5] de caractere
   xidade:vetor[1..5] de caractere
   xsexo:vetor[1..5] de caractere
   xexperiencia:vetor[1..5] de caractere
   xturno:vetor[1..5] de caractere
   xx:caracter
   soun:caractere
inicio
   Repita                        //REPITA TODO O CODIGO
   Mudacor("AMARELO","FRENTE")
   Escreval("")
   Escreval("DESEJA OBTER SEU CODIGO AGORA? <S/N>")
   leia(soun)
   Se(soun = "S") entao
      codigo()                    //CONDIÇÕES!
   Senao
   fimse
   Escreval("ÁREA DE CADASTRAMENTO DE PROFESSORES!")
   Escreval("")
   Escreval("PARA COMEÇAR PREENCHER DIGITE SEU CODIGO: ")
   Leia(xcodigo)
   Se(Xcodigo <> cod[xcod]) entao
      Escreval("")
      Escreval("CODIGO INVALIDO,OBTENHA SEU CODIGO E TENTE NOVAMENTE!")
      Leia(xx)
      Limpatela
      Escreval("")
   fimse
ate(xcodigo = cod[xcod])     //APOS SUPRIR AS NECESSIDADES, FINALIZA O LOOPING!
fimrepita
Escreval("")
Escreva("DIGITE SEU NOME COMPLETO: ")
Leia(xnome[1])
Escreval("")
Escreva("DIGITE SUA IDADE: ")
Leia(xidade[1])
Escreval("")
Escreva("DIGITE SEU SEXO: ")
Leia(xsexo[1])
Escreval("")
Escreva("TEMPO DE EXPERIENCIA COMO PROFESSOR: ")
Leia(xexperiencia[1])
Escreval("")
Escreva("QUAL TURNO É MAIS ADEQUADO PARA VOCÊ: ")
Leia(xturno[1])
Escreval("")
Escreval("DESEJA GRAVAR SEUS DADOS? <S/N>")
Leia(soun)
Se(soun = "S")entao                //CONDIÇÃO DE ATRIBUIÇÃO!
   nome[1] <- xnome[1]
   nome[2] <- xidade[1]
   nome[3] <- xsexo[1]
   nome[4] <- xexperiencia[1]
   nome[5] <- xturno[1]
Senao
fimse
fimprocedimento
Procedimento disciplinas()              //ÁREA DESTINADA A DISCIPLINAS
var                 //VAREAVEIS LOCAIS!
   xdisciplina:vetor[1..5] de caractere
   xqual:vetor[1..5] de caractere
   SouN:vetor[1..5] de caractere
   xcodigo:vetor[1..5] de inteiro
   xsoun:caractere
   xxcodigo:vetor[1..5] de inteiro
   xx:caractere
inicio

   Repita                                 //ESTRUTURA DO REPITA
   Mudacor("AMARELO","FRENTE")
   Escreval("")
   Escreval("DESEJA OBTER SEU CODIGO AGORA? <S/N>")
   leia(xsoun)
   Se(xsoun = "S") entao       //CONDIÇÕES, APÓS SER SUPRIDA CONTINUA O CODIGO!
      codigo()
   Senao
   fimse
   Escreval("ÁREA DESTINADA A DISCIPLINAS!")
   Escreval("")
   Escreval("PARA COMEÇAR PREENCHER DIGITE SEU CODIGO: ")
   Leia(xxcodigo[1])
   Se(xxcodigo[1] <> cod[xcod]) entao
      Escreval("")
      Escreval("CODIGO INVALIDO,OBTENHA SEU CODIGO E TENTE NOVAMENTE!")
      Leia(xx)
      Limpatela
      Escreval("")
   fimse
ate(xxcodigo[1] = cod[xcod])        //APÓS SUPRIR A NECESSIDADE SAI DO LOOPING!
fimrepita
Escreval("QUANTAS DISCIPLINAS VOCÊ ENSINA?: ")
Leia(xdisciplina[1])
Se(xdisciplina[1] = "1")entao
   Escreval("QUAL DISCIPLINA VOCÊ ENSINA?: ")
   Leia(xqual[1])
Senao
   Se (xdisciplina[1] > "1") entao
      Escreval("QUAIS DISCIPLINAS VOCÊ ENSINA?: ")
      Leia(xqual[1])
   Senao
      Se(xdisciplina[1] < "1") entao
         Escreval("INVALIDO, POR FAVOR INFORME APENAS DADOS CORRETOS!")
      fimse
   fimse
fimse
Escreval("DESEJA GRAVAR ? <S/N>:")
Leia(SouN[1])
Se(SouN[1] = "S") entao
   nome[6] <- xdisciplina[1]
   nome[7] <- xqual[1]
Senao
fimse
fimprocedimento
Procedimento turmas()         //ÁREA DESTINADA A TURMAS
var     //VAREAVEIS LOCAIS!
   xquant:vetor[1..5] de caractere
   xmax:vetor[1..5] de caractere
   soun:caractere
inicio
   Escreval("ÁREA DESTINADA A TURMAS!")
   Escreval("")
   Escreva("ATE QUAL SERIE VOCÊ DA AULA PARA A TURMA?: ")
   Leia(xquant[1])
   Escreval("")
   Escreva("QUANTIDADE MAXIMA DE ALUNOS PARA SUA TURMA: ")
   Leia(xmax[1])
   Escreva("DESEJA GRAVAR OS DADOS?<S/N>: ")
   Leia(soun)
   Se(soun = "S")entao         //CONDIÇÃO DE ATRIBUIÇÃO
      nome[8] <- xquant[1]
      nome[9] <- xmax[1]
   Fimse
fimprocedimento
Inicio                        // RAIZ DO PROGRAMA COMEÇA AQUI!
   Repita
      Limpatela
      Escreva("DESEJA CADASTRAR ALUNO OU PROFESSOR?")
      leia(aluouprof[1])

      Se(aluouprof[1] = "PROFESSOR")ou (aluouprof[1] = "professor") entao
         abertura()
         menu()
      Senao
         Se(aluouprof[1] = "ALUNO") ou (aluouprof[1] = "aluno") entao
            menualuno()
         fimse
      fimse
      Se(aluouprof[1] = "ALUNO") ou (aluouprof[1] = "aluno") entao
         Escreval("")
         Repita
            Limpatela
            menualuno()
            Escreval("")
            Escreva("ESCOLHA UMA DAS OPÇÕES A CIMA: ")
            Leia(opcao1)
            Se(opcao1 = 1)entao
               numeroaluno()
            Senao
               Se (opcao1 = 2)entao
                  cadastroaluno()
               Senao
                  Se(opcao1 = 3)entao
                     Escreval("GOOD BYE")
                  fimse
               fimse
            fimse
            Escreva("DESEJA CONTINUAR?[SIM/NAO]:")
            leia(duvida)
         ate(duvida <> "SIM")
         fimrepita
         Escreval("")
         Escreva("ESCOLHA UMA DAS OPÇÕEO A CIMA: ")
         Leia(opcao[1])
         escolha opcao[1]
         caso "1"
            codigo()
         caso "2"
            professores()
         caso "3"
            disciplinas()
         caso "4"
            turmas()
         caso 5
            Escreval("GOOD BYE")
         outrocaso
            Escreval("OPÇÃO INVALIDA, ESCOLHA APENAS UMA DAS OPÇÕES ACIMA!")
         fimescolha
         Escreva("")
         Escreva("DESEJA CONTINUAR? [SIM/NAO]:")
         Leia(simounao)
      ate(simounao <> "SIM")
      fimrepita
      Escreva("DESEJA VER OS DADOS GRAVADOS?<S/N>:")
      Leia(SouN)
      Se(SouN = "S")entao
         Escreval("")
         Escreval(nome[1])
         Escreval(nome[2])
         Escreval(nome[3])
         Escreval(nome[4])
         Escreval(nome[5])
         Escreval("QUANTAS DISCIPLICAS VOCÊ ENSINA: ",nome[6])
         Escreval(nome[7])
         Escreval(nome[8])
         Escreval("ATE ",nome[9]," ALUNOS")
      Senao
      Fimse
Fimalgoritmo                 //FIM DO PROGRAMA AQUI!
