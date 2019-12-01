class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    save
  end

  def self.mood
    @mood
  end

  def self.all
    @@all
  end

  def save
    @@all << save
  end


end
