programa
{
	
	funcao inicio()
	{
		inteiro voo[12], lugares[12]
		cadeia origem[12], destino[12], local
		inteiro op, op2, numVoo, cont

		para(inteiro i = 0; i < 12; i++)
		{
			escreva("Insira o voo: ")
			leia(voo[i])
			escreva("Insira a origem: ")
			leia(origem[i])
			escreva("Insira o destino: ")
			leia(destino[i])
			escreva("Insira o número de lugares disponiveis do voo: ")
			leia(lugares[i])
		}
		
		faca
		{
			escreva("------------ MENU -------------------- \n")
			escreva("1 - Consultar \n")
			escreva("2 - Efetuar reserva \n")
			escreva("0 - SAIR \n")
			leia(op)

			// consultar
			se(op == 1)
			{
				escreva("------------ MENU consulta -------------------- \n")
				escreva("1 - por número de voo \n") // SELECT * FROM VOO WHERE NÚMERO = OP2
				escreva("2 - por origem \n") // SELECT * FROM VOO WHERE ORIGEM = ORI
				escreva("3 - por destino \n")// SELECT * FROM VOO WHERE DESTINO = DES
				leia(op2)

				// consultar por número
				se(op2 == 1)
				{
					escreva("Digite o número do voo")
					leia(numVoo)
					cont = 0
					enquanto((cont <= 11) e (numVoo != voo[cont]))
					{
						cont = cont + 1
					}

					se(cont > 11)
					{
						escreva("Voo não encontrado")
					}
					senao
					{
						escreva("Número Voo: ", voo[cont], "\n")
						escreva("Origem Voo: ", origem[cont], "\n")
						escreva("Destino Voo: ", destino[cont], "\n")
						escreva("lugares disponiveis Voo: ", lugares[cont], "\n")
					}
				}

				//consultar por origem
				se(op2 == 2)
				{
					escreva("Digite a origem: ")
					leia(local)
					para(inteiro i = 0; i < 12; i++)
					{
						se(local == origem[i])
						{
							escreva("Número Voo: ", voo[i], "\n")
							escreva("Origem Voo: ", origem[i], "\n")
							escreva("Destino Voo: ", destino[i], "\n")
							escreva("lugares disponiveis Voo: ", lugares[i], "\n")
						}
					}
				}

				//consultar por destino
				se(op2 == 3)
				{
					escreva("Digite a origem: ")
					leia(local)
					para(inteiro i = 0; i < 12; i++)
					{
						se(local == destino[i])
						{
							escreva("Número Voo: ", voo[i], "\n")
							escreva("Origem Voo: ", origem[i], "\n")
							escreva("Destino Voo: ", destino[i], "\n")
							escreva("lugares disponiveis Voo: ", lugares[i], "\n")
						}
					}
				}
				
			} // fim consulta
			//----------------------------------------------------------------------

			se(op == 2)
			{
				escreva("Digite o número do Voo: ")
				leia(numVoo)

				cont = 0
				enquanto((cont <= 11) e (numVoo != voo[cont]))
				{
					cont = cont + 1
				}

				se(cont > 11)
				{
					escreva("Voo inexistente!")
				}
				senao
				{
					se(lugares[cont] <= 0)
					{
						escreva("voo lotado!")
					}
					senao
					{
						lugares[cont] = lugares[cont] - 1
						escreva("Reserva confirmada!")
					}
				}
			} 
		}enquanto(op != 0)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */