Given('que acesso a página de cadastro') do
  @cadastro_page.acessar
  
end

When('submeto o meu cadastro com:') do |table|
  @cadastro_page.cadastrar
  sleep 3
end

Then('devo ser direcionado para área logada') do
  pending # Write code here that turns the phrase above into concrete actions
end