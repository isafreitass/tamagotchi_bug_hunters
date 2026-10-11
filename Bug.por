programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{

		inteiro menu, vida = 0, avanco = 0, felicidade = 5, fome = 0, limpeza = 10, joga, bugJoga, energia = 10
		
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

		se(fome > 7){
				escreva("\n-->Bug está com fome!\n")
				escreva("   (´- `*)\n")
			}
		se(limpeza < 5){
				escreva("\n-->Bug precisa de um banho!\n")
			}
		se(felicidade < 3){
				escreva("\n-->Bug está ficando triste!\n")
				escreva("   (´- `*)\n")
		}
		se(energia < 3){
				escreva("\n-->Bug está com sono!\n")
				
		}

		escolha(menu){
			caso 1:
			avanco = avanco + 1
			fome = fome + 4
			limpeza = limpeza - 5
			felicidade = felicidade - 3
			energia = energia - 3
			escreva("\nSe passaram 8 horas")
			
			pare
			
			caso 2:
			se(fome > 0 e energia > 0){
				escreva("\nAlimentando Bug")
				fome = fome - 4
				limpeza--
				escreva("\n ♥☆(^-^)★♥\n")
			}senao se(fome > 0 e energia < 1){
				escreva("\nBug está muito cansado para comer!")
			}senao{
				escreva("\nBug NÃO está com fome")
				felicidade = felicidade - 2				
				}
			
			pare
			
			caso 3:
			escreva("\nEscolha: Pedra - 1, Papel - 2 ou Tesoura - 3\n")
			leia(joga)
			bugJoga = u.sorteia(1, 3)
			escreva("Bug jogou: ", bugJoga, "\n")
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
						escreva("\n   (´- `*)")
						felicidade = felicidade + 3
						limpeza = limpeza - 2
						fome = fome + 2
						energia = energia - 2
					}senao{
						escreva("\nBug venceu!!")
						escreva("\n♥☆(^-^)★♥")
						felicidade = felicidade + 5
						limpeza = limpeza - 2
						fome = fome + 2
						energia = energia - 2
					}
				}senao{
					escreva("\nJogue um número válido...")
					escreva("\n(  -_-)?")
					felicidade--
				}
			}senao{
				escreva("\nBug está muito cansado para jogar!")
			}
			
			pare
			
			caso 4:
			se(limpeza < 10){
				escreva("\n˚○☆˚○ ♥...esfregando...˚○˚★˚○ ☆˚")
				escreva("\nBanho tomado! (#^.^#)")
				limpeza = limpeza + 10
			}senao{
				escreva("\nBug já está limpo!")
				felicidade = felicidade - 6
			}
			
			pare
			
			caso 5:
			se(energia < 10){
				avanco = avanco + 1
				fome = fome + 4
				limpeza = limpeza - 5
				felicidade = felicidade - 3
				energia = energia + 10
				escreva("\nBug Dormiu 8h!")
			}senao{
				escreva("\nBug não está com sono!\n")
				escreva("   (´- `*)\n")
				felicidade--
			}

			pare


			caso 6:
			escreva("\n=======STATUS=======")
			escreva("\nIdade: ", vida)
			escreva("\nFelicidade: ", felicidade)
			escreva("\nFome: ", fome)
			escreva("\nHigiene: ", limpeza)
			escreva("\nEnergia: ", energia, "\n")
			pare
			
			caso 7:
			escreva("\nDesligando ✖")
			pare
			
			caso contrario:
			escreva("\nDigite um número válido.")
		}
			vida = avanco / 3
			se(vida == 7){
				escreva("\nBug viveu ", vida," dias!")
				escreva("\nVocê venceu!")
				escreva("\n  (#^.^#)")
				escreva("\nReiniciando ↻")
				vida = 0
				avanco = 0
				felicidade = 5
				fome = 0
				limpeza = 10
				energia = 10
			}
			se(felicidade < 1){
				escreva("\n   _(x_x)_")
				escreva("\nBug morreu de tristeza...")
				escreva("\nCom ", vida, " dias de vida.")
				escreva("\nReiniciando ↻")
				vida = 0
				avanco = 0
				felicidade = 5
				fome = 0
				limpeza = 10
				energia = 10	
			}
				se(fome > 9){
					escreva("\n   _(x_x)_")
					escreva("\nBug morreu de fome...")
					escreva("\nCom ", vida, " dias de vida.")
					escreva("\nReiniciando ↻")
					vida = 0
					avanco = 0
					felicidade = 5
					fome = 0
					limpeza = 10
					energia = 10
				}
				se(limpeza < 1){
					escreva("\n   _(x_x)_")
					escreva("\nBug morreu de sujeira...")
					escreva("\nCom ", vida, " dias de vida.")
					escreva("\nReiniciando ↻")
					vida = 0
					avanco = 0
					felicidade = 5
					fome = 0
					limpeza = 10
					energia = 10
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
 * @POSICAO-CURSOR = 3349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */