class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    self.name = name.capitalize
    self.gladiators = []
  end

  def add_gladiator(gladiator)
    if(self.gladiators.length < 2)
      self.gladiators << gladiator
    end
  end

  def fight()
    if(self.gladiators.length == 2)
        g1_weapon = self.gladiators[0].weapon
        g2_weapon = self.gladiators[1].weapon

        if (g1_weapon == "Trident" || g2_weapon == "Trident") && (g1_weapon == "Spear" || g2_weapon == "Spear")
          if g1_weapon == "Trident"
            temp_glad = self.gladiators[0]
            self.gladiators = []
            self.gladiators << temp_glad
          else
            temp_glad = self.gladiators[1]
            self.gladiators = []
            self.gladiators << temp_glad
          end
        end

        if (g1_weapon == "Club" || g2_weapon == "Club") && (g1_weapon == "Spear" || g2_weapon == "Spear")
          if g1_weapon == "Spear"
            temp_glad = self.gladiators[0]
            self.gladiators = []
            self.gladiators << temp_glad
          else
            temp_glad = self.gladiators[1]
            self.gladiators = []
            self.gladiators << temp_glad
          end
        end

        if (g1_weapon == "Club" || g2_weapon == "Club") && (g1_weapon == "Trident" || g2_weapon == "Trident")
          if g1_weapon == "Club"
            temp_glad = self.gladiators[0]
            self.gladiators = []
            self.gladiators << temp_glad
          else
            temp_glad = self.gladiators[1]
            self.gladiators = []
            self.gladiators << temp_glad
          end
        end

        if g1_weapon == g2_weapon
          self.gladiators = []
        end
    end
  end
end
