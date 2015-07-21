class Arena
  attr_accessor :gladiators
  def initialize (name)
    @name = name
    @gladiators = []
  end

  def name
    name = @name.capitalize
    return name
  end
end
