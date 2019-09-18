# frozen_string_literal: true

module Pages
  def welcome_page
    WelcomePage.new
  end

  def login_page
    LoginPage.new
  end

  def register_page
    RegisterPage.new
  end
end