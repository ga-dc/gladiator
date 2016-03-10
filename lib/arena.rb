class Arena
  attr_accessor :name, :gladiators
  def initialize name
    @name = name.capitalize
    @gladiators = []
  end
end
