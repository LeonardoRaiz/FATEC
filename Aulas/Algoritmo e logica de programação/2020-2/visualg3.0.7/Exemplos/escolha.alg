Algoritmo "semnome"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função :
// Autor : Cláudio
// Data : 29/12/2003
// Seção de Declarações 
var
nota : inteiro
inicio
    escreva("Entre com a nota do aluno:")
    leia(nota)
    escolha nota
    caso 0,1,2,3
        escreval("Reprovado.")
    caso 5 ate 7, 4
        // A lista não precisa estar em uma ordem específica
        // Só na cláusula ATE o primeiro valor precisam ser menor que o  segundo
        escreval("Em final.")
    caso 8 ate 10
        escreval("Aprovado")
    outrocaso
        escreval("Nota inválida.")
    fimescolha
fimalgoritmo
