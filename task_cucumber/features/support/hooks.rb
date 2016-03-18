Before do
  @browser = Selenium::WebDriver.for :chrome
  @browser.get 'http://demo.redmine.org'
end

After do
  @browser.quit
end