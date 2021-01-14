class CadastroPage 
    include Capybara::DSL
    # include Helpers -- comando para importar o modulo helpers que chama a api para pagar o email do banco.
    def acessar
        visit '/'
        click_on "EXPERIMENTE AGORA"
    end

    def cadastrar (email, senha, confirma_senha)
        find('input[name*=email]').set email
        find('input[name="user[password]"]').set senha
        find('input[name*=confirmation]').set confirma_senha
        find('input[name="commit"]').click
    end

    def alert
        find(".message p").text
    end

end