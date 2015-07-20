class Arena

  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end

  def name
    return @name
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(gladiator)
    @gladiators.push(gladiator)
  end

arena.add_gladiator("maximus")

end

# pbj = arena.new("PBJ")




# rspec ./spec/arena_spec.rb:27 # Arena#gladiators starts empty


# rspec ./spec/arena_spec.rb:34 # Arena#add_gladiator adds a gladiator to the arena


# rspec ./spec/arena_spec.rb:38 # Arena#add_gladiator can add multiple gladiators


# rspec ./spec/arena_spec.rb:43 # Arena#add_gladiator does not have more than two gladiators at once


# rspec ./spec/arena_spec.rb:54 # Arena#fight when there are no gladiators does nothing


# rspec ./spec/arena_spec.rb:61 # Arena#fight when there is one gladiator does nothing
# rspec ./spec/arena_spec.rb:69 # Arena#fight when Spear v Trident kills: spear when fighting trident
# rspec ./spec/arena_spec.rb:79 # Arena#fight when Club v Spear kills: club when fighting spear
# rspec ./spec/arena_spec.rb:89 # Arena#fight when Trident v Club kills: trident when fighting club
# rspec ./spec/arena_spec.rb:99 # Arena#fight when same Weapons kills: both if their weapons are the same
