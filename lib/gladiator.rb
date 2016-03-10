# require "pry"
class Gladiator
  attr_accessor :name, :weapon

  def initialize(name, weapon)
    @name = name.capitalize
    @weapon = weapon.capitalize
    check_weapon
  end

  def check_weapon
    accepted_weapons = ["Spear", "Club", "Trident"]

    unless name == "Maximus"
      if accepted_weapons.include?(weapon)
        return true
      else
        puts "The only accepted weapons are 'Spear', 'Club', and 'Trident'"
        return false
      end
    end
  end

end

gladiator = Gladiator.new("Patrick", "pear")

# binding.pry
# puts "done"
