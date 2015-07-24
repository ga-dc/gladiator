class Gladiator

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def name
    return @name.capitalize
  end

  def weapon
    return @weapon
  end

end
