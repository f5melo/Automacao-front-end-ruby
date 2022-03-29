      Dado('que o usuario queira logar') do
          # instacia class
          # @test = LoginPage.new (foi comentado pq exite um arq responsavel pela instacia das paginas "page.initialize.rb")                
          login.load

                    # chama o metodo da class
          # @test.userLogin (foi comentado pq exite um arq responsavel pelas credenciais "credential.rb")
              
      end
      
      Quando('ele digitar as credenciais validas') do
        login.userLogin(CREDENTIAL[:user][:email],CREDENTIAL[:user][:password] )
   
      end
      
      Entao('deve acessar o site com sucesso') do
        # instacia class
        # @home = HomePage.new (foi comentado pq exite um arq responsavel pela instacia das paginas "page.initialize.rb")
        # chama o metodo da class
        
        home.checkLoginSucessful
           
        # @recover.sendEmail

      end


      Dado('que o usuario tente logar sem senha') do
        login.load
      end
      
      Quando('ele digitar as credenciais invalidas') do
        login.userLogin(CREDENTIAL[:Invalid_user][:email],CREDENTIAL[:Invalid_user][:password] )
      end
      
      Entao('uma mensagem informado o erro deve aparecer') do
       login.checkInvalidUser
      end


      # usuario não preenche o login
      Dado('que o usuario deixa o login em branco') do
          login.load  
      end
      
      Quando('ele não digitar as credenciais validas') do
            login.userLogin(CREDENTIAL[:Empty_user][:email],CREDENTIAL[:Empty_user][:password] )
      end
      
      Entao('uma mensagem informa o erro') do
         login.checkEmptyUser   
      end
      