programa
{
	
	funcao inicio()
	{
		inteiro num[4]
		inteiro menor, maior, soma, qtdPar, somaPar
		real mediaPar = 0
		
		//num[0] = 2
		//num[1] = 5
		//num[2] = 3
		//num[3] = 10
		
		//entrada
		para(inteiro posicao = 0; posicao < 4; posicao++)
		{
			escreva("Informe o valor na posição [", posicao, "] : ")
			leia(num[posicao])
		}

		//somatoria
		soma = 0
		para(inteiro i = 0; i < 4; i++)
		{
			soma = soma + num[i]
		}

		escreva("A soma dos valores dentro do vetor é igual: ", soma, "\n")

		//Quantidade e media dos numeros pares
		qtdPar = 0
		somaPar = 0
		para(inteiro i = 0; i < 4; i++)
		{
			se(num[i] % 2 == 0)
			{
				//qtdPar = qtdPar + 1
				somaPar = somaPar + num[i]
				qtdPar++
			}
		}
		se(qtdPar > 0)
		{
			mediaPar = somaPar / qtdPar	
		}
		escreva("A quantidade de numeros pares é de: ", qtdPar, "\n")
		escreva("A media dos numeros pares é igual: ", mediaPar, "\n")

		//menor
		menor = num[0]
		para(inteiro i = 1; i < 4; i++)
		{
			se(num[i] < menor)
			{
				menor = num[i]
			}
		}
		escreva("O menor valor é: ", menor, "\n")

		//maior
		maior = num[0]
		para(inteiro i = 1; i < 4; i++)
		{
			se(num[i] > maior)
			{
				maior = num[i]
			}
		}

		escreva("O maior valor é: ", maior, "\n")
		

		//saida
		para(inteiro i = 0; i < 4; i++)
		{
			escreva("O numero na posição [", i,  "] é igual: ", num[i], "\n")
		}

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 120; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */