programa
{
	
	funcao inicio()
	{
		inteiro N, num, fatorial
		escreva("Informe a quantidade de elementos a serem lidos: ")
		leia(N)

		para(inteiro i = 1; i <= N; i++)
		{
			escreva("Digite o valor do número: ")
			leia(num)
			fatorial = 1
			para(inteiro j = 1; j <= num; j++)
			{
				fatorial = fatorial * j
			}
			escreva("O número: ", num, "tem o fatorial de: ", fatorial, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 396; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */