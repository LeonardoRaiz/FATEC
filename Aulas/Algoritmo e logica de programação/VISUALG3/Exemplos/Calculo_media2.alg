Algoritmo "Calculo_Media2"
// Disciplina: [Linguagem e Lógica de programaçao] 
// Função : calculo da média aritimética verificando o resultado for maior ou igual a 7; 
//                   se Sim mostre o aluno xxxx passou
//                   se Não mostre o aluno xxxx reprovou
// Autor : Professor Antonio
// Data : 05/04/2015
// Seção de Declarações
var
    Nota1, Nota2, Nota3, Nota4, Nota5, Media: Real
    Aluno : Caracter
Inicio
// Seção de Comandos
Escreva ("Digite o nome do aluno: ")
    Leia (Aluno)

Escreva ("Digite a Primeira nota: ")
    Leia (Nota1)
Escreva ("Digite a Segunda nota: ")
    Leia (Nota2)
Escreva ("Digite a Terceira nota: ")
    Leia (Nota3)
Escreva ("Digite a Quarta nota: ")
    Leia (Nota4)
Escreva ("Digite a Quarta nota: ")
    Leia (Nota5)

Media <- (Nota1+ Nota2+ Nota3+ Nota4+ Nota5) / 5
    Escreva ("A Média eh: ", Media)
Se Media >=7 entao
     Escreva(" O Aluno ",Aluno, " Passou !!!")
Senao
     Escreva(" O Aluno ",Aluno, " Reprovou !!!")
fimse
Fimalgoritmo

