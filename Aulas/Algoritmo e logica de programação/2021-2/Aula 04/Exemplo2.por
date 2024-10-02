programa
{
	
	funcao inicio()
	{
		real n1, n2, n3, n4, media

		escreva("Informe as notas: ")
		leia(n1, n2, n3, n4)
		media = (n1 + n2 + n3 + n4)/4
		se(media >= 6)
		{
			escreva("A média foi de: ", media)
			escreva("\nAluno aprovado!!!")
		}
		senao
		{
			escreva("A média foi de: ", media)
			escreva("\nAluno reprovado!!!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */