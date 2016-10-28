
class Arena
  def initialize name
    @name = name
    @gladiators = [];
  end
  def name
    @name.capitalize
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
    if @gladiators.count > 1
      winning_data = {}
      if @gladiator[0].weapon = "spear" && @gladiator[1].weapon = "trident"
          @gladiators.delete_at(0)
      end
    end
  end

end
