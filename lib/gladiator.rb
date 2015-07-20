class Gladiator

  attr_accessor :name, :weapon

  def initialize (name, weapon_name)
    @name = name.capitalize
    @weapon = weapon_name.capitalize
  end

end
