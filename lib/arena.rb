class Arena
  def initialize(arena_name)
    @aname = arena_name.capitalize
    @gladiators = []
  end
end

  def arena_name
    return @aname
  end

  def add_gladiators
    gladiators.push(gladiator)
      if gladiators > 2
        gladiators.fight()
  end

  def gladiators(fight)
    if trident > spear
      gladiators.pop(gladiator)
    elsif spear > club
      gladiators.pop(gladiator)
    elsif club > trident
      gladiators.pop(gladiator)
    else trident == spear || trident == club || spear == club || club == trident
      gladiators.pop()
  end
