require_relative 'gladiator'
require 'gladiator'


class Arena
  attr_accessor :name, :gladiators
  def initialize (name)
    @gladiators = []
    @name = name.capitalize
  end

  def add_gladiator (gladiator_name)
    if @gladiators.length<2
      @gladiators << gladiator_name
    else
    end
    return @gladiators
  end

  def fight
    if @gladiators.length>1

      #if they tie, both gladiators are eliminated
      if @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators=[]

      elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear"
        @gladiators.delete_at(1)

      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
        @gladiators.delete_at(1)

      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
        @gladiators.delete_at(1)

      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
        @gladiators.delete_at(0)

      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Spear"
        @gladiators.delete_at(0)

      elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club"
        @gladiators.delete_at(0)
      end
    end
  else
  end
end
#
# * Trident beats Spear
# * Spear beats Club
# * Club beats Trident
