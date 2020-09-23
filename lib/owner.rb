require 'pry'

class Owner
  attr_accessor 
  attr_reader :name, :species
  @@all = []
  
  def initialize(name, species = "human")
    @name = name 
    @species = "human"
    @@all << self 
    # @pets = [] 
  end
  
  def say_species 
    return "I am a human."
  end
  
  def self.all 
    @@all 
  end 
  
  def self.count
    @@all.count
  end
  
  def self.reset_all 
    @@all = []
  end
  
  def cats
    Cat.all.select {|cat| cat.owner ==self} 
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(cat_name)
    # binding.pry 
    cat = Cat.new(cat_name, self) 
    # cat.owner = self
    # self.cats << cat
  end
  
   def buy_dog(dog_name)
    # binding.pry 
    dog = Dog.new(dog_name, self) 
  end
  
  def walk_dogs
    dog = Dog.new(name, self, "happy")
    # dog.mood = "happy"
  end 
    
end