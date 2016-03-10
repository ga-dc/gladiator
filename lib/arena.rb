
class Arena
  attr_accessor :name
  attr_accessor :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators= []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
      @gladiators.push(gladiator)
    end
  end

  def fight
    return if @gladiators.length < 2

    gladiator1 = gladiators.first.weapon
    gladiator2 = gladiators.last.weapon
    if gladiator1 == "Trident" && gladiator2 == "Spear"
      @gladiators.pop
      puts gladiator2 dies
    else
      @gladiators.shift
    end
  end
end
