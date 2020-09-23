class Owner
  # attr_accessor 
  attr_reader :name, :species
  @@all = []
  
  def initialize(name, species = "human")
    @name = name 
    @species = "human"
    @@all << self 
  end
  
  # def name
  #   @name
  # end
  
  # def name=(name)
  # @name = name 
  # end 
  
  def say_species 
    return "I am a human."
  end
  
  def self.all 
    @@all 
  end 
  
  def self.count
    @@all.count
  end
  
  def reset_all 
    owner = self.new 
    @name = name 
    @species = human
  end
  
  
    
end