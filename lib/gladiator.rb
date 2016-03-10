# require 'pry'

class Gladiator
  attr_accessor :name, :weapon, :ok_weapons
    def initialize(name, weapon)
      @name = name.capitalize
      @weapon = weapon.capitalize
      @ok_weapons = ["Spear","Trident","Club"]
      check
    end
    def check
      if (@weapon != "Spear" && @weapon != "Trident" && @weapon != "Club")
        puts "invalid weapon, DISQUALIFIED"
    end
  end
end

gladiator = Gladiator.new('Mountain','spear')
# binding.pry
