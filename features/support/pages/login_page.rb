class LoginPage
  include Capybara::DSL

  def login(email, password)
    click_on "Login"
    find("#user_email").set email
    find("#user_password").set password
    find("input[type=submit]").click
  end

  def alerta
    find(".message-body").text
  end
end
