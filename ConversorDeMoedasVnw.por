// —> Conversão de moedas :
//  Crie um conversor de moedas que permite o usuário 
// digitar o valor que deseja converter e dê a opção de 3 moedas internacionais

programa {
  inclua biblioteca Texto --> t

  funcao inicio() {
    real valorEmReal, valorConvertido
    inteiro codigoMoeda


    escreva("Conversão de Moedas\n\n")
    escreva("Insira o valor em Real Brasileiro (BRL) que deseja converter\n--> ")
    leia(valorEmReal)
    
    escreva("\nEm qual destas moedas você deseja converter?\n")
    escreva("[1] <--> Kwanza\n")
    escreva("[2] <--> Peso Cubano\n")
    escreva("[3] <--> Dong Vietnamita\n--> ")
    leia(codigoMoeda)

    escolha (codigoMoeda) {
      caso 1:
        valorConvertido = valorEmReal * 170.196
        escreva(valorEmReal, " Reais (BRL) é igual à ", valorConvertido, " Kwanza (AOA)")
      pare

      caso 2:
        valorConvertido = valorEmReal * 4.9285
        escreva(valorEmReal, " Reais (BRL) é igual à ", valorConvertido, " Peso Cubano (CUP)")
      pare
      
      caso 3:
        valorConvertido = valorEmReal * 4985.06
        escreva(valorEmReal, " Reais (BRL) é igual à ", valorConvertido, " Dong Vietnamita (VND)")
      pare

      caso contrario:
        escreva("Essa moeda não existe em nosso sistema.")
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 163; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */