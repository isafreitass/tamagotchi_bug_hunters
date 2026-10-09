programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{

		inteiro menu, vida = 0, felicidade = 5, fome = 0, limpeza = 10, joga, bugJoga
		faca{
		escreva("\n========MENU========")
		escreva("\n1 - Avançar o tempo")
		escreva("\n2 - Alimentar")
		escreva("\n3 - Jogar")
		escreva("\n4 - Dar banho")
		escreva("\n5 - Ver satus")
		escreva("\n6 - Desligar\n")
		leia(menu)

		se(fome < 3){
				escreva("-->Bug está com fome!\n")
				escreva("   (´- `*)\n")
			}
		se(limpeza < 3){
				escreva("-->Bug precisa de banho!\n")
			}
		se(felicidade < 3){
				escreva("-->Bug está triste!\n")
				escreva("   (´- `*)\n")
		}

		escolha(menu){
			caso 1:
			escreva("Tempo avançado")
			pare
			
			caso 2:
			se(fome < 10 e fome > 0){
				escreva("Alimentando Bug")
				fome = fome + 2
				limpeza--
				escreva("\n ♥☆(^-^)★♥\n")
			}senao{
				escreva("Bug NÃO está com fome")
				felicidade--
				limpeza = limpeza - 2
				}
			
			pare
			
			caso 3:
			escreva("Escolha: Pedra - 1, Papel - 2 ou Tesoura - 3\n")
			leia(joga)
			bugJoga = u.sorteia(1, 3)
			escreva("Bug jogou: ", bugJoga, "\n")
			se(joga > 0 e joga < 4){
				se(joga == bugJoga){
					escreva("\nEmpatou!")
					fome = fome - 2
					limpeza = limpeza - 2
					fome = fome - 2
				}
				senao se((joga == 1 e bugJoga == 3) ou (joga == 2 e bugJoga == 1) ou (joga == 3 e bugJoga == 2)){
					escreva("\nVocê venceu!")
					escreva("\n   (´- `*)")
					felicidade = felicidade + 3
					limpeza = limpeza - 2
					fome = fome - 2
				}senao{
					escreva("\nBug venceu!!")
					escreva("\n♥☆(^-^)★♥")
					felicidade = felicidade + 5
					limpeza = limpeza - 2
					fome = fome - 2
				}
			}senao{
				escreva("\nJogue um número válido...")
				escreva("\n(  -_-)?")
				felicidade--
				limpeza = limpeza - 2
				fome--
			}
			
			pare
			
			caso 4:
			se(limpeza < 10 e limpeza > 0){
				escreva("Banho tomado!")
				limpeza++
				fome--
			}
			
			pare

			caso 5:
			escreva("\n=======STATUS=======")
			escreva("\nIdade: ", vida)
			escreva("\nFelicidade: ", felicidade)
			escreva("\nFome: ", fome)
			escreva("\nHigiêne: ", limpeza, "\n")
			pare

			caso 6:
			escreva("Desligando ✖")
			pare

			caso contrario:
			escreva("Digite um número válido.")
			}
			se(felicidade < 1 ou fome < 0 ou limpeza < 0){
				escreva("\n   _(-_-)_")
				escreva("\nBug morreu...")
				escreva("\nReiniciando ↻")
				vida = 0
				felicidade = 5
				fome = 0
				limpeza = 10		
			}
			se(felicidade > 10){
				felicidade = 10
			}
		}
		 enquanto(menu != 6)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2438; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */