class Arena
  attr_accessor :name, :gladiators

  def initialize(arena_name)
    @name = arena_name.capitalize # Name is always capitalized
    @gladiators = []
  end

  def add_gladiator(gladiator_new)
    if @gladiators.count < 2 # Can add multiple gladiators
      @gladiators.push(gladiator_new)
    end
  end

  def fight
    weapon_match = {"Trident" => "Spear", "Spear" => "Club", "Club" => "Trident" }
    # Kills: Spear when fighting Trident
    # Kills: Club when fighting Spear
    # Kills: Trident when fighting Club

    if @gladiators.count == 2
      if weapon_match[@gladiators.first.weapon] == @gladiators.last.weapon
          @gladiators.delete_at(1) # Delete at the 1 index of array

      elsif @gladiators.first.weapon == @gladiators.last.weapon # If weapons are the same
        @gladiators.pop(2) # Kills: both if their weapons are the same (Remove both gladiators in array)

      else @gladiators.first.weapon != @gladiators.last.weapon # If the weapon's are not same after switch
          @gladiators.delete_at(0) # Delete at the 0 index of array
      end
    end
  end
end
