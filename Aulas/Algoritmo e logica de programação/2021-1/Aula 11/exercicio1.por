programa
{
	
	funcao inicio()
	{
		inteiro vet1[10], vet2[10], vet3[20]
		inteiro j

		
		j = 0
		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Informe o valor no vetor 1: ")
			leia(vet1[i])
			vet3[j] = vet1[i]
			j = j + 1 //j++
			escreva("informe o valor no vetor 2: ")
			leia(vet2[i])
			vet3[j] = vet2[i]
			j++
		}

		para(inteiro i = 0; i < 10; i++)
		{
			escreva(vet1[i], " | ")
		}
		
		para(inteiro i = 0; i < 10; i++)
		{
			escreva(vet2[i], " | ")
		}

		para(inteiro i = 0; i < 20; i++)
		{
			escreva(vet3[i], " | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */