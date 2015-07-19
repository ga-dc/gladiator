class Gladiator
  attr_reader :name
  attr_reader :weapon
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end
end
# alex = Gladiator.new("Alex", "Sword")
# jared = Gladiator.new("Jared", "Sword")
