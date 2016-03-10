require "pry"
require_relative "gladiator"

class Arena
    attr_accessor :name, :gladiators, :count

    def initialize(name)
        @name = name.capitalize
        @gladiators = []
        @count = 0
    end

    def add_gladiator(glad)
        if @count < 2
            @gladiators << glad
            @count += 1
        end
    end

    # Trident beats Spear
    # Spear beats Club
    # Club beats Trident
    def fight
        if @gladiators.count == 2

        end
    end

end

binding.pry
puts "bugfix"
# gladiatrix = Gladiator.new("Anissa", "Spear")
# metro = Arena.new("Metro")
# metro.add_gladiator(gladiatrix)
# @gladiators => [gladiatrix]
# gladiatrix
