class Arena

  attr_accessor :name, :gladiators, :weapon

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators.push(gladiator)
    end
  end

  def fight
    if @gladiators.length == 2
      if @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators = []
      elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear"
        @gladiators.pop()
      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
        @gladiators.pop()
      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
        @gladiators.pop()
      else
        @gladiators.shift()
      end
    end
  end
end
