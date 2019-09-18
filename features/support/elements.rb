def click_el(el)
  $logger.info("Find text to element #{el['value']} by locator #{el['locator']}")
  case el['locator']
  when 'id'
    click_id(el['value'])
  when 'xpath'
    click_xpath(el['value'])
  else
    raise('No find locator')
  end
end

def get_text(el)
  $logger.info("Find text to element #{el['value']} by locator #{el['locator']}")
  case el['locator']
  when 'id'
    get_text_id(el['value'])
  when 'xpath'
    get_text_xpath(el['value'])
  else
    raise('No find locator')
  end
end

def swipe_to_coordinates(el)
  swipe(start_x: el['start_x'], start_y: el['start_y'], end_x: el['end_x'], end_y: el['end_x'], duration: 200).perform
end

def wait_for_element_exist(el)
  case el['locator']
  when 'id'
    wait_for_id_to_exist(el['value'])
  when 'xpath'
    wait_for_xpath_to_exist('id')
  else
    # type code here
  end
end

def wait_for_id_to_exist(id)
  $wait.until { id_exists? id }
end

def id_exists?(id)
  find_elements(:id, id).count > 0
end

def click_id(id)
  wait_for_id_to_exist id
  find_element(:id, id).click
end

def get_text_id(id)
  wait_for_id_to_exist id
  find_element(:id, id).text
end

def find_el_id(id)
  wait_for_id_to_exist id
  find_element(:id, id)
end

def xpath_exists?(xpath)
  find_elements(:xpath, xpath).count > 0
end

def wait_for_xpath_to_exist(xpath)
  $wait.until { xpath_exists? xpath }
end

def click_xpath(xpath)
  wait_for_xpath_to_exist xpath
  find_element(:xpath, xpath).click
end

def get_text_xpath(xpath)
  wait_for_xpath_to_exist xpath
  find_element(:xpath, xpath).text
end

def text_exists?(text)
  find_elements(:xpath, "//*[contains(@text,\"#{text}\")]").count > 0
end