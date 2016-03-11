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
  def fight

  end

  # * Winning conditions:
  #   * Trident beats Spear
  #   * Spear beats Club
  #   * Club beats Trident
  #   * If the two gladiators have the same weapon, they are both eliminated.
  def check_winner

  end







end
