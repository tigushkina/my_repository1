class LoginPage
  include PageObject
  page_url "http://demo.redmine.org/login"

  text_field :login_field, id: 'user_login'
  text_field :password, id: 'user_password'
  button :submit, name: 'login'

  def login_as(user)
    self.login_field = user
    self.password = "123456"
    submit
  end

end