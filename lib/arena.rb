class Arena
  attr_accessor :name, :weapon, :gladiator

  def initialize (name)

    @name = name.capitalize
    @weapon = weapon
    @gladiator = []


  end

  def add_gladiator (name)
    @gladiator << name
  end





end
