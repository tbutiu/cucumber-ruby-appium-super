class RegisterPage

  def initialize
    get_screen_mappings 'register'
  end

  def is_register_screen
    wait_for_element_exist @mappings['btn_go']
  end

  def button_back
    click_el @mappings['btn_back']
  end

  def button_go
    click_el @mappings['btn_go']
  end

  def is_visualize_text(sheet, text)
    text_exists? get_texts_register_screen[sheet][text]
  end

  def get_texts_register_screen
    get_locales_by_screen 'register'
  end

  def access_more_detail
    click_el @mappings['link_show_details']
  end

  def swipe_to_screen(direction, indicator)
    x = 0
    while x != indicator.to_i
      swipe_to_coordinates @mappings["swipe_#{direction}"]
      sleep 1
      x += 1
    end
  end

  def close_sheet_more_detail
    click_el @mappings['design_bottom_sheet_close']
  end
end