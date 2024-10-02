programa
{
	
	funcao inicio()
	{
		inteiro m[2][2], r[2][2]
		inteiro maior
		
		para(inteiro i = 0; i < 2; i++)
		{
			para(inteiro j = 0; j < 2; j++)
			{
				escreva("Informe o valor: ")
				leia(m[i][j])
			}
		}

		maior = m[0][0]
		para(inteiro i = 0; i < 2; i++)
		{
			para(inteiro j = 0; j < 2; j++)
			{
				se(m[i][j] > maior)
				{
					maior = m[i][j]
				}
			}
		}

		para(inteiro i = 0; i < 2; i++)
		{
			para(inteiro j = 0; j < 2; j++)
			{
				r[i][j] = m[i][j] * maior
				escreva("[", r[i][j] , "]")
			}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 546; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */