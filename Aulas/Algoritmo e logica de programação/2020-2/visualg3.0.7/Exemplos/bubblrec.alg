// Disciplina: [Linguagem e Lógica de programaçao] 
// Algoritmo BUBBLESORT
// Função : Demonstração para o programa VisuAlg 3.03
// Autor : Claudio Morgado de Souza
// Data : 08/09/2002
// Autor : Claudio Morgado de Souza
// Data : (corrigido em 27/02/2007)

Algoritmo "BubbleSortComRegistros"

const
   MAX_ITENS = 10

tipo
   tdados = registro
      codigo: inteiro
      nome: caractere
   fimregistro

procedimento leituradosdados
var i: inteiro
inicio
   //Caso você mesmo queira digitar os valores, comente as linhas
   // aleatorio on e aleatorio off abaixo
   aleatorio on
   para i de 1 ate MAX_ITENS faca
      escreva("Digite o codigo do ",i,"o registro:")
      leia(dados[i].codigo)
      escreva("Digite o nome do ",i,"o registro:")
      leia(dados[i].nome)
   fimpara
   aleatorio off
fimprocedimento

procedimento ordenapornome
var a,b: inteiro
    temp: tdados
inicio
   // Ordenação
   para a de 1 ate MAX_ITENS faca
      para b de 1 ate MAX_ITENS-1 faca
         se dados[b].nome > dados[b+1].nome entao
            // Atribuicao do registro inteiro
            temp <- dados[b]

            dados[b] <- dados[b+1]
            dados[b+1] <- temp
            
         fimse
      fimpara
   fimpara
fimprocedimento

procedimento ordenaporcodigo
var a,b: inteiro
    temp: tdados
inicio
   // Ordenação
   para a de 1 ate MAX_ITENS faca
      para b de 1 ate MAX_ITENS-1 faca
         se dados[b].codigo > dados[b+1].codigo entao

            // Atribuicao do registro campo a campo
            temp.codigo <- dados[b].codigo
            temp.nome <- dados[b].nome
            
            dados[b] <- dados[b+1]
            dados[b+1] <- temp
            
         fimse
      fimpara
   fimpara
fimprocedimento

procedimento imprime
var a: inteiro
inicio
   // Impressão dos dados ordenados
   escreval("Item - Codigo Nome")
   para a de 1 ate MAX_ITENS faca
      escreval(a:4," - ", dados[a].codigo : 6, " ", dados[a].nome)
   fimpara
fimprocedimento

var
      dados : vetor[1..MAX_ITENS] de tdados

inicio
   leituradosdados()
   ordenapornome()
   imprime()
   ordenaporcodigo()
   imprime()
   // Leitura dos dados
fimalgoritmo


