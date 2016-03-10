
class Arena
  attr_accessor :name, :gladiators

  def initialize name
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator (gladiator)
    unless gladiators.length == 2
    gladiators << gladiator
    end
  end

  def fight
    if gladiators.length >= 2
      if gladiators[0].weapon == "Spear" && gladiators[1].weapon == "Club"
        @gladiators.pop
      elsif gladiators[0].weapon == "Club" && gladiators[1].weapon == "Trident"
        @gladiators.pop
      elsif gladiators[0].weapon == "Trident" && gladiators[1].weapon == "Spear"
        @gladiators.pop
      elsif gladiators[0].weapon == gladiators[1].weapon
        @gladiators = []
      else
        @gladiators.shift
      end
    end
  end

end

# thunder = Arena.new("area")
#
# g = Gladiator.new("g", "club")
# m = Gladiator.new("m", "spear")
#
# thunder.add_gladiator m
# thunder.add_gladiator g
#
# thunder.fight
#
#
#
#
# binding.pry
# puts "hi"
