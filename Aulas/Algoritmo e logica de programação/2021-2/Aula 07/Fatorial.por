programa
{
	
	funcao inicio()
	{
		inteiro numero, fatorial, contador
		
		escreva("Digite o valor do fatorial: ")
		leia(numero)

		fatorial = 1
		contador = 1
		enquanto (contador <= numero)
		{
			fatorial = fatorial * contador
			contador = contador + 1 //contador++
		}
		
		escreva("O valor final do fatorial é: ", fatorial)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 197; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */