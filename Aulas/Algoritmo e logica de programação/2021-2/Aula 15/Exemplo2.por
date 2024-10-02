programa
{
	
	funcao inicio()
	{
		mensagem("Olá Mundo")
		mensagem("Vamos fazer prova de função")
	}
	//-----------------------------------------------------------

	//-----------------------------------------------------------
	// texto
	// ----------------------------------------------------------
	funcao mensagem(cadeia texto)
	{
		para(inteiro i = 0; i < 50; i++)
		{
			escreva("-")		
		}

		escreva("\n", texto, "\n")

		para(inteiro i = 0; i < 50; i++)
		{
			escreva("-")		
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 102; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */