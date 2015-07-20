class Arena
  attr_accessor :name, :weapon, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator(person)
    @gladiators.push(person) if @gladiators.length < 2
  end
  def fight
    if @gladiators.length <= 1
      return false
    end
    if @gladiators.first.weapon == @gladiators.last.weapon
      @gladiators.pop(2)
    elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
      @gladiators.pop(0)
    end
  end
end
