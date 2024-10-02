//Faça um programa que preencha um vetor com 10 números inteiros, calcule e mostre os 
//números primos e suas respectivas posições

programa
{
	
	funcao inicio()
	{
		inteiro num[10]
		inteiro cont


		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Informe o valor na posição [", i,"] :")
			leia(num[i])
		}

		para(inteiro i = 0; i < 10; i++)
		{
			cont = 0
			//Estrutura do numero primo
			para(inteiro j = 1; j <=
			num[i]; j++)
			{
				se(num[i] % j == 0)
				{
					cont = cont + 1	
				}
			}

			se(cont <= 2)
			{
				escreva("O valor ", num[i], " é um valor primo e está na posição [",i,"] \n")
			}
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */