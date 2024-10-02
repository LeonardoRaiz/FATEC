programa
{
	
	funcao inicio()
	{
		inteiro voo[12], lugares[12]
		cadeia origem[12], destino[12], local
			   //menu1 //menu2
		inteiro op,     op2, numVoo, cont

		//Popular o banco!!!
		para(inteiro i = 0; i < 12; i++)
		{
			escreva("Insira o número do voo: ")
			leia(voo[i])
			escreva("Insira o número de lugares disponiveis do voo: ")
			leia(lugares[i])
			escreva("Informe a origem do voo: ")
			leia(origem[i])
			escreva("Informe o destino do voo: ")
			leia(destino[i])
		}

		faca 
		{
			escreva("------------------------ MENU ------------------------------ \n")
			escreva("1 - Consultar \n")
			escreva("2 - Efetuar reserva \n")
			escreva("0 - SAIR \n")
			leia(op)

			//consultar
			se(op == 1)
			{
				escreva("------------------------ MENU CONSULTA ----------------- \n")
				escreva("1 - por número de voo \n") //SELECT * FROM VOO WHERE NUMERO = NUMVOO
				escreva("2 - por origem \n") //SELECT * FROM VOO WHERE ORIGEM = LOCAL
				escreva("3 - pro destino \n") //SELECT * FROM VOO WHERE DESTINO = LOCAL
				leia(op2)

				//POR NÚMERO DE VOO
				se(op2 == 1)
				{
					escreva("Informe o número do voo: ")
					leia(numVoo)
					cont = 0
					enquanto((cont <= 11) e (numVoo != voo[cont]))
					{
						cont++
					}

					//SE NAO ACHAR O NÚMERO?
					se(cont > 11)
					{
						escreva("Voo não encontrado!!! \n")
					}
					senao
					{
						escreva("Número do voo: ", voo[cont], "\n")
						escreva("Origem do voo: ", origem[cont], "\n")
						escreva("Destino do voo: ", destino[cont], "\n")
						escreva("Lugares disponiveis: ", lugares[cont] , "\n")
					}
				}

				//POR ORIGEM
				se(op2 == 2)
				{
					escreva("Informe a origem: ")
					leia(local)
					para(inteiro i = 0; i < 11; i++)
					{
						se(local == origem[i])
						{
							escreva("-------------- VOO ", i, " ------------------------ \n")
							escreva("Número do voo: ", voo[i], "\n")
							escreva("Origem do voo: ", origem[i], "\n")
							escreva("Destino do voo: ", destino[i], "\n")
							escreva("Lugares disponiveis: ", lugares[i] , "\n")
						}
					}
				}

				//POR DESTINO
				se(op2 == 3)
				{
					escreva("Informe a destino: ")
					leia(local)
					para(inteiro i = 0; i < 11; i++)
					{
						se(local == destino[i])
						{
							escreva("-------------- VOO ", i, " ------------------------ \n")
							escreva("Número do voo: ", voo[i], "\n")
							escreva("Origem do voo: ", origem[i], "\n")
							escreva("Destino do voo: ", destino[i], "\n")
							escreva("Lugares disponiveis: ", lugares[i] , "\n")
						}
					}
				}
					
			}
			// Efetuar reserva
			se(op == 2)
			{
				escreva("Informe o número do voo: ")
				leia(numVoo)
				cont = 0
				enquanto((cont <= 11) e (numVoo != voo[cont]))
				{
					cont++
				}

				se(cont > 11)
				{
					escreva("Voo inexistente!")
				} senao 
				{
					se(lugares[cont] <= 0)
					{
						escreva("Voo lotado!")
					} senao {
						lugares[cont] = lugares[cont] - 1
						escreva("Reserva confirmada!")
					}
				}
			}
		} enquanto (op != 0)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2989; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */