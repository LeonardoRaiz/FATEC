programa
{
	
	funcao inicio()
	{
		//Declaração de variaveis
		real nota1, nota2, nota3
		real peso1, peso2, peso3
		real media
		//Entrada
		escreva("Informe a nota 1: ")
		leia(nota1)
		escreva("Informe o peso da nota 1: ")
		leia(peso1)
		escreva("Informe a nota 2: ")
		leia(nota2)
		escreva("Informe o peso da nota 2: ")
		leia(peso2)
		escreva("Informe a nota 3: ")
		leia(nota3)
		escreva("Informe o peso da nota 3: ")
		leia(peso3)
		//Processo
		media = (nota1 * peso1 + nota2 * peso2 + nota3 * peso3)/ 
										(peso1 + peso2 + peso3)
		//Saida
		escreva("A média ponderada do aluno foi de: ", media)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 551; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */