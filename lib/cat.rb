class Cat
 attr_accessor  :Owner, :mood 
 attr_reader :name
 
 @@all = [] 
 
  def initialize(name, Owner, mood = "nervous")
    @name = name
    @owner = Owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  
end