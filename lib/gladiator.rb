# require "pry"

class Gladiator

  attr_accessor :name, :weapon

  def initialize name, weapon = ['spear', 'club', 'trident']
    @name = name
    @weapon = weapon
  end

end

gladiator = Gladiator.new('cam')

# binding.pry
