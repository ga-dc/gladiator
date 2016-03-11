class Gladiator

attr_accessor :name, :weapon, :available_weapons

# A gladiator has a name
  def initialize name = nil, weapon = nil
    @name = name
    @weapon = weapon
  end

  def name
    return @name
  end

  def weapon
    return @weapon
  end

# * A gladiator has a weapon (one of Spear, Club, Trident)
  def available_weapons
    return ["Trident", "Spear", "Club"]
  end

  def arm weapon = nil
    @weapon = weapon
  end

end
