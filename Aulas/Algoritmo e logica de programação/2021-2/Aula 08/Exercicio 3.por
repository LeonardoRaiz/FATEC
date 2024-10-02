programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro numT, fat, denomi, fimFAT, teste
		real S, x, expo
		escreva("Informe o numero de termos: ")
		leia(numT)

		escreva("Informe o valor de x: ")
		leia(x)

		// Caso o número não seja positivo....
		enquanto (x <= 0)
		{
			escreva("O número não é positivo!!! Insira o valor novamente...")
			leia(x)
		}

		S = 0.0
		denomi = 1
		teste = 1
		para(inteiro i = 1; i <= numT; i++)
		{
			//fatorial
			fimFAT = denomi
			fat = 1
			para (inteiro j = 1; j <= fimFAT; j++)
			{
				fat = fat * j
			}
			//Alg expoente
			expo = i + 1.0
			
			//se o fatorial for par ou impar
			se(denomi % 2 == 0)
			{
				S = S + mat.potencia(x, expo)/fat
			}
			senao
			{
				S = S - mat.potencia(x, expo)/fat
			}
			//-------------------------------------------------
			//se o expoente fou par ou impar
			/*se(expo % 2 == 0)
			{
				S = S - mat.potencia(x, expo)/fat
			}
			senao
			{
				S = S + mat.potencia(x, expo)/fat
			}*/
			
			//condição do incremento ou decremento
			se(denomi == 4)
			{
				teste = -1
			}
			senao
			{
				se(denomi == 1)
				{
					teste = 1
				}
			}
			// codigo da chave
			se(teste == 1)
			{
				denomi = denomi + 1
			}
			senao
			{
				denomi = denomi - 1
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
 * @POSICAO-CURSOR = 1302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */