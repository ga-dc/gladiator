class Arena
  attr_accessor :name, :gladiators


    def initialize(name)
      @name = name.capitalize
      @gladiators = []
    end

    def add_gladiator(gladiator)
      if @gladiators.length < 2
        @gladiators.push(gladiator)
      else
      end
    end

    def fight
      if @gladiators.length < 2
      return nil
      else
      end
    end

end
