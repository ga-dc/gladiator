class Arena

  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end

    def name
      return @name
    end

    def gladiators
      return @gladiators
    end

    #Add a gladiator to the arena and push it to the gladiators array if there are less than two gladiators in the arena
    #The arena should never have more than 2 gladiators in it at a time
      def add_gladiator(gladiator)
        @gladiators.push(gladiator)
          if gladiators.count > 2
            gladiators.pop
      end

end


#When there are two gladiators in the arena, they fight
#trident beats spear
#spear beats club
#club beats trident
#smal weapon = both eliminated

def fight()
  if @gladiators.count == 2
    if @gladiators.first.weapon == "trident" && @gladiators.last.weapon == "spear"
      @gladiators.pop
    elsif @gladiator.first.weapon == "spear" && @gladiator.last.weapon == "club"
      @gladiators.pop
    elsif @gladiator.first.weapon == "club" && @gladiator.last.weapon == "trident"
      @gladiators.pop
    else @gladiator.first.weapon == @gladiator.last.weapon
      @gladiators.pop
      @gladiators.pop
    end
  end
end
