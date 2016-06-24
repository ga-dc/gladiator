class Arena

  def initialize(new_arena)
    @name = new_arena.capitalize()
    @gladiators = []
  end

  def name
    return @name
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(new_gladiator)
    if @gladiators.count < 2
      @gladiators.push(new_gladiator)
    end
  end

  def fight
    wins_over = {"Trident" => "Spear", "Spear" => "Club", "Club" => "Trident"}
    return if (@gladiators.count < 2)
    if (@gladiators[0].weapon == @gladiators[1].weapon)
      @gladiators = []
      return
    end
    if wins_over[@gladiators[0].weapon] == @gladiators[1].weapon
      @gladiators.delete_at(1)
    else
      @gladiators.delete_at(0)
    end
  end

end
