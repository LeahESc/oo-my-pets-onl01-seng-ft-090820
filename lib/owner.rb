class Owner
  # attr_accessor 
  attr_reader :name, :species
  @@all = []
  
  def initialize(name, species = "human")
    @name = name 
    @species = "human"
    @@all << self 
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
  
    
end