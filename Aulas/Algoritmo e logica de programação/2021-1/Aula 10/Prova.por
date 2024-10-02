programa
{
	
	funcao inicio()
	{
		inteiro num
		real soma, qtdNum, maior, menor, somaPar, qtdPar, qtdImpar
		real media, mediaPar, porcImpar

		escreva("Informe o número: ")
		leia(num)

		soma = 0.0
		qtdNum = 0.0
		maior = num
		menor = num
		somaPar = 0.0
		qtdPar = 0.0
		qtdImpar = 0.0
		enquanto(num >= 0)
		{
			//1 soma
			soma = soma + num

			//2 quantidade num digitados
			qtdNum = qtdNum + 1 //qtdNum++

			//4 Maior
			se(num > maior)
			{
				maior = num
			}

			//5 Menor
			se(num < menor)
			{
				menor = num
			}

			//6 Media Num Par
			se(num % 2 == 0)
			{
				somaPar = somaPar + num
				qtdPar = qtdPar + 1 //qtdPar++
			}
			//7 Qtd impar porcentagem
			senao
			{
				qtdImpar = qtdImpar + 1 // qtdImpar / qtdNum
			}

			escreva("Informe o número: ")
			leia(num)
		}

		//3 media
		media = soma/qtdNum
		//6 media Par
		mediaPar = somaPar/qtdPar
		//7 % impares
		porcImpar = qtdImpar/qtdNum

		//1
		escreva("Soma dos números: ", soma, "\n")
		//2
		escreva("Qtd números digitados: ", qtdNum, "\n")
		//3
		escreva("Média dos números: ", media, "\n")
		//4
		escreva("O Maior número digitado: ", maior, "\n")
		//5
		escreva("O menor número digitado: ", menor, "\n")
		//6
		escreva("Média dos númeors pares: ", mediaPar, "\n")
		//7
		escreva("Porcentagem dos números impares: ", porcImpar, "\n")

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */