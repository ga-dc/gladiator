class Gladiator
  attr_reader :name
  attr_reader :weapon

  def initialize (name, weapon)
    @name = name.capitalize
    @weapon = weapon
  end
  
end
