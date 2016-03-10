# require "pry"
require_relative 'arena.rb'

class Gladiator

  attr_accessor :name, :weapon

  def initialize name, weapon
    @name = name
    @weapon = weapon
  end

end

cam = Gladiator.new('cam', 'Trident')
anissa = Gladiator.new('anissa', 'Spear')

# binding.pry
