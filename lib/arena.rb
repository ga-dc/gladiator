# require "pry"

require_relative "../lib/gladiator"

class Arena
  attr_accessor :name, :gladiators

  # this initializes the arena
  def initialize(initial_name)
    @name = initial_name.capitalize
    @gladiators = []
  end

  # this checks to make sure there aren't already 2 gladiators then adds 1 or more to arena
  def add_gladiator(gladiator)
    if @gladiators.count < 2
      @gladiators << gladiator
    end
  end

  def fight
    #these check to see if there's less than 2 gladiators in the arena
    if @gladiators.count == 0
      p "No gladiators in the arena! Please send 'em in.'"
    elsif @gladiators.count == 1
      p "Only one gladiator! Please add one more to FIGHT."
    else
      puts "#{@gladiators[0].name} fights #{@gladiators[1].name}."
      # puts "#{1gladiator.name} has a #{1gladiator.weapon} and #{2gladiator.name} has a #{2gladiator.weapon}"
      if ((@gladiators[0].weapon == "Spear") && (@gladiators[1].weapon == "Trident") ||
        (@gladiators[0].weapon == "Club") && (@gladiators[1].weapon == "Spear") ||
        (@gladiators[0].weapon == "Trident") && (@gladiators[1].weapon == "Club"))
        remove_gladiator(@gladiators[0])
        @gladiators.delete(@gladiators[0])
      elsif ((@gladiators[1].weapon == "Spear") && (@gladiators[0].weapon == "Trident") ||
        (@gladiators[1].weapon == "Club") && (@gladiators[0].weapon == "Spear") ||
        (@gladiators[1].weapon == "Trident") && (@gladiators[0].weapon == "Club"))
        @gladiators.delete(@gladiators[1])
      elsif @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators = []
      end
    end
  end
end

def remove_gladiator(gladiator)
  p "#{gladiator.name} has died!"
end


#this loops through the gladiators array looking for a spear and a trident
# @gladiators.each do |name, weapon|
#   puts "#{@name} has a #{@weapon} and is gladiator number #{index}"
# end


# def get_winner
#   @gladiators.any? { |weapon| gladiators.include?("Spear") }
#   if @gladiators[0].weapon.include?("Spear") @gladiators[1]
# end


# arena = Arena.new("megalopolis")
#
#
# binding.pry
#
# p "thumbs up"
