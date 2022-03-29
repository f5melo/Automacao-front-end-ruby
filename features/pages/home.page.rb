class HomePage < SitePrism::Page
  # element :userName, :class, "ember712 > div.t-16.t-black.t-bold"
  element :navBarHome, :id, "ember18"
  element :myIcon, :id, "ember26" 

  
# metodo checar se lgou com sucesso
def checkLoginSucessful
  # comando "print" escreve na tela do terminal

  # expect(userName.text).to eql "Felipe Melo"
   expect(navBarHome.text).to eql('Início')
   expect(myIcon.text).to eql('Eu')
 
  #  expect(actual).to eq(expected)
  # it { is_expected.to be > "Zuchini" }



end

end

