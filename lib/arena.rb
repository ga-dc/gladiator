
class Arena

  RULES = {
    :Trident     => {:Trident => :draw, :Club => :Club, :Spear => :Trident},
    :Club    => {:Trident => :Club, :Club => :draw, :Spear => :Spear},
    :Spear => {:Trident => :Trident, :Club => :Spear, :Spear => :draw}
  }

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

  def add_gladiator(gladiator_name)
    if @gladiators.count < 2
      @gladiators.push(gladiator_name)
    end
  end

  def remove_gladiator(gladiator_name)
    if @gladiators.count > 0
      @gladiators.delete(gladiator_name)
    end
  end

  def fight
    if @gladiators.count == 2
      if @gladiators.include?("Maximus")
        @gladiators.delete_if {|x| x!="Maximus"}
      else
        weapon1 = @gladiators[0].weapon.to_sym
        weapon2 = @gladiators[1].weapon.to_sym
        winning_weapon = RULES[weapon1][weapon2]
        if winning_weapon == :draw
          @gladiators.delete_at(1)
          @gladiators.delete_at(0)
        elsif winning_weapon == weapon1
          @gladiators.delete_at(1)
        else
          @gladiators.delete_at(0)
        end
    end

    def entertained?
      if @gladiators.include?("Maximus")
        return true
      else
        return false
      end
    end
    
  end



end
