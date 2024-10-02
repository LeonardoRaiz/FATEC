programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro vetor[100]

		para(inteiro posicao = 0; posicao < 100; posicao++)
		{
			vetor[posicao] = Util.sorteia(1, 100)
		}

		para(inteiro i = 0; i < 100; i++)
		{
			escreva(vetor[i], " | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 253; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */