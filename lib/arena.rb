  class Arena
    attr_accessor :name, :gladiators
    def initialize(name)
      @name = name.capitalize
      @gladiators = []
    end



    def add_gladiator(new_gladiator)
      if @gladiators.count < 2
        @gladiators.push(new_gladiator)
      end
    end


    def fight

      if @gladiators.length == 2
        if @gladiators.first.weapon == @gladiators.last.weapon
          @gladiators.pop(2)
        elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
          @gladiators.shift(1)
        elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Club"
          @gladiators.pop(1)
        elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
          @gladiators.shift(1)


        end
      end
    end
  end
