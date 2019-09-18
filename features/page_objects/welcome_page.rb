class WelcomePage

  def initialize
    get_screen_mappings 'welcome'
  end

  def is_welcome_screen
    wait_for_element_exist @mappings['page_welcome']
  end

  def access_sign_in
    click_el @mappings['link_login']
  end

  def access_test
    click_el @mappings['btn_test']
  end

  def get_text_welcome_screen
    get_text @mappings['text']
  end

  def swipe_to_screen(indicator)
    x = 0
    while x != indicator.to_i
      swipe_to_coordinates @mappings['swipe_right']
      sleep 1
      x += 1
    end
  end

  def get_mappings_by_indicator(indicator)
    case indicator
    when '0'
      @mappings['indicator_zero']
    when '1'
      @mappings['indicator_one']
    when '2'
      @mappings['indicator_two']
    when '3'
      @mappings['indicator_three']
    when '4'
      @mappings['indicator_four']
    else
      raise("Not identified indicator: #{indicator}")
    end
  end

  def get_text_expected_welcome
    get_locales_by_screen 'welcome'
  end

end