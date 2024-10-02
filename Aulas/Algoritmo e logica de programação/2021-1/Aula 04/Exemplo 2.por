programa
{
	
	funcao inicio()
	{
		real nota_trab, aval_sem, exame, media
		escreva("Informe a nota do trabalho: ")
		leia(nota_trab)
		escreva("Informe a nota da avaliação: ")
		leia(aval_sem)
		escreva("Informe a nota do exame: ")
		leia(exame)
		
		media = (nota_trab * 2 + aval_sem * 3 + exame * 5) / 10

		//forma do léo
		// De 0 a 4.99 conceito E
		se (media < 5)
		{
			escreva("Obteve conceito: E")
		}
		// De 5 a 5.99 conceito D
		senao se(media < 6)
		{
			escreva("Obteve conceito: D")
		}
		// De 6 a 6.99 conceito C
		senao se(media < 7)
		{
			escreva("Obteve conceito: C")
		}
		// DE 7 a 7.99 conceito B
		senao se(media < 8)
		{
			escreva("Obteve conceito: B")
		} 
		// de 
		senao se(media <= 10)
		{
			escreva("Obteve conceito: A")
		}
		
		//forma padrão
		se((media >= 8) e (media <= 10))
		{
			escreva("Obteve conceito: A") 
		}

		se((media >= 7) e (media < 8))
		{
			escreva("Obteve conceito: B")
		}

		se((media >= 6) e (media < 7))
		{
			escreva("Obteve conceito: C")
		}

		se((media >= 5) e (media < 6))
		{
			escreva("Obteve conceito: D")
		}

		se((media >= 0) e (media < 5))
		{
			escreva("Obteve conceito: E")
		}
		


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 801; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */