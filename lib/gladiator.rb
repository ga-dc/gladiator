require 'pry'

class Gladiator
  attr_accessor :name, :weapon, :ok_weapons
    def initialize(name, weapon)
      @name = name
      @weapon = weapon
      @ok_weapons = ["Spear","Trident","Club"]
    end
end

test = Gladiator.new('Mountain','Spear')
binding.pry
