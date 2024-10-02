programa
{
	
	funcao inicio()
	{
		inteiro num, contDiv
		escreva("Informe o valor do número: ")
		leia(num)
		contDiv = 0
				
		se(num == 1)
		{
			escreva("O número ", num, " não é primo" )
		}
		senao
		{
			para(inteiro i = 1; i <= num; i++)
			{
				se(num % i == 0)
				{
					contDiv = contDiv + 1
				}
			}

			se (contDiv > 2) 
			{
				escreva("O número ", num, " não é primo")
			}
			senao
			{
				escreva("O número ", num, " é primo")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */