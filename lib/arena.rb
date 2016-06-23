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


end
