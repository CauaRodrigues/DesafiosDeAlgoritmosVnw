// > Sistema de login: 
// Construa um sistema de login e verifique se as credenciais estão corretas. 
// Se as credenciais estiverem erradas em 3 tentativas, bloqueie o usuário.

programa {
  cadeia valorCampoUsuario, valorCampoSenha
  cadeia usuario = "admin", senha = "admin@123"

  funcao inicio() {
    caracter opcaoDeEntrada
    logico sairDoPrograma = falso

    enquanto (nao sairDoPrograma) {
      escreva("Olá! Seja bem vindo.\n")
      escreva("[1] <==> Login\n")
      escreva("[2] <==> Criar Conta\n")
      escreva("[Qualquer Tecla] <==> Sair\n--> ")
      leia(opcaoDeEntrada)

      limpa()

      escolha (opcaoDeEntrada) {
        caso '1':
          Login()
        pare
        
        caso '2':
          SignUp()
        pare

        caso contrario:
          escreva("Até Logo!")
          sairDoPrograma = verdadeiro
      }
    }
  }

  funcao Login() {
    inteiro chancesDeLogar = 3

    enquanto (chancesDeLogar > 0) {
      escreva("Faça o Login\n\n")

      escreva("Nome de usuário: ")
      leia(valorCampoUsuario)
      escreva("Senha: ")
      leia(valorCampoSenha)

      limpa()

      se ((usuario == valorCampoUsuario) e (senha == valorCampoSenha)) {
        escreva("\nSeja Bem Vindo de Volta, ", usuario)
        escreva("\nNome de usuário e senha estão corretas.\n\n")
        chancesDeLogar = 0
      } senao {
        escreva("Nome de Usuário ou Senha está incorreto. Tente novamente (",chancesDeLogar - 1,"/3).\n\n")
        chancesDeLogar--
      }
    }
  }

  funcao SignUp() {
    cadeia valorConfirmSenha
    logico criarConta = falso
    escreva("Crie Uma Conta\n\n")

    enquanto (nao criarConta) {
      escreva("Nome de usuário: ")
      leia(usuario)

      escreva("Senha: ")
      leia(senha)

      escreva("Confirme a senha: ")
      leia(valorConfirmSenha)

      enquanto (valorConfirmSenha != senha) {
        inteiro opcaoSenhaErrada

        escreva("\n\nSenhas incompatíveis.\n")
        escreva("[1] <==> Continuar Confirmando a Senha\n")
        escreva("[2] <==> Editar Senha\n--> ")
        leia(opcaoSenhaErrada)

        escolha (opcaoSenhaErrada) {
          caso 1:
            escreva("Confirme a Senha: ")
            leia(valorConfirmSenha)
          pare
          
          caso 2:
            escreva("Nova Senha: ")
            leia(senha)

            escreva("Confirme a Senha: ")
            leia(valorConfirmSenha)
          pare
        }
      }
      
      se (valorConfirmSenha == senha) {
        limpa()

        escreva("Conta criada com sucesso.\n\n")
        criarConta = verdadeiro
      }
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1858; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */