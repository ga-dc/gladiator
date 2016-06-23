

class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end

  def fight
    s = "Spear"
    t = "Trident"
    c = "Club"
    if @gladiators.length == 2
       glad1_weapon = @gladiators[0].weapon
       glad2_weapon = @gladiators[1].weapon
       if glad1_weapon == t && glad2_weapon == s ||
          glad1_weapon == s && glad2_weapon == c ||
          glad1_weapon == c && glad2_weapon == t
          @gladiators.delete_at(1)
        elsif
           glad2_weapon == t && glad1_weapon == s ||
           glad2_weapon == s && glad1_weapon == c ||
           glad2_weapon == c && glad1_weapon == t
           @gladiators.delete_at(0)
        else
          @gladiators.shift(2)
        end
    end
  end
end
