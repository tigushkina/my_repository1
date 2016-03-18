Given(/^on registration page of Redmine$/) do
visit(RegistrationPage)
end

When(/^valid credentials are submitted$/) do
  on(RegistrationPage).register
end

Then(/^registration is successful$/) do
  expect(on(MyAccountPage)).to be_registered
end