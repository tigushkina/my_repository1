class HomePage
  include PageObject
  page_url "http://demo.redmine.org"

  link :logout, class:'logout'

  def logout
   logout_element.click if logout_element.visible?
 end
end