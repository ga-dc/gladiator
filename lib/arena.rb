class Arena
  attr_accessor :gladiators
  attr_reader :name

  ARENA_SIZE = 2
  TRIDENT = "Trident"
  SPEAR = "Spear"
  CLUB = "Club"
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    gladiators << gladiator if gladiators.length < ARENA_SIZE
  end

  def fight
    # First gladiator has strongest weapon in IFS. ELSE is when last gladiator has strongest weapon
    return if gladiators.length < ARENA_SIZE

    if gladiators.first.weapon == TRIDENT && gladiators.last.weapon == SPEAR
      gladiators.pop
    else
      gladiators.shift
    end
  end
end
