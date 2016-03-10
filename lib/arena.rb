class Arena
  attr_accessor :name, :gladiators


    def initialize(name)
      @name = name.capitalize
      @gladiators = []
    end

    def add_gladiator(gladiator)
      if @gladiators.length < 2
        @gladiators.push(gladiator)
      else
      end
    end

    def fight
      if @gladiators.length < 2
      return nil
      else
        if @gladiators[0].weapon == @gladiators[1].weapon
          @gladiators.clear
        elsif @gladiators[0].weapon == "spear" && @gladiators[1].weapon = "trident"

        end
      end
    end

end
