programa
{
	inclua biblioteca Tipos --> tp
	
	funcao inicio()
	{
		inteiro qtd[10], preco[10], valorTotal, valorGeral, maior, ind
		real comissao
		valorGeral = 0
		//inserir os elementos
		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Insira a quantidade do produto: ")
			leia(qtd[i])
			escreva("Insira o preço do produto: ")
			leia(preco[i])
		}
		limpa()
		para(inteiro i = 0; i < 10; i++)
		{
			valorTotal = qtd[i] * preco[i]
			escreva("Quantidade vendida: ", qtd[i], " Preço unitário: ", preco[i], 
												" Valor total: ", valorTotal,"\n")
			valorGeral = valorGeral + valorTotal
		}

		comissao = tp.inteiro_para_real(valorGeral) * 5/100 
		escreva("O valor total das vendas é: ", valorGeral, " E o salario do vendedor é: ", 400 + comissao)


		maior = qtd[0]
		ind = 0
		para(inteiro i = 1; i < 10; i++)
		{
			se(qtd[i] > maior)
			{
				maior = qtd[i]
				ind = i
			}
		}

		escreva("O objeto mais vendido foi: ", maior, " e está na posição no vetor: ", ind, "\n")
		escreva("O objeto mais vendido foi: ", maior, " e está na posição: ", ind + 1)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 641; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */