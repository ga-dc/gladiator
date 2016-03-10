# require "pry"


class Arena #created a class called arena inside where im going to create instance of arena

  attr_accessor :name, :gladiators #this acts as a getter and setter

  def initialize(arena_name)
    @name = arena_name.capitalize #this is an instnace of arena
    @gladiators = [] #this creates gladiators empty array
  end

  # to add gladiators to an arena
  def add_gladiator(gladiator)
    if gladiators.length < 2
      gladiators.push(gladiator)
    end
  end

  def fight
    if
      @gladiators.length < 2
    else
    end

    # fighting betwee spear vs trident, kills spear
    if @gladiators.count == 2
      if @gladiators[0].weapon == ("Spear") && @gladiators[1].weapon == ("Trident")
        @gladiators.delete_at(0)
      end
    end

    # fighting betwee club vs spear, kills club

    if @gladiators.count == 2
      if @gladiators[0].weapon == ("Spear") && @gladiators[1].weapon == ("Club")
        @gladiators.delete_at(1)
      end
    end

    # fighting betwee trident vs club, kills trident

    if @gladiators.count == 2
      if @gladiators[0].weapon == ("Trident") && @gladiators[1].weapon == ("Club")
        @gladiators.delete_at(0)
      end
    end

    # fighting between same weapons, kills all

    if @gladiators.count == 2
      if @gladiators[0].weapon ==  @gladiators[1].weapon
        @gladiators = []
      end
    end



  end


end




# binding.pry
# puts "bug fix"
