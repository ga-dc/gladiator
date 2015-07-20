class Arena
  attr_reader :name, :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator(gladiator)
    @gladiators << gladiator if self.gladiators.size < 2
  end
  def fight
    return if self.gladiators.size < 2
    return @gladiators = [] if self.gladiators[0].weapon == self.gladiators[1].weapon
    if self.gladiators.any? { |gladiator| gladiator.weapon == "Spear" }
      @gladiators.delete_if { |gladiator| gladiator.weapon == "Club"}
    end
    if self.gladiators.any? { |gladiator| gladiator.weapon == "Club" }
      @gladiators.delete_if { |gladiator| gladiator.weapon == "Trident"}
    end
    if self.gladiators.any? { |gladiator| gladiator.weapon == "Trident"}
      @gladiators.delete_if { |gladiator| gladiator.weapon == "Spear" }
    end
  end
end
