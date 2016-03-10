# require "pry"
class Arena
  attr_accessor :name, :gladiators

  def initialize(initial_name)
    @name = initial_name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
    @gladiators << gladiator
    end
  end

  def fight
    first = @gladiators[0]
    second = @gladiators[1]
    if @gladiators.length == 2

      if first.weapon == "Trident" && second.weapon == "Spear"
        @gladiators.delete_at(1)
      elsif second.weapon == "Trident" && first.weapon == "Spear"
        @gladiators.delete_at(0)
      end
    end
  end
end
