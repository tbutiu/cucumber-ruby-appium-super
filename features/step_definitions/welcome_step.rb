Given('i am in welcome screen') do
  welcome_page.is_welcome_screen
end

When('i swipe the screen right {string} time') do |indicator|
  welcome_page.swipe_to_screen(indicator)
end

When('i choose the option to sign in') do
  welcome_page.access_sign_in
end

When('i choose the option to test') do
  welcome_page.access_test
end

Then('i see the text {string}') do |text|
  text_screen = welcome_page.get_text_welcome_screen
  text_expected = welcome_page.get_text_expected_welcome[text]
  expect(text_expected).to eql text_screen.gsub("\n", " ")
end
