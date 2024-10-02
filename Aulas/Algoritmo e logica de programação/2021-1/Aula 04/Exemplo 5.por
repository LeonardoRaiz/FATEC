programa
{
	
	funcao inicio()
	{
		real salario, novo_salario, boni, aux
		escreva("Informe o salario: ")
		leia(salario)

		se(salario < 500)
		{
			boni = salario * 5/100
		}
		senao
		{ 
			se(salario <= 1200)
			{
				boni = salario * 12/100
			}
			senao
			{
				boni = 0.0
			}
		}

		se(salario <= 600)
		{ 
			aux = 150.0
		}
		senao
		{
			aux = 100.0
		}

		novo_salario = salario + boni + aux
		escreva("O novo salario é de: ", novo_salario)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */