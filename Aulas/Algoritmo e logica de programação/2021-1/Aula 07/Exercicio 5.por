programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro numT,  denomi, fimFAT, fat, teste
		real S, x, expo 
		escreva("Informe o número de termos: ")
		leia(numT)
		escreva("Informe o valor de x: ")
		leia(x)

		enquanto (x <= 0) 
		{
			escreva("O número não é positivo!!! Insira o valor novamente... \n")
			leia(x)
		}
		
		S = 0.0
		denomi = 1
		teste = 0
		para (inteiro i = 1; i <= numT; i++)
		{
			fimFAT = denomi
			fat = 1
			para (inteiro j = 1; j <= fimFAT; j++)
			{
				fat = fat * j
			}
			expo = i + 1.0
			// FATORIAL
			se (denomi % 2 == 0)
			{
				S = S + mat.potencia(x, expo)/fat
			}
			senao
			{
				S = S - mat.potencia(x, expo)/fat
			}

			//se (expo % 2 == 0)
			//{
			//	S = S - mat.potencia(x, expo)/fat
			//}
			//senao
			//{
			//	S = S + mat.potencia(x, expo)/fat
			//}

			// Teste para saber o limite
			se (denomi == 4)
			{
				teste = -1	
			}
			senao
			{
				se (denomi == 1)
				{
					teste = 1	
				}
			}

			// teste de incremento e decremento
			se(teste == 1)
			{
				denomi = denomi + 1
				//denomi++
			}
			senao
			{
				denomi = denomi - 1
				//denomi--
			}
		}

		escreva("S = ", S)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */