class Arena
  def initialize(name)
    @name = name
    @gladiators = []
  end

  def name
    return @name.capitalize
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
    weapon_switch = {"Trident" => "Spear", "Spear" =>"Club", "Club" => "Trident" }

    if @gladiators.count == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.pop(2)
      elsif weapon_switch[@gladiators.first.weapon] == @gladiators.last.weapon
        #switch the weapon of the first gladiator to the winning combo weapon
        #if that is equal to the second gladiator's weapon then gladiator 1 wins
        @gladiators.delete_at(1)
      else
        #if the weapon's are not equivalent after the switch
        #then gladiator 2 loses
        @gladiators.delete_at(0)
      end
    end

  end
end
