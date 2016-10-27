# require "pry"

class Gladiator

  attr_reader :name, :weapon
  
  def initialize name, weapon
    @name = name
    @weapon = weapon
  end

  def name
    @name
  end

  def weapon
    @weapon
  end


end

# binding.pry
