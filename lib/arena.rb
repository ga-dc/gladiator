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
# losing gladiator if a a winner can be determined.
  def fight
    if !is_able?
      return false
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
       swap_players
     end
   elsif gladiators[0].weapon == "Spear"
     if gladiators[1].weapon == "Trident"
       swap_players
     end
   else
     if gladiators[1].weapon == "Club"
       swap_players
     end
   end
 end

 # Should be used to put losing player at the top of the array.
 def swap_players
   temp = gladiators[0]
   @gladiators[0] = gladiators[1]
   @gladiators[1] = temp
 end

end
