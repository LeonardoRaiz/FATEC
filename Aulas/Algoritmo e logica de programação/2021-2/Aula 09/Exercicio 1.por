programa
{
	
	funcao inicio()
	{
		inteiro cont_time, cont_jogador, idade, peso, altura, qtdMenor18
		real media_idade, media_altura, perc, jAcima80
		qtdMenor18 = 0
		media_altura = 0.0
		jAcima80 = 0.0
		para(cont_time = 1; cont_time <= 5; cont_time++)
		{
			escreva("Time: ", cont_time, "\n")
			media_idade = 0.0
			para(cont_jogador = 1; cont_jogador <= 11; cont_jogador++)
			{
				escreva("Jogador: ", cont_jogador, "\n")
				escreva("Informe a idade: ")
				leia(idade)
				escreva("Informe o peso: ")
				leia(peso)
				escreva("Informe a altura: ")
				leia(altura)
				// Questão 1
				se(idade < 18)
				{
					qtdMenor18 = qtdMenor18 + 1
					//qtdMenor18++
				}
				
				//Questão 2
				media_idade = media_idade + idade
				escreva(media_idade)

				//Questão 3
				media_altura = media_altura + altura

				//Questão 4
				se(peso > 80)
				{
					jAcima80++
				}
			}

			//Continuação da questão 2
			media_idade = media_idade/11
			escreva("A media de idade do time ", cont_time, "foi de: ", media_idade)
		}
		//Continuação da questão 1
		escreva("A quantidade de jogadres com idade inferior a 18 anos: ", qtdMenor18)

		//Continuação da questão 3
		media_altura = media_altura / 55
		escreva("A media de altura dos jogadores foi de: ", media_altura)

		//Continuação da questão 4
		perc = jAcima80 * 100/55
		escreva("A percentagem de jogadores acima de 80kg é de: ", perc)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1144; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */