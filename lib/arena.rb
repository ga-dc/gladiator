# require "pry"

require_relative 'gladiator'


class Arena
  attr_accessor :name, :gladiators

  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(variable)
    if @gladiators.length < 2
      @gladiators << variable
    end
  end

  def fight
    if @gladiators == 2
      if @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
        

    end
  end
end

  # arena = Arena.new("circus maximus")
  # max = Gladiator.new("maximus", "spear")
  # arena.gladiators
  # #
  # arena.add_gladiator(max)
  # arena.gladiators

  #
  # binding.pry
