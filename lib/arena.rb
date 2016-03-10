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
            elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear"
                @gladiators.delete(@gladiators[1])
            elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
                @gladiators.delete(@gladiators[1])
            elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
                @gladiators.delete(@gladiators[1])
            elsif @gladiators[1].weapon == "Trident" && @gladiators[0].weapon == "Spear"
                @gladiators.delete(@gladiators[0])
            elsif @gladiators[1].weapon == "Spear" && @gladiators[0].weapon == "Club"
                @gladiators.delete(@gladiators[0])
            elsif @gladiators[1].weapon == "Club" && @gladiators[0].weapon == "Trident"
                @gladiators.delete(@gladiators[0])
            end
        end
    end

end
#
# gladiatrix = Gladiator.new("Anissa", "Club")
# otherglad = Gladiator.new("Cam", "Trident")
# arena = Arena.new("Metro")
# arena.add_gladiator(gladiatrix)
# arena.add_gladiator(otherglad)
#
# binding.pry
# puts "bugfix"

#
# thearena.gladiators => [gladiatrix]
# thearena.gladiators[0].weapon
