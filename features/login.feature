Feature: Login


             Sendo um usuário previamente cadastrado
             Quero acessar o sistema com meu email e senha 
             Para que eu possa ter acesso as playists do Parodify
        
        
        Scenario: Login do usuário

            Given que acesso a página de login
             When submento minhas credenciais com: "maistheus@gmail.com" e "abc12"
             Then devo ser direcionado para área logada
        
        Scenario Outline: Scenario Outline name
            Given que acesso a página de login
             When submento minhas credenciais com: <email> e <senha>
             Then devo ver a mensagen de erro:  "Opps! Dados de acesso incorretos!"
        Examples:
                  | email                | senha    |
                  | "testanto@yahoo.com" | "abc123" |
                  | ""                   | ""       |
                  | "testanto@yahoo.com" | "abc123" |
                  | " "                  | "abc123" |
             