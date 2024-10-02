programa
{
	
	funcao inicio()
	{
		inteiro numeros[5]
		
		para(inteiro i = 0; i < 5; i++)
		{
			escreva("Insira o valor na posição ", i + 1, ": ")
			leia(numeros[i]) 
		}

		para(inteiro i = 0; i < 5; i++)
		{
			se(numeros[i] % 2 == 0)
			{
				escreva(numeros[i], " é par \n")
			} senao
			{
				escreva(numeros[i], " é impar \n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 174; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */