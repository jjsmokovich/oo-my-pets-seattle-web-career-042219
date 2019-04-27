class Dog
  attr_reader :name
  attr_accessor :mood 

  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self 
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end


end