class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end

  def self.mood
    @mood
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end
