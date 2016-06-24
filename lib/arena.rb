class Arena
  attr_accessor :name, :gladiators
  def initialize (name)
    @gladiators = []
    @name = name.capitalize
  end

  def add_gladiator (gladiator_name)
    if @gladiators.length<2
      @gladiators << gladiator_name
    else
    end
    return @gladiators
  end

  def fight
    if @gladiators.length>1
      w1 = @gladiators[0].weapon
      w2 = @gladiators[1].weapon
      #if they tie, both gladiators are eliminated
      if w1 == w2
        @gladiators=[]
      elsif (w1 == "Trident" && w2 == "Spear") || (w1 == "Spear" && w2 == "Club") || (w1 == "Club" && w2 == "Trident")
        @gladiators.delete_at(1)
      else
        @gladiators.delete_at(0)
      end
    else
    end
  end
end
