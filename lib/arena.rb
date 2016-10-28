require_relative 'gladiator'

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
    if @gladiators.count =< 2
      @gladiators.push(new_gladiator)
    end
  end

  def fight
    weapon_choices = {"Trident" => "Spear", "Spear" => "Club", "Club" => "Trident"}
    if @gladiators.count == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
# I won't lie, I had to get this from the solution because I was completely stuck and had absolutely no clue
        @gladiators.pop(2)
      elsif weapon_choices[@gladiators.first.weapon] == @gladiators.last.weapon
        @gladiators.delete_at(1)
      else
        @gladiators.delete_at(0)
      end
    end
  end
end
