programa
{
	
	funcao inicio()
	{
		inteiro num[8], par[8], impar[8]
		inteiro cont_p, cont_i


		cont_p = 0
		cont_i = 0

		para(inteiro i = 0; i < 8; i++)
		{
			escreva("Insira os valores: ")
			leia(num[i])
			se(num[i] % 2 == 0)
			{
				par[cont_p] = num[i]
				cont_p++	
			}
			senao
			{
				impar[cont_i] = num[i]
				cont_i++
			}
		}

		//PAR
		se(cont_p == 0)
		{
			escreva("Vetor de números pares está vazio!!! \n")
		}
		senao
		{
			para(inteiro i = 0; i < cont_p; i++)
			{
				escreva(par[i], " | ")
			}
		}

		escreva(" \n ")

		//IMPAR
		se(cont_i == 0)
		{
			escreva("Vetor de números impares está vazio!!! \n")
		}
		senao
		{
			para(inteiro i = 0; i < cont_i; i++)
			{
				escreva(impar[i], " | ")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 718; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */