programa
{
	
	funcao inicio()
	{
		inteiro m[2][2]
		inteiro r[2][2], maior

		para(inteiro i = 0; i < 2; i++)
		{
			para(inteiro j = 0; j < 2; j++)
			{
				//inserir os valores na matriz 
				leia(m[i][j])
			}
		}

		
		//Quem é o maior valor da matriz????
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

		//Jogar a multiplicação na matriz R
		para(inteiro i = 0; i < 2; i++)
		{
			para(inteiro j = 0; j < 2; j++)
			{
				r[i][j] = m[i][j] * maior
				escreva("[", r[i][j], "] ")
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
 * @POSICAO-CURSOR = 626; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */