class Arena

  attr_accessor :name, :gladiators, :add_gladiator, :fight

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator (gladiator)
    if @gladiators.length < 2
      @gladiators.push(gladiator)
    end
    return @gladiators
  end

  def fight
    if gladiators.count == 2
      if gladiators[0].weapon == gladiators[1].weapon
        gladiators.pop(2)
      end
# I know the last remaining parts go here,
# but I'm having trouble with it and I'm at about two hours, so I'm packing it in.
    end
  end

end
