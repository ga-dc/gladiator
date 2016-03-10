# require_relative "gladiator"
# require "pry"

class Arena
  attr_accessor :name, :gladiators

  def initialize name
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators << gladiator
      @gladiators.sort_by! do |gladiator|
        gladiator.weapon
      end
      @gladiators
    else
      puts "There are 2 gladiators in the arena already."
    end
  end

  def fight
    if @gladiators.length <= 1
      puts "Needs more gladiators!"
    else
      gladiators.each do |gladiator|
        if @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
          @gladiators.shift
          puts @gladiators[0].name + " is the winner!"
        elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Spear"
          @gladiators.shift
          puts @gladiators[0].name + " is the winner!"
        elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
          @gladiators.pop
          puts @gladiators[0].name + " is the winner!"
        elsif @gladiators[0].weapon == @gladiators[1].weapon
          @gladiators.pop(2)
          puts "Both gladiators have been killed."
        end
      end
    end
  end

end

# adrian = Gladiator.new("adrian", "club")
# robin = Gladiator.new("robin", "spear")
#
# dupont = Arena.new("dupont")

# binding.pry
