When(/^correct credentials are added$/) do
  @browser.find_element(:class, 'register').click
  @browser.find_element(:id, 'user_login').send_keys 'dohu@flurred.com'
  @browser.find_element(:id, 'user_password').send_keys '123456'
  @browser.find_element(:id, 'user_password_confirmation').send_keys '123456'
  @browser.find_element(:id, 'user_firstname').send_keys 'first'
  @browser.find_element(:id, 'user_lastname').send_keys 'lastname'
  @browser.find_element(:id, 'user_mail').send_keys 'dohu@flurred.com'
  @browser.find_element(:name, 'commit').click

  @browser.find_element(:class, 'logout').click
  @browser.find_element(:class, 'login').click

end

Then(/^login is successful$/) do
  expect(:id, 'loggedas').text.to be_displayed
end

Given(/^login form on login page of Redmine$/) do
  @browser.find_element(:class, 'login').click
end