programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{

		inteiro menu, vida = 0, avanco = 0, felicidade = 5, fome = 0, limpeza = 10, joga, bugJoga, energia = 10
		inteiro doenca, horaD = -1, cura
		logico doente = falso
		cadeia nome

		escreva("Você achou um bug! Dê um nome a ele: \n")
		leia(nome)
		
		faca{
		escreva("\n========MENU========")
		escreva("\n1 - Avançar o tempo")
		escreva("\n2 - Alimentar")
		escreva("\n3 - Jogar")
		escreva("\n4 - Dar banho")
		escreva("\n5 - Dormir")
		escreva("\n6 - Ver satus")
		escreva("\n7 - Desligar\n")
		leia(menu)


		escolha(menu){
			caso 1:
			avanco = avanco + 1
			fome = fome + 4
			limpeza = limpeza - 5
			felicidade = felicidade - 3
			energia = energia - 3
			escreva("\nSe passaram 8 horas\n")
			se(doente == falso){
			doenca = u.sorteia(1, 10)
			
			se(doenca <= 3){
				doente = falso
			}senao{
				doente = verdadeiro
				escreva("\n", nome, " ficou doente...")
				escreva("\n   (´- `*)\n")
			}
			}
			se(doente == verdadeiro){
				horaD++
				cura = u.sorteia(1, 100)
					se(cura <= 33 e horaD == 1){
						doente = falso
						horaD = -1
						escreva("\n", (nome)," se curou!\n")
					}se(cura <= 66 e horaD == 2){
						doente = falso
						horaD = -1
						escreva("\n", (nome), " se curou!\n")
					}senao se(horaD == 3){
						doente = falso
						horaD = -1
						escreva("\n", (nome), " se curou!\n")
					}
				}
			
			pare
			
			caso 2:
			se(fome > 0 e energia > 0){
				escreva("\nAlimentando, ", (nome))
				fome = fome - 4
				limpeza--
				escreva("\n ♥☆(^-^)★♥\n")
			}senao se(fome > 0 e energia < 1){
				escreva("\n", (nome), " está muito cansado para comer!")
			}senao{
				escreva("\n", (nome), " NÃO está com fome")
				felicidade = felicidade - 2				
				}
			
			pare
			
			caso 3:
			escreva("\nEscolha: Pedra - 1, Papel - 2 ou Tesoura - 3\n")
			leia(joga)
			bugJoga = u.sorteia(1, 3)
			escreva((nome), " jogou: ", bugJoga, "\n")
			se(energia > 0){
				se(joga > 0 e joga < 4){
					se(joga == bugJoga){
						escreva("\nEmpatou!")
						fome = fome + 2
						limpeza = limpeza - 2
						energia = energia - 2
					}
					senao se((joga == 1 e bugJoga == 3) ou (joga == 2 e bugJoga == 1) ou (joga == 3 e bugJoga == 2)){
						escreva("\nVocê venceu!")
						escreva("\n   (´- `*)\n")
						felicidade = felicidade + 3
						limpeza = limpeza - 2
						fome = fome + 2
						energia = energia - 2
					}senao{
						escreva("\n",(nome), " venceu!!")
						escreva("\n♥☆(^-^)★♥\n")
						felicidade = felicidade + 5
						limpeza = limpeza - 3
						fome = fome + 2
						energia = energia - 3
					}
				}senao{
					escreva("\nJogue um número válido...")
					escreva("\n(  -_-)?\n")
					felicidade--
				}
			}senao{
				escreva("\n",(nome), " está muito cansado para jogar!")
			}
			
			pare
			
			caso 4:
			se(limpeza < 10){
				escreva("\n˚○☆˚○ ♥...esfregando...˚○˚★˚○ ☆˚")
				escreva("\nBanho tomado! (#^.^#)\n")
				limpeza = limpeza + 10
			}senao{
				escreva("\n",(nome), " já está limpo!")
				felicidade = felicidade - 6
			}
			
			pare
			
			caso 5:
			se(energia < 10){
				avanco = avanco + 1
				fome = fome + 4
				limpeza = limpeza - 3
				felicidade = felicidade - 3
				energia = energia + 10
				escreva("\n",(nome), " Dormiu 8h!\n")
				se(doente == verdadeiro){
				horaD++
				cura = u.sorteia(1, 100)
					se(cura <= 33 e horaD == 1){
						doente = falso
						horaD = -1
						escreva("\n",(nome), " se curou!\n")
					}se(cura <= 66 e horaD == 2){
						doente = falso
						horaD = -1
						escreva("\n",(nome), " se curou!\n")
					}senao se(horaD == 3){
						doente = falso
						horaD = -1
						escreva("\n",(nome), " se curou!\n")
					}
			}
			}senao{
				escreva("\n",(nome), " não está com sono!\n")
				escreva("   (´- `*)\n")
				felicidade--
			}

			pare


			caso 6:
			escreva("\n=======STATUS=======")
			escreva("\nNome: ", nome)
			escreva("\nIdade: ", vida)
			escreva("\nFelicidade: ", felicidade)
			escreva("\nFome: ", fome)
			escreva("\nHigiene: ", limpeza)
			escreva("\nEnergia: ", energia, "\n")
			se(doente == verdadeiro){
				escreva("Doente\n")
			}
			
			pare
			
			caso 7:
			escreva("\nDesligando ✖\n")
			pare
			
			caso contrario:
			escreva("\nDigite um número válido.\n")
		}
			se(fome > 7){
				escreva("\n-->",(nome), " está com fome!\n")
				escreva("   (´- `*)\n")
			}
			se(limpeza < 5){
				escreva("\n-->",(nome), " precisa de um banho!\n")
			}
			se(felicidade < 3){
					escreva("\n-->",(nome), " está ficando triste!\n")
					escreva("   (´- `*)\n")
			}
			se(energia < 3){
					escreva("\n-->",(nome), " está com sono!\n")
				
			}
			se(doente == verdadeiro){
					escreva("\n-->",(nome), " está doente!\n")
			}
			
			vida = avanco / 3
			
			se(vida == 7){
				escreva("\n",(nome), " viveu ", vida," dias!")
				escreva("\nVocê venceu!")
				escreva("\n  (#^.^#)")
				escreva("\nReiniciando ↻\n")
				vida = 0
				avanco = 0
				felicidade = 5
				fome = 0
				limpeza = 10
				energia = 10
				doente = falso
				horaD = -1
			}
			se(felicidade < 1){
				escreva("\n   _(x_x)_")
				escreva("\n",(nome), " morreu de tristeza...")
				escreva("\nCom ", vida, " dias de vida.")
				escreva("\nReiniciando ↻\n")
				vida = 0
				avanco = 0
				felicidade = 5
				fome = 0
				limpeza = 10
				energia = 10
				doente = falso
				horaD = -1	
			}
				se(fome > 9){
					escreva("\n   _(x_x)_")
					escreva("\n",(nome), " morreu de fome...")
					escreva("\nCom ", vida, " dias de vida.")
					escreva("\nReiniciando ↻\n")
					vida = 0
					avanco = 0
					felicidade = 5
					fome = 0
					limpeza = 10
					energia = 10
					doente = falso
					horaD = -1
				}
				se(limpeza < 1){
					escreva("\n   _(x_x)_")
					escreva("\n",(nome), " morreu de sujeira...")
					escreva("\nCom ", vida, " dias de vida.")
					escreva("\nReiniciando ↻\n")
					vida = 0
					avanco = 0
					felicidade = 5
					fome = 0
					limpeza = 10
					energia = 10
					doente = falso
					horaD = -1
				}
				se(felicidade > 10){
					felicidade = 10
				}
				se(fome < 0){
					fome = 0
				}
				se(limpeza > 10){
					limpeza = 10
				}
				se(energia < 0){
					energia = 0
				}se(energia > 10){
					energia = 10
				}
		}
		 enquanto(menu != 7)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6214; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */