class Gladiator
  attr_accessor :name, :weapon

  def initialize(initial_name, initial_weapon = "Sword")
    @name = initial_name
    @weapon = initial_weapon
  end

end

# maximus = Gladiator.new("Maximus","Spear")
# bilcephalon = Gladiator.new("Bilcephalon","Trident")
# ephates = Gladiator.new("Ephates","Club")
# cylodeus = Gladiator.new("Cylodeus","Club")
#
# arena.add_gladiator(maximus)
# arena.add_gladiator(bilcephalon)
