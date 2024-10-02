programa
{
	
	funcao inicio()
	{
		inteiro n
		real equaE, fatorial
		escreva("Digite o valor de N:")
		leia(n)

		equaE = 1.00
		
		para(inteiro i = 1; i <= n; i++)
		{
			//-------------------------
			fatorial = 1.00
			para(inteiro j = 1; j <= i; j++)
			{
				fatorial = fatorial * j // Algoritmo do fatorial
			}
			//-------------------------
			equaE = equaE + (1/fatorial) //Somatoria
		}
		escreva("O resultado final é: ", equaE)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 402; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */