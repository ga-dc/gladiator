# require "pry"

class Gladiator
  attr_accessor :name, :weapon
  def initialize(name, weapon) #spear, trident, club
    @name = name.capitalize
    @weapon = weapon.capitalize
  end
end

# puts "end of file"
