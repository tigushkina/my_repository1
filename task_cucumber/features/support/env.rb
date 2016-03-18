require 'selenium-webdriver'
require 'rspec'
require 'page-object'

World(RSpec::Matchers)
World(PageObject::PageFactory)
