programa
{
	
	funcao inicio()
	{
		inteiro cont_time, cont_jog, idade, peso, altura, qtdI
		real media_idade, media_altura, porc, j80
		
		qtdI = 0
		j80 = 0.0
		media_altura = 0.0
		para(cont_time = 1; cont_time <= 5; cont_time++)
		{
			escreva("Time ", cont_time, "\n")
			media_idade = 0.0
			para (cont_jog = 1; cont_jog <= 11; cont_jog++)
			{
				escreva("Jogador nº: ", cont_jog, " ----------- \n")
				escreva("Informe a idade: ")
				leia(idade)
				escreva("Informe o peso: ")
				leia(peso)
				escreva("Informe o altura: ")
				leia(altura)
				// 1
				se (idade < 18)
				{
					qtdI = qtdI + 1
				}
				// 2
				media_idade = media_idade + idade
				//3
				media_altura = media_altura + altura
				//4 
				se(peso > 80)
				{
					j80 = j80 + 1 
				}
			}

			//2 continuação
			media_idade = media_idade/11
			escreva("A media de idade do time é: ", media_idade, "\n")
		}
		//1 continuação
		escreva("A qunatidade de jogadores com idade inferior a 18 anos: ", qtdI)

		//3 continuação
		media_altura = media_altura/55
		escreva("A media de altura dos jogadores do campeonato é: ", media_altura)

		//4 continuação
		porc = j80 * 100/55
		escreva("A percentagem de jogadores acima de 80KG é de: ", porc)		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */