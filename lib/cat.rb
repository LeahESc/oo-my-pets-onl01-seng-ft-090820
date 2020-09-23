class Cat
 attr_accessor :name, :owner
 
  def initialize(name, owner, mood = "nervous")
   @name = name
   @owner = owner
   @mood = "nervous"
  end
end