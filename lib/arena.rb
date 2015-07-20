class Arena
  attr :name, :gladiators
  def initialize(initial_name)
    @name = initial_name.capitalize
    @gladiators = []
  end

  def add_gladiator(new_gladiator)
    unless @gladiators.length >= 2
      @gladiators.push(new_gladiator)
    end
  end
#Irving. Refactor fight. This is insane.
  def fight
    if @gladiators.length == 2
      if @gladiators.at(0).weapon == @gladiators.at(1).weapon
        @gladiators.pop(2)
      elsif @gladiators.at(0).weapon == "Spear"
        if @gladiators.at(1).weapon == "Trident"
          @gladiators.shift
        elsif @gladiators.at(1).weapon == "Club"
          @gladiators.pop
        end
      elsif @gladiators.at(0).weapon == "Trident"
        if @gladiators.at(1).weapon == "Club"
          @gladiators.shift
        elsif @gladiators.at(1).weapon == "Spear"
          @gladiators.pop
        end
      elsif @gladiators.at(0).weapon == "Club"
        if @gladiators.at(1).weapon == "Spear"
          @gladiators.shift
        elsif @gladiators.at(1).weapon == "Trident"
          @gladiators.pop
        end
      end
    end
  end

end

# ## Bonus
#
# Note: No tests are provided for this bonus. You can either just add the
# functionality w/o tests, or try to write the tests yourself.
#
# * Add a method to remove gladiators from the arena by name
# * Update your winning conditions so that if the gladiator named "Maximus" is in the fight, he wins.
# * Add a method to check to see if the crowd is entertained (`.entertained?`). The crowd is only entertained if Maximus is in the arena.
# * Before a losing gladiator is eliminated, the user should be prompted to put their thumbs up or down. If user votes down, the losing gladiator is removed. If the user votes up, the gladiator stays in the arena and his opponent is removed. (Life isn't fair.)
