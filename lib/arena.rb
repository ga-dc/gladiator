class Arena

  attr_accessor :name, :gladiators

  def initialize(arena_name)
    @name = arena_name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    @gladiators.push(gladiator)
  end

end
