# require "pry"

require_relative "gladiator"
class Arena

  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end

  def fight
    return if @gladiators.length < 2

      if @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
          @gladiators.shift
        elsif @gladiators[1].weapon == "Spear" && @gladiators[0].weapon == "Trident"
          @gladiators.pop
        elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
          @gladiators.pop
        elsif @gladiators[1].weapon == "Club" && @gladiators[0].weapon == "Trident"
          @gladiators.shift
        elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
          @gladiators.pop
        elsif @gladiators[1].weapon == "Spear" && @gladiators[0].weapon == "Club"
          @gladiators.shift
        elsif @gladiators[0].weapon == @gladiators[1].weapon
          @gladiators = []
      end

  end

end

# binding.pry
