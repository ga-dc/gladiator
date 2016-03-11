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

    def remove_glad(nameofglad)
        #for each person in gladiator reject that gladiator if its name was passed into the method.
        @gladiators.reject! do |person|
            person.name == nameofglad
        end
    end

    # Trident beats Spear
    # Spear beats Club
    # Club beats Trident
    def fight
        #fight only works if there are two gladiators
        if @gladiators.count == 2
            if @gladiators[0].name == 'Maximus' || @gladiators[1].name == 'Maximus'
                #reject any gladiator that meets condition and subtract new array from original array.
                @gladiators -= @gladiators.reject{|g| g.name == "Maximus"}
                return
            end

            if @gladiators[0].weapon == @gladiators[1].weapon
                @gladiators = []
            elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear"
                remove_glad(@gladiators[1].name)
            elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
                remove_glad(@gladiators[1].name)
            elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
                remove_glad(@gladiators[1].name)
            elsif @gladiators[1].weapon == "Trident" && @gladiators[0].weapon == "Spear"
                remove_glad(@gladiators[0].name)
            elsif @gladiators[1].weapon == "Spear" && @gladiators[0].weapon == "Club"
                remove_glad(@gladiators[0].name)
            elsif @gladiators[1].weapon == "Club" && @gladiators[0].weapon == "Trident"
                remove_glad(@gladiators[0].name)
            end
        end
    end

end

#Test is pry:
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
