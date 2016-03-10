class Arena
    attr_accessor :name, :gladiators

    def initialize (name)
      @name = name.capitalize
      @gladiators = []
    end

    def add_gladiator (gladiator)
      if @gladiators.length < 2
        @gladiators << gladiator
    else
      if @gladiators.length > 2
        remove_gladiators
        puts "FIGHT TO THE DEATH"
      end
    end
  end
end
