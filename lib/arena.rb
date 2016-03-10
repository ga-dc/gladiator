class Arena
    attr_accessor :gladiators

    def initialize name
        @name = name
        @gladiators = []
    end

    def name
        @name.capitalize
    end

    def add_gladiator gladiator
        gladiators.push(gladiator) if gladiators.size < 2
    end

end
