class Arena
  attr_accessor :name, :gladiators

  def initialize name, gladiators = []
    @name = name.capitalize!
    @gladiators = gladiators
  end


end
