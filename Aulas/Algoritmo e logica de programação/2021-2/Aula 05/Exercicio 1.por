// um supermercado deseja reajustar os preços usando o seguinte critério
// o produto poderá ter seu preço aumentado ou diminuido, para o preço ser alterado
// o produto deve preencher pelo menos um dos requisitos a seguir:

// Venda médio     |        preço atual        | % aumento | % diminuição
//    < 500        ou         < R$30.00             10%           ---
//>= 500 E < 1200  ou  >= R$30.00 E < R$80.00       15%          ---
// >= 1200         ou         >= R$80.00            ---          20%


programa
{
	
	funcao inicio() 
	{
		real preco, vendas, novo_preco

		escreva("Valor do preço atual: ")
		leia(preco)
		escreva("Qtd de vendas do produto: ")
		leia(vendas)

		novo_preco = 0.0
		se((vendas < 500) ou (preco < 30))
		{
			novo_preco = preco + (preco * 10/100)
		} 
		senao se (((vendas >= 500) e (vendas < 1200)) ou ((preco >= 30) e(preco < 80)))
		{
			novo_preco = preco + (preco * 15/100)
		}
		senao se ((vendas >= 1200) ou (preco >= 80))
		{
			novo_preco = preco - (preco * 20/100)
		}

		escreva("O novo preço do produto é: ", novo_preco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1073; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */