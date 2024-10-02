//Faça um programa que preencha um vetor com 10 números inteiros, calcule e
//mostre os números primos e suas respectivas posições 

programa
{
	
	funcao inicio()
	{
		inteiro num[10]
		inteiro contador
		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Informe o valor na posição [", i + 1 ,"] :")
			leia(num[i])
		}

		para(inteiro i = 0; i < 10; i++)
		{
			contador = 0
			//estrutura do número primo
			para(inteiro j = 1; j <= num[i]; j++)
			{
				se(num[i] % j == 0)
				{
					contador = contador + 1 //contador++
				}
			}

			se(contador == 2)
			{
				escreva("O valor ", num[i]," é um valor primo ")
				escreva("e está na posição [", i + 1, "] \n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 566; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */