class Arena

  attr_reader :name, :gladiators

  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end

  # def name
  #   return @name
  # end

  # def gladiators
  #   return @gladiators
  # end

  def add_gladiator (gladiator)
    if @gladiators.length < 2
        @gladiators.push(gladiator)
    end
  end

  def fight
    #had to look at solution at this point
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
