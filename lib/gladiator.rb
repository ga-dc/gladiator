class Gladiator

  #attr_accesor to have access to the read and write properties
  attr_accessor :name
  attr_accessor :weapon

  #initialize a Gladiator
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

end
