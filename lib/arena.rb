require "pry"
class Arena
attr_accessor :name, :gladiators

  def initialize(initial_name)
    @name = initial_name.capitalize
    @gladiators = []
end

def add_gladiator(gladiator)
  return if @gladiators.count >= 2
  @gladiators << gladiator
  end
end
