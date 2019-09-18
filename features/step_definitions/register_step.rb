Given('i visualize options signature from register screen') do
  step 'i am in welcome screen'
  step 'i choose the option to test'
  step 'i see the register screen'
  register_page.button_go
  register_page.button_go
  register_page.is_visualize_text 'sheet_three', 'signature'
end

When('i access link more detail') do
  register_page.access_more_detail
end

When('i back to welcome screen') do
  register_page.button_back
end

Then('i visualize the tariffs the register screen') do
  register_page.is_visualize_text 'sheet_three', 'more_detail_title'
  register_page.swipe_to_screen 'down', 2
  register_page.is_visualize_text 'sheet_three', 'tariffs_one'
  register_page.swipe_to_screen 'up', 2
  register_page.close_sheet_more_detail
end

Then('i see the register screen') do
  register_page.is_register_screen
end