programa
{
	
	funcao inicio()
	{
		real nota1, nota2, nota3, media
		inteiro peso1, peso2, peso3
		// Entrada
		escreva("Insira a nota 1: ")
		leia(nota1)
		escreva("Insira a nota 2: ")
		leia(nota2)
		escreva("Insira a nota 3: ")
		leia(nota3)

		// Processo
		peso1 = 5
		peso2 = 2
		peso3 = 3

		media = (peso1 * nota1 + peso2 * nota2 + peso3 * nota3) 
						                     / (peso1 + peso2 + peso3)

		// Saida
		escreva("A média das notas é de: ", media)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */