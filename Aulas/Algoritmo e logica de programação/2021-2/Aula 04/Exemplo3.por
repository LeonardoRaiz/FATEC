programa
{
	
	funcao inicio()
	{
		real nota_trab, aval_sem, exame, media
		//Entrada
		escreva("Informe a nota do trabalho: ")
		leia(nota_trab)
		escreva("Informe a nota da avaliação: ")
		leia(aval_sem)
		escreva("Informe a nota do exame: ")
		leia(exame)

		//Processo
		media = (nota_trab * 2 + aval_sem * 3 + exame * 5) / 10
		//A = 8 - 10
		//B = 7 - 7.99
		//C = 6 - 6.99
		//D = 5 - 5.99
		//E = 0 - 4.99
		//FORMA PADRÃO
		se((media >= 8) e (media <= 10))
		{
			escreva("O aluno obteve o conceito: A")
		}

		se((media >= 7) e (media < 8))
		{
			escreva("O aluno obteve o conceito: B")
		}

		se((media >= 6) e (media < 7))
		{
			escreva("O aluno obteve o conceito: C")
		}

		se((media >= 5) e (media < 6))
		{
			escreva("O aluno obteve o conceito: D")
		}

		se((media >= 0) e (media < 5))
		{
			escreva("O aluno obteve o conceito: E")
		}

		// MODO LÉO
		// DE 0 a 4.99 Conceito E
		se(media < 5)
		{
			escreva("O aluno obteve o conceito: E")
		} 
		senao se (media < 6) // DE 5 até 5.99 Conceito D
		{
			escreva("O aluno obteve o conceito: D")
		}
		senao se (media < 7) // DE 6 até 6.99 Conceito C
		{
			escreva("O aluno obteve o conceito: C")
		}
		senao se (media < 8) // DE 7 até 7.99 Conceito B
		{
			escreva("O aluno obteve o conceito: B")
		} 
		senao // DE 8 até infinito
		{
			escreva("O aluno obteve o conceito: A")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 924; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */