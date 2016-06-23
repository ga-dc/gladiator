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

  def fight

        size = @gladiators.length

        if size < 2
          puts "nothing"

        elsif size == 2
          if  @gladiators[0].weapon == @gladiators[1].weapon
            @gladiators = []

          elsif @gladiators[0].weapon == "Spear"
            if @gladiators[1].weapon == "Trident"
              @gladiators.delete_at(0)
            else
              @gladiators.delete_at(1)
            end

          elsif @gladiators[0].weapon == "Trident"
            if @gladiators[1].weapon == "Club"
              @gladiators.delete_at(0)
            else
              @gladiators.delete_at(1)
            end

          elsif @gladiators[0].weapon == "Club"
            if @gladiators[1].weapon == "Spear"
              @gladiators.delete_at(0)
            else
              @gladiators.delete_at(1)
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
