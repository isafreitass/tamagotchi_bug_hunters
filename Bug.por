programa
{
	
	funcao inicio()
	{

		inteiro menu, vida = 0, felicidade = 5, fome = 0, limpeza = 10 
		faca{
		escreva("\n========MENU========")
		escreva("\n1 - Avançar o tempo")
		escreva("\n2 - Alimentar")
		escreva("\n3 - Jogar")
		escreva("\n4 - Dar banho")
		escreva("\n5 - Ver satus")
		escreva("\n6 - Desligar\n")
		leia(menu)

		escolha(menu){
			caso 1:
			escreva("Tempo avançado")
			pare
			
			caso 2:
			se(fome < 10){
			escreva("Alimentando Bug")
			fome = fome + 2
			escreva("\n ♥☆(^-^)★♥")
			}senao{
				escreva("Bug NÃO está com fome")
				felicidade--
				}
			
			pare
			
			caso 3:
			escreva("Bug venceu ou Você venceu")
			pare
			
			caso 4:
			escreva("Banho tomado!")
			pare

			caso 5:
			escreva("\n=======STATUS=======")
			escreva("\nIdade: ", vida)
			escreva("\nFelicidade: ", felicidade)
			escreva("\nFome: ", fome)
			escreva("\nHigiêne: ", limpeza)
			pare

			caso 6:
			escreva("Desligando...")
			pare

			caso contrario:
			escreva("Digite um número válido.")
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
 * @POSICAO-CURSOR = 1008; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */