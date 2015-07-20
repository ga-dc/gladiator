class Gladiator
  attr_accessor :name
  attr_accessor :weapon
  #weapons = ["Spear", "Club", "Trident"]
  def initialize(name,weapon)
    @name = name
    # @weapon = weapons.sample 
    @weapon = weapon
  end
end
