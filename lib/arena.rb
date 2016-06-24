class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator(glad)
    if @gladiators.length < 2
      @gladiators << glad
    end
  end

  # sparta and troy are getters for the weapon of the two gladiators currently in the arena
  # julius and augustus remove the losing gladiator from the arena.

  def fight
    def sparta
      @gladiators[0].weapon
    end

    def troy
      @gladiators[1].weapon
    end

      def julius
        @gladiators.delete_at(0)
      end

      def augustus
        @gladiators.delete_at(1)
      end

        size = @gladiators.length

    if size < 2
      puts "nothing"

    elsif size == 2
      if  sparta == troy
        @gladiators = []

      elsif sparta == "Spear"
        if troy  == "Trident"
          return julius
        else
          return augustus
        end

      elsif sparta == "Trident"
        if troy  == "Club"
          return julius
        else
          return augustus
        end

      elsif sparta == "Club"
        if troy  == "Spear"
          return julius
        else
          return augustus
        end
      end
    end
  end
end























# dave = Gladiator.new("Dave","Chainsaw")
# # dave = {name: "Dave",weapon: "Chainsaw"}
# myArena = Arena.new("denzel")
# # myArena = {name: "denzel"}
# denzel.add_gladiator(dave)
# # @gladiators = [dave]
