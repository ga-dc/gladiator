class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    name = name.capitalize
    @name = name
    @gladiators = []
  end
  def add_gladiator(glad)
    @galdiators.push(glad)
  end

end
