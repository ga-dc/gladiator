class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(g)
    if gladiators.count < 2
      gladiators << g
    end
  end

# returns false if no fight can take place, true if there was a tie, and the
# losing gladiator if a a winner can be determined.
  def fight
    if !self.is_able?
      return false
    end
    if self.is_tie?
      return true
    end
      sort_win()
      return gladiators.pop
  end

  def is_able?
    if gladiators.count < 2
      return false
    end
    return true
  end

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
       self.swap_players
     end
   elsif gladiators[0].weapon == "Spear"
     if gladiators[1].weapon == "Trident"
       self.swap_players
     end
   else
     if gladiators[1].weapon == "Club"
       self.swap_players
     end
   end
 end

 def swap_players
   temp = gladiators[0]
   @gladiators[0] = gladiators[1]
   @gladiators[1] = temp
 end

end
