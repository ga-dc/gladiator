class Arena
  attr_reader :name, :gladiators, :add_gladiator

  def initialize(name)
    @name = name.capitalize
    @gladiators  = []
  end

  def add_gladiator(new_gladiator)
    if @gladiators.count < 2
      @gladiators.push(new_gladiator)
    end
  end

end
