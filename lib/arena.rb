class Arena

  def initialize(name)
  @name = name.capitalize
  @gladiators = []
  end

  def name
    return @name
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(name)
    if @gladiators.count < 2
    @gladiators.push(name)
    end
  end

  def fight
    if @gladiators.count > 1
      if @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators = []
      elsif (@gladiators[0].weapon == "Trident") && (@gladiators[1].weapon == "Spear")
        @gladiators.pop
      elsif (@gladiators[0].weapon == "Club") && (@gladiators[1].weapon == "Trident")
        @gladiators.pop
      elsif (@gladiators[0].weapon == "Spear") && (@gladiators[1].weapon == "Club")
        @gladiators.pop
      else
        @gladiators.shift
      end
    end
  end
end
