# Dir[File.join(File.dirname(
#   __FILE__),'C:\Users\melof\Desktop\ProjetoQAlizando\features\pages\*.page.rb')].each { |file| require file}
 Dir[File.join(File.dirname(__FILE__),'~\..\ProjetoQAlizando\features\pages\*.page.rb')].each { |file| require file}
# linux ~/ ou windows ~\ 


module Page 


  def login
    @login ||= LoginPage.new    
  end

  def home
    @home ||= HomePage.new    
  end

  # def recover
  #   @recover ||= RecoverPage.new
    
  # end  
end

