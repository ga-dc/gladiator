require "pry"
require_relative "./gladiator"

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
      if gladiators[0].name == "Maximus"
        @gladiators.pop
      elsif gladiators[1].name == "Maximus"
        @gladiators.shift
      elsif gladiators[0].weapon == "Spear" && gladiators[1].weapon == "Club"
        the_vote
      elsif gladiators[0].weapon == "Club" && gladiators[1].weapon == "Trident"
        the_vote
      elsif gladiators[0].weapon == "Trident" && gladiators[1].weapon == "Spear"
        the_vote
      elsif gladiators[0].weapon == gladiators[1].weapon
        @gladiators = []
      else
        puts "thumbs up or thumbs down?"
        up_or_down = gets.chomp
        if up_or_down == "thumbs down"
          @gladiators.shift
        elsif up_or_down == "thumbs up"
          @gladiators.pop
        end
      end
    end
  end

  def remove_gladiator (name)
    @gladiator.delete(name)
  end

  def entertained?
    if @gladiators.include?("Maximus")
      puts "The crowd is entertained!"
    end
  end

  def the_vote
    puts "thumbs up or thumbs down?"
    up_or_down = gets.chomp
    if up_or_down == "thumbs down"
      @gladiators.pop
    elsif up_or_down == "thumbs up"
      @gladiators.shift
    end
  end
end

thunder = Arena.new("area")

g = Gladiator.new("g", "club")
m = Gladiator.new("m", "spear")

thunder.add_gladiator m
thunder.add_gladiator g

thunder.fight




binding.pry
puts "hi"
