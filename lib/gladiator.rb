class Gladiator
  attr_accessor :name, :weapon

  def initialize(init_name, init_weapon)
    @name = init_name
    @weapon = init_weapon
  end

  def get_weapon()
    return @weapon 
  end
end
