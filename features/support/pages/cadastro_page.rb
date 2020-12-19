class CadastroPage 
    include Capybara::DSL
    def acessar
        visit 'http://parodify.qaninja.com.br'
    end

    def cadastrar 
        find('.is-primary').click
    end

end