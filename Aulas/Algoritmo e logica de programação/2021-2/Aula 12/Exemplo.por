programa
{
	
	funcao inicio()
	{
		inteiro matriz[2][5]

		matriz[0][2] = 7

		escreva(matriz[0][2])
		//linha
		para(inteiro i = 0; i < 2; i++)
		{
			//coluna
			para(inteiro j = 0; j < 5; j++)
			{
				escreva("M [",i,"][",j,"]:")
				leia(matriz[i][j])
			}	
		}

		para(inteiro i = 0; i < 2; i++)
		{
			para(inteiro j = 0; j < 5; j++)
			{
				escreva("[",i,"][",j,"]:", matriz[i][j]," | ")
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
 * @POSICAO-CURSOR = 427; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */