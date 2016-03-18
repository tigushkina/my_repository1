Given(/^I have registered user$/) do
  @user = visit(RegistrationPage).register
end


Given(/^I am not logged in$/) do
  on(HomePage).logout if on(HomePage).logout_element.visible?
end


When(/^I submit valid credentials$/) do
  visit(LoginPage).login_as(@user)
end


Then(/^I am logged in$/) do
  expect(on(HomePage).logged_in?).to be_true
  #or: (on(HomePage)).to be_logged_in
end
