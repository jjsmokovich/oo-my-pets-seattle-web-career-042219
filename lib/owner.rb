require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = species
    @@all << self
  end

  def self.all 
    @@all 
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def play_with_cats 
    pets[:cats].each {|cat| cat.mood = "happy"}
  end 

  def sell_pet(pets)
    pet.owner = nil 
    pet.mood = "nervous"
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end 

  def say_species 
    "I am a #{species}."
  end

  def sell_pets
    @pets.each do |type, name|
      name.each do |pet|
        pet.mood = "nervous"
      end 
    end
    @pets = {}
  end



end