programa
{
	
	funcao inicio()
	{
		inteiro m[3][3]

		// inserir os valores -- ENTRADA
				//   i
		para(inteiro linha = 0; linha < 3; linha++)
		{
					//    j
			para(inteiro coluna = 0; coluna < 3; coluna++)
			{
				escreva("Insira o valor na posição m[", linha, "][", coluna, "] :")
				leia(m[linha][coluna])
			}
		}
		
		para(inteiro i = 0; i < 3; i++)
		{
			para(inteiro j = 0; j < 3; j++)
			{
				m[i][j] = m[i][j] * 2
			}
		}

		
		// escreva(m[1][0])
		// SAIDA dos valores
		para(inteiro i = 0; i < 3; i++)
		{
			para(inteiro j = 0; j < 3; j++)
			{
				//escreva("[", m[i][j] * 2, "]")
				escreva("[", m[i][j], "]")
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
 * @POSICAO-CURSOR = 633; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */