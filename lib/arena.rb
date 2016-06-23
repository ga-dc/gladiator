class Arena
  # Test 1 Adding a name to the arena
  def initialize name
    @name = name
    @gladiators = []
  end
  # Test 2 Capitalizing that name
  def name
    @name.capitalize
  end
  def gladiators
    @gladiators
  end
  # Test 3 Starting with an empty arena
  # Test 4 Adding a Gladiator to the arena`
  # Test 5 Making it able to add multiple Gladiators
  # Test 6 Making it so it has a 2 Gladiator max rule
  def add_gladiator (gladiator)
    unless gladiators.length == 2
      gladiators << gladiator
    end
  end
  
  # Test 7 When no Gladiators are in the arena nothing happens
  # Test 8 When only one Gladiator is in the arena nothing happens
  # Test 9 Spear vs Trident
  # Test 10 Club vs Spear
  # Test 11 Trident vs Club
  # Test 12 Both lose if weapons are the same
  def fight
    if @gladiators.length == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.pop(2)
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
        @gladiators.shift(1)
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Club"
        @gladiators.pop(1)
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
        @gladiators.shift(1)
      end
    end
  end

end
