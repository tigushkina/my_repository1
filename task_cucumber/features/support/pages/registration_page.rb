class RegistrationPage
  include PageObject
  page_url "http://demo.redmine.org/account/register"

  text_field :login_field, id: 'user_login' #login_field - text element below/ id: -from html code
  text_field :password, id: 'user_password'
  text_field :password_confirm, id: 'user_password_confirmation'
  text_field :first_nm, id: 'user_firstname'
  text_field :last_nm, id: 'user_lastname'
  text_field :email, id: 'user_mail'
  button :submit, name: 'commit'

def register
  login = rand(999).to_s + 'login'
  login_field_element.when_visible # or self.login_field = login_value
  self.login_field = login #self dlia togo chtob ukazat,chto login_field- metod a ne peremennaya
  self.password = "123456"
  self.password_confirm = "123456"
  self.first_nm = 'first_name'
  self.last_nm = 'last_name'
  self.email = login + '@mail.com'
  submit
  login
end
end


