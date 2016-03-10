class Arena
  attr_accessor :name, :gladiators

  def initialize name, gladiators = []
    @name = name.capitalize!
    @gladiators = gladiators
  end

def add_gladiator new_gladiator_name
  @gladiators << new_gladiator_name
end


end
