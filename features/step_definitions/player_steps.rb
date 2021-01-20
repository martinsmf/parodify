Given("Login com {string} e {string}") do |email, password|
  @cadastro_page.acessar
  @login_page.login(email, password)
end

Given("que eu gosto muito de {string}") do |cat|
  @areaLogada_page.busca(cat)
  sleep 10
end

When("toco a seguinte canção:") do |table|
  parodi = table.rows_hash
end

Then("essa paródia deve ficar em modo de reprodução") do
  pending # Write code here that turns the phrase above into concrete actions
end
