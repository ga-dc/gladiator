class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator(gladiator)
      gladiators.push(gladiator)
      if gladiators.length > 2
        gladiators.pop
      end
  end
  def fight()
    if gladiators.length == 2
      weapon_one = gladiators.first.get_weapon
      weapon_two = gladiators.last.get_weapon
      if weapon_one == weapon_two
        #a tie, both are expelled
        gladiators.pop
        gladiators.pop
      elsif weapon_one == "Spear"
        if weapon_two == "Trident"
          #Trident Wins #Gladiator 1 is expelled
          gladiators.delete_at(0)
        elsif weapon_two == "Club"
          #Spear wins. Gladiator 2 is expelled
          gladiators.delete_at(1)
        end
      elsif weapon_one == "Trident"
        if weapon_two == "Spear"
          #Trident wins. Gladiator 2 is expelled
          gladiators.delete_at(1)
        elsif weapon_two == "Club"
          #Club wins. Gladiator 1 is expelled
          gladiators.delete_at(0)
        end
      elsif weapon_one == "Club"
        if weapon_two == "Spear"
          #Spear wins. Gladiator 1 is expelled
          gladiators.delete_at(0)
        elsif weapon_two == "Trident"
          #Club wins. Gladiator 2 is expelled
          gladiators.delete_at(1)
        end
      end #closes if weapon one
    end #closes if gladiators length is two
  end #closes the fight
end
