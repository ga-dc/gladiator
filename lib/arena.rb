class Arena

  attr_accessor :name, :gladiators, :kills

  def initialize(initial_name)
      @name = initial_name.capitalize
      @gladiators = []
  end

  def add_gladiator(fighter)
      @gladiators.push(fighter) if @gladiators.length < 2
  end

  def fight
      if @gladiators.length == 2
          if @gladiators[0].weapon == @gladiators[1].weapon
              @gladiators = []
          elsif (@gladiators[0].weapon == "Spear" and @gladiators[1].weapon == "Club") ||
              (@gladiators[0].weapon == "Trident" and @gladiators[1].weapon == "Spear") ||
              (@gladiators[0].weapon == "Club" and @gladiators[1].weapon == "Trident")
            @gladiators.delete_at(1)
          else
            @gladiators.delete_at(0)
      end
      end
  end
end
#
# * An arena has a name
# * You can add a gladiator to the arena
#   * The arena should never have more than 2 gladiators in it at a time
# * If there are two gladiators in the arena, you can call a fight method that results in the elimination of one of the gladiators from the arena.
#   * Winning conditions:
#     * Trident beats Spear
#     * Spear beats Club
#     * Club beats Trident
#     * If the two gladiators have the same weapon, they are both eliminated.
