programa
{
	funcao inicio()
	{
		real nota1, nota2, nota3, media
		inteiro peso1, peso2, peso3
		escreva("Insira a primeira nota: ")
		leia(nota1)
		escreva("Insira a segunda nota: ")
		leia(nota2)
		escreva("Insira a terceira nota: ")
		leia(nota3)
		escreva("Insira o primeiro peso: ")
		leia(peso1)
		escreva("Insira o segundo peso: ")
		leia(peso2)
		escreva("Insira o terceiro peso: ")
		leia(peso3)

		media = (nota1 * peso1 + nota2
		* peso2 + nota3 * peso3)/(peso1 + peso2 + peso3)

		escreva("A media das notas é de: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */