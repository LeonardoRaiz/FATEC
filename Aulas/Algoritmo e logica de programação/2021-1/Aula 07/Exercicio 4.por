programa
{
	
	funcao inicio()
	{
		inteiro n, num, fatorial
		escreva("Informe o valor de n: ")
		leia(n)
		
		para(inteiro i = 1; i <= n; i++)
		{
			escreva("Informe o valor do número: ")
			leia(num)
			fatorial = 1
			para(inteiro j = 1; j <= num; j++)
			{
				fatorial = fatorial * j
			}
			escreva("Resultado: ", fatorial, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */