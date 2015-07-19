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
    if gladiators.length < 2
         elsif gladiators[0].weapon == "Spear" && gladiators[1].weapon == "Trident"
            gladiators.delete_at(0)
         elsif gladiators[1].weapon == "Spear" && gladiators[0].weapon == "Trident"
               gladiators.delete_at(1)
         end
         # if gladiators[0].weapon == "Club" && gladiators[1].weapon == "Spear"
            # gladiators.delete_at(0)
         # elsif gladiators[1].weapon == "Club" && gladiators[0].weapon == "Spear"
            # gladiators.delete_at(1)
         # end
  end

end
