require 'pry'

require_relative 'gladiator'

class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  # adds a gladiator to the arena.
  def add_gladiator(g)
    if gladiators.count < 2
      gladiators << g
    end
  end

# returns false if no fight can take place, true if there was a tie, and the
# losing gladiator if a a winner can be determined. If maximus is in the arena
# kill other gladiator
  def fight
    if !is_able?
      return false
    end
    if maximus?
      return gladiators.pop
    end
    if is_tie?
      return true
    end
      sort_win()
      return gladiators.pop
  end

  # returns true if there are at least 2 gladiators in the arena.
  def is_able?
    if gladiators.count < 2
      return false
    end
    return true
  end

  # returns true and removes gladiators from arena if two gladiators are using
  # the same weapon.
  def is_tie?
    if gladiators[0].weapon == gladiators[1].weapon
      @gladiators = []
      return true
   end
   return false
 end

#  Assumes NO Tie
 def sort_win
   if gladiators[0].weapon == "Club"
     if gladiators[1].weapon == "Spear"
       swap_gladiators
     end
   elsif gladiators[0].weapon == "Spear"
     if gladiators[1].weapon == "Trident"
       swap_gladiators
     end
   else
     if gladiators[1].weapon == "Club"
       swap_gladiators
     end
   end
 end

 # Should be used to put losing player at the top of the array.
 def swap_gladiators
   temp = gladiators[0]
   @gladiators[0] = gladiators[1]
   @gladiators[1] = temp
 end

# Asks the user if the current loser should be spared.
# moves the doomed gladiator to the top of the array.
def mercy?
  answer = nil;
  puts "#{gladiators.first.name} Wins! Show #{gladiators.last.name}"
  puts "thumbs up or down"
  answer = gets.chomp
  if (answer = "up")
    swap_gladiators
  end
end
 # Removes a gladiator specified by name from the arena.  Returns the removed gladiator
 # or false if no specified gladiator in in the arena.
 def remove_gladiator(name)
   if gladiators.empty? #TODO: Could be cleaner
     return false
   end
   if gladiators[0].name != name
     if gladiators[1].name != name
       return false
     else
       mercy?
       return gladiators.pop
     end
   else
     if is_able?
       swap_gladiators
     end
     mercy?
     return gladiators.pop
   end
 end

 # returns true if Maximus is in the arena, and puts him on the bottom of the
 # gladiator array.
 def maximus?
   if gladiators.any?{|g| g.name == "Maximus"}
     if gladiators[1].name == "Maximus"
       swap_gladiators
     end
     return true
   end
   return false
 end

# returns true if maximus is in the arena.
 def entertained?
   return maximus?
 end

end

maximus = Gladiator.new("Maximus","Trident")
tim = Gladiator.new("Tim", "Club")
stan = Gladiator.new("Chebbins", "Spear")
triborg = Gladiator.new("Triborg","Trident")

a = Arena.new("Hallway")

binding.pry
