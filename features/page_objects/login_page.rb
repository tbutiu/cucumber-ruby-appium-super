class LoginPage

  def initialize
    get_screen_mappings 'login'
  end

  def is_login_screen
    wait_for_element_exist @mappings['input_user']
  end
end