class Arena

  attr_accessor :name, :gladiators, :weapons

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
    @weapons = []
  end

  def add_gladiator(gladiator)
    @gladiators << gladiator
    # puts "adding gladiator #{gladiator}"
  end

  # if @gladiators.length = 2 then
  #   break
  # end

  def fight # no gladiators, does nothing
  end

  # def start_fight
  #   if @gladiators.length = 2

  # compare weapons (tridentVspear, clubVspear, spearVclub)
  def compare_weapon(weapon)
    @weapons << weapon
    # create if statements with weapon combinations
    if @weapons.inlcude "Trident" = true
      if @weapons.include "Spear" = true
        # remove spear
        @weapons.pop
  end


  #fight!
  # have to assign winning combinations based on weapons, not values?
  #end

  # weapons: set them up to have value based on place in weapons array

end

megalopolis = Arena.new("Megalopolis")
maximus = Gladiator.new("Maximus", "Trident")
tiffany = Gladiator.new("Belle", "Spear")
gort = Gladiator.new("Gort", "Club")
