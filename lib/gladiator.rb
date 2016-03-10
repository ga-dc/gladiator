# require "pry"

class Gladiator

  attr_accessor :name, :weapon

  def initialize name, weapon
    @name = name
    @weapon = weapon
  end
end

gladiator = Gladiator.new('cam', 'trident')

# binding.pry
