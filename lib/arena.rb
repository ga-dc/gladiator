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
    # @gladiators.select! do |x|
    #     x.name == "Maximus"
    #   end
    if @gladiators.length == 2
      if @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Spear"
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club"
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear"
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators = []
      end
    end
  end

  def remove_fighter(fighter)
    @gladiators.each_with_index do |x, i|
      if fighter == @gladiators[i]
        @gladiators.delete_at(i)
      end
    end
  end
end

  # arena = Arena.new("circus maximus")
  # max = Gladiator.new("maximus", "spear")
  # tom = Gladiator.new("tom", "trident")
  # arena.add_gladiator(max)
  # arena.add_gladiator(tom)
  #
  # binding.pry
