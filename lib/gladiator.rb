# require_relative "arena"

class Gladiator
  attr_accessor :name, :weapon


# gladiator has a name and a weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end
end


# m = Gladiator.new("Maximus")
# s = Gladiator.new("Spear")
