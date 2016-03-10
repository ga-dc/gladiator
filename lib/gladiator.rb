# A gladiator has a name
# A gladiator has a weapon (one of Spear, Club, Trident)
# require "pry"

class Gladiator

  attr_accessor :name, :weapon


  # def name
  #   if Gladiator.name("Maximus")
  #     return
def initialize(name, weapon)
  @name = name
  @weapon = weapon
end


end

# Maximus = Gladiator.new("Maximus", "Spear")

# binding.pry
#
# puts "done"
