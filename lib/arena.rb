class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    @gladiators.push(gladiator) if @gladiators.length < 2
  end

  def fight
  if @gladiators.length == 2
    if @gladiators[0].weapon == @gladiators[1].weapon
      @gladiators = []
    elsif (@gladiators[0].weapon == "Trident" and @gladiators[1].weapon == "Spear") ||
          (@gladiators[0].weapon == "Spear" and @gladiators[1].weapon == "Club") ||
          (@gladiators[0].weapon == "Club" and @gladiators[1].weapon == "Trident")
      @gladiators.delete_at(1)
    else
      @gladiators.delete_at(0)
    end
  end
  end
end
