class CadastroPage 
    include Capybara::DSL
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

end