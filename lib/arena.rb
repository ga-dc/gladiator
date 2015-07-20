class Arena
  def initialize (name)
    @name = name
    @gladiators = []
  end

  def name
    return @name.capitalize
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(new_gladiator)
    if @gladiators.count < 2
      @gladiators.push(new_gladiator)
  end
end
