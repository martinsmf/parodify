Before do
  @cadastro_page = CadastroPage.new
  @areaLogada_page = AreaLogada.new
  @login_page = LoginPage.new

  page.current_window.resize_to(1440, 900)
end
