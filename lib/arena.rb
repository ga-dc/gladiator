class Arena
  attr_reader :name
  attr_reader :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(name)
    if @gladiators.count < 2
      @gladiators.push(name)
    end
  end

  def fight
    #gladiator1 = @gladiators.first
    #gladiator2 = @gladiators.last
    if @gladiators.count == 2
      #If the weapons are the same, both gladiators die
      if @gladiators.first.weapon == @gladiators.last.weapon
         @gladiators.pop(2)
      # Spears loses to trident
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
        @gladiators.shift
      # Trident loses to Club
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
        @gladiators.shift
      # Club loses to Spear
      else
        @gladiators.pop
      end
    end
  end
end
