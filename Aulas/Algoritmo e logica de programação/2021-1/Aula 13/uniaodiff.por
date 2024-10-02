programa
{
	
	funcao inicio()
	{
		 inteiro x[10], y[10], u[20], d[20]
		 inteiro j, contU, k, contD
		 para(inteiro i = 0; i < 10; i++)
		 {
		 	leia(x[i])
		 	leia(y[i])
		 }

		 contU = 0
		 //uniao x
		 para(inteiro i = 0; i < 10; i++)
		 {
		 	j = 0
		 	enquanto((j < contU) e (x[i] != u[j]))
		 	{
		 		j++
		 	}

		 	se(j >= contU)
		 	{
		 		u[contU] = x[i]
		 		contU = contU + 1
		 	}
		 }


		 //uniao y
		 para(inteiro i = 0; i < 10; i++)
		 {
		 	j = 0
		 	enquanto((j < contU) e (y[i] != u[j]))
		 	{
		 		j++
		 	}

		 	se(j >= contU)
		 	{
		 		u[contU] = y[i]
		 		contU = contU + 1
		 	}
		 }

		contD = 0
		 //diferença
		 para(inteiro i = 0; i < 10; i++)
		 {
		 	j = 0
		 	enquanto((j < 10) e (x[i] != y[i]))
		 	{
		 		j++
		 		//Exemplo
		 		se (j > 10)
		 		{
		 			pare
		 		}
		 		//-----------------
		 	}

		 	se(j > 10)
		 	{
		 		k = 0
		 		enquanto((k < contD) e (x[i] != d[k]))
		 		{
		 			k++
		 		}

		 		se(k >= contD)
		 		{
		 			d[contD] = x[i]
		 			contD++
		 		}
		 	}
		 }


		para(inteiro i = 0; i < contU - 1; i++)
		{
			escreva(u[i],"|")
		}
		escreva("\n")
		para(inteiro i = 0; i < contD - 1; i++)
		{
			escreva(d[i],"|")
		}

		 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1181; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */