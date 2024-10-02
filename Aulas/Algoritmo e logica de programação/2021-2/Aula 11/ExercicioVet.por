programa
{
	inclua biblioteca Tipos
	
	funcao inicio()
	{
		inteiro qtd[10], preco[10], valorTotal, valorGeral, maior, posi
		real comissao

		valorGeral = 0
		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Insira a quantidade do produto ", i + 1, ": ")
			leia(qtd[i])
			escreva("Insira o preço do produto ", i + 1, ": ")
			leia(preco[i])
		}
		//--------------------------------------------
		limpa()
		para(inteiro i = 0; i < 10; i++)
		{
			valorTotal = qtd[i] * preco[i]
			escreva("Produto ",i + 1,": \n")
			escreva("Quantidade vendida: ", qtd[i], "\n")
			escreva("Preço unitário: ", preco[i], "\n")
			escreva("Valor total vendido: ", valorTotal, "\n")
			escreva("--------------------------------------------\n")

			valorGeral = valorGeral + valorTotal
		}

		comissao = Tipos.inteiro_para_real(valorGeral) * 5/100
		escreva("Valor total das vendas: ", valorGeral, "\n")
		escreva("Salario do vendedor 1: ", 400 + comissao, "\n")

		maior = qtd[0]
		posi = 0
		para(inteiro i = 1 ; i < 10; i++)
		{
			se(qtd[i] > maior)
			{
				maior = qtd[i]
				posi = i
			}
		}

		escreva("O produto ", posi + 1," foi o mais vendido \n")
		escreva("E a quantidade total foi: ", maior)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 946; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */