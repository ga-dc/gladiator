# require "pry"

# Arena has a name
# name is always capitalized
# gladiators starts empty
# add_gladiator adds a gladiator to the arena
# add_gladiator can add multiple gladiators
# add_gladiator does not have more than two gladiators at once
# fight when there are no gladiators does nothing
# fight when there is one gladiator does nothing
# fight when Spear v Trident kills: spear when fighting trident
# fight when Club v Spear kills: club when fighting spear
# fight when Trident v Club kills: trident when fighting club
# fight when same Weapons kills: both if their weapons are the same

class Arena

  attr_accessor :name, :gladiators

  def initialize name
    @name = name.upcase
    @gladiators = []
  end
  def add_gladiator
  end
  def fight
  end
end

# binding.pry
