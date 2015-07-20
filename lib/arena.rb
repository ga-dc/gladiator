class Arena
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def name
    return @name
  end

  def gladiators
    return @gladiators
  end

end
