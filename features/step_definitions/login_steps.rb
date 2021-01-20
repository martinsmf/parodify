Given("que acesso a página de login") do
  @cadastro_page.acessar
end

When("submento minhas credenciais com: {string} e {string}") do |email, password|
  @login_page.login(email, password)
end

Then("devo ver a mensagen de erro:  {string}") do |msg|
  expect(@login_page.alerta).to eql msg
end
