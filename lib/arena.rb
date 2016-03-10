class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(g)
    if gladiators.length < 2
      gladiators << g
    end
  end



end
