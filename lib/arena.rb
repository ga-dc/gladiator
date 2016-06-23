require_relative 'gladiator'
require 'gladiator'

class Arena
  attr_accessor :name, :gladiators
  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator (name)
    if @gladiators.length < 2
      @gladiators << (name)
    else
    end
  end
  def fight
    if @gladiators.length > 1
      if @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators = []
      elsif @gladiators[0].weapon == 'Trident' && @gladiators[1].weapon == 'Spear' ||
        @gladiators[0].weapon == 'Spear' && @gladiators[1].weapon == 'Club' ||
        @gladiators[0].weapon == 'Club' && @gladiators[1].weapon == 'Trident'
        @gladiators.delete_at(1)
      else
        @gladiators.delete_at(0)
      end
    else
    end
  end
end
