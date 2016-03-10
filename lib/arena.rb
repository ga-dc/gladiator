# require "pry"
# require_relative "gladiator"

class Arena
    attr_accessor :name, :gladiators

    def initialize(name)
        @name = name.capitalize
        @gladiators = []
    end

    def add_gladiator(glad)
        if @gladiators.count < 2
            @gladiators << glad
        end
    end

    # Trident beats Spear
    # Spear beats Club
    # Club beats Trident
    def fight
        #fight only works if there are two gladiators
        if @gladiators.count == 2
            if @gladiators[0].weapon == @gladiators[1].weapon
                @gladiators = []
            end
            @all_weapons = []
            @gladiators.each do |glad|
                @all_weapons << @gladiators[glad].weapon
            end
        end
        @all_weapons
    end

end

# binding.pry
# puts "bugfix"
# gladiatrix = Gladiator.new("Anissa", "Trident")
# otherglad = Gladiator.new("Cam", "Spear")
# thearena = Arena.new("Metro")
# thearena.add_gladiator(gladiatrix)
# thearena.gladiators => [gladiatrix]
# thearena.gladiators[0].weapon
