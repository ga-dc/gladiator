require_relative 'arena'
require 'arena'

class Gladiator
  attr_accessor :name, :weapon
  def initialize (name, weapon)
    @name = name
    @weapon = weapon
  end
end
