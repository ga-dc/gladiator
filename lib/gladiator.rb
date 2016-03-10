class Gladiator

  attr_accessor :name, :weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

end

maximus = Gladiator.new("Maximus", "Sword")
