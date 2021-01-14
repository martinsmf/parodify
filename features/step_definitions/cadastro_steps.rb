Given('que acesso a página de cadastro') do
  @cadastro_page.acessar
  
end

When('submeto o meu cadastro com {string} {string} {string}') do |email, senha, confirma_senha|
  delorean(email)
  @cadastro_page.cadastrar(email, senha, confirma_senha)
end

Then('devo ser direcionado para área logada') do
    expect(page).to have_css '.dashboard'
end

Then('devo ver {string}') do |msg|
  expect(@cadastro_page.alert).to eql msg
end