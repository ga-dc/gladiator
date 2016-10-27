# require "pry"

class Arena

  def initialize name
    @name = name
    @gladiators = []
  end

  def name
    @name.capitalize
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators << gladiator
    end
    @gladitors
  end

  def fight
    if @gladiators.length == 2
      if @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators.clear

      elsif @gladiators[0].weapon == "Trident" &&  @gladiators[1].weapon == "Spear"
        return @gladiators.delete_at(1)

      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
        return @gladiators.delete_at(1)

      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
        return @gladiators.delete_at(1)

      elsif @gladiators[0].weapon == "Spear" &&  @gladiators[1].weapon == "Trident"
        return @gladiators.delete_at(0)

      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon =="Spear"
        return @gladiators.delete_at(0)

      elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club"
        return @gladiators.delete_at(0)
      end
    end
  end
end

# binding.pry
