class Arena
    attr_accessor :name, :gladiators, :count

    def initialize(name)
        @name = name.capitalize
        @gladiators = []
        @count = 0
    end

    def add_gladiator(glad)
        if @count < 2
            @new_glad = glad
            @gladiators << @new_glad
            @count += 1
        end
    end
end
