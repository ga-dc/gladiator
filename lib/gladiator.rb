class Gladiator
  attr_accessor :name, :weapon
    def initialize(initial_name, initial_weapon)
        @name = initial_name.capitalize
        @weapon = initial_weapon
    end
end

# * A gladiator has a name
# * A gladiator has a weapon (one of Spear, Club, Trident)
