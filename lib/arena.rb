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
      def add_gladiator(new_gladiator)
        if gladiators.count < 2
        @gladiators.push(new.gladiator)
      end

end #of class Arena



#The arena should never have more than 2 gladiators in it at a time
        #If the number of gladiators = 2, fight #loop? and eliminate

        #assign a weapon
        #Trident > Spear
        # Spear > Club
        # Club > Trident
        # weapon == weapon eliminate
