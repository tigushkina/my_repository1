class MyAccountPage
  include PageObject
  page_url 'http://demo.redmine.org/my/account'

  div :flash_notice, id: 'flashnotice' #div- tagnmame + method name
  #if we need oter element:
  #element :random, :blabla28 /tag-name
  link :logout, class:'logout'

  def registered?
    flash_notice_element.when_visible.visible?
  end

  def logout
    logout_element.click if logout_element.visible?
  end

end