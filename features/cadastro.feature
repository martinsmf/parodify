Feature: Cadastro de usuário

             Sendo um visitante do site Parodify
             Quero fazer meu cadastro
             Para que eu possa ouvir minhas musicas favoritas

        @smoke
        Scenario: Cadastro
            Given que acesso a página de cadastro
             When submeto o meu cadastro com:
                  | email          | teste.teste@gmail.com |
                  | senha          | abc123                |
                  | confirma_senha | abc123                |
             Then devo ser direcionado para área logada

        
        Scenario Outline: Tentativa de cadastro
            Given que acesso a página de cadastro
             When submeto o meu cadastro com:
                  | email          | <email>          |
                  | senha          | <senha>          |
                  | confirma_senha | <confirma_senha> |
             Then devo ver <msg>
        Examples:
                  | email           | senha  | confirma_senha | msg                                    |
                  |                 | abc123 | abc123         | "Oops! Informe seu email."             |
                  | qa.qa@gmail.com |        |                | "Oops! Informe sua senha."             |
                  | qa.qa@gmail.com | abc123 | abc456         | "Oops! Senhas não são iguais."         |
                  |                 |        |                | "Oops! Informe seu email e sua senha." |

        Scenario: Validação do campo email
             When acesso a página de cadastro
             Then deve exibir o seguinte css: "input[type='email']"