class Arena
  def initialize name
    @name = name
    @gladiators = []
end

def name
  return @name.capitalize
end

def gladiators
  return @gladiators
end

def add_gladiator new_gladiator
  if @gladiators.length < 2
    @gladiators << new_gladiator
  end
end

def fight
  if @gladiators.length > 1
    if @gladiators.first.weapon == @gladiators.last.weapon
      @gladiators.pop(2)
    elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
      @gladiators.shift
    elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club"
       @gladiators.shift
     elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
          @gladiators.pop
end
end
end
end
