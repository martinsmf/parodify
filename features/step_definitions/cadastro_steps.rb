Given('que acesso a página de cadastro') do
  @cadastro_page.acessar
  
end

When('submeto o meu cadastro com {string} {string} {string}') do |email, senha, confirma_senha|
  @cadastro_page.cadastrar(email, senha, confirma_senha)
  sleep 3
end

Then('devo ser direcionado para área logada') do
    expect(page).to have_css '.dashboard'
end