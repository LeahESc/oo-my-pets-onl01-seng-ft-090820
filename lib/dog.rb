class Dog
  attr_accessor :owner, :mood 
  attr_reader :name 
  
    @@all = [] 
    
    def initialize(name, owner, mood = "nervous")
      @name = name
      @owner = owner
      @mood = "nervous"
      @@all << self 
    end 
    
    def self.all 
      @@all 
    end
    
    def buy_dog(dog_name)
    # binding.pry 
    dog = Dog.new(dog_name, self) 
  end
  
    # def mood 
    #   mood = @mood 
    #   if self.walk
end