class Arena
  attr_accessor :name
  attr_accessor :gladiators


    def initialize(name)
      @name = name.capitalize
      @gladiators = []
    end
    
end
