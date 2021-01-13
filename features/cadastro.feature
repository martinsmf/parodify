Feature: Cadastro de usuário

             Sendo um visitante do site Parodify
             Quero fazer meu cadastro 
             Para que eu possa ouvir minhas musicas favoritas 

        @happy
        Scenario: cadastro
            Given que acesso a página de cadastro
             When submeto o meu cadastro com <email> <senha> <confirma_senha>
             Then devo ser direcionado para área logada
        Examples:
                  | email                   | senha    | confirma_senha |
                  | "teste.teste@gmail.com" | "abc123" | "abc123"       |

        Scenario: Email não informado
            Given que acesso a página de cadastro
             When submeto meu cadastro sem o email
             Then devo ver "Opps! Informe seu email"

        Scenario: Senha não informada
            Given que acesso a página de cadastro
             When submeto meu cadastro sem a senha
             Then devo ver "Opps! Informe sua senha"

        Scenario: Senha divergente
            Given que acesso a página de cadastro
             When submeto meu cadastro com senhas divergentes
             Then devo ver "Opps! Senhas não são iguais"

        Scenario: Nenhum Campo preenchido
            Given que acesso a página de cadastro
             When submeto meu cadastro sem preencher os campos
             Then devo ver "Opps! Informe seu email e sua senha"