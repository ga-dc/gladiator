#Practice
require 'gladiator'
# require "pry"

class Arena
  attr_accessor :name
  def initialize name, gladiators = []
    @name = name.capitalize
    @gladiators = gladiators
  end

def add_gladiator(gladiator)
   @gladiators.push(gladiator)
   if @gladiators.length == 3
     @gladiators.pop  #take one out
   end
end

def fight()
  if @gladiators.length == 2
    if @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
      @gladiator.delete_at(1)

    elsif @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Spear"
      @gladiators.delete_at(1)

    elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
    @gladiators.delete_at(1)

  else @gladiators.first.weapon == @gladiators.last.weapon
    @gladiators.pop(2)

    end




# binding.pry
# puts "oh hamburgers"
