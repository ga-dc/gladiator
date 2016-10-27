# require "pry"


require_relative'gladiator'

class Arena
  attr_accessor :name, :gladiators, :gladiator, :weapon

  def initialize(name, gladiators = [])
    @name = name.capitalize
    @gladiators = gladiators
  end

  def add_gladiator(gladiator)
      @gladiators.push(gladiator)
      if @gladiators.length == 3
        @gladiators.pop
      end
end

  def fight()
    if @gladiators.length == 2
      if @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
          @gladiators.delete_at(0)


      elsif @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Spear"
          @gladiators.delete_at(0)


      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
          @gladiators.delete_at(0)


      else @gladiators.first.weapon == @gladiators.last.weapon
          @gladiators.pop(2)

      end
    else
    end
  end






end

# thunderdome = Arena.new("thunderdome")

# #
# binding.pry
