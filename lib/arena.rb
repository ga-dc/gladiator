class Arena
  attr_accessor :gladiators
  def initialize (name)
    @name = name
    @gladiators = []
  end

  def name
    name = @name.capitalize
    return name
  end

  def add_gladiator(gladiator)
    self.gladiators << gladiator if self.gladiators.length < 2
  end

  def fight
    if self.gladiators.length < 2
      return
    end

    if self.gladiators[0].weapon == self.gladiators[1].weapon
      self.gladiators = []
    elsif self.gladiators[0].weapon == "Spear"
      if self.gladiators[1].weapon == "Trident"
        self.gladiators.delete_at(0)
      elsif self.gladiators[1].weapon == "Club"
        self.gladiators.delete_at(1)
      end
    elsif self.gladiators[0].weapon == "Trident"
      if self.gladiators[1].weapon == "Club"
        self.gladiators.delete_at(0)
      elsif self.gladiators[1].weapon == "Spear"
        self.gladiators.delete_at(1)
      end
    elsif self.gladiators[0].weapon == "Club"
      if self.gladiators[1].weapon == "Spear"
        self.gladiators.delete_at(0)
      elsif self.gladiators[1].weapon == "Trident"
        self.gladiators.delete_at(1)
      end
    end
  end
end
