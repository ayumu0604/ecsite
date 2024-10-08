class UsersValue
    attr_accessor :userId, :password, :name, :address
  
    def initialize(userId, password, name, address)
      @userId = userId     
      @password = password 
      @name = name         
      @address = address   
    end
end