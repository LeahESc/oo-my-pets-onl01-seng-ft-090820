require 'pry'

class Owner
  attr_accessor 
  attr_reader :name, :species
  @@all = []
  
  def initialize(name, species = "human")
    @name = name 
    @species = "human"
    @@all << self 
    @pets = [] 
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
  
  def buy_cat(cat)
    # binding.pry 
    cat = Cat.new(name, owner = Self, mood = "nervous") 
     cat.owner = Self
    # self.cats << cat
    # binding.pry 
      # Cat.all.each do |cat| 
      # if cat.owner != self 
      # cat.owner = self 
  end
  
  
  def walk_dogs
    dog.mood = "happy"
  end 
    
end