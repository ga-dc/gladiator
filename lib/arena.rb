# require "pry"

class Arena
  attr_accessor :name, :gladiators

  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator (gladiator)
    if @gladiators.length < 2
       @gladiators << gladiator
    end
  end

  def fight
    if @gladiators.length < 2
        return nil
    end

    if @gladiators[0].name && @gladiators[1].name
       @gladiators.delete_at(1)
    end
  end
end



# binding.pry
