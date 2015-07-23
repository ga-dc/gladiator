class Gladiator

  def initialize(name, weapon)
    @name = name.downcase.capitalize
    # A gladiator has a weapon (one of Spear, Club, Trident)
    puts("Your gladiator can only have a spear, trident, or club")
    puts("If your gladiator doesn't have a spear, trident, or club, he will be given a spear")
    weapon.downcase!
    if weapon == 'spear' || weapon == 'trident' || weapon == 'club'
      @weapon = weapon.capitalize
    else
      @weapon = 'Spear'
    end
  end


end
