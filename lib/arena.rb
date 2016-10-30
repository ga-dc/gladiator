class Arena

    def initialize name
      @name = name
      @gladiators = []
    end

    def name
    @name.capitalize
    end

    def gladiators
      return @gladiators
    end

    def add_gladiator gladiator
      if @gladiators.length < 2
        @gladiators << gladiator
      end
      @gladiators
    end
  end
