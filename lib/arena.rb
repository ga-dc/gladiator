# require_relative "..lib/gladiator.rb"

class Arena
  attr_accessor :name, :gladiators

  def initialize name, gladiators = []
    @name = name.capitalize!
    @gladiators = gladiators
  end

  def add_gladiator new_gladiator_name
    if @gladiators.count ==2
      puts "You cannot have more than two Gladiators in the arena"
    else
      @gladiators << new_gladiator_name
      puts "#{@gladiators.count}"
    end
  end

  def fight
    if @gladiators.count == 2
      @gladiatorsS
      @gladiators.reverse!

    end
  end

end

# if @gladiators.
# def choose(decide_winner)
#   decide_winner = []
#
# if decide_winner = ["Trident", "Spear"]
#   return winner = "Trident"
# elsif decide_winner =  ["Spear", "Club"]
#   return "Spear"
# elsif decide_winner =  ["Club", "Triedent"]
#   return winner = "Club"
# elsif decide_winner =  ["Club", "Triedent"]
#   return winner = "Club"
# else
#    return puts "Draw"
# end
# end
