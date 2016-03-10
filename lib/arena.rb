class Arena
  attr_reader :name
  def initialize(name)
    @name = name.capitalize
  end
  def gladiators
    []
  end
end
