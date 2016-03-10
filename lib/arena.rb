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
    if @gladiators.count < 2
      p "There are #{@gladiators.count} in the arena! Two gladiators are needed to fight."
    elsif @gladiators[0].name == "Maximus"
      @gladiators.delete_at(1)
      p "#{@gladiators[0].name} has won!"
    elsif @gladiators[1].name == "Maximus"
      @gladiators.delete_at(0)
      p "#{@gladiators[1].name} has won!"
    else
      puts "#{@gladiators[0].name} has a #{@gladiators[0].weapon} and is fighting #{@gladiators[1].name}, who has a #{@gladiators[1].weapon}."
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
        p "Both #{@gladiators[0].name} and #{@gladiators[1].name} have died!"
        @gladiators = []
      end
    end
  end

def remove_gladiator(gladiator)
  p "#{gladiator.name} has died!"
end

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
