class Arena
  attr_accessor :name
  attr_accessor :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator(person)
    @gladiators.push(person) if @gladiators.length < 2
  end
  def fight
     
  end
end
