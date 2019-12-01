require 'pry'

class Owner
  # code goes here
  attr_reader :name, :human

  @@all = []

  def initialize(name)
    @name = name
    @human = "human"
    @@all << self
    #binding.pry
  end

  def name
    @name
  end

  def species
    @human
  end

  def say_species
    p "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    self.cats.each { |cat| cat.mood = "happy" }
  end

  def sell_pets
    self.pets.each { |pet| pet.mood = "nervous" }
    binding.pry
  end

  def pets
    dogs
    cats
  end


  def list_pets
    p "I have #{dogs.size} dog(s), and #{cats.size} cat(s)."
  end



end
