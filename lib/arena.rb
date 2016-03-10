# require "pry"


class Arena
  attr_accessor :name, :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
      @gladiators << gladiator
    end

  end



end

# binding.pry
# puts "ayyy"
