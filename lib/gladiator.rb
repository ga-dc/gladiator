
require_relative 'arena'

class Gladiator
  attr_accessor :name, :weapon



  def initialize (name, weapon)
    @name = name.capitalize
    @weapon = weapon.capitalize
  end

end
