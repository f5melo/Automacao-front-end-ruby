class LoginPage < SitePrism::Page
  set_url ''
  element :usernameField, :id, "session_key"
  element :passwordField, :id, "session_password"
  element :loginButton, :xpath, "//*[@id='main-content']/section[1]/div/div/form/button"
  element :msgAlert, :xpath, "//*[@id='main-content']/section[1]/div/div/form/div[1]/div/p"

# metodo para realizar o login as ções do login
def userLogin(email, password)
  usernameField.set (email)
  passwordField.set (password)
  loginButton.click
  
end

def checkInvalidUser
  expect(msgAlert.text).to eql("Insira sua senha.")
end

def checkEmptyUser
  expect(msgAlert.text).to eql("Insira seu e-mail ou número de celular.")
end


end