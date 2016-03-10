# require "pry"

class Gladiator
  attr_accessor :name, :weapon

  def initialize name, weapon
    # if name.capitalize == 'Maximus'
    #   @name = name.capitalize
    #   @weapon = 'Sword'
    # els
    if weapon.capitalize == 'Club' || weapon.capitalize == 'Spear' || weapon.capitalize == 'Trident'
      @name = name.capitalize
      @weapon = weapon.capitalize
    else
      puts 'Not a valid weapon. Please choose Club, Spear, or Trident.'
    end
  end

end

chris = Gladiator.new("chris", "club")
pat = Gladiator.new("pat", "spear")
sanjay = Gladiator.new("sanjay", "trident")
maximus = Gladiator.new("maximus", "club")

# binding.pry
