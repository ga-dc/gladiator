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
      @gladiators << new_gladiator
    end
  end

  def fight
    weapon_switch = {"Trident" => "Spear","Spear" => "Club", "Club" => "Trident"}

    if @gladiators.count == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.pop(2)
      elsif weapon_switch[@gladiators.first.weapon] ==@gladiators.last.weapon
        @gladiators.delete_at(1)
      else
        @gladiators.delete_at(0)
      end
    end
  end


end
