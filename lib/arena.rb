class Arena

# attr_accessor :name, :gladiators

# * An arena has a name
#   * The name should be capitalized
# * An arena can have gladiators
  def initialize (name)
    @name = name
    @gladiators = []
  end

  # * An arena has a name
  #   * The name should be capitalized
  def name
    return @name.capitalize
  end

  def gladiators
    return @gladiators
  end

  # * You can add a gladiator to the arena
  def add_gladiator(newGladiator)
    if @gladiators < 2
      @gladiators.push(newGladiator)
    end
  end

  # * If there are two gladiators in the arena, you can call a fight method that results in the elimination of one of the gladiators from the arena.
  # * Winning conditions:
  #   * Trident beats Spear
  #   * Spear beats Club
  #   * Club beats Trident
  #   * If the two gladiators have the same weapon, they are both eliminated.
  def fight
    if @gladiators.length == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.pop(2)
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
        @gladiators.shift(1)
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Club"
        @gladiators.pop(1)
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
        @gladiators.shift(1)
      end
    end
  end

end
