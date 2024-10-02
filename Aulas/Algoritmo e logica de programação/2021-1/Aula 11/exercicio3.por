programa
{
	// Positivo - negativo
	funcao inicio()
	{
		inteiro num[8], pos[8], neg[8]
		inteiro cont_p, cont_n


		cont_p = 0
		cont_n = 0

		para(inteiro i = 0; i < 8; i++)
		{
			escreva("Insira os valores: ")
			leia(num[i])
			se(num[i] >= 0)
			{
				pos[cont_p] = num[i]
				cont_p++	
			}
			senao
			{
				se(num[i] < 0)
				{
					neg[cont_n] = num[i]
					cont_n++
				}
			}
		}

		//negativos
		se(cont_n == 0)
		{
			escreva("Vetor negativos vazio!!! \n")
		}
		senao
		{
			para(inteiro i = 0; i < cont_n; i++)
			{
				escreva(neg[i], " | ")
			}
		}

		escreva(" \n ")

		//positivo
		se(cont_p == 0)
		{
			escreva("Vetor positivo vazio!!! \n")
		}
		senao
		{
			para(inteiro i = 0; i < cont_p; i++)
			{
				escreva(pos[i], " | ")
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 765; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */