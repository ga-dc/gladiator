class Arena
  attr_reader :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    gladiators.push(gladiator)
    if gladiators.length > 2
      gladiators.pop
    end
  end

  def fight()
    if gladiators.length < 2
    end
  def kill(spear, trident, club)

    if gladiator.weapon == spear && gladiators.weapon == trident {
      gladiators.pop
    } else if gladiators.weapon == club && gladiators.weapon == spear {
      gladiators.pop
    } else if gladiators.weapon == trident && gladiators.weapon == club {
      gladiators.pop
    } else if gladiators.weapon == gladiators.weapon {
      gladiators.pop
      gladiators.pop
  end
end
