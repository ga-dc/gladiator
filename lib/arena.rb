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
    if gladiators.first.weapon == SPEAR && gladiators.last.weapon == CLUB

    end
  end
end
