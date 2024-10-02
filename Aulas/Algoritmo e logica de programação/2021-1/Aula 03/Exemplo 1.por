//Faça um programa que arredonde os valores decimais em 3 casas, 2 casas e 1 casa
programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real num, arredondamento
		
		escreva("Insira o número: ")
		leia(num)

		arredondamento = mat.arredondar(num, 3)
		escreva("O valor de 3 casas decimais: ", arredondamento, "\n")

		arredondamento = mat.arredondar(num, 2)
		escreva("O valor de 2 casas decimais: ", arredondamento, "\n")

		arredondamento = mat.arredondar(num, 1)
		escreva("O valor de 1 casas decimais: ", arredondamento, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */