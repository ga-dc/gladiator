require 'gladiator.rb'
require 'pry'

class Arena
  attr_reader :name
  attr_accessor :gladiators

  def initialize(new_name)
    @name = new_name.capitalize #this isn't orking returning nil
    @gladiators = []
    @gladiator_count = 0
  end

  def add_gladiator(new_gladiator, *others)
      unless @gladiator_count >= 2
        @gladiators.push(new_gladiator).push(*others)
        @gladiator_count+=1
      end

  end

  def fight

    if @gladiator_count == 2

         g1 = @gladiators[0].weapon
         g2 = @gladiators[1].weapon

        case g1 == "Spear"
          when g2 == "Trident"
            @gladiators.shift()
          when g2 == "Club"
            @gladiators.pop()
        end

        if g1 == g2
          @gladiators.clear()
        end
        #spear vs trident  kills spear
        #club vs spear kills club
        #Trident vs club kills trident
        #identical weapons ? both die
        #remote array index of wepaon match
    end
  end

end
