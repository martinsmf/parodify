Given("Login com {string} e {string}") do |email, password|
  @cadastro_page.acessar
  @login_page.login(email, password)
end

Given("que eu gosto muito de {string}") do |cat|
  @areaLogada_page.busca(cat)
  sleep 10
end

When("toco a seguinte canção:") do |table|
  @parody = table.rows_hash
  @areaLogada_page.selecionaBanda(@parody[:banda], @parody[:parodia])
end

Then("essa paródia deve ficar em modo de reprodução") do
  expect(@areaLogada_page.reproduzindo).to have_text @parody[:parodia]
end
